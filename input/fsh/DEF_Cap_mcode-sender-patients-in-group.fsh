Instance: mcode-sender-patients-in-group
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Capabilities for an mCODE Data Sender where not all cancer patients conform to mCODE. Retrieves a Group of references to Patient resources that conform to mCODE, and allows for the full Patient resources to be retrieved in a subsequent request."
* name = "CapabilityStatementSenderPatientsInGroup"
* title = "mCODE Data Sender: Get Patients in Group"
* insert mCODE_CapabilityStatement_Server_Common

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
* insert mCODE_CapabilityStatement_Patient_Server_Common_Rules
* rest[0].resource[0].searchParam[0].name = "_id"
* rest[0].resource[0].searchParam[0].type = #token
* rest[0].resource[0].searchParam[0].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-id"
* rest[0].resource[0].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[0].extension.valueCode = #SHALL
