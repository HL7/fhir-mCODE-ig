```
Instance: karnofsky-performance-status-normal-activity
InstanceOf: KarnofskyPerformanceStatus
Title: "karnofsky-performance-status-normal-activity"
Description: "Example of Karnofsky Performance Status"
Usage: #example
* status = #final
* category[0] = http://hl7.org/fhir/us/core/CodeSystem/us-core-observation-category#clinical-test
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = http://loinc.org#89243-0
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 90
* interpretation = http://loinc.org#LA29176-7 "Able to carry on normal activity; minor signs or symptoms of disease"
* method.coding.version = "http://snomed.info/sct/900000000000207008"
* method.coding = http://snomed.info/sct#5880005 "Clinical examination"
```