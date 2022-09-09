```
Instance: tumor-size-jenny-m
InstanceOf: TumorSize
Title: "tumor-size-jenny-m"
Description: "Extended example: example showing tumor size"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#21889-1 "Size Tumor"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* method = http://loinc.org#24419-4 "Pathology report gross observation"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)
* component.code = http://loinc.org#33728-7
* component.valueQuantity = 2.5 'cm' "centimeters"
```