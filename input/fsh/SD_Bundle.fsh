Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient."
* insert ReduceText(link)
* insert ReduceText(entry)
* insert ReduceText(entry.request)
* insert ReduceText(entry.response)
* insert ReduceText(entry.search)
* type  = #collection
* insert SliceOnProfile(entry, resource)
* insert CreateBundleEntry(cancerPatient, 1, 1, Cancer Patient, The Cancer Patient whose data is included in the bundle, CancerPatient)
* insert CreateBundleEntry(primaryCancerCondition, 0, *, Primary Cancer Condition(s\), Condition resource(s\) representing the Primary Cancer Condition., PrimaryCancerCondition)
* insert CreateBundleEntry(secondaryCancerCondition, 0, *, Secondary Cancer Condition(s\), Condition resource(s\) representing the Secondary Cancer Condition., SecondaryCancerCondition)
* insert CreateBundleEntry(cancerDiseaseStatus, 0, *, Cancer Disease Status(es\), Observations resource(s\) representing Cancer Disease Status. Include past assessments if available., CancerDiseaseStatus)
* insert CreateBundleEntry(ecogPerformanceStatus, 0, *, ECOG Performance Status(es\), Observations resource(s\) representing ECOG Performance Status assessment. Include past assessments if available., ECOGPerformanceStatus)
* insert CreateBundleEntry(karnofskyPerformanceStatus, 0, *, Karnofsky Performance Status(es\), Observations resource(s\) representing Karnofsky Performance Status assessment. Include past assessments if available., KarnofskyPerformanceStatus)
* insert CreateBundleEntry(tumorMarkerTest, 0, *, Tumor Marker Tests, Observations resource(s\) representing Tumor Marker Tests., TumorMarkerTest)
* insert CreateBundleEntry(cancerRelatedMedicationRequest, 0, *, Cancer-Related Medication Request(s\), Cancer-Related Medication Requests\, including both active and inactive medications., CancerRelatedMedicationRequest)
* insert CreateBundleEntry(cancerRelatedSurgicalProcedure, 0, *, Cancer-Related Surgical Procedure(s\),  Procedure resource(s\) representing cancer-related surgical procedures., CancerRelatedSurgicalProcedure)
* insert CreateBundleEntry(radiotherapySummary, 0, *, Radiation Summary(-ies\), Procedure resource(s\) representing a course of treatment in cancer-related radiology therapy., RadiotherapySummary)
* insert CreateBundleEntry(brachytherapyPrescriptionDelivery, 0, *, Delivery of Brachytherapy Prescription, Procedure resource(s\) representing cancer-related brachytherapy radiology procedures., BrachytherapyPrescriptionDelivery)
* insert CreateBundleEntry(teleradiotherapyPrescriptionDelivery, 0, *, Delivery of Teleradiotherapy Prescription, Procedure resource(s\) representing a phase in treatment of cancer via external beam radiology procedures., TeleradiotherapyPrescriptionDelivery)
* insert CreateBundleEntry(tnmStageGroup, 0, *, TNM Stage Group(s\), Observation resource(s\) representing stage group, TNMStageGroup)
* insert CreateBundleEntry(tnmPrimaryTumorCategory, 0, *, TNM Primary Tumor Category(-ies\), Observation resource(s\) representing T category, TNMPrimaryTumorCategory)
* insert CreateBundleEntry(tnmRegionalNodesCategory, 0, *, TNM Regional Node Category(-ies\), Observation resource(s\) representing N category, TNMRegionalNodesCategory)
* insert CreateBundleEntry(tnmDistantMetastasesCategory, 0, *, TNM Distant Metastases Category(-ies\), Observation resource(s\) representing M category, TNMDistantMetastasesCategory)
* insert CreateBundleEntry(cancerGeneticVariant, 0, *, Cancer Genetic Variant(s\), Observation resource(s\) representing Cancer Genetic Variants., CancerGeneticVariant)
* insert CreateBundleEntry(cancerGenomicsReport, 0, *, Cancer Genomics Report(s\), DiagnosticReport resource(s\) representing Cancer Genomics Reports, CancerGenomicsReport)
* insert CreateBundleEntry(geneticSpecimen, 0, *, Genetic Specimen(s\), Specimen resource(s\) representing Genetic Specimens., GeneticSpecimen)
* insert CreateBundleEntry(genomicRegionStudied, 0, *, Genomic Region(s\) Studied, Observation resource(s\) representing Genomic Regions Studied., GenomicRegionStudied)
* insert CreateBundleEntry(comorbiditiesElixhauser, 0, *, Cancer-Related Comorbidities, Observation resource representing the patient's comorbidities., ComorbiditiesElixhauser)
* insert CreateBundleEntry(vitalSign, 0, *, Patient Height(s\)\, Weight(s\)\, Blood Pressure(s\)\, or other vital signs, Observation resource(s\) representing patient height\, weight\, blood pressure\, and other vital signs., http://hl7.org/fhir/StructureDefinition/vitalsigns)
* insert CreateBundleEntry(tumor, 0, *, Identified Tumors,  Any tumor(s\) being tracked over time., Tumor)
* insert CreateBundleEntry(tumorSize, 0, *, Tumor Size Measurements, Tumor size measurement(s\)., TumorSize)

// Put the MS for entry.resource LAST, otherwise it doesn't take for some reason
* timestamp and entry and entry.resource MS


RuleSet: CreateBundleEntry(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}
// Get rid of all the crap that gets repeated hundreds of times in a StructureDefinition for no reason
* entry[{name}].extension ^definition = "~"
* entry[{name}].extension ^comment = "~"
* entry[{name}].modifierExtension ^short = "~"
* entry[{name}].modifierExtension ^definition = "~"
* entry[{name}].modifierExtension ^comment = "~"
* entry[{name}].modifierExtension ^requirements = "~"
* entry[{name}].modifierExtension 0..0
* entry[{name}].search.extension ^definition = "~"
* entry[{name}].search.extension ^comment = "~"
* entry[{name}].search.modifierExtension ^short = "~"
* entry[{name}].search.modifierExtension ^definition = "~"
* entry[{name}].search.modifierExtension ^comment = "~"
* entry[{name}].search.modifierExtension ^requirements = "~"
* entry[{name}].search.modifierExtension 0..0
* entry[{name}].request.extension ^definition = "~"
* entry[{name}].request.extension ^comment = "~"
* entry[{name}].request.modifierExtension ^short = "~"
* entry[{name}].request.modifierExtension ^definition = "~"
* entry[{name}].request.modifierExtension ^comment = "~"
* entry[{name}].request.modifierExtension ^requirements = "~"
* entry[{name}].request.modifierExtension 0..0
* entry[{name}].response.extension ^definition = "~"
* entry[{name}].response.extension ^comment = "~"
* entry[{name}].response.modifierExtension ^short = "~"
* entry[{name}].response.modifierExtension ^definition = "~"
* entry[{name}].response.modifierExtension ^comment = "~"
* entry[{name}].response.modifierExtension ^requirements = "~"
* entry[{name}].response.modifierExtension 0..0
* entry[{name}].fullUrl ^definition = "~"
* entry[{name}].fullUrl ^comment = "~"


/*
* entry contains
    // These resources are required per Conformance > Supported Profiles.
    cancerPatient 1..1 MS and
    primaryCancerCondition 0..* MS and
    secondaryCancerCondition 0..* MS and
    cancerDiseaseStatus 0..* MS and
    ecogPerformanceStatus 0..* MS and
    karnofskyPerformanceStatus 0..* MS and
    tumorMarkerTest 0..* MS and
    cancerRelatedMedicationRequest 0..* MS and
    cancerRelatedSurgicalProcedure 0..* MS and
    radiotherapySummary 0..* MS and
    brachytherapyPrescriptionDelivery 0..* MS and
    teleradiotherapyPrescriptionDelivery 0..* MS and
    tnmStageGroup 0..* MS and
    tnmPrimaryTumorCategory 0..* MS and
    tnmRegionalNodesCategory 0..* MS and
    tnmDistantMetastasesCategory 0..* MS and
    cancerGeneticVariant 0..* MS and
    cancerGenomicsReport 0..* MS and
    geneticSpecimen 0..* MS and
    genomicRegionStudied 0..* MS and
    comorbiditiesElixhauser 0..* MS and
    vitalSign 0..* MS and
    tumor 0..* MS and 
    tumorSize 0..* MS

* entry[cancerPatient] ^short = "Cancer Patient"
* entry[primaryCancerCondition] ^short = "Primary Cancer Condition(s)"
* entry[secondaryCancerCondition] ^short = "Secondary Cancer Condition(s)"
* entry[cancerDiseaseStatus] ^short = "Cancer Disease Status(es)"
* entry[ecogPerformanceStatus] ^short = "ECOG Performance Status(es)"
* entry[karnofskyPerformanceStatus] ^short = "Karnofsky Performance Status(es)"
* entry[tumorMarkerTest] ^short = "Tumor Marker Tests"
* entry[cancerRelatedMedicationRequest] ^short = "Cancer-Related Medication Request(s)"
* entry[cancerRelatedSurgicalProcedure] ^short = "Cancer-Related Surgical Procedure(s)"
* entry[radiotherapySummary] ^short = "Radiation Summary(-ies)"
* entry[teleradiotherapyPrescriptionDelivery] ^short = "Delivery of Teleradiotherapy Prescription"
* entry[brachytherapyPrescriptionDelivery] ^short = "Delivery of Brachytherapy Prescription"
* entry[tnmStageGroup] ^short = "TNM Stage Group(s)"
* entry[tnmPrimaryTumorCategory] ^short = "TNM Primary Tumor Category(-ies)"
* entry[tnmRegionalNodesCategory] ^short = "TNM Regional Nodes Category(-ies)"
* entry[tnmDistantMetastasesCategory] ^short = "TNM Distant Metastases Category(-ies)"
* entry[cancerGeneticVariant] ^short = "Cancer Genetic Variant(s)"
* entry[cancerGenomicsReport] ^short = "Cancer Genomics Report(s)"
* entry[geneticSpecimen] ^short = "Genetic Specimen(s)"
* entry[genomicRegionStudied] ^short = "Genomic Region(s) Studied"
* entry[comorbiditiesElixhauser] ^short = "Cancer-Related Comorbidities"
* entry[vitalSign] ^short = "Patient Height(s), Weight(s), Blood Pressure(s), or other vital signs"
* entry[tumor] ^short = "Identified Tumors"
* entry[tumorSize] ^short = "Tumor Size Measurements"


* entry[cancerPatient] ^definition = "The Cancer Patient whose data is included in the bundle (required element)."
* entry[primaryCancerCondition] ^definition = "Condition resource(s) representing the Primary Cancer Condition."
* entry[secondaryCancerCondition] ^definition = "Condition resource(s) representing the Secondary Cancer Condition."
* entry[cancerDiseaseStatus] ^definition = "Observations resource(s) representing Cancer Disease Status. Include past assessments if available."
* entry[ecogPerformanceStatus] ^definition = "Observations resource(s) representing ECOG Performance Status assessment. Include past assessments if available."
* entry[karnofskyPerformanceStatus] ^definition = "Observations resource(s) representing Karnofsky Performance Status assessment. Include past assessments if available."
* entry[tumorMarkerTest] ^definition = "Observations resource(s) representing Tumor Marker Tests."
* entry[cancerRelatedMedicationRequest] ^definition = "Cancer-Related Medication Requests, including both active and inactive medications."
* entry[cancerRelatedSurgicalProcedure] ^definition = "Procedure resource(s) representing cancer-related surgical procedures."
* entry[radiotherapySummary] ^definition = "Procedure resource(s) representing a course of treatment in cancer-related radiology therapy."
* entry[teleradiotherapyPrescriptionDelivery] ^definition = "Procedure resource(s) representing a phase in treatment of cancer via external beam radiology procedures."
* entry[brachytherapyPrescriptionDelivery] ^definition = "Procedure resource(s) representing cancer-related brachytherapy (internal) radiology procedures."
* entry[tnmStageGroup] ^definition = "Observation resource(s) representing stage group"
* entry[tnmPrimaryTumorCategory] ^definition = "Observation resource(s) representing T category"
* entry[tnmRegionalNodesCategory] ^definition = "Observation resource(s) representing N category"
* entry[tnmDistantMetastasesCategory] ^definition = "Observation resource(s) representing M category"
* entry[cancerGeneticVariant] ^definition = "Observation resource(s) representing Cancer Genetic Variants."
* entry[cancerGenomicsReport] ^definition = "DiagnosticReport resource(s) representing Cancer Genomics Reports"
* entry[geneticSpecimen] ^definition = "Specimen resource(s) representing Genetic Specimens."
* entry[genomicRegionStudied] ^definition = "Observation resource(s) representing Genomic Regions Studied."
* entry[comorbiditiesElixhauser] ^definition = "Observation resource representing the patient's comorbidities."
* entry[vitalSign] ^definition = "Observation resource(s) representing patient height, weight, blood pressure, and other vital signs."
* entry[tumor] ^definition = "Any tumor(s) being tracked over time."
* entry[tumorSize] ^definition = "Tumor size measurement(s)."

* entry[cancerPatient].resource only CancerPatient
* entry[primaryCancerCondition].resource only PrimaryCancerCondition
* entry[secondaryCancerCondition].resource only SecondaryCancerCondition
* entry[cancerDiseaseStatus].resource only CancerDiseaseStatus
* entry[ecogPerformanceStatus].resource only ECOGPerformanceStatus
* entry[karnofskyPerformanceStatus].resource only KarnofskyPerformanceStatus
* entry[tumorMarkerTest].resource only TumorMarkerTest
* entry[cancerRelatedMedicationRequest].resource only CancerRelatedMedicationRequest
* entry[cancerRelatedSurgicalProcedure].resource only CancerRelatedSurgicalProcedure
// -- Radiotherapy --
* entry[radiotherapySummary].resource only RadiotherapySummary
* entry[teleradiotherapyPrescriptionDelivery].resource only TeleradiotherapyPrescriptionDelivery
* entry[brachytherapyPrescriptionDelivery].resource only BrachytherapyPrescriptionDelivery
//
* entry[tnmStageGroup].resource only TNMStageGroup
* entry[tnmPrimaryTumorCategory].resource only TNMPrimaryTumorCategory
* entry[tnmRegionalNodesCategory].resource only TNMRegionalNodesCategory
* entry[tnmDistantMetastasesCategory].resource only TNMDistantMetastasesCategory
* entry[cancerGeneticVariant].resource only CancerGeneticVariant
* entry[cancerGenomicsReport].resource only CancerGenomicsReport
* entry[geneticSpecimen].resource only GeneticSpecimen
* entry[genomicRegionStudied].resource only GenomicRegionStudied
* entry[comorbiditiesElixhauser].resource only ComorbiditiesElixhauser
* entry[vitalSign].resource only http://hl7.org/fhir/StructureDefinition/vitalsigns
* entry[tumor].resource only Tumor
//* entry[tumorSize].resource only TumorSize
*/