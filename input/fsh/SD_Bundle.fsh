Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient.

The bundle MUST contain exactly one Patient resource conforming to the [CancerPatient] profile, and one or more Condition resource(s) conforming to the [PrimaryCancerCondition] profile.

The bundle MUST also contain following mCODE-conformant resources, if available to the server:

* Condition resources conforming to [SecondaryCancerCondition]
* Observation resources conforming to [CancerDiseaseStatus]
* Observation resources conforming to [PerformanceStatusParent] ([ECOG][ECOGPerformanceStatus] and/or [Karnofsky][KarnofskyPerformanceStatus])
* Observation resources conforming to [TumorMarker] test results
* MedicationRequest resources conforming to [CancerRelatedMedicationRequest] (prescriptions, administrations, and patient-reported medications)
* Procedure resources conforming to [CancerRelatedProcedureParent] ([surgical][CancerRelatedSurgicalProcedure] and [radiological][CancerRelatedRadiationProcedure])
* Observation resources conforming to [CancerStageParent] (Clinical Group and TNM and/or Pathological Group and TNM)
* Observation resources conforming to [CancerGeneticVariant]
* DiagnosticReport resources conforming to [CancerGenomicsReport]
* Specimen resources conforming to [GeneticSpecimen]
* Observation resources conforming to [GenomicRegionStudied]
* Observation resource conforming to [CancerRelatedComorbidities], and accompanying Condition resources
* Observation resources conforming to [VitalSigns](http://hl7.org/fhir/R4/observation-vitalsigns.html) (height, weight, blood pressure)
* Observation resources conforming to Comprehensive Metabolic Panel (CMP) and Complete Blood Count (CBC) lab results

In addition, the bundle MAY contain additional resources relevant to the patient but not part of mCODE, such as smoking status, family member history, and diagnostic procedures.

The bundle itself MUST validate against the [MCODEPatientBundle] profile.

By default, this Bundle includes _all_ required resources described above, irrespective of care dates associated with the resources. For some types of resources, such as vital signs, a very large number of resources will therefore be included by default. To limit the number of included resources, callers MAY specify `start` and `end` parameters when requesting a patient's mCODE bundle via the Sender's FHIR API, which operate in the same way as for [the Fetch Patient Record operation](https://www.hl7.org/fhir/operation-patient-everything.html).

[CancerConditionParent]: StructureDefinition-mcode-cancer-condition-parent.html
[CancerDiseaseStatus]: StructureDefinition-mcode-cancer-disease-status.html
[CancerGeneticVariant]: StructureDefinition-mcode-cancer-genetic-variant.html
[CancerGenomicsReport]: StructureDefinition-mcode-cancer-genomics-report.html
[CancerPatient]: StructureDefinition-mcode-cancer-patient.html
[CancerRelatedComorbidities]: StructureDefinition-mcode-cancer-related-comorbidities.html
[CancerRelatedMedicationRequest]: StructureDefinition-mcode-cancer-related-medication-request.html
[CancerRelatedProcedureParent]: StructureDefinition-mcode-cancer-related-procedure-parent.html
[CancerRelatedRadiationProcedure]: StructureDefinition-mcode-cancer-related-radiation-procedure.html
[CancerRelatedSurgicalProcedure]: StructureDefinition-mcode-cancer-related-surgical-procedure.html
[CancerStageParent]: StructureDefinition-mcode-cancer-stage-parent.html
[ComorbidConditionCode]: StructureDefinition-mcode-comorbid-condition-code.html
[ComorbidConditionReference]: StructureDefinition-mcode-comorbid-condition-reference.html
[ComorbiditiesParent]: StructureDefinition-mcode-comorbidities-parent.html
[ECOGPerformanceStatus]: StructureDefinition-mcode-ecog-performance-status.html
[EvidenceType]: StructureDefinition-mcode-evidence-type.html
[GeneticSpecimen]: StructureDefinition-mcode-genetic-specimen.html
[GenomicRegionStudied]: StructureDefinition-mcode-genomic-region-studied.html
[HistologyMorphologyBehavior]: StructureDefinition-mcode-histology-morphology-behavior.html
[KarnofskyPerformanceStatus]: StructureDefinition-mcode-karnofsky-performance-status.html
[LocationQualifier]: StructureDefinition-mcode-location-qualifier.html
[MCodeCapabilityStatement]: StructureDefinition-MCodeCapabilityStatement.html
[MCODEPatientBundle]: StructureDefinition-mcode-patient-bundle.html
[PerformanceStatusParent]: StructureDefinition-mcode-performance-status-parent.html
[PrimaryCancerCondition]: StructureDefinition-mcode-primary-cancer-condition.html
[RelatedPrimaryCancerCondition]: StructureDefinition-mcode-related-primary-cancer-condition.html
[SecondaryCancerCondition]: StructureDefinition-mcode-secondary-cancer-condition.html
[TerminationReason]: StructureDefinition-mcode-termination-reason.html
[TNMClinicalDistantMetastasesCategory]: StructureDefinition-mcode-tnm-clinical-distant-metastases-category.html
[TNMClinicalPrimaryTumorCategory]: StructureDefinition-mcode-tnm-clinical-primary-tumor-category.html
[TNMClinicalRegionalNodesCategory]: StructureDefinition-mcode-tnm-clinical-regional-nodes-category.html
[TNMClinicalStageGroup]: StructureDefinition-mcode-tnm-clinical-stage-group.html
[TNMPathologicalDistantMetastasesCategory]: StructureDefinition-mcode-tnm-pathological-distant-metastases-category.html
[TNMPathologicalPrimaryTumorCategory]: StructureDefinition-mcode-tnm-pathological-primary-tumor-category.html
[TNMPathologicalRegionalNodesCategory]: StructureDefinition-mcode-tnm-pathological-regional-nodes-category.html
[TNMPathologicalStageGroup]: StructureDefinition-mcode-tnm-pathological-stage-group.html
[TreatmentIntent]: StructureDefinition-mcode-treatment-intent.html
[Tumor]: StructureDefinition-mcode-tumor.html
[TumorMarker]: StructureDefinition-mcode-tumor-marker.html
[TumorSize]: StructureDefinition-mcode-tumor-size.html
"

/* TODO update this file to match the description in `mcode-patient-bundle.md`. */
* type  = #collection
* insert BundleEntrySlicingRules
* entry and entry.resource MS
* entry contains
    // These resources are required per Conformance > Supported Profiles.
    cancerPatient 1..1 MS and
    primaryCancerCondition 1..* MS

* entry[cancerPatient].resource only CancerPatient
* entry[cancerPatient] ^short = "Cancer Patient"
* entry[cancerPatient] ^definition = "The Cancer Patient whose data is included in the bundle (required element)."
* entry[primaryCancerCondition].resource only PrimaryCancerCondition
* entry[primaryCancerCondition] ^short = "Primary Cancer Condition"
* entry[primaryCancerCondition] ^definition = "The Primary Cancer Condition resource (required element)."
