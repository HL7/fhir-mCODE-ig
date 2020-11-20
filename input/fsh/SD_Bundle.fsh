Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient."
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





