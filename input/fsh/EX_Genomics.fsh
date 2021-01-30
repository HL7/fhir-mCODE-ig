Instance: cancer-genetic-variant-somatic-single-nucleotide
InstanceOf: CancerGeneticVariant
Description: "mCODE Example for Cancer Genetic Variant"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
// value[x] has alternate codings depending on where to place the interpretation of "Positive or Negative".
// * valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* interpretation = SCT#10828004 "Positive (qualifier value)"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:11389 "STK11"
// variant type: single nucleotide variant
// https://www.ncbi.nlm.nih.gov/clinvar/variation/619728/
// https://www.genenames.org/data/gene-symbol-report/#!/hgnc_id/HGNC:8023
* component[VariationCode].valueCodeableConcept = CLINVAR#619728 "NC_000019.8:g.1171707G>A"
* component[GenomicDNAChange].valueCodeableConcept = HGVS#NC_000019.8:g.1171707G>A "NC_000019.8:g.1171707G>A"
* component[GenomicSourceClass].valueCodeableConcept = LNC#LA6684-0 "Somatic"

/* cancer-genetic-variant-germline-deletion is an example of the
 * CancerGeneticVariant to represent a single mutation test.
 * This example demonstrates a test for a single germline mutation, BRCA1 gene.c.185delAG, equivalent to the LOINC test https://loinc.org/21637-4/.
 */
Instance: cancer-genetic-variant-germline-deletion
InstanceOf: CancerGeneticVariant
Description: "mCODE Example for Cancer Genetic Variant"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
// value[x] has alternate codings depending on where to place the interpretation of "Positive or Negative".
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:1100 "BRCA1" // NOTE: HGNC and HGVS codes have special characters in them so SUSHI needs to handle this.
* component[GenomicDNAChange].valueCodeableConcept = HGVS#NG_005905.2:g.126148_126152del "NG_005905.2:g.126148_126152del"
* component[GenomicSourceClass].valueCodeableConcept = LNC#LA6683-2 "Germline"

Instance: cancer-genomics-report-john-anyperson
InstanceOf: CancerGenomicsReport
Description: "mCODE Example for Cancer Genomics Report"
* status = #final "Final"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* specimen = Reference(Specimen/genetic-specimen-lung)
* issued = "2019-04-01T11:45:33+11:00"
* result[CancerGeneticVariant] = Reference(Observation/cancer-genetic-variant-somatic-single-nucleotide)
* result[GenomicRegionStudied] = Reference(genomic-region-studied-stk11)

Instance: genomic-region-studied-stk11
InstanceOf: GenomicRegionStudied
Description: "mCODE Example for Genomic Region Studied"
* status = #final "final"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* issued = "2019-04-01T11:45:33+11:00"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:11389 "STK11"

Instance: tumor-marker-test-egf
InstanceOf: TumorMarkerTest
Description: "mCODE Example for Tumor Marker Test"
* status = #final "final"
* code = LNC#39004-7 "Epidermal growth factor receptor Ag [Presence] in Tissue"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"

Instance: genetic-specimen-lung
InstanceOf: GeneticSpecimen
Description: "mCODE Example for Genetic Specimen"
* status = #available "Available"
* subject = Reference(cancer-patient-john-anyperson)
* processing.timeDateTime = "2019-03-20"
* collection.collector = Reference(us-core-practitioner-kyle-anydoc)
* type = SPTY#TISS "Tissue"
* collection.bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"