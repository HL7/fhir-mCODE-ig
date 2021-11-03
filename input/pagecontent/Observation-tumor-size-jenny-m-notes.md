```
Instance: tumor-size-jenny-m
InstanceOf: TumorSize
Title: "tumor-size-jenny-m"
Description: "Extended example: example showing tumor size"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#21889-1 "Size Tumor"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* method = $loinc#24419-4 "Pathology report gross observation"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)
* component.code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* component.valueQuantity = 2.5 'cm' "centimeters"
```