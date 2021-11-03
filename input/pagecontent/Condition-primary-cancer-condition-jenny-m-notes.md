```
Instance: primary-cancer-condition-jenny-m
InstanceOf: PrimaryCancerCondition
Title: "primary-cancer-condition-jenny-m"
Description: "Extended example: example showing primary cancer condition"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior"
* extension.valueCodeableConcept = $sct#413448000 "Adenocarcinoma, no subtype, intermediate grade (morphologic abnormality)"
* clinicalStatus = $condition-clinical#remission
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $sct#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2018-03-16"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* stage.summary = $cancerstaging#3C
* stage.assessment = Reference(tnm-clinical-stage-group-jenny-m)
```