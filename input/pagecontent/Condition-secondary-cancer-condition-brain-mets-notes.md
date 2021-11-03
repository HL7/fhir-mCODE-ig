```
Instance: secondary-cancer-condition-brain-mets
InstanceOf: SecondaryCancerCondition
Title: "secondary-cancer-condition-brain-mets"
Description: "Example of Secondary Cancer Condition"
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension.valueReference = Reference(primary-cancer-condition-nsclc)
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item
* code = $sct#94225005 "Secondary malignant neoplasm of brain"
* subject = Reference(cancer-patient-john-anyperson)
* onsetDateTime = "2019-05-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
```