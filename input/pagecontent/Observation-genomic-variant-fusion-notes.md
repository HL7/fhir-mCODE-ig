```
Instance: genomic-variant-fusion
InstanceOf: GenomicVariant
Title: "genomic-variant-fusion"
Description: "mCODE Example for Genomic Variant gene fusion event"
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
* component[=].valueCodeableConcept = http://www.genenames.org#HGNC:1014 "BCR"
* component[+].code = http://loinc.org#48018-6
* component[=].valueCodeableConcept = http://www.genenames.org#HGNC:76 "ABL1"
* component[+].code = http://loinc.org-requested-cs#molecular-consequence
* component[=].valueCodeableConcept = http://www.sequenceontology.org/#SO:001565 "gene_fusion"
* component[+].code = http://loinc.org#81290-9
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_005157.6(ABL1):c.1076T>G "NM_005157.6(ABL1):c.1076T>G"
* component[+].code = http://loinc.org#48002-0
* component[=].valueCodeableConcept = http://loinc.org#LA6684-0 "Somatic"
```