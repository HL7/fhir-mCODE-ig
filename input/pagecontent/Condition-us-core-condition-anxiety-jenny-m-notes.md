```
Instance: us-core-condition-anxiety-jenny-m
InstanceOf: USCoreCondition
Title: "us-core-condition-anxiety-jenny-m"
Description: "Extended example: example showing comorbid condition (anxiety)"
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#48694002 "Anxiety (finding)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2005-01-01"
```