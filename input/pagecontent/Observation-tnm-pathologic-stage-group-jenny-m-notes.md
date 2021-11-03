```
Instance: tnm-pathologic-stage-group-jenny-m
InstanceOf: CancerStageGroup
Title: "tnm-pathologic-stage-group-jenny-m"
Description: "Extended example: example showing TNM staging (stage group)"
Usage: #example
* status = #final
* code = $loinc#21902-2 "Stage group.pathology Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-05"
* valueCodeableConcept = $cancerstaging#2B "IIB"
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* hasMember[0] = Reference(tnm-pathologic-primary-tumor-category-jenny-m)
* hasMember[+] = Reference(tnm-pathologic-regional-nodes-category-jenny-m)
* hasMember[+] = Reference(tnm-pathologic-distant-metastases-category-jenny-m)
```