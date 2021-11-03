```
Instance: tumor-size-pathology
InstanceOf: TumorSize
Title: "tumor-size-pathology"
Description: "Example of a resource conforming to the tumor size profile."
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#21889-1
* subject = Reference(cancer-patient-eve-anyperson)
* focus = Reference(tumor-lobular-carcinoma-left-breast)
* effectiveDateTime = "2019-05-01"
* method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* component[0].code = $loinc#33728-7
* component[=].valueQuantity = 1.2 'cm' "cm"
* component[+].code = $loinc#33729-5
* component[=].valueQuantity = 0.5 'cm' "cm"
```