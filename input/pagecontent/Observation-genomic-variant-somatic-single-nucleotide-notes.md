```
Instance: genomic-variant-somatic-single-nucleotide
InstanceOf: GenomicVariant
Title: "genomic-variant-somatic-single-nucleotide"
Description: "mCODE Example for Genomic Variant"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#69548-6
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* interpretation = http://snomed.info/sct#10828004 "Positive (qualifier value)"
* method = http://loinc.org#LA26398-0 "Sequencing"
* component[0].code = http://loinc.org#48018-6
* component[=].valueCodeableConcept = http://www.genenames.org#HGNC:11389 "STK11"
* component[+].code = http://loinc.org#81252-9
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/clinvar#619728 "NC_000019.8:g.1171707G>A"
* component[+].code = http://loinc.org#81290-9
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NC_000019.8:g.1171707G>A "NC_000019.8:g.1171707G>A"
* component[+].code = http://loinc.org#48002-0
* component[=].valueCodeableConcept = http://loinc.org#LA6684-0 "Somatic"
```