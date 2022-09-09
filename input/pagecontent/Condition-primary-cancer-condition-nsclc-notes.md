```
Instance: primary-cancer-condition-nsclc
InstanceOf: PrimaryCancerCondition
Title: "primary-cancer-condition-nsclc"
Description: "Example of Primary Cancer Condition"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior"
* extension.valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension.valueCodeableConcept.coding = http://snomed.info/sct#35917007 "Adenocarcinoma"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category[+].coding.version = "http://snomed.info/sct/900000000000207008"
* category[=].coding = http://snomed.info/sct#372087000
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#254637007 "Non-small cell lung cancer (disorder)"
* bodySite.extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
* bodySite.extension.valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* bodySite.extension.valueCodeableConcept.coding = http://snomed.info/sct#7771000 "Left (qualifier value)"
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008"
* bodySite.coding = http://snomed.info/sct#39607008 "Lung structure (body structure)"
* subject = Reference(cancer-patient-john-anyperson)
* onsetDateTime = "2019-04-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary.coding.version = "http://snomed.info/sct/900000000000207008"
* stage.summary.coding = http://snomed.info/sct#1222806003 "American Joint Committee on Cancer stage IIIC (qualifier value)"
* stage.assessment = Reference(tnm-clinical-stage-group-3c)
```