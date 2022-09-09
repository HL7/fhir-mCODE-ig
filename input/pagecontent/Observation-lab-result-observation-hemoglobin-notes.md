```
Instance: lab-result-observation-hemoglobin
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "lab-result-observation-hemoglobin"
Description: "Hemoglobin lab result to support TNMStageGroup example"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#718-7 "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(cancer-patient-adam-everyman)
* effectiveDateTime = "2020-03-06"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueQuantity = 13.5 'g/dl' "g/dl"
```