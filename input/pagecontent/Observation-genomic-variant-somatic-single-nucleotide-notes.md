```
Instance: genomic-variant-somatic-single-nucleotide
InstanceOf: GenomicVariant
Title: "genomic-variant-somatic-single-nucleotide"
Description: "mCODE Example for Genomic Variant"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* interpretation = $sct#10828004 "Positive (qualifier value)"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept = $genenames#HGNC:11389 "STK11"
* component[+].code = $loinc#81252-9
* component[=].valueCodeableConcept = $clinvar#619728 "NC_000019.8:g.1171707G>A"
* component[+].code = $loinc#81290-9
* component[=].valueCodeableConcept = $varnomen#NC_000019.8:g.1171707G>A "NC_000019.8:g.1171707G>A"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
```