```
Instance: genomic-variant-germline-deletion
InstanceOf: GenomicVariant
Title: "genomic-variant-germline-deletion"
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
* component[=].valueCodeableConcept = http://www.genenames.org#HGNC:1100 "BRCA1"
* component[+].code = http://loinc.org#81290-9
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NG_005905.2:g.126148_126152del "NG_005905.2:g.126148_126152del"
* component[+].code = http://loinc.org#48002-0
* component[=].valueCodeableConcept = http://loinc.org#LA6683-2 "Germline"
```