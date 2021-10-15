Profile:    CancerGenomicVariant
Parent:     USCoreObservationLab
Id: mcode-cancer-genomic-variant
Title:      "Cancer Genomic Variant"
Description:    "Records an alteration in the most common DNA nucleotide sequence. The term variant can be used to describe an alteration that may be benign, pathogenic, or of unknown significance. The term variant is increasingly being used in place of the term mutation."
* insert NotUsed(bodySite)
* insert NotUsed(referenceRange)
* insert NotUsed(hasMember)
* code = LNC#69548-6 //"Genetic variant assessment" -- not Genomic!
* method from http://loinc.org/vs/LL4048-6 (extensible)
* specimen only Reference(GenomicSpecimen)
* value[x] only CodeableConcept
* value[x] ^short = "Whether the variant is present"
* value[x] ^definition = "The overall result of the genomic test; specifically, whether a variant is present, absent, no call, or indeterminant."
* value[x] from http://loinc.org/vs/LL1971-2 (required)

* insert ObservationComponentSlicingRules
* insert CreateComponent(geneStudied, 0, *)
* insert CreateComponent(variationCode, 0, 1)
* insert CreateComponent(genomicDNAChange, 0, 1)
* insert CreateComponent(genomicDNAChangeType, 0, 1)
* insert CreateComponent(molecularConsequence, 0, 1)
* insert CreateComponent(genomicSourceClass, 0, 1)
* insert CreateComponent(aminoAcidChange, 0, 1)
* insert CreateComponent(aminoAcidChangeType, 0, 1)
* insert CreateComponent(copyNumber, 0, 1)
* insert CreateComponent(sampleAllelicFrequency, 0, 1)
* insert CreateComponent(allelicState, 0, 1)
* insert CreateComponent(cytogeneticLocation, 0, *)
* insert CreateComponent(cytogeneticNomenclature, 0, *)
* insert CreateComponent(clinicalSignificance, 0, 1)

* component[geneStudied].code = LNC#48018-6
* component[geneStudied].value[x] only CodeableConcept
* component[geneStudied].value[x] from HGNCVS (extensible)
* component[geneStudied] ^short = "Gene studied [ID]"
* component[geneStudied] ^definition = "A gene targeted for mutation analysis, identified in HUGO Gene Nomenclature Committee (HGNC) notation. The required code is HGNC gene ID. Gene IDs are of the format HGNC:n, where n is a unique number. Only the number, n, should be given as the code. For example, the HGNC identifier for the EGFR gene is 3236. The display text associated with the code should be the HGNC official gene symbol. For example, the official gene symbol for epidermal growth factor receptor is EGFR."

* component[variationCode].code = LNC#81252-9
* component[variationCode].value[x] only CodeableConcept
* component[variationCode].value[x] from ClinVarVS (preferred)
* component[variationCode] ^short = "Discrete Genomic variant"
* component[variationCode] ^definition = "The variation ID assigned by ClinVar, for example, 360448 is the identifier which includes the HGVS nomenclature NM_005228.4(EGFR):c.-237A>G (single nucleotide variant in EGFR). Other acceptable variant standards include the Catalogue Of Somatic Mutations In Cancer (COSMIC) and the International System for Human Cytogenetic Nomenclature (ISCN)."

* component[genomicDNAChange].code = LNC#81290-9
* component[genomicDNAChange].value[x] only CodeableConcept
* component[genomicDNAChange].value[x] from HGVSVS (required)
* component[genomicDNAChange] ^short = "Genomic DNA change (gHGVS)"
* component[genomicDNAChange] ^definition = "The symbolic representation of a Genomic structural variant reported using HGVS nomenclature (gHGVS)"

* component[genomicDNAChangeType].code = LNC#48019-4  // DNA change type
* component[genomicDNAChangeType].value[x] only CodeableConcept
* component[genomicDNAChangeType].value[x] from DNAChangeTypeVS (extensible)
* component[genomicDNAChangeType] ^short = "DNA Change Type"
* component[genomicDNAChangeType] ^definition = "Codified type for associated DNA Marker. DNA Markers use the HGVS notation which implies the DNA Marker Type, but the concurrent use of this code will allow a standard and explicit type for technical and display convenience."

