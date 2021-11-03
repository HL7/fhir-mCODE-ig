```
Instance: genomic-variant-fusion
InstanceOf: GenomicVariant
Title: "genomic-variant-fusion"
Description: "mCODE Example for Genomic Variant gene fusion event"
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
* component[=].valueCodeableConcept = $genenames#HGNC:1014 "BCR"
* component[+].code = $loinc#48018-6
* component[=].valueCodeableConcept = $genenames#HGNC:76 "ABL1"
* component[+].code = $loinc-requested-cs#molecular-consequence
* component[=].valueCodeableConcept = $sequenceontology#SO:001565 "gene_fusion"
* component[+].code = $loinc#81290-9
* component[=].valueCodeableConcept = $varnomen#NM_005157.6(ABL1):c.1076T>G "NM_005157.6(ABL1):c.1076T>G"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
```