Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient."
* type  = #collection
* insert BundleEntrySlicingRules
* entry and entry.resource MS
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
    radiotherapyCourseSummary 0..* MS and
    brachytherapyPrescriptionDelivery 0..* MS and
    teleradiotherapyPrescriptionDelivery 0..* MS and
    tnmClinicalStageGroup 0..* MS and
    tnmClinicalPrimaryTumorCategory 0..* MS and
    tnmClinicalRegionalNodesCategory 0..* MS and
    tnmClinicalDistantMetastasesCategory 0..* MS and
    tnmPathologicalStageGroup 0..* MS and
    tnmPathologicalPrimaryTumorCategory 0..* MS and
    tnmPathologicalRegionalNodesCategory 0..* MS and
    tnmPathologicalDistantMetastasesCategory 0..* MS and
    cancerGeneticVariant 0..* MS and
    cancerGenomicsReport 0..* MS and
    geneticSpecimen 0..* MS and
    genomicRegionStudied 0..* MS and
    cancerRelatedComorbiditiesElixhauser 0..* MS and
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
* entry[radiotherapyCourseSummary] ^short = "Cancer-Related Radiation Course(s)"
* entry[teleradiotherapyPrescriptionDelivery] ^short = "Radiotherapy Course Summary(-ies)"
* entry[brachytherapyPrescriptionDelivery] ^short = "Brachytherapy Summary(-ies)"
* entry[tnmClinicalStageGroup] ^short = "TNM Clinical Stage Group(s)"
* entry[tnmClinicalPrimaryTumorCategory] ^short = "TNM Clinical Primary Tumor Category(-ies)"
* entry[tnmClinicalRegionalNodesCategory] ^short = "TNM Clinical Regional Nodes Category(-ies)"
* entry[tnmClinicalDistantMetastasesCategory] ^short = "TNM Clinical Distant Metastases Category(-ies)"
* entry[tnmPathologicalStageGroup] ^short = "TNM Pathological Stage Group"
* entry[tnmPathologicalPrimaryTumorCategory] ^short = "TNM Pathological Primary Tumor Category(-ies)"
* entry[tnmPathologicalRegionalNodesCategory] ^short = "TNM Pathological Regional Nodes Category(-ies)"
* entry[tnmPathologicalDistantMetastasesCategory] ^short = "TNM Pathological Distant Metastases Category(-ies)"
* entry[cancerGeneticVariant] ^short = "Cancer Genetic Variant(s)"
* entry[cancerGenomicsReport] ^short = "Cancer Genomics Report(s)"
* entry[geneticSpecimen] ^short = "Genetic Specimen(s)"
* entry[genomicRegionStudied] ^short = "Genomic Region(s) Studied"
* entry[cancerRelatedComorbiditiesElixhauser] ^short = "Cancer-Related Comorbidities"
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
* entry[radiotherapyCourseSummary] ^definition = "Procedure resource(s) representing a course of treatment in cancer-related radiology therapy."
* entry[teleradiotherapyPrescriptionDelivery] ^definition = "Procedure resource(s) representing a phase in treatment of cancer via external beam radiology procedures."
* entry[brachytherapyPrescriptionDelivery] ^definition = "Procedure resource(s) representing cancer-related brachytherapy (internal) radiology procedures."
* entry[tnmClinicalStageGroup] ^definition = "Observation resource(s) representing clinical stage group"
* entry[tnmClinicalPrimaryTumorCategory] ^definition = "Observation resource(s) representing clinical T category"
* entry[tnmClinicalRegionalNodesCategory] ^definition = "Observation resource(s) representing clinical N category"
* entry[tnmClinicalDistantMetastasesCategory] ^definition = "Observation resource(s) representing clinical M category"
* entry[tnmPathologicalStageGroup] ^definition = "Observation resource(s) representing pathological stage group"
* entry[tnmPathologicalPrimaryTumorCategory] ^definition = "Observation resource(s) representing pathological T category"
* entry[tnmPathologicalRegionalNodesCategory] ^definition = "Observation resource(s) representing pathological N category"
* entry[tnmPathologicalDistantMetastasesCategory] ^definition = "Observation resource(s) representing pathological M category"
* entry[cancerGeneticVariant] ^definition = "Observation resource(s) representing Cancer Genetic Variants."
* entry[cancerGenomicsReport] ^definition = "DiagnosticReport resource(s) representing Cancer Genomics Reports"
* entry[geneticSpecimen] ^definition = "Specimen resource(s) representing Genetic Specimens."
* entry[genomicRegionStudied] ^definition = "Observation resource(s) representing Genomic Regions Studied."
* entry[cancerRelatedComorbiditiesElixhauser] ^definition = "Observation resource(s) representing Cancer-Related Comorbidities."
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
* entry[radiotherapyCourseSummary].resource only RadiotherapyCourseSummary
* entry[teleradiotherapyPrescriptionDelivery].resource only TeleradiotherapyPrescriptionDelivery
* entry[brachytherapyPrescriptionDelivery].resource only BrachytherapyPrescriptionDelivery
//
* entry[tnmClinicalStageGroup].resource only TNMClinicalStageGroup
* entry[tnmClinicalPrimaryTumorCategory].resource only TNMClinicalPrimaryTumorCategory
* entry[tnmClinicalRegionalNodesCategory].resource only TNMClinicalRegionalNodesCategory
* entry[tnmClinicalDistantMetastasesCategory].resource only TNMClinicalDistantMetastasesCategory
* entry[tnmPathologicalStageGroup].resource only TNMPathologicalStageGroup
* entry[tnmPathologicalPrimaryTumorCategory].resource only TNMPathologicalPrimaryTumorCategory
* entry[tnmPathologicalRegionalNodesCategory].resource only TNMPathologicalRegionalNodesCategory
* entry[tnmPathologicalDistantMetastasesCategory].resource only TNMPathologicalDistantMetastasesCategory
* entry[cancerGeneticVariant].resource only CancerGeneticVariant
* entry[cancerGenomicsReport].resource only CancerGenomicsReport
* entry[geneticSpecimen].resource only GeneticSpecimen
* entry[genomicRegionStudied].resource only GenomicRegionStudied
* entry[cancerRelatedComorbiditiesElixhauser].resource only CancerRelatedComorbiditiesElixhauser
* entry[vitalSign].resource only http://hl7.org/fhir/StructureDefinition/vitalsigns
* entry[tumor].resource only Tumor
* entry[tumorSize].resource only TumorSize
