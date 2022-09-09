```
Instance: us-core-condition-depression-jenny-m
InstanceOf: USCoreConditionProblemsHealthConcernsProfile
Title: "us-core-condition-depression-jenny-m"
Description: "Extended example: example showing comorbid condition (depression)"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#35489007 "Depressive disorder (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2005-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
```