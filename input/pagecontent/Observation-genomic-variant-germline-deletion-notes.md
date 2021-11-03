```
Instance: genomic-variant-germline-deletion
InstanceOf: GenomicVariant
Title: "genomic-variant-germline-deletion"
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
* component[=].valueCodeableConcept = $genenames#HGNC:1100 "BRCA1"
* component[+].code = $loinc#81290-9
* component[=].valueCodeableConcept = $varnomen#NG_005905.2:g.126148_126152del "NG_005905.2:g.126148_126152del"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"
```