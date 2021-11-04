```
Instance: primary-cancer-condition-cll
InstanceOf: PrimaryCancerCondition
Title: "primary-cancer-condition-cll"
Description: "Example of Primary Cancer Condition - hematologic cancer"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#92814006 "Chronic lymphoid leukemia, disease (disorder)"
* subject = Reference(cancer-patient-adam-everyman)
* onsetDateTime = "2020-05-12"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = http://terminology.hl7.org/CodeSystem/umls#C2698392 "Binet Stage A"
* stage.assessment = Reference(binet-stage-group-A)
```