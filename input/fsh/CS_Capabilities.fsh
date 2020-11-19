Profile: MCodeCapabilityStatement
Parent: CapabilityStatement
Title: "mCODE Capability Statement"
Description: "A Capability Statement for mCODE"

// Based on pattern from https://github.com/HL7/fhir-saner/blob/master/fsh/CapabilityStatements.fsh
* rest ^slicing.discriminator.type = #value
* rest ^slicing.discriminator.path = "mode"
* rest ^slicing.rules = #open
* rest ^slicing.description = "Slice based on the rest.mode pattern"
* rest contains clientSlice 0..1 and serverSlice 0..1
* rest[clientSlice].mode = #client (exactly)
* rest[serverSlice].mode = #server (exactly)

* rest.resource ^slicing.discriminator.type = #value
* rest.resource ^slicing.discriminator.path = "type"
* rest.resource ^slicing.rules = #open
* rest.resource ^slicing.description = "Slice based on the rest.resource.type pattern"
* rest.resource contains
    PatientSlice 0..1 and
    BundleSlice 0..1 and
    ConditionSlice 0..1

* rest.resource[PatientSlice].type = #Patient (exactly)
* rest.resource[BundleSlice].type = #Bundle (exactly)
* rest.resource[ConditionSlice].type = #Condition (exactly)

///////////////////////////////////////////////////////////////////////////////////////////////////

// Common rules used in all CapabilityStatements below
RuleSet: mCODECapabilityStatementRules
* status = #draft
* experimental = true
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// Server //////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////

// Defines common operations for the server role
RuleSet: mCODE_CS_Server
* rest[serverSlice].mode = #server

