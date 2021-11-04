```
Instance: us-core-observation-lab-tumor-margins-jenny-m
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "us-core-observation-lab-tumor-margins-jenny-m"
Description: "Extended example: example showing negative margins for the removed tumor"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#44669-0 "Margin involvement in Breast tumor"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* valueCodeableConcept = http://loinc.org#LA27151-2 "Uninvolved by invasive carcinoma"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)
```