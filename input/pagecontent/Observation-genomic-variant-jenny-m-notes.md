```
Instance: genomic-variant-jenny-m
InstanceOf: GenomicVariant
Title: "genomic-variant-jenny-m"
Description: "Extended example: example showing genomic variant found by breast cancer genomics panel"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-15"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept = $genenames#HGNC:26144 "PALB2"
* component[+].code = $loinc#81252-9
* component[=].valueCodeableConcept = $clinvar#128144 "NM_024675.3(PALB2):c.3549C>A (p.Tyr1183Ter)"
* component[+].code = $loinc#81290-9
* component[=].valueCodeableConcept = $varnomen#NC_000016.10:g.23603471G>T
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
```