* rest[serverSlice].resource[PatientSlice].type = #Patient
* rest[serverSlice].resource[PatientSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

// GET [base]/Patient/[id]
* rest[serverSlice].resource[PatientSlice].interaction[0].code = #read
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[serverSlice].resource[PatientSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

// GET [base]/$mcode-patient-bundle/[id]
* rest[serverSlice].operation[0].name = "mcode-patient-bundle"
* rest[serverSlice].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[serverSlice].operation[0].extension.url = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[serverSlice].operation[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

// Common rules for fallback 2 and 3
RuleSet: mCODE_CS_Server_Fallback
* rest[serverSlice].resource[ConditionSlice].type = #Condition
* rest[serverSlice].resource[ConditionSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

* rest[serverSlice].resource[ConditionSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[ConditionSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].interaction[0].extension.valueCode = #SHALL
* rest[serverSlice].resource[ConditionSlice].interaction[0].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via searching for conditions in a specific ValueSet."

* rest[serverSlice].resource[ConditionSlice].searchParam[0].name = "code:in"
* rest[serverSlice].resource[ConditionSlice].searchParam[0].type = #uri
* rest[serverSlice].resource[ConditionSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Condition-code"
* rest[serverSlice].resource[ConditionSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-preferred
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the preferred requirements for an mCODE Data Sender"
* name = "mCODESender_preferred"
* title = "mCODE Data Sender"
* description = "Defines the preferred requirements for the mCODE Data Sender"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Server

// GET [base]/Patient/_profile=...
* rest[serverSlice].resource[PatientSlice].interaction[1].code = #search-type
* rest[serverSlice].resource[PatientSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[1].extension.valueCode = #SHALL
* rest[serverSlice].resource[PatientSlice].interaction[1].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via tagging with meta.profile."

* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_profile"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #token
* rest[serverSlice].resource[PatientSlice].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Resource-profile"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-fallback1
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the primary fallback requirements for an mCODE Data Sender"
* name = "mCODESender_fallback1"
* title = "mCODE Data Sender"
* description = "Defines the primary fallback requirements for the mCODE Data Sender"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Server

// GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* rest[serverSlice].resource[PatientSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL
* rest[serverSlice].resource[PatientSlice].interaction[0].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via reverse chaining searching for conditions in a specific ValueSet."

* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_has:Condition:subject:code:in"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-fallback2
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the secondary fallback requirements for an mCODE Data Sender"
* name = "mCODESender_fallback2"
* title = "mCODE Data Sender"
* description = "Defines the secondary fallback requirements for the mCODE Data Sender"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Server

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject
* insert mCODE_CS_Server_Fallback

* rest[serverSlice].resource[ConditionSlice].searchInclude[0] = "Condition:subject"

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-fallback3
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the tertiary fallback requirements for an mCODE Data Sender"
* name = "mCODESender_fallback3"
* title = "mCODE Data Sender"
* description = "Defines the tertiary fallback requirements for the mCODE Data Sender"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Server

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* insert mCODE_CS_Server_Fallback

///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// Client //////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////

// Defines common operations for the client role
RuleSet: mCODE_CS_Client
* rest[clientSlice].mode = #client

* rest[clientSlice].resource[PatientSlice].type = #Patient
* rest[clientSlice].resource[PatientSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

// GET [base]/Patient/[id]
// TODO: is this the correct way to specify this? Do I need an additional `searchParam` to specify `[id]`?
* rest[clientSlice].resource[PatientSlice].interaction[0].code = #read
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[clientSlice].resource[PatientSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

// GET [base]/$mcode-patient-bundle/[id]
* rest[clientSlice].operation[0].name = "mcode-patient-bundle"
* rest[clientSlice].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[clientSlice].operation[0].extension.url = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[clientSlice].operation[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

// Common rules for fallback 2 and 3
RuleSet: mCODE_CS_Client_Fallback
* rest[clientSlice].resource[ConditionSlice].type = #Condition
* rest[clientSlice].resource[ConditionSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

* rest[clientSlice].resource[ConditionSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[ConditionSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].interaction[0].extension.valueCode = #SHALL
* rest[clientSlice].resource[ConditionSlice].interaction[0].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via searching for conditions in a specific ValueSet."

* rest[clientSlice].resource[ConditionSlice].searchParam[0].name = "code:in"
* rest[clientSlice].resource[ConditionSlice].searchParam[0].type = #uri
* rest[clientSlice].resource[ConditionSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Condition-code"
* rest[clientSlice].resource[ConditionSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-receiver-preferred
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the preferred requirements for an mCODE Data Receiver"
* name = "mCODEReceiver_preferred"
* title = "mCODE Data Receiver"
* description = "Defines the preferred requirements for the mCODE Data Receiver"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Client

// GET [base]/Patient/_profile=...
* rest[clientSlice].resource[PatientSlice].interaction[1].code = #search-type
* rest[clientSlice].resource[PatientSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[1].extension.valueCode = #SHALL
* rest[clientSlice].resource[PatientSlice].interaction[1].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via tagging with meta.profile."

* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_profile"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #token
* rest[clientSlice].resource[PatientSlice].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Resource-profile"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-receiver-fallback1
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the primary fallback requirements for an mCODE Data Receiver"
* name = "mCODEReceiver_fallback1"
* title = "mCODE Data Receiver"
* description = "Defines the primary fallback requirements for the mCODE Data Receiver"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Client

// GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* rest[clientSlice].resource[PatientSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL
* rest[clientSlice].resource[PatientSlice].interaction[0].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via reverse chaining searching for conditions in a specific ValueSet."

* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_has:Condition:subject:code:in"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-receiver-fallback2
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the secondary fallback requirements for an mCODE Data Receiver"
* name = "mCODEReceiver_fallback2"
* title = "mCODE Data Receiver"
* description = "Defines the secondary fallback requirements for the mCODE Data Receiver"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Client

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject
* insert mCODE_CS_Client_Fallback

* rest[clientSlice].resource[ConditionSlice].searchInclude[0] = "Condition:subject"

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-receiver-fallback3
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the tertiary fallback requirements for an mCODE Data Receiver"
* name = "mCODEReceiver_fallback3"
* title = "mCODE Data Receiver"
* description = "Defines the tertiary fallback requirements for the mCODE Data Receiver"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Client

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* insert mCODE_CS_Client_Fallback

///////////////////////////////////////////////////////////////////////////////////////////////////
