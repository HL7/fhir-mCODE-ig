Profile:    CancerGeneticVariant
Parent:     USCoreObservationLab
Id:         mcode-cancer-genetic-variant
Title:      "Cancer Genetic Variant"
Description:    "Records an alteration in the most common DNA nucleotide sequence. The term variant can be used to describe an alteration that may be benign, pathogenic, or of unknown significance. The term variant is increasingly being used in place of the term mutation."
* status, code, subject, effective[x], valueCodeableConcept, method MS
* bodySite 0..0
* referenceRange 0..0
* hasMember 0..0
/*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains
    AccessionIdentifier 0..1 MS and
    FillerOrderNumber 0..1 MS and
    PlacerOrderNumber 0..1 MS
* identifier[AccessionIdentifier].type = IDTYPE#ACSN
* identifier[FillerOrderNumber].type = IDTYPE#FILL
* identifier[PlacerOrderNumber].type = IDTYPE#PLAC
*/
* code = LNC#69548-6 //"Genetic variant assessment"
* method from http://loinc.org/vs/LL4048-6 (extensible)
* specimen only Reference(GeneticSpecimen)
* value[x] only CodeableConcept
* value[x] ^definition = "The overall result of the genetic test; specifically, whether a variant is present, absent, no call, or indeterminant."
* valueCodeableConcept from http://loinc.org/vs/LL1971-2 (required)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    GeneStudied 0..* MS and
    VariationCode 0..* MS and
    GenomicDNAChange 0..1 MS and
    GenomicSourceClass 0..1 MS and
    AminoAcidChange 0..1 MS and
    AminoAcidChangeType 0..1 MS and
    CytogeneticLocation 0..* MS and
    CytogeneticNomenclature 0..1 MS
* component[GeneStudied] ^short = "Gene studied [ID]"
* component[GeneStudied] ^definition = "A gene targeted for mutation analysis, identified in HUGO Gene Nomenclature Committee (HGNC) notation. The required code is HGNC gene ID. Gene IDs are of the format HGNC:n, where n is a unique number. Only the number, n, should be given as the code. For example, the HGNC identifier for the EGFR gene is 3236. The display text associated with the code should be the HGNC official gene symbol. For example, the official gene symbol for epidermal growth factor receptor is EGFR."
* component[GeneStudied].code = LNC#48018-6
* component[GeneStudied].value[x] only CodeableConcept
* component[GeneStudied].valueCodeableConcept 1..1
* component[GeneStudied].valueCodeableConcept from HGNCVS (extensible)
* component[VariationCode] ^short = "Discrete genetic variant"
* component[VariationCode] ^definition = "The variation ID assigned by ClinVar, for example, 360448 is the identifier which includes the HGVS nomenclature NM_005228.4(EGFR):c.-237A>G (single nucleotide variant in EGFR). Other acceptable variant standards include the Catalogue Of Somatic Mutations In Cancer (COSMIC) and the International System for Human Cytogenetic Nomenclature (ISCN)."
* component[VariationCode].code = LNC#81252-9
* component[VariationCode].value[x] only CodeableConcept
* component[VariationCode].valueCodeableConcept 1..1
* component[VariationCode].valueCodeableConcept from ClinVarVS (preferred)
* component[GenomicDNAChange] ^short = "Genomic DNA change (gHGVS)"
* component[GenomicDNAChange] ^definition = "The symbolic representation of a genetic structural variant reported using HGVS nomenclature (gHGVS)"
* component[GenomicDNAChange].code = LNC#81290-9
* component[GenomicDNAChange].value[x] only CodeableConcept
* component[GenomicDNAChange].valueCodeableConcept 1..1
* component[GenomicDNAChange].valueCodeableConcept from HGVSVS (required)
* component[GenomicSourceClass] ^short = "Genomic source class [Type]"
* component[GenomicSourceClass] ^definition = "The genomic class of the specimen being analyzed, for example, germline for inherited genome, somatic for cancer genome, and prenatal for fetal genome."
* component[GenomicSourceClass].code = LNC#48002-0
* component[GenomicSourceClass].value[x] only CodeableConcept
* component[GenomicSourceClass].valueCodeableConcept 1..1
* component[GenomicSourceClass].valueCodeableConcept from http://loinc.org/vs/LL378-1 (required)
* component[AminoAcidChange] ^short = "Amino acid change (pHGVS)"
* component[AminoAcidChange] ^definition = "The symbolic representation of an amino acid variant reported using HGVS nomenclature (pHGVS)."
* component[AminoAcidChange].code = LNC#48005-3
* component[AminoAcidChange].value[x] only CodeableConcept
* component[AminoAcidChange].valueCodeableConcept 1..1
* component[AminoAcidChange].valueCodeableConcept from HGVSVS (required)
* component[AminoAcidChangeType] ^short = "Amino acid change [Type]"
* component[AminoAcidChangeType] ^definition = "The type of change related to the amino acid variant."
* component[AminoAcidChangeType].code = LNC#48006-1
* component[AminoAcidChangeType].value[x] only CodeableConcept
* component[AminoAcidChangeType].valueCodeableConcept 1..1
* component[AminoAcidChangeType].valueCodeableConcept from http://loinc.org/vs/LL380-7 (required)
* component[CytogeneticLocation] ^short = "Cytogenetic (chromosome) location"
* component[CytogeneticLocation] ^definition = "The cytogenetic (chromosome) location."
* component[CytogeneticLocation].code = LNC#48001-2
* component[CytogeneticLocation].value[x] 1..1
// CG Reporting IG does not constrain the CytogeneticLocation value type.
* component[CytogeneticNomenclature] ^short = "Variant ISCN"
* component[CytogeneticNomenclature] ^definition = "The cytogenetic (chromosome) location, represented using the International System for Human Cytogenetic Nomenclature (ISCN)"
* component[CytogeneticNomenclature].code = LNC#81291-7
* component[CytogeneticNomenclature].value[x] only CodeableConcept
* component[CytogeneticNomenclature].valueCodeableConcept 1..1
// CG Reporting IG does not constrain the CytogeneticNomenclature value type.


