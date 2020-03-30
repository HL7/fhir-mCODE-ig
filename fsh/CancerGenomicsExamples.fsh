Instance: mCODECancerGeneticVariantExample01
InstanceOf: CancerGeneticVariant
Description: "mCODE Example for Cancer Genetic Variant"
* id = "mCODECancerGeneticVariantExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-genetic-variant"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
// valueCodeableConcept has alternate codings depending on where to place the interpretation of "Positive or Negative".
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:11389 "STK11" // NOTE: HGNC and HGVS codes have special characters in them so SUSHI needs to handle this.
* component[VariationCode].valueCodeableConcept = CLINVAR#619728 "NC_000019.8:g.1171707G>A"
* component[GenomicDNAChange].valueCodeableConcept = HGVS#NC_000019.8:g.1171707G>A "NC_000019.8:g.1171707G>A"
* component[GenomicSourceClass].valueCodeableConcept = LNC#LA6684-0 "Somatic"

/* mCODECancerGeneticVariantExample02 is an example of the 
 * CancerGeneticVariant to represent a single mutation test.
 * This example demonstrates a test for a single germline mutation, BRCA1 gene.c.185delAG, equivalent to the LOINC test https://loinc.org/21637-4/.
 */
Instance: mCODECancerGeneticVariantExample02
InstanceOf: CancerGeneticVariant
Description: "mCODE Example for Cancer Genetic Variant"
* id = "mCODECancerGeneticVariantExample02"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-genetic-variant"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
// valueCodeableConcept has alternate codings depending on where to place the interpretation of "Positive or Negative".
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:1100 "BRCA1" // NOTE: HGNC and HGVS codes have special characters in them so SUSHI needs to handle this.
* component[GenomicDNAChange].valueCodeableConcept = HGVS#NG_005905.2:g.126148_126152GTAAA[1] "NG_005905.2:g.126148_126152GTAAA[1]"
* component[GenomicSourceClass].valueCodeableConcept = LNC#LA6683-2 "Germline"

Instance: mCODECancerGenomicsReportExample01
InstanceOf: CancerGenomicsReport
Description: "mCODE Example for Cancer Genomics Report"
* id = "mCODECancerGenomicsReportExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-genomics-report"
* status = #final "Final"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* specimen = Reference(Specimen/mCODEGeneticSpecimenExample01)
* issued = "2019-04-01T11:45:33+11:00"
* result[CancerGeneticVariant] = Reference(Observation/mCODECancerGeneticVariantExample01)
* result[GenomicRegionStudied] = Reference(mCODEGenomicRegionStudiedExample01)

Instance: mCODEGenomicRegionStudiedExample01
InstanceOf: GenomicRegionStudied
Description: "mCODE Example for Genomic Region Studied"
* id = "mCODEGenomicRegionStudiedExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-region-studied"
* status = #final "final"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* issued = "2019-04-01T11:45:33+11:00"
* component[GeneStudied].valueCodeableConcept = HGNC#619728 "STK11" 

Instance: mCODETumorMarkerExample01 
InstanceOf: TumorMarker
Description: "mCODE Example for Tumor Marker Example"
* id = "mCODETumorMarkerExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker"
* status = #final "final"
* code = LNC#39004-7 "Epidermal growth factor receptor Ag [Presence] in Tissue"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* performer = Reference(mCODEPractitionerExample01) 
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"

Instance: mCODEGeneticSpecimenExample01 
InstanceOf: GeneticSpecimen
Description: "mCODE Example for Genetic Specimen"
* id = "mCODEGeneticSpecimenExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genetic-specimen"
* status = #available "Available"
* subject = Reference(mCODEPatientExample01)
* processing.timeDateTime = "2019-03-20"
* collection.collector = Reference(mCODEPractitionerExample01) 
* type = SPTY#TISS "Tissue"
* collection.bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"