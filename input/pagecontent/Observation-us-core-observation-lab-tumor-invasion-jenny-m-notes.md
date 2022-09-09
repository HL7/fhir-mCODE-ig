```
Instance: us-core-observation-lab-tumor-invasion-jenny-m
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "us-core-observation-lab-tumor-invasion-jenny-m"
Description: "Extended example: example showing negative invasion for the removed tumor"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#370052007 "Status of invasion by tumor"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#260385009 "Negative (qualifier value)"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)
```