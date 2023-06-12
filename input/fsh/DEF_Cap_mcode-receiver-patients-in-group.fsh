Instance: mcode-receiver-patients-in-group
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Capabilities for an mCODE Data Receiver where not all cancer patients conform to mCODE. Retrieves a Group of references to Patient resources that conform to mCODE, and allows for the full Patient resources to be retrieved in a subsequent request."
* name = "CapabilityStatementReceiverPatientsInGroup"
* title = "mCODE Data Receiver: Get Patients in Group"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">mCODE Data Receiver: Get Patients in Group</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-receiver-patients-in-group</code></li><li><b>Implementation Guide Version:</b> None</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2020-10-30 07:15:00.000000-04:00</li><li><b>Published by:</b> None</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Capabilities for an mCODE Data Receiver where not all cancer patients conform to mCODE. Retrieves a Group of references to Patient resources that conform to mCODE, and allows for the full Patient resources to be retrieved in a subsequent request.</p><!-- No support expectation extension --><h3 class=\"no_toc\" id=\"igs\">Support the Following Implementation Guides:</h3><ul><li><a href=\"http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode\">minimal Common Oncology Data Elements (mCODE) Implementation Guide</a></li></ul><!-- Imports --><h3 class=\"no_toc\" id=\"should_css\">Include And Support Everything In The Following CapabilityStatements:</h3><ul><li><a href=\"http://hl7.org/fhir/us/core/CapabilityStatement/us-core-client\">US Core Client CapabilityStatement</a></li></ul><!-- REST Behavior --><h3 id=\"behavior\">FHIR Client RESTful Capabilities</h3><p>An mCODE Client <strong>SHALL</strong>:</p><ol><li>Support all profiles defined in this Implementation Guide..</li><li>Implement the RESTful behavior according to the FHIR specification.</li><li>Return the following response classes:\n<ul><li>(Status 400): invalid parameter</li><li>(Status 401/4xx): unauthorized request</li><li>(Status 403): insufficient scope</li><li>(Status 404): unknown resource</li><li>(Status 410): deleted resource.</li></ul>\n</li><li>Support json source formats for all mCODE interactions.</li><li>Identify the mCODE  profiles supported as part of the FHIR <code>meta.profile</code> attribute for each instance.</li><li>Support the searchParameters on each profile individually and in combination.</li></ol><p>The mCODE Client <strong>SHOULD</strong>:</p><ol><li>Support xml source formats for all mCODE interactions.</li></ol><p id=\"security\"><strong>Security:</strong></p><ol><li>See the <a href=\"https://www.hl7.org/fhir/security.html#general\">General Security Considerations</a> section for requirements and recommendations.</li><li>A client <strong>SHALL</strong> reject any unauthorized requests by returning an <code>HTTP 401</code> unauthorized response code.</li></ol><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#patient\">Patient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#group\">Group</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\tcode\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"patient\">Patient</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHALL</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching a Patient resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Patient/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_id=[id]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"group\">Group</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code><sup>&#8224;</sup>.</li></ul><blockquote><p>search-type<sup>&#8224;</sup></p><p>Retrieve Group of references to Patient resources conforming to mCODE.</p></blockquote><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Group/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/group.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Group?code=[system]|[code]</code></td></tr></tbody></table></div>"
* text.status = #generated
* insert mCODE_CapabilityStatement_Client_Common

// GET [base]/Group?code=mcode-cancer-patient
* rest[0].resource[1].type = #Group
* rest[0].resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].extension.valueCode = #SHALL
* rest[0].resource[1].interaction[0].code = #search-type
* rest[0].resource[1].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[0].extension.valueCode = #SHALL
* rest[0].resource[1].interaction[0].documentation = "Retrieve Group of references to Patient resources conforming to mCODE."

* rest[0].resource[1].searchParam[0].name = "code"
* rest[0].resource[1].searchParam[0].type = #token
* rest[0].resource[1].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Group-code"
* rest[0].resource[1].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].searchParam[0].extension.valueCode = #SHALL

// GET [base]/Patient?_id=id1|id2|id3
* insert mCODE_CapabilityStatement_Patient_Client_Common_Rules
* rest[0].resource[0].searchParam[0].name = "_id"
* rest[0].resource[0].searchParam[0].type = #token
* rest[0].resource[0].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest[0].resource[0].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[0].extension.valueCode = #SHALL