* component[molecularConsequence].code = LNC#48019-4  // Note TBDCodes - accepted by HL7 while waiting for a LOINC code assignment
* component[molecularConsequence].value[x] only CodeableConcept
* component[molecularConsequence].value[x] from MolecularConsequenceVS (extensible)
* component[molecularConsequence] ^short = "Molecular consequence"
* component[molecularConsequence] ^definition = "Changes in a structural features of a sequence due to the observed variant."

* component[genomicSourceClass].code = LNC#48002-0
* component[genomicSourceClass].value[x] only CodeableConcept
* component[genomicSourceClass].value[x] from http://loinc.org/vs/LL378-1 (required)
* component[genomicSourceClass] ^short = "Genomic source class [Type]"
* component[genomicSourceClass] ^definition = "The genomic class of the specimen being analyzed, for example, germline for inherited genome, somatic for cancer genome, and prenatal for fetal genome."

* component[aminoAcidChange].code = LNC#48005-3
* component[aminoAcidChange].value[x] only CodeableConcept
* component[aminoAcidChange].value[x] from HGVSVS (required)
* component[aminoAcidChange] ^short = "Amino acid change (pHGVS)"
* component[aminoAcidChange] ^definition = "The symbolic representation of an amino acid variant reported using HGVS nomenclature (pHGVS)."

* component[aminoAcidChangeType].code = LNC#48006-1
* component[aminoAcidChangeType].value[x] only CodeableConcept
* component[aminoAcidChangeType].value[x] from http://loinc.org/vs/LL380-7 (required)
* component[aminoAcidChangeType] ^short = "Amino acid change [Type]"
* component[aminoAcidChangeType] ^definition = "The type of change related to the amino acid variant."

* component[copyNumber].code = LNC#82155-3
* component[copyNumber].value[x] only Quantity
* component[copyNumber] ^short = "Genomic structural variant copy number"
* component[copyNumber] ^definition = "The genomic trait involving the number of copies of a particular gene present in the genome of an individual. (source: NCI)"

* component[sampleAllelicFrequency].code = LNC#81258-6
* component[sampleAllelicFrequency].value[x] only Quantity
* component[sampleAllelicFrequency] ^short = "sample allelic frequency"
* component[sampleAllelicFrequency] ^definition = "The allele frequency represents the incidence of a gene variant in a population. (source: Nature.com)"

* component[allelicState].code = LNC#53034-5
* component[allelicState].value[x] only CodeableConcept
* component[allelicState].value[x] from http://loinc.org/vs/LL381-5 (required)
* component[allelicState] ^short = "sample allelic frequency"
* component[allelicState] ^definition = "Genomic variant allelic state."

// CG Reporting IG does not constrain the cytogeneticNomenclature value type
* component[cytogeneticNomenclature].code = LNC#81291-7
* component[cytogeneticNomenclature] ^short = "Variant ISCN"
* component[cytogeneticNomenclature] ^definition = "The cytogenetic (chromosome) location, represented using the International System for Human Cytogenetic Nomenclature (ISCN)"

// CG Reporting IG does not constrain the cytogeneticLocation value type
* component[cytogeneticLocation].code = LNC#48001-2
* component[cytogeneticLocation] ^short = "Cytogenetic (chromosome) location"
* component[cytogeneticLocation] ^definition = "The cytogenetic (chromosome) location."

* component[clinicalSignificance].code = LNC#53037-8
* component[clinicalSignificance].value[x] only CodeableConcept
* component[clinicalSignificance].value[x] from http://loinc.org/vs/LL4034-6 (required)
* component[clinicalSignificance] ^short = "Genomic variation clinical significance [Imp]"
* component[clinicalSignificance] ^definition = "Single DNA marker or individual allele interpretation in the context of the assessed genomic disease (source: LOINC)."

// ADDITIONAL MUST SUPPORTS (MS on status, category, category[Laboratory], codes, subject, effective[x], value[x] are inherited from US Core Lab Observation)
* method and specimen and component and component.code and component.value[x] and component.dataAbsentReason MS


