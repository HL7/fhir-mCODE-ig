```
Instance: ecog-performance-status-jenny-m
InstanceOf: ECOGPerformanceStatus
Title: "ecog-performance-status-jenny-m"
Description: "Extended example: example showing ECOG performance status"
Usage: #example
* status = #final
* code = http://loinc.org#89247-1
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-12"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueInteger = 0
* interpretation = http://loinc.org#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* method = http://snomed.info/sct#5880005 "Physical examination procedure (procedure)"
```