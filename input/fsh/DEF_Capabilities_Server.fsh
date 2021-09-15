Profile: MCODEPatientGroup
Parent: Group
Id: mcode-patient-group
Title: "mCODE Patient Group"
Description: "A group of patients included in the scope of mCODE, whose cancer-related resources conform to mCODE profiles."
* code = RID#mcode-patient
* member.entity only Reference(CancerPatient)

// Defines common operations for the server role
RuleSet: mCODE_CapabilityStatement_Server_Common
* status = #draft
* experimental = true
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"
* rest[0].mode = #server

///////////////////////////////////////////////////////////////////////////////////////////////////
RuleSet: mCODE_CapabilityStatement_Patient_Server_Common_Rules
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

// GET [base]/Patient/[id]
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[0].extension.valueCode = #SHALL


///////////////////////////////////////////////////////////////////////////////////////////////////

// Common rules used by `patients-and-cancer-conditions` and `cancer-conditions-then-patients`
RuleSet: mCODE_CapabilityStatement_Condition_Server_Common_Rules
* rest[0].resource[1].type = #Condition
* rest[0].resource[1].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

* rest[0].resource[1].interaction[0].code = #search-type
* rest[0].resource[1].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[0].extension.valueCode = #SHALL
* rest[0].resource[1].interaction[0].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via searching for conditions in a specific ValueSet."

* rest[0].resource[1].searchParam[0].name = "code:in"
* rest[0].resource[1].searchParam[0].type = #uri
* rest[0].resource[1].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Condition-code"
* rest[0].resource[1].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].searchParam[0].extension.valueCode = #SHALL

// GET [base]/Group?code=mcode-cancer-patient
// This must be implemented regardless of the method for identifying in-scope patients
* rest[0].resource[2].type = #Group

* rest[0].resource[2].interaction[0].code = #search-type
* rest[0].resource[2].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].interaction[0].extension.valueCode = #SHALL
* rest[0].resource[2].interaction[0].documentation = "Retrieve Group of references to Patient resources conforming to mCODE."

* rest[0].resource[2].searchParam[0].name = "code"
* rest[0].resource[2].searchParam[0].type = #token
* rest[0].resource[2].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Group-code"
* rest[0].resource[2].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-patients-in-group
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Capabilities for an mCODE Data Sender where not all cancer patients conform to mCODE. Retrieves a Group of references to Patient resources that conform to mCODE, and allows for the full Patient resources to be retrieved in a subsequent request."
* name = "CapabilityStatementSenderPatientsInGroup"
* title = "mCODE Data Sender: Get Patients in Group"

* insert mCODE_CapabilityStatement_Server_Common

// GET [base]/Group?code=mcode-cancer-patient
* rest[0].resource[1].type = #Group

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
* insert mCODE_CapabilityStatement_Patient_Server_Common_Rules
* rest[0].resource[0].searchParam[0].name = "_id"
* rest[0].resource[0].searchParam[0].type = #token
* rest[0].resource[0].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest[0].resource[0].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-patients-with-cancer-condition
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Uses reverse chaining to retrieve a Bundle of Patient resources with a condition code in mCODE's cancer condition value set."
* name = "CapabilityStatementSenderPatientsWithCancerCondition"
* title = "mCODE Data Sender CapabilityStatement: Get in-scope patients using reverse chaining"

* insert mCODE_CapabilityStatement_Server_Common

// GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* insert mCODE_CapabilityStatement_Patient_Server_Common_Rules
* rest[0].resource[0].interaction[1].code = #search-type
* rest[0].resource[0].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[1].extension.valueCode = #SHALL
* rest[0].resource[0].interaction[1].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via reverse chaining searching for conditions in a specific ValueSet."

* rest[0].resource[0].searchParam[0].name = "_has:Condition:subject:code:in"
* rest[0].resource[0].searchParam[0].type = #uri
* rest[0].resource[0].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[0].extension.valueCode = #SHALL

// GET [base]/Group?code=mcode-cancer-patient
// This must be implemented regardless of the method for identifying in-scope patients
* rest[0].resource[1].type = #Group

* rest[0].resource[1].interaction[0].code = #search-type
* rest[0].resource[1].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[0].extension.valueCode = #SHALL
* rest[0].resource[1].interaction[0].documentation = "Retrieve Group of references to Patient resources conforming to mCODE."

* rest[0].resource[1].searchParam[0].name = "code"
* rest[0].resource[1].searchParam[0].type = #token
* rest[0].resource[1].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Group-code"
* rest[0].resource[1].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-patients-and-cancer-conditions
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Uses `_include` to retrieve a Bundle of Condition resources with a code in mCODE's cancer condition value set, along with the associated Patient resources. Use ONLY when reverse chaining is not available on the system."
* name = "CapabilityStatementSenderPatientsAndCancerConditions"
* title = "mCODE Data Sender CapabilityStatement: Get in-scope patients (and associated Conditions) using _include"

* insert mCODE_CapabilityStatement_Server_Common

