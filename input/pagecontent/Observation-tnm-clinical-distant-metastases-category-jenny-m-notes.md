```
Instance: tnm-clinical-distant-metastases-category-jenny-m
InstanceOf: TNMDistantMetastasesCategory
Title: "tnm-clinical-distant-metastases-category-jenny-m"
Description: "Extended example: example showing TNM staging (M)"
Usage: #example
* status = #final
* code = $loinc#21907-1 "Distant metastases.clinical [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept = $cancerstaging#cM0
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```