Profile:        TumorMarker
Parent:         USCoreObservationLab
Id:             mcode-tumor-marker
Title:          "Tumor Marker"
Description:    "The result of a tumor marker test. Tumor marker tests are generally used to guide cancer treatment decisions and monitor treatment, as well as to predict the chance of recovery and cancer recurrence. A tumor marker is a substance found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (noncancer) conditions. Most tumor markers are made by both normal cells and cancer cells, but they are made in larger amounts by cancer cells. A tumor marker may help to diagnose cancer, plan treatment, or find out how well treatment is working or if cancer has come back. Examples of tumor markers include CA-125 (in ovarian cancer), CA 15-3 (in breast cancer), CEA (in colon cancer), and PSA (in prostate cancer). Tumor markers differ from genetic markers in that they are measured at the levels of the protein and substance post-RNA protein synthesis. (Definition adapted from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/tumor-marker-test) and [Cancer.Net](https://www.cancer.net/navigating-cancer-care/diagnosing-cancer/tests-and-procedures/tumor-marker-tests)).

Implementation note: The data value for TumorMarker has cardinality is 0..1 (required if known) because when the test result is indeterminate, no quantitative data value will be reported. Instead, the reason for the null value will be reported in the DataAbsentReason field."
* status, code, subject, effective[x], value[x] MS
* bodySite 0..0
* referenceRange 0..1
* hasMember 0..0
* component 0..0
* interpretation 0..1
* subject 1..1
* basedOn only Reference(ServiceRequest | MedicationRequest)
* partOf only Reference(MedicationAdministration | MedicationStatement | Procedure)
* code from TumorMarkerTestVS (extensible)
* subject only Reference(CancerPatient)
* focus only Reference(CancerConditionParent)
* effective[x] only dateTime or Period
* performer only Reference(Practitioner)
* value[x] only Quantity or Ratio or CodeableConcept

Profile:    GeneticSpecimen
Parent:     Specimen
Id:         mcode-genetic-specimen
Title:      "Genetic Specimen"
Description:    "A small sample of blood, hair, skin, amniotic fluid (the fluid that surrounds a fetus during pregnancy), or other tissue which is excised from a subject for the purposes of genomics testing or analysis."
* type 1..1 MS
* type from GeneticSpecimenTypeVS
* collection.bodySite.extension contains
    Laterality named laterality 0..1
* collection.bodySite, collection.bodySite.extension[laterality] MS


Profile:    CancerGenomicsReport
Parent:     USCoreDiagnosticReportLab
Id:         mcode-cancer-genomics-report
Title:      "Cancer Genomics Report"
Description:    "Genetic analysis summary report. The report may include one or more tests, with two distinct test types. The first type is a targeted mutation test, where a specific mutation on a specific gene is tested for. The result is either positive or negative for that mutation. The second type is a more general test for variants. This type of test returns the identity of variants found in a certain region of the genome.
The identity of non-genomic laboratory tests is typically represented by a LOINC code. However, many genetic tests and panels do not have LOINC codes, although some might have an identifier in NCBI Genetic Testing Registry (GTR), a central location for voluntary submission of genetic test information by providers. To identify the diagnostic report, the name of the report must be in the text sub-field of the code structure. If there is a coded identifier from GTR, LOINC, or other source, then it should be included into the the code sub-field of the code structure. If there is no suitable code, the code can be omitted."
* specimen MS
* basedOn only Reference (ServiceRequest | CarePlan)
* subject only Reference(CancerPatient)
* category contains GenomicsCategory 1..1
* category[GenomicsCategory] = DiagnosticService#GE
* code = LNC#81247-9 //"Master HL7 genetic variant reporting panel"
* specimen only Reference(GeneticSpecimen)
* result ^slicing.discriminator.type = #pattern
* result ^slicing.discriminator.path = "$this.resolve().code"
* result ^slicing.rules = #open
* result ^slicing.description = "Slice based on the reference profile and code pattern"
* result contains
    CancerGeneticVariant 0..1 MS and
    GenomicRegionStudied 0..1 MS
