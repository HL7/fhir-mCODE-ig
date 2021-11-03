```
Instance: us-core-smokingstatus-jenny-m
InstanceOf: USCoreSmokingStatusProfile
Title: "us-core-smokingstatus-jenny-m"
Description: "Extended example: example showing smoking status"
Usage: #example
* status = #final
* category = $observation-category#social-history
* code = $loinc#72166-2 "Tobacco smoking status"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* issued = "2018-03-16T00:00:00Z"
* valueCodeableConcept = $sct#449868002 "Smokes tobacco daily (finding)"
```