```
Instance: mcode-sender-patient-bundle
InstanceOf: CapabilityStatement
Title: "mcode-sender-patient-bundle"
Description: "Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND `_include` are not available on the system."
Usage: #definition
* url = "http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-sender-patient-bundle"
* description = "Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND `_include` are not available on the system."
* name = "CapabilityStatementPatientBundle"
* title = "mCODE Data Sender: Get Bundle for a Patient"
* status = #draft
* experimental = true
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* format[0] = #xml
* format[+] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"
* rest.mode = #server
* rest.documentation = "An mCODE Server **SHALL**:\n\n1. Support all profiles defined in this Implementation Guide..\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json source formats for all mCODE interactions.\n1. Identify the mCODE  profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile individually and in combination.\n\nThe mCODE Server **SHOULD**:\n\n1. Support xml source formats for all mCODE interactions.\n"
* rest.security.description = "1. See the [General Security Considerations](implementation.html#general-security-considerations) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* rest.operation.name = "mcode-patient-bundle"
* rest.operation.definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
* rest.operation.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.operation.extension.valueCode = #SHALL
```