* result[CancerGeneticVariant] only Reference(CancerGeneticVariant)
* result[CancerGeneticVariant] ^short = "Cancer Genetic Variant"
* result[CancerGeneticVariant] ^definition = "Records an alteration in the most common DNA nucleotide sequence. The term variant is increasingly being used in place of the term mutation to describe an alteration that may be benign, pathogenic, or of unknown significance."
* result[CancerGeneticVariant] ^comment = "When using this element, the Observation must validate against the specified profile."
* result[GenomicRegionStudied] only Reference(GenomicRegionStudied)
* result[GenomicRegionStudied] ^short = "Genomic Region Studied"
* result[GenomicRegionStudied] ^definition = "The area of the genome region referenced in testing for variants."
* result[GenomicRegionStudied] ^comment = "When using this element, the Observation must validate against the specified profile."


Profile:    GenomicRegionStudied
Parent:     USCoreObservationLab
Id:         mcode-genomic-region-studied
Title:      "Genomic Region Studied"
Description:    "The area of the genome region referenced in testing for variants."
* code MS
* code = LNC#53041-0 //"DNA region of interest panel"
* value[x] 0..0
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    GeneMutations 0..* MS and
    GeneStudied 0..* MS and
    DNARegionDescription 0..* MS and
    DNARangesExamined 0..* MS and
    GenomicRegionCoordinateSystem 0..1 MS and
    GenomicReferenceSequenceId 0..1 MS

* component[GeneMutations] ^short = "Gene mutations tested for in Blood or Tissue by Molecular genetics method Nominal"
* component[GeneMutations] ^definition = "The gene mutations tested for in blood or tissue by molecular genetics methods"
* component[GeneMutations].code = LNC#36908-2
* component[GeneMutations].value[x] only CodeableConcept
* component[GeneMutations].valueCodeableConcept 1..1
* component[GeneMutations].valueCodeableConcept from HGVSVS (required)
// MK 1/23/2020 should this be http://www.genenames.org/geneId (extensible)?

* component[GeneStudied] ^short = "Gene studied [ID]"
* component[GeneStudied] ^definition = "The ID for the gene studied"
* component[GeneStudied].code = LNC#48018-6
* component[GeneStudied].value[x] only CodeableConcept
* component[GeneStudied].valueCodeableConcept 1..1
* component[GeneStudied].valueCodeableConcept from HGNCVS (extensible)

* component[DNARegionDescription] ^short = "Description of ranges of DNA sequences examined"
* component[DNARegionDescription] ^definition = "Description for the DNA region studied in the genomics report"
* component[DNARegionDescription].code = LNC#81293-3
* component[DNARegionDescription].value[x] only string
* component[DNARegionDescription].valueString 1..1

* component[DNARangesExamined] ^short = "Range(s) of DNA sequence examined"
* component[DNARangesExamined] ^definition = "The range(s) of the DNA sequence examined"
* component[DNARangesExamined].code = LNC#51959-5
* component[DNARangesExamined].value[x] only Range
* component[DNARangesExamined].valueRange 1..1

* component[GenomicRegionCoordinateSystem] ^short = "Genomic coordinate system [Type]."
* component[GenomicRegionCoordinateSystem] ^definition = "The method of counting along the genome, for example, 0-based interval counting or 0-based character counting."
* component[GenomicRegionCoordinateSystem].code = LNC#92822-6
* component[GenomicRegionCoordinateSystem].value[x] only CodeableConcept
* component[GenomicRegionCoordinateSystem].valueCodeableConcept 1..1
* component[GenomicRegionCoordinateSystem].valueCodeableConcept from http://loinc.org/vs/LL5323-2 (preferred)
* component[GenomicReferenceSequenceId] ^short = "Genomic reference sequence [ID]"
* component[GenomicReferenceSequenceId] ^definition = "Range(s) of DNA sequence examined. The genomic reference sequence is a contiguous stretch of chromosome DNA that spans all of the exons of the gene and includes transcribed and non transcribed stretches. For this ID use either the NCBI genomic nucleotide RefSeq IDs with their version number (see: NCBI.NLM.NIH.Gov/RefSeq) or use the LRG identifiers, without transcript (t or p) extensions -- when they become available. (source: LOINC)"
* component[GenomicReferenceSequenceId].code = LNC#48013-7
* component[GenomicReferenceSequenceId].value[x] 1..1 // no value type specified
