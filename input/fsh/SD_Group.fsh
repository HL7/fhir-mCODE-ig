Profile: MCodePatientGroup
Parent: Group
Id: mcode-patient-group
Title: "mCODE Patient Group"
Description: "Identifies all mCODE patients for a given mCODE Data Sender.

Conformance Statement:

This group MUST contain all Patient resources considered by the implementer to be mCODE Cancer
Patients. These Patient resources therefore MUST conform to [CancerPatient].

[CancerPatient]: StructureDefinition-mcode-cancer-patient.html
"

* type = #person
* actual = true
* code 0..0 // Per https://www.hl7.org/fhir/group-definitions.html#Group.code, should be omitted for Person resources.

// "Identifies traits whose presence or absence is shared by members of the group."
// https://www.hl7.org/fhir/group-definitions.html#Group.characteristic.code
* characteristic 1..*
* characteristic.code = #administrative
* characteristic.valueCodeableConcept = #mcode-cancer-patient "mCODE Cancer Patient"
* characteristic.exclude = false

* member and member.entity MS
* member.entity only Reference(CancerPatient)
* member ^short = "References to all mCODE Cancer Patients available to the Data Sender"
* member ^definition = "Contains references to all mCODE Cancer Patients available to the Data Sender."
* member.entity ^short = "Reference to an mCODE Cancer Patient"
* member.entity ^definition = "Reference to an mCODE Cancer Patient."