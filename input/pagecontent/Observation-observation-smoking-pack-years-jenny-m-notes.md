```
Instance: observation-smoking-pack-years-jenny-m
InstanceOf: Observation
Title: "observation-smoking-pack-years-jenny-m"
Description: "Extended example: example showing smoking history"
Usage: #example
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#401201003 "Cigarette pack-years (observable entity)"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueQuantity = 20 '{PackYears}' "Pack-Years"
```