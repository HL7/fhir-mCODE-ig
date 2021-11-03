```
Instance: tnm-pathologic-primary-tumor-category-jenny-m
InstanceOf: TNMPrimaryTumorCategory
Title: "tnm-pathologic-primary-tumor-category-jenny-m"
Description: "Extended example: example showing TNM staging (T)"
Usage: #example
* status = #final
* code = $loinc#21899-0 "Primary tumor.pathology Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01"
* valueCodeableConcept = $cancerstaging#pT3
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```