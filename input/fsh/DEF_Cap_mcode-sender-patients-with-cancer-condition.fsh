Instance: mcode-sender-patients-with-cancer-condition
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Uses reverse chaining to retrieve a Bundle of Patient resources with a condition code in mCODE's cancer condition value set."
* name = "CapabilityStatementSenderPatientsWithCancerCondition"
* title = "mCODE Data Sender CapabilityStatement: Get in-scope patients using reverse chaining"
* insert mCODE_CapabilityStatement_Server_Common

// GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-cancer-disorder-vs
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
