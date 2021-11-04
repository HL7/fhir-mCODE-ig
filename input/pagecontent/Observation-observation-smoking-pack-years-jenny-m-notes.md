```
Instance: observation-smoking-pack-years-jenny-m
InstanceOf: Observation
Title: "observation-smoking-pack-years-jenny-m"
Description: "Extended example: example showing smoking history"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code = http://snomed.info/sct#401201003 "Cigarette pack-years (observable entity)"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueQuantity = 20 '{PackYears}' "Pack-Years"
```