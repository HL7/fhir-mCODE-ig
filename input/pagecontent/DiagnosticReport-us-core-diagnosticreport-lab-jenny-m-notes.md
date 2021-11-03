```
Instance: us-core-diagnosticreport-lab-jenny-m
InstanceOf: USCoreDiagnosticReportProfileLaboratoryReporting
Title: "us-core-diagnosticreport-lab-jenny-m"
Description: "Extended example: example of pathology findings represented as a DiagnosticReport resource."
Usage: #example
* status = #final
* category[0] = $v2-0074#LAB
* category[+] = $v2-0074#SP "Surgical Pathology"
* code = $loinc#22637-3 "Pathology report final diagnosis Narrative"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* issued = "2018-04-05T00:00:00Z"
* performer = Reference(us-core-organization-physician-services-inc)
* resultsInterpreter = Reference(us-core-practitioner-peter-pathologist)
* specimen = Reference(tumor-specimen-left-breast-jenny-m)
* result[0] = Reference(us-core-observation-lab-tumor-invasion-jenny-m)
* result[+] = Reference(us-core-observation-lab-tumor-margins-jenny-m)
* result[+] = Reference(us-core-observation-lab-sentinel-nodes-jenny-m)
* result[+] = Reference(tumor-size-jenny-m)
* result[+] = Reference(us-core-observation-lab-tumor-dcis-jenny-m)
* result[+] = Reference(tumor-marker-test-her2-jenny-m)
* result[+] = Reference(tumor-marker-test-er-jenny-m)
* result[+] = Reference(tumor-marker-test-pr-jenny-m)
* result[+] = Reference(us-core-observation-lab-tumor-grade-jenny-m)
```