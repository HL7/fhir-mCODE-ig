Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient.

The bundle MUST contain exactly one Patient resource conforming to the [CancerPatient](StructureDefinition-mcode-cancer-patient.html) profile.

The bundle MUST also contain following mCODE-conformant resources, if available to the server:

* Condition resources representing the [PrimaryCancerCondition](StructureDefinition-mcode-primary-cancer-condition.html) and [SecondaryCancerCondition](StructureDefinition-mcode-secondary-cancer-condition.html), if applicable
* Observation resources representing [CancerDiseaseStatus](StructureDefinition-mcode-cancer-disease-status.html)
* Observation resources representing [ECOGPerformanceStatus](StructureDefinition-mcode-ecog-performance-status.html) and/or [KarnofskyPerformanceStatus](StructureDefinition-mcode-karnofsky-performance-status.html)
* Observation resources representing any [TumorMarkerTests](StructureDefinition-mcode-tumor-marker-test.html)
* MedicationRequest resources conforming to [CancerRelatedMedicationRequest](StructureDefinition-mcode-cancer-related-medication-request.html), representing cancer-related prescriptions, administrations, and patient-reported medications
* Procedure resources representing any [CancerRelatedSurgicalProcedure](StructureDefinition-mcode-cancer-related-surgical-procedure.html) or [CancerRelatedRadiationProcedure](StructureDefinition-mcode-cancer-related-radiation-procedure.html)
* Observation resources representing the TNM staging information
* Observation resources representing [CancerGeneticVariant](StructureDefinition-mcode-cancer-genetic-variant.html) and [GenomicRegionStudied](StructureDefinition-mcode-genomic-region-studied.html)
* DiagnosticReport resources representing [CancerGenomicsReport](StructureDefinition-mcode-cancer-genomics-report.html)
* Specimen resources representing to [GeneticSpecimen](StructureDefinition-mcode-genetic-specimen.html)
* Observation resource representing to [CancerRelatedComorbidities](StructureDefinition-mcode-cancer-related-comorbidities.html), and accompanying Condition resources
* Observation resources for patient height, weight, blood pressure
* Laboratory results from Comprehensive Metabolic Panels (CMP) and Complete Blood Counts (CBC)

In addition, the bundle MAY contain additional resources relevant to the patient but not part of mCODE, such as smoking status, family member history, and diagnostic procedures.

The bundle itself MUST validate against the [MCODEPatientBundle](StructureDefinition-mcode-patient-bundle.html) profile.

By default, this Bundle includes _all_ required resources described above, irrespective of care dates associated with the resources. For some types of resources, such as vital signs, a very large number of resources will therefore be included by default. To limit the number of included resources, callers MAY specify `start` and `end` parameters when requesting a patient's mCODE bundle via the Sender's FHIR API, which operate in the same way as for [the Fetch Patient Record operation](https://www.hl7.org/fhir/operation-patient-everything.html)."

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
    cancerRelatedRadiationProcedure 0..* MS and
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
    cancerRelatedComorbidities 0..* MS and
    vitalSignHeight 0..* MS and
    vitalSignWeight 0..* MS and
    vitalSignBloodPressure 0..* MS

* entry[cancerPatient] ^short = "Cancer Patient"
* entry[primaryCancerCondition] ^short = "Primary Cancer Condition(s)"
* entry[secondaryCancerCondition] ^short = "Secondary Cancer Condition(s)"
* entry[cancerDiseaseStatus] ^short = "Cancer Disease Status(es)"
* entry[ecogPerformanceStatus] ^short = "ECOG Performance Status(es)"
* entry[karnofskyPerformanceStatus] ^short = "Karnofsky Performance Status(es)"
* entry[tumorMarkerTest] ^short = "Tumor Marker Tests"
* entry[cancerRelatedMedicationRequest] ^short = "Cancer-Related Medication Request(s)"
* entry[cancerRelatedSurgicalProcedure] ^short = "Cancer-Related Surgical Procedure(s)"
* entry[cancerRelatedRadiationProcedure] ^short = "Cancer-Related Radiology Procedure(s)"
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
* entry[cancerRelatedComorbidities] ^short = "Cancer-Related Comorbities"
* entry[vitalSignHeight] ^short = "Patient Height(s)"
* entry[vitalSignWeight] ^short = "Patient Weight(s)"
* entry[vitalSignBloodPressure] ^short = "Patient Blood Pressure(s)"

* entry[cancerPatient] ^definition = "The Cancer Patient whose data is included in the bundle (required element)."
* entry[primaryCancerCondition] ^definition = "Condition resource(s) representing the Primary Cancer Condition."
* entry[secondaryCancerCondition] ^definition = "Condition resource(s) representing the Secondary Cancer Condition."
* entry[cancerDiseaseStatus] ^definition = "Observations resource(s) representing Cancer Disease Status. Include past assessments if available."
* entry[ecogPerformanceStatus] ^definition = "Observations resource(s) representing ECOG Performance Status assessment. Include past assessments if available."
* entry[karnofskyPerformanceStatus] ^definition = "Observations resource(s) representing Karnofsky Performance Status assessment. Include past assessments if available."
* entry[tumorMarkerTest] ^definition = "Observations resource(s) representing Tumor Marker Tests."
* entry[cancerRelatedMedicationRequest] ^definition = "Cancer-Related Medication Requests, including both active and inactive medications."
* entry[cancerRelatedSurgicalProcedure] ^definition = "Procedure resource(s) representing cancer-related surgical procedures."
* entry[cancerRelatedRadiationProcedure] ^definition = "Procedure resource(s) representing cancer-related radiology procedures."
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
* entry[cancerRelatedComorbidities] ^definition = "Observation resource(s) representing Cancer-Related Comorbities."
* entry[vitalSignHeight] ^definition = "Observation resource(s) representing patient height."
* entry[vitalSignWeight] ^definition = "Observation resource(s) representing patient weight."
* entry[vitalSignBloodPressure] ^definition = "Observation resource(s) representing patient blood pressure."

* entry[cancerPatient].resource only CancerPatient
* entry[primaryCancerCondition].resource only PrimaryCancerCondition
* entry[secondaryCancerCondition].resource only SecondaryCancerCondition
* entry[cancerDiseaseStatus].resource only CancerDiseaseStatus
* entry[ecogPerformanceStatus].resource only ECOGPerformanceStatus
* entry[karnofskyPerformanceStatus].resource only KarnofskyPerformanceStatus
* entry[tumorMarkerTest].resource only TumorMarkerTest
* entry[cancerRelatedMedicationRequest].resource only CancerRelatedMedicationRequest
* entry[cancerRelatedSurgicalProcedure].resource only CancerRelatedSurgicalProcedure
* entry[cancerRelatedRadiationProcedure].resource only CancerRelatedRadiationProcedure
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
* entry[cancerRelatedComorbidities].resource only CancerRelatedComorbidities
* entry[vitalSignHeight].resource only http://hl7.org/fhir/StructureDefinition/bodyheight
* entry[vitalSignWeight].resource only http://hl7.org/fhir/StructureDefinition/bodyweight
* entry[vitalSignBloodPressure].resource only http://hl7.org/fhir/StructureDefinition/bp
