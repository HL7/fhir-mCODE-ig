```
Instance: tnm-clinical-stage-group-3c
InstanceOf: TNMStageGroup
Title: "tnm-clinical-stage-group-3c"
Description: "Example of TNM Clinical Stage Group"
Usage: #example
* status = #final
* category.coding.version = "http://snomed.info/sct/900000000000207008"
* category.coding = http://snomed.info/sct#385356007
* code = http://loinc.org#21908-9 "Stage group.clinical Cancer"
* subject = Reference(cancer-patient-john-anyperson)
* focus = Reference(primary-cancer-condition-nsclc)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#1222806003 "American Joint Committee on Cancer stage IIIC (qualifier value)"
* method.coding.version = "http://snomed.info/sct/900000000000207008"
* method.coding = http://snomed.info/sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* hasMember[0] = Reference(tnm-clinical-primary-tumor-category-cT3)
* hasMember[+] = Reference(tnm-clinical-regional-nodes-category-cN3)
* hasMember[+] = Reference(tnm-clinical-distant-metastases-category-cM0)
```