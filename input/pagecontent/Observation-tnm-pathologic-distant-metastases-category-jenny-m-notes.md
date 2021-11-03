```
Instance: tnm-pathologic-distant-metastases-category-jenny-m
InstanceOf: TNMDistantMetastasesCategory
Title: "tnm-pathologic-distant-metastases-category-jenny-m"
Description: "Extended example: example showing TNM staging (M)"
Usage: #example
* status = #final
* code = $loinc#21901-4 "Distant metastases.pathology [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01"
* valueCodeableConcept = $cancerstaging#pM0
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```