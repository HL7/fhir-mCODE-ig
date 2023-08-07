Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle Profile"
Description: "A collection of data for an mCODE cancer patient."
* ^extension[FMM].valueInteger = 1
* type  = #collection
* entry 1..* MS
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the resource type"
* insert BundleSlice(cancerPatient, 1, 1, Cancer Patient, The Cancer Patient whose data is included in the bundle., CancerPatient)
* entry contains 
    mcodeObservations 0..* MS and
    mcodeConditions 0..* MS and
    mcodeMedicationAdministrations 0..* MS and
    mcodeMedicationRequests 0..* MS and
    mcodeDiagnosticReports 0..* MS and
    mcodeSpecimens 0..* MS and
    mcodeProcedures 0..* MS and
    mcodeBodyStructures 0..* MS
* entry[mcodeObservations] ^short = "FHIR Observation Resources, if they exist for the patient, including but not limited to: CancerDiseaseStatus, CancerStage (TNM and non-TNM), Comorbidities, ECOGPerformanceStatus, GenomicRegionStudied, GenomicVariant, KarnofskyPerformanceStatus, TumorMarkerTest, TumorSize, and USCoreVitalSigns."
* entry[mcodeObservations].resource only Observation
* entry[mcodeConditions] ^short = "FHIR Condition Resources, if they exist for the patient, including but not limited to: PrimaryCancerCondition, SecondaryCancerCondition, and HistoryOfMetastaticCancer."
* entry[mcodeConditions].resource only Condition
* entry[mcodeMedicationAdministrations] ^short = "FHIR Medication Administration Resources, if they exist for the patient, including but not limited to: CancerRelatedMedicationAdministration."
* entry[mcodeMedicationAdministrations].resource only MedicationAdministration
* entry[mcodeMedicationRequests] ^short = "FHIR Medication Request Resources, if they exist for the patient, including but not limited to: CancerRelatedMedicationRequest."
* entry[mcodeMedicationRequests].resource only MedicationRequest
* entry[mcodeDiagnosticReports] ^short = "FHIR Diagnostic Report Resources, if they exist for the patient, including but not limited to: GenomicsReport."
* entry[mcodeDiagnosticReports].resource only DiagnosticReport
* entry[mcodeSpecimens] ^short = "FHIR Specimen Resources, if they exist for the patient, including but not limited to: HumanSpecimen."
* entry[mcodeSpecimens].resource only Specimen
* entry[mcodeProcedures] ^short = "FHIR Procedure Resources, if they exist for the patient, including but not limited to: CancerRelatedSurgicalProcedure and RadiotherapyCourseSummary."
* entry[mcodeProcedures].resource only Procedure
* entry[mcodeBodyStructures] ^short = "FHIR BodyStructure Resources, if they exist for the patient, including but not limited to: RadiotherapyVolume and Tumor."
* entry[mcodeBodyStructures].resource only BodyStructure
* timestamp and entry and entry.resource MS

