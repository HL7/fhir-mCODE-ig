```
Instance: tnm-clinical-primary-tumor-category-jenny-m
InstanceOf: TNMPrimaryTumorCategory
Title: "tnm-clinical-primary-tumor-category-jenny-m"
Description: "Extended example: example showing TNM staging (T)"
Usage: #example
* status = #final
* category.coding.version = "http://snomed.info/sct/900000000000207008"
* category.coding = http://snomed.info/sct#385356007
* code = http://loinc.org#21905-5 "Primary tumor.clinical [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#1228938002 "American Joint Committee on Cancer cT3 (qualifier value)"
* method.coding.version = "http://snomed.info/sct/900000000000207008"
* method.coding = http://snomed.info/sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```