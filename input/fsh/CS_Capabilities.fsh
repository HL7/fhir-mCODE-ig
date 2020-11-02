Profile: MCodeCapabilityStatement
Parent: CapabilityStatement
Title: "mCODE Capability Statement"
Description: "A Capability Statement for mCODE"

// Based on https://github.com/HL7/fhir-saner/blob/master/fsh/CapabilityStatements.fsh
* rest ^slicing.discriminator.type = #value
* rest ^slicing.discriminator.path = "mode"
* rest ^slicing.rules = #open
* rest ^slicing.description = "Slice based on the rest.mode pattern"
* rest contains clientSlice 0..1 and serverSlice 0..1
* rest[clientSlice].mode = #client (exactly)
* rest[serverSlice].mode = #server (exactly)

Instance: mcode-receiver-push
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the requirements for an mCODE Data Receiver in the Push model"
* status = #draft
* experimental = true
* name = "mCODEReceiver_push"
* title = "mCODE Data Receiver - Push"
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* description = "Defines the additional requirements for the mCODE Data Receiver implementing the Push model"
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"

* rest[serverSlice].mode = #server

// Support for `POST [base]/Patient` and `PUT [base]/Patient/[id]`
* rest[serverSlice].resource[0].type = #Patient
* rest[serverSlice].resource[0].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

* rest[serverSlice].resource[0].interaction[0].code = #create
* rest[serverSlice].resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[0].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[0].interaction[1].code = #update
* rest[serverSlice].resource[0].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[0].interaction[1].extension.valueCode = #SHALL

// Support for `POST [base]/Bundle` and `PUT [base]/Bundle/[id]`
* rest[serverSlice].resource[0].type = #Bundle
* rest[serverSlice].resource[0].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle"

* rest[serverSlice].resource[0].interaction[0].code = #create
* rest[serverSlice].resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[0].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[0].interaction[1].code = #update
* rest[serverSlice].resource[0].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[0].interaction[1].extension.valueCode = #SHALL

Instance: mcode-sender-push
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the requirements for an mCODE Data Sender in the Push model"
* status = #draft
* experimental = true
* name = "mCODESender_push"
* title = "mCODE Data Sender - Push"
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* description = "Defines the additional requirements for the mCODE Data Sender implementing the Push model"
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"

* rest[clientSlice].mode = #client

// Support for `POST [base]/Patient` and `PUT [base]/Patient/[id]`
* rest[clientSlice].resource[0].type = #Patient
* rest[clientSlice].resource[0].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

* rest[clientSlice].resource[0].interaction[0].code = #create
* rest[clientSlice].resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[0].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[0].interaction[1].code = #update
* rest[clientSlice].resource[0].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[0].interaction[1].extension.valueCode = #SHALL

// Support for `POST [base]/Bundle` and `PUT [base]/Bundle/[id]`
* rest[clientSlice].resource[0].type = #Bundle
* rest[clientSlice].resource[0].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle"

* rest[clientSlice].resource[0].interaction[0].code = #create
* rest[clientSlice].resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[0].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[0].interaction[1].code = #update
* rest[clientSlice].resource[0].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[0].interaction[1].extension.valueCode = #SHALL
