```
Instance: primary-cancer-condition-jenny-m
InstanceOf: PrimaryCancerCondition
Title: "primary-cancer-condition-jenny-m"
Description: "Extended example: example showing primary cancer condition"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior"
* extension.valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension.valueCodeableConcept.coding = http://snomed.info/sct#413448000 "Adenocarcinoma, no subtype, intermediate grade (morphologic abnormality)"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#remission
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category[+].coding.version = "http://snomed.info/sct/900000000000207008"
* category[=].coding = http://snomed.info/sct#372087000
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2018-03-16"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* stage.summary.coding.version = "http://snomed.info/sct/900000000000207008"
* stage.summary.coding = http://snomed.info/sct#1222806003 "American Joint Committee on Cancer stage IIIC (qualifier value)"
* stage.assessment = Reference(tnm-clinical-stage-group-jenny-m)
* stage.type.coding.version = "http://snomed.info/sct/900000000000207008"
* stage.type.coding = http://snomed.info/sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```