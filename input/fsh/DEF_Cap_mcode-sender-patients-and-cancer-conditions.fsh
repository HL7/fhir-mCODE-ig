Instance: mcode-sender-patients-and-cancer-conditions
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Uses `_include` to retrieve a Bundle of Condition resources with a code in mCODE's cancer condition value set, along with the associated Patient resources. Use ONLY when reverse chaining is not available on the system."
* name = "CapabilityStatementSenderPatientsAndCancerConditions"
* title = "mCODE Data Sender CapabilityStatement: Get in-scope patients (and associated Conditions) using _include"
* insert mCODE_CapabilityStatement_Server_Common

* insert mCODE_CapabilityStatement_Patient_Server_Common_Rules // Has to be here to make indexing work for the Condition RuleSet below

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-cancer-disorder-vs&_include=Condition:subject
// GET [base]/Group?code=mcode-cancer-patient
* insert mCODE_CapabilityStatement_Condition_Server_Common_Rules

* rest[0].resource[1].searchInclude[0] = "Condition:subject"
