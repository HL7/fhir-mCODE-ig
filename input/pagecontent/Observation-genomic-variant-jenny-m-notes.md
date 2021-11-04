```
Instance: genomic-variant-jenny-m
InstanceOf: GenomicVariant
Title: "genomic-variant-jenny-m"
Description: "Extended example: example showing genomic variant found by breast cancer genomics panel"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-15"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* method = http://loinc.org#LA26398-0 "Sequencing"
* component[0].code = http://loinc.org#48018-6
* component[=].valueCodeableConcept = http://www.genenames.org#HGNC:26144 "PALB2"
* component[+].code = http://loinc.org#81252-9
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/clinvar#128144 "NM_024675.3(PALB2):c.3549C>A (p.Tyr1183Ter)"
* component[+].code = http://loinc.org#81290-9
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NC_000016.10:g.23603471G>T
* component[+].code = http://loinc.org#48002-0
* component[=].valueCodeableConcept = http://loinc.org#LA6684-0 "Somatic"
```