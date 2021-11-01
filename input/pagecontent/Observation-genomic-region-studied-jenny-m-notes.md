```fsh
Instance: genomic-region-studied-jenny-m
InstanceOf: GenomicRegionStudied
Title: "genomic-region-studied-jenny-m"
Description: "Extended example: example showing which regions were included in the genomics panel"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = http://loinc.org#53041-0 "DNA region of interest panel"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-15"
* issued = "2018-03-15T00:00:01+00:00"
* component.code = http://loinc.org#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept.coding[0] = http://www.genenames.org#1100 "BRCA1"
* component.valueCodeableConcept.coding[+] = http://www.genenames.org#1101 "BRCA2"
* component.valueCodeableConcept.coding[+] = http://www.genenames.org#1748 "CDH1"
* component.valueCodeableConcept.coding[+] = http://www.genenames.org#26144 "PALB2"
* component.valueCodeableConcept.coding[+] = http://www.genenames.org#9588 "PTEN"
* component.valueCodeableConcept.coding[+] = http://www.genenames.org#11389 "STK11"
* component.valueCodeableConcept.coding[+] = http://www.genenames.org#11998 "TP53"
```