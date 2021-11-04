```
Instance: us-core-condition-hypertension-jenny-m
InstanceOf: USCoreCondition
Title: "us-core-condition-hypertension-jenny-m"
Description: "Extended example: example showing comorbid condition (hypertension)"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#77970009 "Benign hypertensive heart disease without congestive heart failure (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2012-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
```