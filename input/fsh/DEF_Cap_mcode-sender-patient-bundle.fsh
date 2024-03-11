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
