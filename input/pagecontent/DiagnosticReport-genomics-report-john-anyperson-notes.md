```
Instance: genomics-report-john-anyperson
InstanceOf: GenomicsReport
Title: "genomics-report-john-anyperson"
Description: "mCODE Example for Genomics Report"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#GE
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* issued = "2019-04-01T11:45:33+11:00"
* specimen = Reference(genomic-specimen-lung)
* result[0] = Reference(genomic-variant-somatic-single-nucleotide)
* result[+] = Reference(genomic-region-studied-stk11)
```