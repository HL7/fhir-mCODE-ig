Instance: MCODEGroupExample
InstanceOf: mcode-patient-group
Usage: #example
Title: "MCODEGroupExample"
Description: "Example of an mCODE Group"

* id = "scenario1-mcode-patient-group"

// * characteristic.valueCodeableConcept = SCT#363346000 "Malignant neoplastic disease (disorder)"
// * characteristic.exclude = false // Required in order to set the characteristic value

* characteristic.valueCodeableConcept = #mcode-cancer-patient "mCODE Cancer Patient"
* characteristic.exclude = false // Required in order to set the characteristic value


* member[0].entity = Reference(Patient/mCODEPatientExample1)
* member[1].entity = Reference(Patient/mCODEPatientExample2)