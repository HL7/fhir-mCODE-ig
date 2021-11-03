```
Instance: primary-cancer-condition-breast
InstanceOf: PrimaryCancerCondition
Title: "primary-cancer-condition-breast"
Description: "mCODE Example for Primary Cancer Condition (breast). The example shows post-coordinated coding using SNOMED-CT, with separate codes for morphology and bodySite."
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior"
* extension.valueCodeableConcept = $sct#77284006 "Lobular carcinoma in situ (morphologic abnormality)"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item
* code = $sct#363346000 "Malignant neoplastic disease (disorder)"
* bodySite = $sct#80248007 "Left breast structure (body structure)"
* subject = Reference(cancer-patient-eve-anyperson)
* onsetDateTime = "2019-04-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = $cancerstaging#3C "IIIC"
* stage.assessment = Reference(tnm-clinical-stage-group-3c)
```