```
Instance: us-core-condition-depression-jenny-m
InstanceOf: USCoreCondition
Title: "us-core-condition-depression-jenny-m"
Description: "Extended example: example showing comorbid condition (depression)"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#35489007 "Depressive disorder (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2005-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
```