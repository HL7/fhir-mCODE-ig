```
Instance: primary-cancer-condition-cll
InstanceOf: PrimaryCancerCondition
Title: "primary-cancer-condition-cll"
Description: "Example of Primary Cancer Condition - hematologic cancer"
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item
* code = $sct#92814006 "Chronic lymphoid leukemia, disease (disorder)"
* subject = Reference(cancer-patient-adam-everyman)
* onsetDateTime = "2020-05-12"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = $umls#C2698392 "Binet Stage A"
* stage.assessment = Reference(binet-stage-group-A)
```