```
Instance: us-core-observation-lab-tumor-grade-jenny-m
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "us-core-observation-lab-tumor-grade-jenny-m"
Description: "Extended example: example showing DCIS diagnosis"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#44648-4 "Histologic grade [Score] in Breast cancer specimen Qualitative by Nottingham"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* valueCodeableConcept = http://loinc.org#LA27824-4 "Nottingham grade 2"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)
```