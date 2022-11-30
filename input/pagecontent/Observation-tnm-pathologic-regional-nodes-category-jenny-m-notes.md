```
Instance: tnm-pathologic-regional-nodes-category-jenny-m
InstanceOf: TNMRegionalNodesCategory
Title: "tnm-pathologic-regional-nodes-category-jenny-m"
Description: "Extended example: example showing TNM staging (N)"
Usage: #example
* status = #final
* category.coding.version = "http://snomed.info/sct/900000000000207008"
* category.coding = http://snomed.info/sct#385356007
* code = http://loinc.org#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#1229947003 "American Joint Committee on Cancer pN0 (qualifier value)"
* method.coding.version = "http://snomed.info/sct/900000000000207008"
* method.coding = http://snomed.info/sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```