let nodeList = []; // Global array to contain all nodes in the tree (nodes will be mutated by reference throughout the code)
let pathList = []; // Global array to contain all paths in the tree from the root node to a single terminal node

const darkblue = 'rgb(86, 126, 188)';
const lightblue = 'rgb(86, 126, 188)';
const darkgray = 'rgb(120, 120, 120)';
const lightgray = 'rgb(240, 240, 240)';
const white = 'rgb(255, 255, 255)';
const black = 'rgb(0, 0, 0)';

// Recursive function to process the nodes in the tree into the global nodeList, pathList
function fillNodeAndPathList(node, layer=0, path=[]) {
    node.depth = layer;

    nodeList.push(node);
    path.push(node);

    // Iterate over all children (properties and values)
    const children = node.properties.concat(node.values);
    if (children.length > 0) { // Non-terminal node
        for (const child of children) {
            fillNodeAndPathList(child, layer+1, [...path]); // Go to the next child, incrementing layer and passing path
        }
    } else { // Terminal node
        pathList.push(path);
    }
}

function nodeToMind(node) {
    const humanReadableName = node.type === 'primitive' ? node.name : node.title;
    if (node.properties.length === 0 && node.values.length === 0) {
        return {
            id: Math.random().toString(),
            topic: humanReadableName,
            direction: node.direction,
            type: node.type,
            connection: node.connection,
            name: node.name,
            description: node.description,
            'background-color': selectColors(node.type).backgroundColor,
            'foreground-color': selectColors(node.type).color
        };  
    }
    const properties = node.properties.map(child => nodeToMind(Object.assign({connection: 'property'}, child))).filter(el => el != null);
    const values = node.values.map(child => nodeToMind(Object.assign({connection: 'value'}, child))).filter(el => el != null);
    const children = properties.concat(values);
    return {
        id: Math.random().toString(),
        topic: humanReadableName,
        direction: node.direction,
        children: children,
        type: node.type,
        connection: node.connection, 
        name: node.name,
        description: node.description,
        'background-color': selectColors(node.type).backgroundColor,
        'foreground-color': selectColors(node.type).color
    };
}

function treeToMind(rootNode) {
    fillNodeAndPathList(rootNode);

    // Evenly split the nodes adjacent to the root
    const adjacentNodes = rootNode.properties.concat(rootNode.values);
    const nodeMidIndex = Math.ceil(adjacentNodes.length / 2);
    const rightNodes = adjacentNodes.slice(0, nodeMidIndex);
    const leftNodes = adjacentNodes.slice(nodeMidIndex);

    rootNode.direction = 'root';

    rightNodes.map(n => n.direction = 'right');
    leftNodes.map(n => n.direction = 'left');

    // Label all nodes that are not adjacent to the root as right or left
    pathList.forEach(path => {
        path.slice(1).forEach(node => {
            if (node.direction == null) node.direction = path[1].direction;
        });
    });

    const mindData = nodeToMind(rootNode);
    const mind = {
        meta: {
            name: '',
            author: '',
            version: ''
        },
        format: 'node_tree',
        data: mindData
    }

    return mind;
}

function addHoverText(jm) {
    const jsmindInner = window.document.getElementsByClassName('jsmind-inner')[0];
    const nodes = jsmindInner.getElementsByTagName('jmnodes')[0];

    for (const nodeElement of nodes.childNodes) {
        if (nodeElement.tagName === 'JMNODE') {
            const nodeTitle = nodeElement.innerHTML;
            const node = jm.get_node(nodeElement.getAttribute('nodeid'));
            nodeElement.innerHTML = 
            `
                <div class="node-title ${node.isroot ? 'node-link' : ''}">${nodeTitle}</div>
            `
            if (node.data.description) {
                nodeElement.innerHTML += 
                    `
                    <div class="node-tooltip">
                        <div class="node-description">
                            <h5>Description</h5>
                            <p>${node.data.description}</p>
                        </div>
                    </div>
                    `
            }
        }
    }
}

function selectColors(type) {
    switch (type) {
        case 'entry':
        case 'abstract':
            return {backgroundColor: darkblue, color: white};
        case 'element':
        case 'group':
            return {backgroundColor: lightgray, color: lightblue};
        case 'primitive':
        default:
            return {backgroundColor: white, color: darkgray};
    }
}

function showLines() {
    this.clear_lines();
    var nodes = this.jm.mind.nodes;
    var node = null;
    var pin = null;
    var pout = null;
    var _offset = this.get_view_offset();
    for (var nodeid in nodes) {
        node = nodes[nodeid];
        if (!!node.isroot) { continue; }
        if (('visible' in node._data.layout) && !node._data.layout.visible) { continue; }
        pin = this.layout.get_node_point_in(node);
        pout = this.layout.get_node_point_out(node.parent);
        this.graph.draw_line(pout, pin, _offset, node);
    }
}

function drawLine(pout, pin, offset, nodeIn) {
    let ctx = this.canvas_ctx;
    ctx.strokeStyle = this.opts.line_color;
    ctx.lineWidth = this.opts.line_width;
    ctx.lineCap = 'round';

    ctx.setLineDash([]);

    // Set our desired line dashes here
    if (nodeIn.data.connection === 'property') {
        ctx.strokeStyle = darkblue;
        if (nodeIn.data.type === 'entry') {
            ctx.setLineDash([3, 5]);
        }
    } else if (nodeIn.data.connection === 'value') {
        ctx.strokeStyle = darkblue;
        ctx.setLineDash([15, 5, 5, 5]);
    }

    this._bezier_to(ctx,
        pin.x + offset.x,
        pin.y + offset.y,
        pout.x + offset.x,
        pout.y + offset.y);

}

function clickHandler(e) {
    const element = e.target || e.srcElement;
    const isExpander = jm.view.is_expander(element);
    const nodeid = jm.view.get_binded_nodeid(element);
    if (nodeid != null) {
        if (!isExpander) {
            const node = jm.get_node(nodeid);
            if (node.isroot) {
                const urlName = node.data.name.replace(/\./g, '-');
                const url = `../StructureDefinition-${urlName}.html`;
                window.top.location.href = url;
            }
        }
    }
}

function render(jm, mind, zoom) {
    jm.show(mind);
    jm.view.setZoom(zoom);
    addHoverText(jm);
}