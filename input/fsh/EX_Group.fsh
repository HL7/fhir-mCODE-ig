Instance: mCODEPatientGroupExample1
InstanceOf: Group
Usage: #example
Title: "mCODE Patient Group Example"
Description: "Example of a Group identifying mCODE Patients"

* id = "mCODEPatientGroupExample1"
* type = #person
* actual = true

* code = #mcode-patient

* member[0].entity = Reference(Patient/mCODEPatientExample1)
* member[1].entity = Reference(Patient/mCODEPatientExample2)