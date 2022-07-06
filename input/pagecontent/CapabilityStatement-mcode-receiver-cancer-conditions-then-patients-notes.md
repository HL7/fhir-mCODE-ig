```
Instance: mcode-receiver-cancer-conditions-then-patients
InstanceOf: CapabilityStatement
Title: "mcode-receiver-cancer-conditions-then-patients"
Description: "Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND `_include` are not available on the system."
Usage: #definition
* url = "http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-receiver-cancer-conditions-then-patients"
* version = "2.0.0"
* name = "CapabilityStatementReceiverConditionsThenPatients"
* title = "mCODE Data Receiver: Get Conditions then Patients"
* status = #draft
* experimental = true
* date = "2020-10-30T07:15:00.000000-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* description = "Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND `_include` are not available on the system."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"
* rest.mode = #client
* rest.documentation = "An mCODE Client **SHALL**:\n\n1. Support all profiles defined in this Implementation Guide..\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json source formats for all mCODE interactions.\n1. Identify the mCODE  profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile individually and in combination.\n\nThe mCODE Client **SHOULD**:\n\n1. Support xml source formats for all mCODE interactions.\n"
* rest.security.description = "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n1. A client **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* rest.resource[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #Patient
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].interaction.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction.extension.valueCode = #SHALL
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchParam.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam.extension.valueCode = #SHALL
* rest.resource[=].searchParam.name = "_id"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest.resource[=].searchParam.type = #token
* rest.resource[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #Condition
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
* rest.resource[=].interaction.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction.extension.valueCode = #SHALL
* rest.resource[=].interaction.code = #search-type
* rest.resource[=].interaction.documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via searching for conditions in a specific ValueSet."
* rest.resource[=].searchParam.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam.extension.valueCode = #SHALL
* rest.resource[=].searchParam.name = "code:in"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Condition-code"
* rest.resource[=].searchParam.type = #uri
* rest.resource[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #Group
* rest.resource[=].interaction.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction.extension.valueCode = #SHALL
* rest.resource[=].interaction.code = #search-type
* rest.resource[=].interaction.documentation = "Retrieve Group of references to Patient resources conforming to mCODE."
* rest.resource[=].searchParam.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam.extension.valueCode = #SHALL
* rest.resource[=].searchParam.name = "code"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/SearchParameter/Group-code"
* rest.resource[=].searchParam.type = #token
```