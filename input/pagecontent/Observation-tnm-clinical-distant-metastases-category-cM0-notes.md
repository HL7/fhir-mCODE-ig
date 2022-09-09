```
Instance: tnm-clinical-distant-metastases-category-cM0
InstanceOf: TNMDistantMetastasesCategory
Title: "tnm-clinical-distant-metastases-category-cM0"
Description: "Example of TNM Clinical Distant Metastases Category"
Usage: #example
* status = #final
* category.coding.version = "http://snomed.info/sct/900000000000207008"
* category.coding = http://snomed.info/sct#385356007
* code = http://loinc.org#21907-1 "Distant metastases.clinical [Class] Cancer"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#1229901006 "American Joint Committee on Cancer cM0 (qualifier value)"
* method.coding.version = "http://snomed.info/sct/900000000000207008"
* method.coding = http://snomed.info/sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
```