```
Instance: karnofsky-performance-status-normal-activity
InstanceOf: KarnofskyPerformanceStatus
Title: "karnofsky-performance-status-normal-activity"
Description: "Example of Karnofsky Performance Status"
Usage: #example
* status = #final
* code = $loinc#89243-0
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 90
* interpretation = $loinc#LA29176-7 "Able to carry on normal activity; minor signs or symptoms of disease"
* method = $sct#5880005 "Clinical examination"
```