```
Instance: genomics-report-jenny-m
InstanceOf: GenomicsReport
Title: "genomics-report-jenny-m"
Description: "Extended example: example of gene panel report"
Usage: #example
* status = #final
* category[0] = $v2-0074#LAB
* category[+] = $v2-0074#GE
* code = $loinc#81247-9
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-15"
* issued = "2020-03-15T00:00:01+00:00"
* specimen = Reference(genomic-specimen-left-breast-jenny-m)
* result[0] = Reference(genomic-variant-jenny-m)
* result[+] = Reference(genomic-region-studied-jenny-m)
```