```
Instance: ecog-performance-status-fully-active
InstanceOf: ECOGPerformanceStatus
Title: "ecog-performance-status-fully-active"
Description: "Example of ECOG Performance Status"
Usage: #example
* status = #final
* code = http://loinc.org#89247-1
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 0
* interpretation = http://loinc.org#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* method = http://snomed.info/sct#5880005 "Clinical examination"
```