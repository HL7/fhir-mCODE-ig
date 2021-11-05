```
Instance: us-core-observation-lab-neutrophils-jenny-m
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "us-core-observation-lab-neutrophils-jenny-m"
Description: "Extended example: neutrophils lab test"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#26499-4 "Neutrophils [#/volume] in Blood"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-05-20T00:00:00Z"
* valueQuantity = 3000 '10*3/uL' "10*3/uL"
* referenceRange.low = 2500 '10*3/uL' "10*3/uL"
* referenceRange.high = 5000 '10*3/uL' "10*3/uL"
* referenceRange.appliesTo = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"
```