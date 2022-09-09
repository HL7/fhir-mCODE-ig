```
Instance: genomics-report-jenny-m
InstanceOf: GenomicsReport
Title: "genomics-report-jenny-m"
Description: "Extended example: example of gene panel report"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#GE
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-15"
* issued = "2020-03-15T00:00:01+00:00"
* specimen = Reference(genomic-specimen-left-breast-jenny-m)
* result[0] = Reference(genomic-variant-jenny-m)
* result[+] = Reference(genomic-region-studied-jenny-m)
```