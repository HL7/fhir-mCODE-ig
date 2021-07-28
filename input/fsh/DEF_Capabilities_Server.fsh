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