Profile:        TumorMarkerTest
Parent:         USCoreObservationLab
Id:             mcode-tumor-marker-test
Title:          "Tumor Marker Test"
Description:    "The result of a tumor marker test. Tumor marker tests are generally used to guide cancer treatment decisions and monitor treatment, as well as to predict the chance of recovery and cancer recurrence."
* subject 1..1
* code from TumorMarkerTestVS (required)
* code obeys tumor-marker-test-code-invariant
* subject only Reference(CancerPatient)
* effective[x] only dateTime or Period
* value[x] only Quantity or Ratio or string or CodeableConcept
// Already MS in US Core Obs Lab: status, category, code, subject, effective[x], value[x], dataAbsentReason
* specimen MS
// * insert ReduceText
// * insert ReduceText(referenceRange)
// * insert ReduceText(component)


Invariant: tumor-marker-test-code-invariant
Description: "If the code representing 'Other tumor marker test, specify' is used, a second code from outside the original value set must be present. The second code MUST NOT represent a concept in or subsumed by any concept in the original value set."
Expression: "coding.where(code = 'TMT-OTHER').exists() implies coding.where(code != 'TMT-OTHER' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-tumor-marker-test-vs').not()).exists()"
Severity:   #error

RuleSet: CancerRelatedSpecimenRules
* type 1..1
* subject only Reference(CancerPatient)
* collection.bodySite.extension contains
    BodyLocationQualifier named locationQualifier 0..* and
    LateralityQualifier named lateralityQualifier 0..1
// It would be nice to reuse the existing condition-related extension (see Jira https://jira.hl7.org/projects/FHIR/issues/FHIR-31027) but it doesn't apply to Specimen
* extension contains ConditionRelated named relatedCondition 0..1 MS
* extension[relatedCondition].value[x] only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* extension[relatedCondition] ^short = "Cancer condition associated with this sample."
* extension[relatedCondition] ^definition = "A reference that associates this sample with a cancer condition."
// No inherited MS
* subject and status and type and collection and collection.bodySite and collection.bodySite.extension and collection.bodySite.extension[locationQualifier] and collection.bodySite.extension[lateralityQualifier] MS


Profile:    GenomicSpecimen
Parent:     Specimen
Id: mcode-genomic-specimen
Title:      "Genomic Specimen"
Description:    "A small sample of blood, hair, skin, amniotic fluid (the fluid that surrounds a fetus during pregnancy), or other tissue which is excised from a subject for the purposes of genomics testing or analysis."
* insert CancerRelatedSpecimenRules
* type from GenomicSpecimenTypeVS (extensible)


Profile:    CancerGenomicsReport
Parent:     USCoreDiagnosticReportLab
Id: mcode-cancer-genomics-report
Title:      "Cancer Genomics Report"
Description:    "Genomic analysis summary report. The report may include one or more tests, with two distinct test types. The first type is a targeted mutation test, where a specific mutation on a specific gene is tested for. The result is either positive or negative for that mutation. The second type is a more general test for variants. This type of test returns the identity of variants found in a certain region of the genome."
// * insert ReduceText
// * insert ReduceText(media)
* subject only Reference(CancerPatient)
* category contains GenomicsCategory 1..1
* category[GenomicsCategory] = DiagnosticService#GE
* code = LNC#81247-9 //"Master HL7 Genomic variant reporting panel"
* specimen only Reference(GenomicSpecimen)
* insert DiagnosticReportResultSlicingRules
* result contains
    CancerGenomicVariant 0..1 MS and
    GenomicRegionStudied 0..1 MS
