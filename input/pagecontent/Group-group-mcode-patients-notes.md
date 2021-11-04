```
Instance: group-mcode-patients
InstanceOf: MCODEPatientGroup
Title: "mCODE Patient Group Example"
Description: "Example of a Group identifying in-scope patients"
Usage: #example
* type = #person
* actual = true
* code = http://ncithesaurus-stage.nci.nih.gov#C19700 "Cancer Patient"
* member[0].entity = Reference(cancer-patient-john-anyperson)
* member[+].entity = Reference(cancer-patient-eve-anyperson)
```