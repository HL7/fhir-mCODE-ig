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
* entry[mcodeObservations] ^definition = "Slice containing mCODE observations"
* entry[mcodeObservations].resource only Observation
* entry[mcodeConditions] ^short = "mCODE Condition Resources"
* entry[mcodeConditions] ^definition = "Slice containing mCODE conditions"
* entry[mcodeConditions].resource only Condition
* entry[mcodeMedicationAdministrations] ^short = "mCODE Medication Administration Resources"
* entry[mcodeMedicationAdministrations] ^definition = "Slice containing mCODE Cancer-Related Medication Administration"
* entry[mcodeMedicationAdministrations].resource only MedicationAdministration
* entry[mcodeMedicationRequests] ^short = "mCODE Medication Request Resources"
* entry[mcodeMedicationRequests] ^definition = "Slice containing mCODE Cancer-Related Medication Requests"
* entry[mcodeMedicationRequests].resource only MedicationRequest
* entry[mcodeDiagnosticReports] ^short = "mCODE Diagnostic Report Resources"
* entry[mcodeDiagnosticReports] ^definition = "Slice containing mCODE diagnostic report resources"
* entry[mcodeDiagnosticReports].resource only DiagnosticReport
* entry[mcodeSpecimens] ^short = "mCODE Specimen Resources"
* entry[mcodeSpecimens] ^definition = "Slice containing mCODE specimen resources"
* entry[mcodeSpecimens].resource only Specimen
* entry[mcodeProcedures] ^short = "mCODE Procedure Resources"
* entry[mcodeProcedures] ^definition = "Slice containing mCODE Procedure resources"
* entry[mcodeProcedures].resource only Procedure
* entry[mcodeBodyStructures] ^short = "mCODE BodyStructure Resources"
* entry[mcodeBodyStructures] ^definition = "Slice containing mCODE BodyStructure resources"
* entry[mcodeBodyStructures].resource only  BodyStructure
* timestamp and entry and entry.resource MS

