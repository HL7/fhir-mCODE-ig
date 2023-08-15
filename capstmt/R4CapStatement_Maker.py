'''
Benjamin Langley

Usage: python3 R4CapStatement_Maker.py [xlsx file]
Dependecies: 
    fhirclient
    pandas
    xlrd
    openpyxl
    stringcase
    jinja2
    commonmark
    lxml

To install all dependencies: pip3 install -r requirements.txt
to run on windows: python -m pip ...

NOTE: this requires the r4models to be installed in the fhirclient pip site-package, to be installed in [installdir]/lib/python/site-packages/fhirclient
Email Eric Haas for these models

Modified from: https://github.com/Healthedata1/MyNotebooks/blob/master/CapStatement/R4CapStatement_Maker.ipynb
'''
import sys
import os
import os.path
from os import path
import validators
import fhirclient.r4models.capabilitystatement as CS
import fhirclient.r4models.codeableconcept as CC
import fhirclient.r4models.fhirdate as D
import fhirclient.r4models.extension as X
import fhirclient.r4models.contactdetail as CD
import fhirclient.r4models.narrative as N
import fhirclient.r4models.bundle as B
import re 

import tarfile
# import fhirclient.r4models.narrative as N
from json import dumps, loads
from requests import post
from pathlib import Path
from collections import namedtuple
from pandas import *
from datetime import datetime, date
from stringcase import snakecase, titlecase
from jinja2 import Environment, FileSystemLoader, select_autoescape
from commonmark import commonmark
from lxml import etree

