```
Instance: us-core-procedure-mammogram-jenny-m
InstanceOf: USCoreProcedureProfile
Title: "us-core-procedure-mammogram-jenny-m"
Description: "Extended example: example mammogram"
Usage: #example
* status = #completed
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#71651007 "Mammography (procedure)"
* subject = Reference(cancer-patient-jenny-m)
* performedDateTime = "2018-02-01"
* asserter = Reference(us-core-practitioner-mary-obgyn)
* performer.actor = Reference(us-core-practitioner-jane-radiotech)
```