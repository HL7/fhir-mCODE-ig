```
Instance: us-core-observation-lab-tumor-dcis-jenny-m
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "us-core-observation-lab-tumor-dcis-jenny-m"
Description: "Extended example: example showing DCIS diagnosis"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#85336-6 "DCIS intraductal extension in Breast cancer specimen Qualitative by Light microscopy"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* valueCodeableConcept = http://loinc.org#LA27261-9 "DCIS present with extensive intraductal component (EIC)"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)
```