# GLOBALS
fhir_base_url = 'http://hl7.org/fhir/'
f_jurisdiction = CC.CodeableConcept({
    "coding": [
        {
            "system": "urn:iso:std:iso:3166",
            "code": "US"
        }
    ]
})
conf_url = 'http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation'
combo_url = 'http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination'
# dict to for SP to get right canonicals, may use spreadsheet or package file in future.
sp_specials = {
    'us-core-includeprovenance': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-includeprovenance'}
#this should be a map to the common
sp_common_list = ["address", "address-city", "address-country", "address-postalcode", "address-state", "address-use", "birthdate", "code", "context", "context-quantity", "context-type", "context-type-quantity", "context-type-value", "date", "description", "email", "encounter", "family", "gender", "given", "identifier", "jurisdiction", "medication", "name", "patient", "phone", "phonetic", "publisher", "status", "status", "telecom", "title", "type", "url", "version"]
none_list = ['', ' ', 'none', 'n/a', 'N/A', 'N', 'False']
sep_list = (',', ';', ' ', ', ', '; ')
f_now = D.FHIRDate(str(date.today()))

def markdown(text, *args, **kwargs):
    return commonmark(text, *args, **kwargs)

def main():
    if (len(sys.argv) < 2):
        print(
            "Error: missing xlsx file - correct usage is:\n\tpython3 R4CapStatement_Maker.py [xlsx file]")
        return

    xls = sys.argv[1]

    print('....creating CapabilityStatement.....')

    # Read the config sheet from the spreadsheet
    # use the index_col = 0 for setting the first row as the index
    config_df = read_excel(xls, 'config', na_filter=False, index_col=0)

    # --------- ig specific variable -------------------
    pre = config_df.Value.pre  # for Titles - not sure this is actually used
    canon = config_df.Value.canon  # don't forget the slash  - fix using os.join or path
    publisher = config_df.Value.publisher
    restinteraction = config_df.Value.rest
    publisher_endpoint = dict(
        system=config_df.Value.publishersystem,
        value=config_df.Value.publishervalue,
    )
  
    definitions_file = config_df.Value.definitions_file   #source of  spec.internal file manually extracted from downloaded spec
    # Read the meta sheet from the spreadsheet
    meta_df = read_excel(xls, 'meta', na_filter=False)
    meta_dict = dict(zip(meta_df.Element, meta_df.Value))
    meta = namedtuple("Meta", meta_dict.keys())(*meta_dict.values())

    # Create the CapabilityStatement
    cs = create_capabilitystatement(
        meta, canon, publisher, publisher_endpoint, xls)
    rest = CS.CapabilityStatementRest(dict(
        mode=meta.mode,
        documentation=meta.documentation,
        security=dict(
            description=meta.security
        ) if meta.security else None,
        interaction=get_rest_ints(xls) if restinteraction else None,
        operation=get_sys_op(xls)
    ))
    cs.rest = [rest]

    df_profiles = read_excel(xls, 'profiles', na_filter=False)
    df_profiles = df_profiles[df_profiles.Profile.str[0] != '!']

    resources_df = read_excel(xls, 'resources', na_filter=False)
    resources_df = resources_df[resources_df.type.str[0] != '!']

    df_i = read_excel(xls, 'interactions', na_filter=False)
    df_sp = read_excel(xls, 'sps', na_filter=False)
    df_combos = read_excel(xls, 'sp_combos', na_filter=False)
    df_op = read_excel(xls, 'ops', na_filter=False)

    rest.resource = []
    for r in resources_df.itertuples(index=True):
        supported_profile = [p.Profile for p in df_profiles.itertuples(
            index=True) if p.Type == r.type]
        res = CS.CapabilityStatementRestResource(
            dict(
                type=r.type,
                documentation=r.documentation if r.documentation not in none_list else None,
                versioning=r.versioning if r.versioning not in none_list else None,
                readHistory=r.readHistory if r.readHistory not in none_list else None,
                updateCreate=r.updateCreate if r.updateCreate not in none_list else None,
                conditionalCreate=r.conditionalCreate if r.conditionalCreate not in none_list else None,
                conditionalRead=r.conditionalRead if r.conditionalRead not in none_list else None,
                conditionalUpdate=r.conditionalUpdate if r.conditionalUpdate not in none_list else None,
                conditionalDelete=r.conditionalDelete if r.conditionalDelete not in none_list else None,
                referencePolicy=[re.sub('\s+','',x) for x in r.referencePolicy.split(",") if x],
                searchInclude=[re.sub('\s+','',x) for x in r.shall_include.split(
                    ",") + r.should_include.split(",") if x],
                searchRevInclude=[re.sub('\s+','',x) for x in r.shall_revinclude.split(
                    ",") + r.should_revinclude.split(",") if x],
                interaction=get_i(r.type, df_i),
                searchParam=get_sp(r.type, df_sp, pre, canon),
                operation=get_op(r.type, df_op),
                supportedProfile=supported_profile
            )
        )
        res.extension = get_conf(r.conformance)
        combos = {(i.combo, i.combo_conf)
                  for i in df_combos.itertuples(index=True) if i.base == r.type}
        # convert list to  lst of combo extension
        res.extension = res.extension + get_combo_ext(r.type, combos)
        rest.resource.append(res)

    rest.resource = sorted(
        rest.resource, key=lambda x: x.type)  # sort resources
    cs.rest = [rest]

    # add in conformance expectations for primitives
    # convert to dict since model can't handle primitive extensions
    resttype_dict = res.as_json()

    for i in ['Include', 'RevInclude']:
        element = f'_search{i}' 
        resttype_dict[element] = []
        for expectation in ['should', 'shall']:  # list all should includes first
            sp_attr = f'{expectation}_{i.lower()}'
            includes = getattr(r, sp_attr).split(',')

            for include in includes:
                if include not in none_list:
                    conf = get_conf(expectation.upper(), as_dict=True)
                    resttype_dict[element].append(conf)

        if not resttype_dict[element]:
            del(resttype_dict[element])

    print(resttype_dict)

    print(dumps(cs.as_json(), indent=3))    # %% [markdown]

    print('.............validating..............')
    r = validate(cs)
    if (r.status_code != 200):
        print("Error: Unable to validate - status code {}".format(r.status_code))
    path = Path.cwd() / 'validation.html'
    path.write_text(
        f'<h1>Validation output</h1><h3>Status Code = {r.status_code}</h3> {r.json()["text"]["div"]}')
    print(f"HTML webpage of validation saved to:\n\t {path}")

    # get from package (json) file in local .fhir directory
    si = get_si2(definitions_file)
    path_map = si['paths']
    path_map

    in_path = ''
    in_file = 'R4capabilitystatement-server.j2'

    env = Environment(
        loader=FileSystemLoader(searchpath=os.path.abspath(os.path.dirname(os.path.realpath(__file__)))),
        autoescape=select_autoescape(['html', 'xml', 'xhtml', 'j2', 'md'])
    )

    env.filters['markdown'] = markdown


    template = env.get_template(in_file)

    sp_map = {sp.code: sp.type for sp in df_sp.itertuples(index=True)}
    sp_url_map  = {sp.code: sp.rel_url for sp in df_sp.itertuples(index=True)}
    pname_map = {p.Profile: p.Name for p in df_profiles.itertuples(index=True)}
    
    purl_map = {p.Profile:p.url if hasattr(p.Profile , 'url') and p.url not in none_list else p.Profile for p in df_profiles.itertuples(index=True)}
        
    print(pname_map)

    rendered = template.render(cs=cs, path_map=path_map,
                            pname_map=pname_map, sp_map=sp_map, sp_url_map=sp_url_map, igurl_map={}, igname_map={}, purl_map=purl_map)

    # print(HTML(rendered))


    parser = etree.XMLParser(remove_blank_text=True)
    root = etree.fromstring(rendered, parser=parser)

    div = (etree.tostring(root[1][0], encoding='unicode', method='html'))
    # Untested, removing \r and \n. If there is an error generating, please try again after removing the following two lines.
    div = div.replace("\\n", "")
    div = div.replace("\\t", "")

    narr = N.Narrative()
    narr.status = 'generated'
    narr.div = div
    cs.text = narr
    # save to file
    print('...........saving to file............')
    # path = Path.cwd() / f'capabilitystatement-{cs.id.lower()}.json'
    path = Path.cwd() / f'capabilitystatement-{meta.title.lower()}.json'


    tempOut = dumps(cs.as_json(), indent=4)
    tempOut = tempOut.replace("<sup>+</sup>", "<sup>&#8224;</sup>")
    
    #tempOut = tempOut.replace(“<sup>t</sup>”, “<sup>&#8224;</sup>”)
    
    tempOut = tempOut.replace("\\n", "")
    tempOut = tempOut.replace("\\t", "")
    path.write_text(tempOut)

    #path.write_text(dumps(cs.as_json(), indent=4))
    print(f"CapabilityStatement saved to:\n\t {path}")


def get_conf(conf='MAY', as_dict=False):
    if as_dict:
        return [X.Extension(dict(
            url=conf_url,
            valueCode=conf
        )).as_json()]
    else:
        return [X.Extension(dict(
            url=conf_url,
            valueCode=conf
        ))]


def get_addin_ext(py_ext, json_ext):
    if json_ext:   # ie not ''
        addin_ext = X.Extension(loads(json_ext))
        py_ext.append(addin_ext)  # add in other extensions
    return py_ext


def validate(r):

    #fhir_test_server = 'http://test.fhir.org/r4'
    #fhir_test_server = 'http://hapi.fhir.org/baseR4'
    fhir_test_server = 'http://wildfhir4.aegis.net/fhir4-0-1'

    headers = {
        'Accept': 'application/fhir+json',
        'Content-Type': 'application/fhir+json'
    }

    # profile = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient' # The official URL for this profile is: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient

    params = dict(
        # profile = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient' # The official URL for this profile is: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
    )

    r = post(f'{fhir_test_server}/CapabilityStatement/$validate',
             params=params, headers=headers, data=dumps(r.as_json()))
    return r


def get_sys_op(xls):
    op_list = []
    df_op = read_excel(xls, 'ops', na_filter=False)
    for i in df_op.itertuples(index=True):
        if i.type == 'system':
            op = CS.CapabilityStatementRestResourceOperation()
            op.name = i.name
            op.definition = i.definition
            op.extension = get_conf(i.conf)
            op_list.append(op.as_json())
    return op_list


def get_rest_ints(xls):
    ri_list = []
    df_ri = read_excel(xls, 'rest_interactions', na_filter=False)
    for i in df_ri.itertuples(index=True):
        ri = CS.CapabilityStatementRestInteraction()
        ri.code = i.code
        ri.documentation = i.doc if i.doc not in none_list else None
        ri.extension = get_conf(i.conf)
        ri_list.append(ri.as_json())
    return ri_list


def get_igs(xls):
    ig_list = []
    df_igs = read_excel(xls, 'igs', na_filter=False)
    for ig in df_igs.itertuples(index=True):
        ig_list.append(ig.uri)
    return ig_list  # TODO add conformance to this


def kebab_to_pascal(word):
    return ''.join(x.capitalize() for x in word.split('-'))


def create_capabilitystatement(meta, canon, publisher, publisher_endpoint, xls):
    cs = CS.CapabilityStatement()
#    cs.id = meta.id
    cs.id = meta.title.lower()
    cs.url = f'{canon}CapabilityStatement/{meta.title.lower()}'
    cs.version = meta.version
    cs.name = f'{kebab_to_pascal(meta.id)}{cs.resource_type}'
#    cs.title = f'{titlecase(meta.id).replace("Us ", "US ")} {cs.resource_type}'
    cs.title = f'{meta.title} {cs.resource_type}'
    cs.status = 'active'

    cs.experimental = False
    cs.date = f_now  # as FHIRDate
    cs.publisher = publisher
    cs.contact = [CD.ContactDetail({"telecom": [publisher_endpoint]})]
    cs.description = meta.description
    cs.jurisdiction = [f_jurisdiction]
    cs.kind = 'requirements'
    cs.fhirVersion = meta.fhirVersion
    cs.acceptUnknown = 'both'
    cs.format = [
        "xml",
        "json"
    ]
    cs.patchFormat = [
        "application/json-patch+json",
    ]
    cs.implementationGuide = meta.ig.split(",") + get_igs(xls)

    return cs


def get_i(type, df_i):
    int_list = []
    for i in df_i.itertuples(index=True):
        if getattr(i, f'conf_{type}') not in none_list:
            int = CS.CapabilityStatementRestResourceInteraction()
            int.code = i.code
            try:
                int.documentation = getattr(i, f'doc_{type}') if getattr(
                    i, f'doc_{type}') not in none_list else None
            except AttributeError:
                pass
            int.extension = get_conf(getattr(i, f'conf_{type}'))
            int_list.append(int.as_json())

    return int_list


def get_sp(r_type, df_sp, pre, canon):
    sp_list = []
    for i in df_sp.itertuples(index=True):
        if i.base == r_type:
            sp = CS.CapabilityStatementRestResourceSearchParam()
            sp.name = i.code

            # TODO need to fix this to reference the package file to reconcile definition to names
            #if i.code in sp_specials:  # special case temp fix for us-core
            #    sp.definition = sp_specials[i.code]
            #el
            if i.update == 'Y' or i.exists == 'N':
              #  sp.definition = f'{canon}SearchParameter/{pre.lower()}-{i.base.lower()}-{i.code.split("_")[-1]}'
                 sp.definition = f'{canon}SearchParameter/{i.base.lower()}-{i.code.split("_")[-1]}'
            else:  # use base definition
                # Check to see if URL is relative or absolute.
                if(hasattr(i, 'sp_url') and validators.url(i.sp_url)):
                    sp.definition = f'{i.sp_url}'
                elif (hasattr(i, 'base_id') and len(i.base_id) > 0): #base id provided
                    sp.definition = f'{fhir_base_url}SearchParameter/{i.base_id}'
                else: #otherwise attempt to create the base canonical url - Should use a mapping to determine proper name
                    if (i.code == "_text"): # if a Resource or DomainResource search parameter
                        sp.definition = f'{fhir_base_url}SearchParameter/DomainResource-{i.code.split("_")[-1]}'
                    elif (i.code[0] == '_'): # if a Resource or DomainResource search parameter
                        sp.definition = f'{fhir_base_url}SearchParameter/Resource-{i.code.split("_")[-1]}'
                    elif (i.code in sp_common_list): # A common Parameter
                        sp.definition = f'{fhir_base_url}SearchParameter/{i.code}'
                    else:
                        # removes the '_' for things like _id
                        #sp.definition = f'{fhir_base_url}SearchParameter/{i.base.lower()}-{i.code.split("_")[-1]}'
                        #sp.definition = f'{fhir_base_url}SearchParameter/Resource-{i.code.split("_")[-1]}'
                        sp.definition = f'{fhir_base_url}SearchParameter/{i.base}-{i.code.split("_")[-1]}'

            if(validators.url(i.rel_url)):
                sp.documentation = f'{i.rel_url}'
            # sp.documentation = f'{i.rel_url}'
            sp.type = i.type
            sp.extension = get_conf(i.base_conf)
            sp_list.append(sp.as_json())

    return sp_list


def get_combo_ext(r_type, combos):
    x_list = []
    for combo in combos:
        # convert to extension
        combo_ext = X.Extension()
        combo_ext.url = combo_url
        combo_conf_ext = get_conf(combo[1])
        combo_ext.extension = combo_conf_ext
        for param in combo[0].split(','):
            req_combo = X.Extension(
                dict(
                    url='required',
                    valueString=param  # http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-family
                )
            )
            combo_ext.extension.append(req_combo)
        x_list.append(combo_ext)
    return x_list


def get_op(r_type, df_op):
    op_list = []
    for i in df_op.itertuples(index=True):
        if i.type == r_type:
            op = CS.CapabilityStatementRestResourceOperation()
            op.name = i.name
            op.definition = i.definition
            op.documentation = i.documentation if i.documentation not in none_list else None
            op.extension = get_conf(i.conf)
            try:
                op.extension = get_addin_ext(op.extension, i.ext)
            except AttributeError:
                print("---- no addin extensions found-----")
            op_list.append(op.as_json())

    return op_list


def markdown(text, *args, **kwargs):
    return commonmark(text, *args, **kwargs)

def get_si(path):
    with tarfile.open(f'{path}/package.tgz', mode='r') as tf:
        #pprint(tf.getnames())
        f = tf.extractfile('other/spec.internals')
        r = f.read()
        return(loads(r))

def get_si2(path):
    # Get the full path in case a relative path is provided.
    fullpath = os.path.abspath(path)

    with open(f'{path}', 'r', encoding='utf-8-sig') as f:
        r = f.read()
        # encoding for loads was deprecated in 3.9  https://bugs.python.org/issue39377
        if sys.version_info >= (3, 9):
            return(loads(r))
        else:
            return(loads(r, encoding = 'utf-8'))


main()
