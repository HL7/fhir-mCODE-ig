```
Instance: primary-cancer-condition-nsclc
InstanceOf: PrimaryCancerCondition
Title: "primary-cancer-condition-nsclc"
Description: "Example of Primary Cancer Condition"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior"
* extension.valueCodeableConcept = $sct#35917007 "Adenocarcinoma"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item
* code = $sct#254637007 "Non-small cell lung cancer (disorder)"
* bodySite.extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
* bodySite.extension.valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* bodySite = $sct#39607008 "Lung structure (body structure)"
* subject = Reference(cancer-patient-john-anyperson)
* onsetDateTime = "2019-04-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = $cancerstaging#3C "IIIC"
* stage.assessment = Reference(tnm-clinical-stage-group-3c)
```