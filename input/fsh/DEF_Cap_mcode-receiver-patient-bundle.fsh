Instance: mcode-receiver-patient-bundle
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Gets an [mCODE Patient Bundle](StructureDefinition-mcode-patient-bundle.html) for a specific patient that contains all of that patient's resources that conform to mCODE Profiles."
* name = "CapabilityStatementPatientBundle"
* title = "mCODE Data Receiver: Get Bundle for a Patient"
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">mCODE Data Receiver: Get Bundle for a Patient</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-receiver-patient-bundle</code></li><li><b>Implementation Guide Version:</b> None</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats: </b>XML, JSON</li><li><b>Published:</b> 2020-10-30 07:15:00.000000-04:00</li><li><b>Published by:</b> None</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Gets an <a href=\"StructureDefinition-mcode-patient-bundle.html\">mCODE Patient Bundle</a> for a specific patient that contains all of that patient's resources that conform to mCODE Profiles.</p><!-- No support expectation extension --><h3 class=\"no_toc\" id=\"igs\">Support the Following Implementation Guides:</h3><ul><li><a href=\"http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode\">minimal Common Oncology Data Elements (mCODE) Implementation Guide</a></li></ul><!-- Imports --><h3 class=\"no_toc\" id=\"should_css\">Include And Support Everything In The Following CapabilityStatements:</h3><ul><li><a href=\"http://hl7.org/fhir/us/core/CapabilityStatement/us-core-client\">US Core Client CapabilityStatement</a></li></ul><!-- REST Behavior --><h3 id=\"behavior\">FHIR Client RESTful Capabilities</h3><p>An mCODE Client <strong>SHALL</strong>:</p><ol><li>Support all profiles defined in this Implementation Guide..</li><li>Implement the RESTful behavior according to the FHIR specification.</li><li>Return the following response classes:<ul><li>(Status 400): invalid parameter</li><li>(Status 401/4xx): unauthorized request</li><li>(Status 403): insufficient scope</li><li>(Status 404): unknown resource</li><li>(Status 410): deleted resource.</li></ul></li><li>Support json source formats for all mCODE interactions.</li><li>Identify the mCODE  profiles supported as part of the FHIR <code>meta.profile</code> attribute for each instance.</li><li>Support the searchParameters on each profile individually and in combination.</li></ol><p>The mCODE Client <strong>SHOULD</strong>:</p><ol><li>Support xml source formats for all mCODE interactions.</li></ol><p id=\"security\"><strong>Security:</strong></p><ol><li>See the <a href=\"https://www.hl7.org/fhir/security.html#general\">General Security Considerations</a> section for requirements and recommendations.</li><li>A client <strong>SHALL</strong> reject any unauthorized requests by returning an <code>HTTP 401</code> unauthorized response code.</li></ol><p><strong>Summary of Client Wide Operations</strong></p><ul><li><strong>SHALL</strong> support the <a href=\"http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything\"><code>$mcode-patient-bundle</code></a> operation.</li></ul></div>"
//* text.status = #generated
* insert mCODE_CapabilityStatement_Client_Common

// GET [base]/$mcode-patient-bundle/[id]
* rest[0].operation[0].name = "mcode-patient-bundle"
* rest[0].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
* rest[0].operation[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].operation[0].extension.valueCode = #SHALL
