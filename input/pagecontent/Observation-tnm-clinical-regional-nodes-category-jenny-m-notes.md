```
Instance: tnm-clinical-regional-nodes-category-jenny-m
InstanceOf: TNMRegionalNodesCategory
Title: "tnm-clinical-regional-nodes-category-jenny-m"
Description: "Extended example: example showing TNM staging (N)"
Usage: #example
* status = #final
* category.coding.version = "http://snomed.info/sct/900000000000207008"
* category.coding = http://snomed.info/sct#385356007
* code = http://loinc.org#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#1229967007 "American Joint Committee on Cancer cN0 (qualifier value)"
* method.coding.version = "http://snomed.info/sct/900000000000207008"
* method.coding = http://snomed.info/sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```