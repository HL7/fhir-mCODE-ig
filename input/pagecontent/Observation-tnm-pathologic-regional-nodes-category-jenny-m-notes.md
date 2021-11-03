```
Instance: tnm-pathologic-regional-nodes-category-jenny-m
InstanceOf: TNMRegionalNodesCategory
Title: "tnm-pathologic-regional-nodes-category-jenny-m"
Description: "Extended example: example showing TNM staging (N)"
Usage: #example
* status = #final
* code = $loinc#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01"
* valueCodeableConcept = $cancerstaging#pN0
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```