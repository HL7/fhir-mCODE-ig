```
Instance: us-core-observation-lab-sentinel-nodes-jenny-m
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "us-core-observation-lab-sentinel-nodes-jenny-m"
Description: "Extended example: example showing 3 sentinel lymph nodes were examined"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)
* component.code = $loinc#92833-3 "Lymph nodes examined [#] in Cancer specimen by Light microscopy"
* component.valueQuantity = 3 '{Count}' "Count"
```