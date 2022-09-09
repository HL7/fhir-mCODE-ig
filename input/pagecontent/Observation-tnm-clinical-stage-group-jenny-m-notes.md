```
Instance: tnm-clinical-stage-group-jenny-m
InstanceOf: TNMStageGroup
Title: "tnm-clinical-stage-group-jenny-m"
Description: "Extended example: example showing TNM staging (stage group)"
Usage: #example
* status = #final
* category.coding.version = "http://snomed.info/sct/900000000000207008"
* category.coding = http://snomed.info/sct#385356007
* code = http://loinc.org#21908-9 "Stage group.clinical Cancer"
* subject = Reference(cancer-patient-jenny-m)
* focus = Reference(primary-cancer-condition-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#1222769001 "American Joint Committee on Cancer stage IIB (qualifier value)"
* method.coding.version = "http://snomed.info/sct/900000000000207008"
* method.coding = http://snomed.info/sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* hasMember[0] = Reference(tnm-pathologic-primary-tumor-category-jenny-m)
* hasMember[+] = Reference(tnm-pathologic-regional-nodes-category-jenny-m)
* hasMember[+] = Reference(tnm-pathologic-distant-metastases-category-jenny-m)
```