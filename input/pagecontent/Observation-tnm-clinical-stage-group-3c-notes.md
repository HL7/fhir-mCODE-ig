```
Instance: tnm-clinical-stage-group-3c
InstanceOf: CancerStageGroup
Title: "tnm-clinical-stage-group-3c"
Description: "Example of TNM Clinical Stage Group"
Usage: #example
* status = #final
* code = $loinc#21908-9 "Stage group.clinical Cancer"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $cancerstaging#3C "IIIC"
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* hasMember[0] = Reference(tnm-clinical-primary-tumor-category-cT3)
* hasMember[+] = Reference(tnm-clinical-regional-nodes-category-cN3)
* hasMember[+] = Reference(tnm-clinical-distant-metastases-category-cM0)
```