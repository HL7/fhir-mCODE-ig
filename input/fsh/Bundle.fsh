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
* entry contains

    // These resources are required per Conformance > Supported Profiles.
    cancerPatient 1..1 and
    primaryCancerCondition 1..* and


    // Other mCODE profiles
    secondaryCancerCondition 0..* and
    cancerDiseaseStatus 0..* and
    performanceStatus 0..* and
    tumorMarker 0..* and
    cancerRelatedRadiationProcedure 0..* and
    cancerRelatedSurgicalProcedure 0..* and

    // Multiple profiles can be used to represent cancer stage. We will
    // combine them into a single element for simplicity.
    cancerStage 0..* and

    // TODO handle comorbidities, waiting on decision for how these are profiled

    // mCODE genomics
    cancerGeneticVariant 0..* and
    cancerGenomicsReport 0..* and
    geneticSpecimen 0..* and
    genomicRegionStudied 0..* and



    // Cancer-related, but not restricted to mCODE profiles
    smokingStatus 0..* and
    medication 0..* and
    procedure 0..* and
    familyHistory 0..* and
    diagnosticReport 0..* and
    observation 0..* and
    practitioner 0..* and
    organization 0..*



// No 1:1 relationship with mCODE profiles
* entry[observation].resource only Observation
* entry[cancerStage].resource only CancerStageParent // I think I can do this rather than specifying each profile inheriting from CancerConditionParent
* entry[familyHistory].resource only FamilyMemberHistory
* entry[medication].resource only MedicationAdministration or MedicationRequest or MedicationStatement
* entry[organization].resource only Organization
* entry[performanceStatus].resource only ECOGPerformanceStatus or KarnofskyPerformanceStatus
* entry[practitioner].resource only USCorePractitioner
* entry[procedure].resource only USCoreProcedureProfile
* entry[smokingStatus].resource only USCoreSmokingStatusProfile
* entry[diagnosticReport].resource only DiagnosticReport


// 1:1 relationship with mCODE profiles
* entry[cancerDiseaseStatus].resource only CancerDiseaseStatus
* entry[cancerGeneticVariant].resource only CancerGeneticVariant
* entry[cancerGenomicsReport].resource only CancerGenomicsReport
* entry[cancerPatient].resource only CancerPatient
* entry[cancerRelatedRadiationProcedure].resource only CancerRelatedRadiationProcedure
* entry[cancerRelatedSurgicalProcedure].resource only CancerRelatedSurgicalProcedure
* entry[geneticSpecimen].resource only GeneticSpecimen
* entry[genomicRegionStudied].resource only GenomicRegionStudied
* entry[primaryCancerCondition].resource only PrimaryCancerCondition
* entry[secondaryCancerCondition].resource only SecondaryCancerCondition
* entry[tumorMarker].resource only TumorMarker