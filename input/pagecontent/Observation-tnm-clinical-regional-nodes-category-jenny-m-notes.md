```
Instance: tnm-clinical-regional-nodes-category-jenny-m
InstanceOf: TNMRegionalNodesCategory
Title: "tnm-clinical-regional-nodes-category-jenny-m"
Description: "Extended example: example showing TNM staging (N)"
Usage: #example
* status = #final
* code = $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept = $cancerstaging#cN0
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```