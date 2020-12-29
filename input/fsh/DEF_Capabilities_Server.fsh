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

// GET [base]/$mcode-patient-bundle/[id]
* rest[serverSlice].operation[0].name = "mcode-patient-bundle"
* rest[serverSlice].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
* rest[serverSlice].operation[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].operation[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

// Common rules for fallback 1 and 2
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
* description = "Preferred capabilities for an mCODE Data Sender where all cancer patients conform to mCODE. Uses reverse chaining to retrieve a Bundle of Patient resources with a condition code in mCODE's cancer condition value set."
* name = "MCODESenderPreferred"
* title = "mCODE Data Sender - preferred, includes all cancer patients"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Server

// GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* rest[serverSlice].resource[PatientSlice].interaction[1].code = #search-type
* rest[serverSlice].resource[PatientSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[1].extension.valueCode = #SHALL
* rest[serverSlice].resource[PatientSlice].interaction[1].documentation = "Identify Patient resources conforming to mCODE's CancerPatient profile via reverse chaining searching for conditions in a specific ValueSet."

* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_has:Condition:subject:code:in"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-fallback1
InstanceOf: MCodeCapabilityStatement
Usage: #definition
* description = "Primary fallback capabilities for an mCODE Data Sender where all cancer patients conform to mCODE. Uses `_include` to retrieve a Bundle of Condition resources with a code in mCODE's cancer condition value set, along with the associated Patient resources. Use ONLY when reverse chaining is not available on the system."
* name = "MCODESenderFallback1"
* title = "mCODE Data Sender - primary fallback, includes all cancer patients"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Server

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject
* insert mCODE_CS_Server_Fallback

* rest[serverSlice].resource[ConditionSlice].searchInclude[0] = "Condition:subject"

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-fallback2
InstanceOf: MCodeCapabilityStatement
Usage: #definition
* description = "Secondary fallback capabilities for an mCODE Data Sender where all cancer patients conform to mCODE. Retrieves a Bundle of Condition resources with a code in mCODE's cancer condition value set, and allows for associated Patient resources to be retrieved in a subsequent request. Use ONLY when reverse chaining AND `_include` are not available on the system."
* name = "MCODESenderFallback2"
* title = "mCODE Data Sender - secondary fallback, includes all cancer patients"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Server

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* insert mCODE_CS_Server_Fallback

// GET [base]/Patient?_id=id1|id2|id3
* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #token
* rest[serverSlice].resource[PatientSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-subset
InstanceOf: MCodeCapabilityStatement
Usage: #definition
* description = "Capabilities for an mCODE Data Sender where not all cancer patients conform to mCODE. Retrieves a Group of references to Patient resources that conform to mCODE, and allows for the full Patient resources to be retrieved in a subsequent request."
* name = "MCODESenderSubset"
* title = "mCODE Data Sender - not all cancer patients conform to mCODE"
* insert mCODECapabilityStatementRules

* insert mCODE_CS_Server

// GET [base]/Group?value=mcode-cancer-patient
* rest[serverSlice].resource[GroupSlice].type = #Group
* rest[serverSlice].resource[GroupSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-group"

* rest[serverSlice].resource[GroupSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[GroupSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[GroupSlice].interaction[0].extension.valueCode = #SHALL
* rest[serverSlice].resource[GroupSlice].interaction[0].documentation = "Retrieve Group of references to Patient resources conforming to mCODE."

* rest[serverSlice].resource[GroupSlice].searchParam[0].name = "value"
* rest[serverSlice].resource[GroupSlice].searchParam[0].type = #uri
* rest[serverSlice].resource[GroupSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Group-value"
* rest[serverSlice].resource[GroupSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[GroupSlice].searchParam[0].extension.valueCode = #SHALL

// GET [base]/Patient?_id=id1|id2|id3
* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #token
* rest[serverSlice].resource[PatientSlice].searchParam[0].definition = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL
