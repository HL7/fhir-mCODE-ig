```
Instance: us-core-procedure-biopsy-jenny-m
InstanceOf: USCoreProcedureProfile
Title: "us-core-procedure-biopsy-jenny-m"
Description: "Extended example: example biopsy procedure"
Usage: #example
* status = #completed
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#723990008 "Biopsy of breast using ultrasonographic guidance (procedure)"
* subject = Reference(cancer-patient-jenny-m)
* performedDateTime = "2018-03-06"
* asserter = Reference(us-core-practitioner-mary-obgyn)
* performer.actor = Reference(us-core-practitioner-mary-obgyn)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008"
* bodySite.coding = http://snomed.info/sct#80248007 "Left breast structure (body structure)"
```