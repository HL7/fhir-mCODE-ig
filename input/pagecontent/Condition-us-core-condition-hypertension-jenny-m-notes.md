```
Instance: us-core-condition-hypertension-jenny-m
InstanceOf: USCoreConditionProblemsHealthConcernsProfile
Title: "us-core-condition-hypertension-jenny-m"
Description: "Extended example: example showing comorbid condition (hypertension)"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#77970009 "Benign hypertensive heart disease without congestive heart failure (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2012-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
```