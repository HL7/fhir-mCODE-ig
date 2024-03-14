Instance: mcode-receiver-patient-bundle
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Gets an [mCODE Patient Bundle](StructureDefinition-mcode-patient-bundle.html) for a specific patient that contains all of that patient's resources that conform to mCODE Profiles."
* name = "CapabilityStatementPatientBundle"
* title = "mCODE Data Receiver: Get Bundle for a Patient"
* insert mCODE_CapabilityStatement_Client_Common

// GET [base]/$mcode-patient-bundle/[id]
* rest[0].operation[0].name = "mcode-patient-bundle"
* rest[0].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
* rest[0].operation[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].operation[0].extension.valueCode = #SHALL
