```
Instance: ecog-performance-status-fully-active
InstanceOf: ECOGPerformanceStatus
Title: "ecog-performance-status-fully-active"
Description: "Example of ECOG Performance Status"
Usage: #example
* status = #final
* code = $loinc#89247-1
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 0
* interpretation = $loinc#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* method = $sct#5880005 "Clinical examination"
```