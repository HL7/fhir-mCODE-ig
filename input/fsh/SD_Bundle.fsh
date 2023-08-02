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
* entry[mcodeObservations] ^short = "mCODE Observation Resources"
* entry[mcodeObservations] ^definition = "Slice containing FHIR Observation resources, if they exist for the patient, including but not limited to: CancerDiseaseStatus, CancerStage (TNM and non-TNM), Comorbidities, ECOGPerformanceStatus,GenomicRegionStudied, GenomicVariant, KarnofskyPerformanceStatus, TumorMarkerTest, TumorSize, and USCoreVitalSigns."
* entry[mcodeObservations].resource only Observation
* entry[mcodeConditions] ^short = "mCODE Condition Resources"
* entry[mcodeConditions] ^definition = "Slice containing FHIR Conditions if they exist for the patient, including but not limited to: PrimaryCancerCondition, SecondaryCancerCondition, and HistoryOfMetastaticCancer"
* entry[mcodeConditions].resource only Condition
* entry[mcodeMedicationAdministrations] ^short = "mCODE Medication Administration Resources"
* entry[mcodeMedicationAdministrations] ^definition = "Slice containing FHIR MedicationAdministration resources, if they exist for the patient, including but not limited to: CancerRelatedMedicationAdministration."
* entry[mcodeMedicationAdministrations].resource only MedicationAdministration
* entry[mcodeMedicationRequests] ^short = "mCODE Medication Request Resources"
* entry[mcodeMedicationRequests] ^definition = "Slice containing FHIR MedicationRequest resources, if they exist for the patient, including but not limited to: CancerRelatedMedicationRequest."
* entry[mcodeMedicationRequests].resource only MedicationRequest
* entry[mcodeDiagnosticReports] ^short = "mCODE Diagnostic Report Resources"
* entry[mcodeDiagnosticReports] ^definition = "Slice containing FHIR DiagnosticReport resources, if they exist for the patient, including but not limited to: GenomicsReport."
* entry[mcodeDiagnosticReports].resource only DiagnosticReport
* entry[mcodeSpecimens] ^short = "mCODE Specimen Resources"
* entry[mcodeSpecimens] ^definition = "Slice containing FHIR Specimen resources, if they exist for the patient, including but not limited to: HumanSpecimen."
* entry[mcodeSpecimens].resource only Specimen
* entry[mcodeProcedures] ^short = "mCODE Procedure Resources"
* entry[mcodeProcedures] ^definition = "Slice containing FHIR Procedure resources, if they exist for the patient, including but not limited to: CancerRelatedSurgicalProcedure and RadiotherapyCourseSummary."
* entry[mcodeProcedures].resource only Procedure
* entry[mcodeBodyStructures] ^short = "mCODE BodyStructure Resources"
* entry[mcodeBodyStructures] ^definition = "Slice containing FHIR BodyStructure resources, if they exist for the patient, including but not limited to: RadiotherapyVolume and Tumor"
* entry[mcodeBodyStructures].resource only  BodyStructure
* timestamp and entry and entry.resource MS

