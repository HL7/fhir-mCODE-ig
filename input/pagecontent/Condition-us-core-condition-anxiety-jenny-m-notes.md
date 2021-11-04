```
Instance: us-core-condition-anxiety-jenny-m
InstanceOf: USCoreCondition
Title: "us-core-condition-anxiety-jenny-m"
Description: "Extended example: example showing comorbid condition (anxiety)"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code = http://snomed.info/sct#48694002 "Anxiety (finding)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2005-01-01"
```