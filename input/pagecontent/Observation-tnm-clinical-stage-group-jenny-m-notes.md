```
Instance: tnm-clinical-stage-group-jenny-m
InstanceOf: CancerStageGroup
Title: "tnm-clinical-stage-group-jenny-m"
Description: "Extended example: example showing TNM staging (stage group)"
Usage: #example
* status = #final
* code = http://loinc.org#21908-9 "Stage group.clinical Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept = http://cancerstaging.org#2B "IIB"
* method = http://snomed.info/sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* hasMember[0] = Reference(tnm-pathologic-primary-tumor-category-jenny-m)
* hasMember[+] = Reference(tnm-pathologic-regional-nodes-category-jenny-m)
* hasMember[+] = Reference(tnm-pathologic-distant-metastases-category-jenny-m)
```