* insert mCODE_CapabilityStatement_Patient_Server_Common_Rules // Has to be here to make indexing work for the Condition RuleSet below

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject
// GET [base]/Group?code=mcode-cancer-patient
* insert mCODE_CapabilityStatement_Condition_Server_Common_Rules

* rest[0].resource[1].searchInclude[0] = "Condition:subject"

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-cancer-conditions-then-patients
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND `_include` are not available on the system."
* name = "CapabilityStatementSenderConditionsThenPatients"
* title = "mCODE Data Sender: Get Conditions then Patients"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">mCODE Data Receiver: Get Conditions then Patients</h2><ul><li>Implementation Guide Version: None</li><li>FHIR Version: 4.0.1</li><li>Supported formats: xml, json</li><li>Published: 2020-10-30T07:15:00.000000-04:00</li><li>Published by: None</li></ul><p>Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND <code>_include</code> are not available on the system.</p><h3 id=\"behavior\">FHIR RESTful Capabilities</h3><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary of Search Criteria</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#patient\">Patient</a></td><td style=\"white-space:nowrap;\"><a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)</a></td><td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t_id\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td><td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td><td>\n              \n            </td><td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td></tr><tr><td><a href=\"#condition\">Condition</a></td><td style=\"white-space:nowrap;\"><a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)</a></td><td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\tcode:in\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td><td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td><td>\n              \n            </td><td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td></tr><tr><td><a href=\"#group\">Group</a></td><td style=\"white-space:nowrap;\">\n\n\t\t\t\t\t\t</td><td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\tcode\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td><td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td><td>\n              \n            </td><td>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t</td></tr></tbody></table><br></br><h4 class=\"no_toc\" id=\"patient\">Patient</h4><p>Conformance Expectation:\t<strong>undefined</strong></p><p>Supported Profiles:\n\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)</a>\n\t\t\t\t\n\t\t\t\t</p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\tA Client <strong>SHALL</strong> be capable of fetching a Patient resource using:\n\t\t\t\t\t<br></br>\n\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Patient/[id]</code>\n\t\t\t\t</li><br></br><!-- Only SHALL for include for now the capability statement does not create the primitive\n\t\t\t\t     extensios for this yet.  --><!-- Only SHALLs for revinclude for now the capability statement does not create the primitive extensios for this yet --></ul><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html\">_id</a></td><td>\n\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_id=[id]</code></td></tr></tbody></table><hr></hr><h4 class=\"no_toc\" id=\"condition\">Condition</h4><p>Conformance Expectation:\t<strong>undefined</strong></p><p>Supported Profiles:\n\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)</a>\n\t\t\t\t\n\t\t\t\t</p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code><sup>\u2020</sup>.</li></ul><blockquote>search-type<sup>\u2020</sup><p>Identify Patient resources conforming to mCODE's CancerPatient profile via searching for conditions in a specific ValueSet.</p>\n</blockquote><p>Fetch and Search Criteria:</p><ul><!-- Only SHALL for include for now the capability statement does not create the primitive\n\t\t\t\t     extensios for this yet.  --><!-- Only SHALLs for revinclude for now the capability statement does not create the primitive extensios for this yet --></ul><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html\">code:in</a></td><td>\n\t\t\t\t\t\t\turi\n\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?code:in=[uri]</code></td></tr></tbody></table><hr></hr><h4 class=\"no_toc\" id=\"group\">Group</h4><p>Conformance Expectation:\t<strong>undefined</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code><sup>\u2020</sup>.</li></ul><blockquote>search-type<sup>\u2020</sup><p>Retrieve Group of references to Patient resources conforming to mCODE.</p>\n</blockquote><p>Fetch and Search Criteria:</p><ul><!-- Only SHALL for include for now the capability statement does not create the primitive\n\t\t\t\t     extensios for this yet.  --><!-- Only SHALLs for revinclude for now the capability statement does not create the primitive extensios for this yet --></ul><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html\">code</a></td><td>\n\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Group?code=[system]|[code]</code></td></tr></tbody></table><hr></hr><br></br></div>"
* text.status = "generated"
* insert mCODE_CapabilityStatement_Server_Common

* insert mCODE_CapabilityStatement_Patient_Server_Common_Rules // Has to be here to make indexing work for the Condition RuleSet below

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
// GET [base]/Group?code=mcode-cancer-patient
* insert mCODE_CapabilityStatement_Condition_Server_Common_Rules

// GET [base]/Patient?_id=id1|id2|id3
* rest[0].resource[0].searchParam[0].name = "_id"
* rest[0].resource[0].searchParam[0].type = #token
* rest[0].resource[0].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest[0].resource[0].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-patient-bundle
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND `_include` are not available on the system."
* name = "CapabilityStatementPatientBundle"
* title = "mCODE Data Sender: Get Bundle for a Patient"

* insert mCODE_CapabilityStatement_Server_Common

// GET [base]/$mcode-patient-bundle/[id]
* rest[0].operation[0].name = "mcode-patient-bundle"
* rest[0].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
* rest[0].operation[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].operation[0].extension.valueCode = #SHALL