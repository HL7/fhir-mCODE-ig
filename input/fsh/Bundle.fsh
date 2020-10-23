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
    cancerRelatedMedicationRequest 0..* and
    cancerRelatedRadiationProcedure 0..* and
    cancerRelatedSurgicalProcedure 0..* and
    // Multiple profiles can be used to represent cancer stage. We will combine them into a single element for simplicity.
    cancerStage 0..* and
    // mCODE genomics
    cancerGeneticVariant 0..* and
    cancerGenomicsReport 0..* and
    geneticSpecimen 0..* and
    genomicRegionStudied 0..*
    // TODO handle comorbidities, waiting on decision for how these are profiled
* entry and entry.resource MS 
* entry[cancerPatient].resource MS
* entry[primaryCancerCondition].resource MS
* entry[secondaryCancerCondition].resource MS
* entry[cancerDiseaseStatus].resource only CancerDiseaseStatus
* entry[performanceStatus].resource MS
* entry[tumorMarker].resource MS
* entry[cancerRelatedMedicationRequest].resource MS
* entry[cancerRelatedRadiationProcedure].resource MS
* entry[cancerRelatedSurgicalProcedure].resource MS
* entry[cancerStage].resource MS
* entry[cancerGeneticVariant].resource MS
* entry[cancerGenomicsReport].resource MS
* entry[geneticSpecimen].resource MS
* entry[genomicRegionStudied].resource MS

* entry[cancerPatient].resource only CancerPatient
* entry[primaryCancerCondition].resource only PrimaryCancerCondition
* entry[secondaryCancerCondition].resource only SecondaryCancerCondition
* entry[cancerDiseaseStatus].resource only CancerDiseaseStatus
* entry[performanceStatus].resource only ECOGPerformanceStatus or KarnofskyPerformanceStatus
* entry[tumorMarker].resource only TumorMarker
* entry[cancerRelatedMedicationRequest].resource only cancerRelatedMedicationRequest
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
* entry[medication].resource only MedicationAdministration or MedicationRequest or MedicationStatement
* entry[procedure].resource only USCoreProcedureProfile
* entry[familyHistory].resource only FamilyMemberHistory
* entry[diagnosticReport].resource only DiagnosticReport
* entry[observation].resource only 
Observation
* entry[practitioner].resource only USCorePractitioner
* entry[organization].resource only Organization
*/

