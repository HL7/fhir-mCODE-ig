```
Instance: tumor-size-pathology
InstanceOf: TumorSize
Title: "tumor-size-pathology"
Description: "Example of a resource conforming to the tumor size profile."
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#21889-1
* subject = Reference(cancer-patient-eve-anyperson)
* focus = Reference(tumor-lobular-carcinoma-left-breast)
* effectiveDateTime = "2019-05-01"
* method.coding.version = "http://snomed.info/sct/900000000000207008"
* method.coding = http://snomed.info/sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* component[0].code = http://loinc.org#33728-7
* component[=].valueQuantity = 1.2 'cm' "cm"
* component[+].code = http://loinc.org#33729-5
* component[=].valueQuantity = 0.5 'cm' "cm"
```