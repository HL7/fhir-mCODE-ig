```
Instance: us-core-condition-depression-jenny-m
InstanceOf: USCoreCondition
Title: "us-core-condition-depression-jenny-m"
Description: "Extended example: example showing comorbid condition (depression)"
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $sct#35489007 "Depressive disorder (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2005-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
```