Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient. [Implementation details are available here](mcode-patient-bundle.html)."

/* TODO update this file to match the description in `mcode-patient-bundle.md`. */
* type = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry and entry.resource MS
* entry contains
    // These resources are required per Conformance > Supported Profiles.
    cancerPatient 1..1 MS and
    primaryCancerCondition 1..* MS and
    // Other mCODE profiles
    secondaryCancerCondition 0..* MS and
    cancerDiseaseStatus 0..* MS and
    performanceStatus 0..* MS and
    tumorMarker 0..* MS and
    cancerRelatedMedicationRequest 0..* MS and
    cancerRelatedRadiationProcedure 0..* MS and
    cancerRelatedSurgicalProcedure 0..* MS and
    // Multiple profiles can be used to represent cancer stage. We will combine them into a single element for simplicity.
    cancerStage 0..* MS and
    // mCODE genomics
    cancerGeneticVariant 0..* MS and
    cancerGenomicsReport 0..* MS and
    geneticSpecimen 0..* MS and
    genomicRegionStudied 0..* MS
    // TODO handle comorbidities, waiting on decision for how these are profiled

* entry[cancerPatient].resource only CancerPatient
* entry[primaryCancerCondition].resource only PrimaryCancerCondition
* entry[secondaryCancerCondition].resource only SecondaryCancerCondition
* entry[cancerDiseaseStatus].resource only CancerDiseaseStatus
* entry[performanceStatus].resource only ECOGPerformanceStatus or KarnofskyPerformanceStatus
* entry[tumorMarker].resource only TumorMarker
* entry[cancerRelatedMedicationRequest].resource only CancerRelatedMedicationRequest
* entry[cancerRelatedRadiationProcedure].resource only CancerRelatedRadiationProcedure
* entry[cancerRelatedSurgicalProcedure].resource only CancerRelatedSurgicalProcedure
* entry[cancerStage].resource only CancerStageParent
* entry[cancerGeneticVariant].resource only CancerGeneticVariant
* entry[cancerGenomicsReport].resource only CancerGenomicsReport
* entry[geneticSpecimen].resource only GeneticSpecimen
* entry[genomicRegionStudied].resource only GenomicRegionStudied


/* Not restricted to mCODE profiles
    smokingStatus 0..* and
    medication 0..* and
    procedure 0..* and
    familyHistory 0..* and
    diagnosticReport 0..* and
    observation 0..* and
    practitioner 0..* and
    organization 0..*
* entry[smokingStatus].resource only USCoreSmokingStatusProfile
* entry[medication].resource only MedicationRequest
* entry[procedure].resource only USCoreProcedureProfile
* entry[familyHistory].resource only FamilyMemberHistory
* entry[diagnosticReport].resource only DiagnosticReport
* entry[observation].resource only
Observation
* entry[practitioner].resource only USCorePractitioner
* entry[organization].resource only Organization
*/