* result[CancerGenomicVariant] only Reference(CancerGenomicVariant)
* result[CancerGenomicVariant] ^short = "Reference to Cancer Genomic Variant"
* result[CancerGenomicVariant] ^definition = "Records an alteration in the most common DNA nucleotide sequence. The term variant is increasingly being used in place of the term mutation to describe an alteration that may be benign, pathogenic, or of unknown significance."
* result[CancerGenomicVariant] ^comment = "When using this element, the referenced Observation must validate against the CancerGenomicVariant profile."
* result[GenomicRegionStudied] only Reference(GenomicRegionStudied)
* result[GenomicRegionStudied] ^short = "Reference to Genomic Region Studied"
* result[GenomicRegionStudied] ^definition = "The area of the genome region referenced in testing for variants."
* result[GenomicRegionStudied] ^comment = "When using this element, the referenced Observation must validate against the GenomicRegionStudied profile."
// Already MS in US Core: status, category, code, subject, effective[x], issued, performer, result
* specimen MS

Profile:    GenomicRegionStudied
Parent:     USCoreObservationLab
Id: mcode-genomic-region-studied
Title:      "Genomic Region Studied"
Description:    "The area of the genome region referenced in testing for variants."
* code = LNC#53041-0 //"DNA region of interest panel"
//* insert NotUsed(value[x])
* value[x] 0..0 // remove the must-support obligation imposed by US Core (MK 2/16/2021)
* value[x] ^definition = "Not used in this profile. MustSupport is inherited from the parent profile (USCoreObservationLab) and should be ignored by implementers for this element."
* insert ObservationComponentSlicingRules
* insert CreateComponent(geneMutations, 0, *)
* insert CreateComponent(geneStudied, 0, *)
* insert CreateComponent(dnaRegionDescription, 0, *)
* insert CreateComponent(dnaRangesExamined, 0, *)
* insert CreateComponent(genomicRegionCoordinateSystem, 0, 1)
* insert CreateComponent(genomicReferenceSequenceId, 0, 1)

* component[geneMutations] ^short = "Gene mutations tested for in Blood or Tissue by Molecular genetics method Nominal"
* component[geneMutations] ^definition = "The gene mutations tested for in blood or tissue by molecular genetics methods"
* component[geneMutations].code = LNC#36908-2
* component[geneMutations].value[x] only CodeableConcept
* component[geneMutations].value[x] from HGVSVS (required)


* component[geneStudied] ^short = "Gene studied [ID]"
* component[geneStudied] ^definition = "The ID for the gene studied"
* component[geneStudied].code = LNC#48018-6
* component[geneStudied].value[x] only CodeableConcept
* component[geneStudied].value[x] from HGNCVS (extensible)

* component[dnaRegionDescription] ^short = "Description of ranges of DNA sequences examined"
* component[dnaRegionDescription] ^definition = "Description for the DNA region studied in the genomics report"
* component[dnaRegionDescription].code = LNC#81293-3
* component[dnaRegionDescription].value[x] only string

* component[dnaRangesExamined] ^short = "Range(s) of DNA sequence examined"
* component[dnaRangesExamined] ^definition = "The range(s) of the DNA sequence examined"
* component[dnaRangesExamined].code = LNC#51959-5
* component[dnaRangesExamined].value[x] only Range

* component[genomicRegionCoordinateSystem] ^short = "Genomic coordinate system [Type]."
* component[genomicRegionCoordinateSystem] ^definition = "The method of counting along the genome, for example, 0-based interval counting or 0-based character counting."
* component[genomicRegionCoordinateSystem].code = LNC#92822-6
* component[genomicRegionCoordinateSystem].value[x] only CodeableConcept
* component[genomicRegionCoordinateSystem].value[x] from http://loinc.org/vs/LL5323-2 (preferred)

* component[genomicReferenceSequenceId] ^short = "Genomic reference sequence [ID]"
* component[genomicReferenceSequenceId] ^definition = "Range(s) of DNA sequence examined. The genomic reference sequence is a contiguous stretch of chromosome DNA that spans all of the exons of the gene and includes transcribed and non transcribed stretches. For this ID use either the NCBI genomic nucleotide RefSeq IDs with their version number (see: NCBI.NLM.NIH.Gov/RefSeq) or use the LRG identifiers, without transcript (t or p) extensions -- when they become available. (source: LOINC)"
* component[genomicReferenceSequenceId].code = LNC#48013-7

* component and component.code and component.value[x] and component.dataAbsentReason MS
