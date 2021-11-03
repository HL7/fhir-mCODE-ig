```
Instance: tnm-clinical-primary-tumor-category-jenny-m
InstanceOf: TNMPrimaryTumorCategory
Title: "tnm-clinical-primary-tumor-category-jenny-m"
Description: "Extended example: example showing TNM staging (T)"
Usage: #example
* status = #final
* code = $loinc#21905-5 "Primary tumor.clinical [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept = $cancerstaging#cT3
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```