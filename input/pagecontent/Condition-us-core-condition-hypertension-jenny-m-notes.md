```
Instance: us-core-condition-hypertension-jenny-m
InstanceOf: USCoreCondition
Title: "us-core-condition-hypertension-jenny-m"
Description: "Extended example: example showing comorbid condition (hypertension)"
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $sct#77970009 "Benign hypertensive heart disease without congestive heart failure (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2012-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
```