```
Instance: primary-cancer-condition-breast
InstanceOf: PrimaryCancerCondition
Title: "primary-cancer-condition-breast"
Description: "mCODE Example for Primary Cancer Condition (breast). The example shows post-coordinated coding using SNOMED-CT, with separate codes for morphology and bodySite."
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior"
* extension.valueCodeableConcept = http://snomed.info/sct#77284006 "Lobular carcinoma in situ (morphologic abnormality)"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#363346000 "Malignant neoplastic disease (disorder)"
* bodySite = http://snomed.info/sct#80248007 "Left breast structure (body structure)"
* subject = Reference(cancer-patient-eve-anyperson)
* onsetDateTime = "2019-04-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = http://cancerstaging.org#3C "IIIC"
* stage.assessment = Reference(tnm-clinical-stage-group-3c)
```