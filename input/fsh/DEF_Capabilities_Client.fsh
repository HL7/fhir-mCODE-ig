// This is generated from `DEF_Capabilities_Server.fsh` using the following command
/*
cat input/fsh/DEF_Capabilities_Server.fsh | sed 's/Server/Client/g' | sed 's/server/client/g' | sed 's/sender/receiver/g' | sed 's/Sender/Receiver/g' >> input/fsh/DEF_Capabilities_Client.fsh
*/

///////////////////////////////////////////////////////////////////////////////////////////////////

// Defines common operations for the client role
RuleSet: mCODE_CS_Client
* rest[clientSlice].mode = #client

* rest[clientSlice].resource[PatientSlice].type = #Patient
* rest[clientSlice].resource[PatientSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

// GET [base]/Patient/[id]
* rest[clientSlice].resource[PatientSlice].interaction[0].code = #read
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

// GET [base]/$mcode-patient-bundle/[id]
* rest[clientSlice].operation[0].name = "mcode-patient-bundle"
* rest[clientSlice].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
* rest[clientSlice].operation[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].operation[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

// Common rules for fallback 1 and 2
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
* description = "Preferred capabilities for an mCODE Data Receiver where all cancer patients conform to mCODE. Uses reverse chaining to retrieve a Bundle of Patient resources with a condition code in mCODE's cancer condition value set."
* name = "MCODEReceiverPreferred"
* title = "mCODE Data Receiver - preferred, includes all cancer patients"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Client

// GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* rest[clientSlice].resource[PatientSlice].interaction[1].code = #search-type
* rest[clientSlice].resource[PatientSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[1].extension.valueCode = #SHALL
* rest[clientSlice].resource[PatientSlice].interaction[1].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via reverse chaining searching for conditions in a specific ValueSet."

* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_has:Condition:subject:code:in"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-receiver-fallback1
InstanceOf: MCodeCapabilityStatement
Usage: #definition
* description = "Primary fallback capabilities for an mCODE Data Receiver where all cancer patients conform to mCODE. Uses `_include` to retrieve a Bundle of Condition resources with a code in mCODE's cancer condition value set, along with the associated Patient resources. Use ONLY when reverse chaining is not available on the system."
* name = "MCODEReceiverFallback1"
* title = "mCODE Data Receiver - primary fallback, includes all cancer patients"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Client

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject
* insert mCODE_CS_Client_Fallback

* rest[clientSlice].resource[ConditionSlice].searchInclude[0] = "Condition:subject"

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-receiver-fallback2
InstanceOf: MCodeCapabilityStatement
Usage: #definition
* description = "Secondary fallback capabilities for an mCODE Data Receiver where all cancer patients conform to mCODE. Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND `_include` are not available on the system."
* name = "MCODEReceiverFallback2"
* title = "mCODE Data Receiver - secondary fallback, includes all cancer patients"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Client

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* insert mCODE_CS_Client_Fallback

// GET [base]/Patient?_id=id1|id2|id3
* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #token
* rest[clientSlice].resource[PatientSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-receiver-subset
InstanceOf: MCodeCapabilityStatement
Usage: #definition
* description = "Capabilities for an mCODE Data Receiver where not all cancer patients conform to mCODE. Retrieves a Group of references to Patient resources that conform to mCODE, and allows for the full Patient resources to be retrieved in a subsequent request."
* name = "MCODEReceiverSubset"
* title = "mCODE Data Receiver - not all cancer patients conform to mCODE"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Client

// GET [base]/Group?value=mcode-cancer-patient
* rest[clientSlice].resource[GroupSlice].type = #Group
* rest[clientSlice].resource[GroupSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-group"

* rest[clientSlice].resource[GroupSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[GroupSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[GroupSlice].interaction[0].extension.valueCode = #SHALL
* rest[clientSlice].resource[GroupSlice].interaction[0].documentation = "Retrieve Group of references to Patient resources conforming to mCODE."

* rest[clientSlice].resource[GroupSlice].searchParam[0].name = "value"
* rest[clientSlice].resource[GroupSlice].searchParam[0].type = #uri
* rest[clientSlice].resource[GroupSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Group-value"
* rest[clientSlice].resource[GroupSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[GroupSlice].searchParam[0].extension.valueCode = #SHALL

// GET [base]/Patient?_id=id1|id2|id3
* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #token
* rest[clientSlice].resource[PatientSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL
