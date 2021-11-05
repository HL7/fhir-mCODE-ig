```
Instance: primary-cancer-condition-jenny-m
InstanceOf: PrimaryCancerCondition
Title: "primary-cancer-condition-jenny-m"
Description: "Extended example: example showing primary cancer condition"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior"
* extension.valueCodeableConcept = http://snomed.info/sct#413448000 "Adenocarcinoma, no subtype, intermediate grade (morphologic abnormality)"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#remission
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2018-03-16"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* stage.summary = http://cancerstaging.org#3C
* stage.assessment = Reference(tnm-clinical-stage-group-jenny-m)
```