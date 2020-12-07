Profile:  CancerRelatedMedicationRequest
Parent:   USCoreMedicationRequest
Id:       mcode-cancer-related-medication-request
Title:    "Cancer-Related Medication Request"
Description:    "A record of the medication prescription or order for a patient whose condition is related to a primary or secondary cancer condition. The request may be reported by the prescriber, prescribing organization, or patient does not have to be directly observed.

Conformance statement:

 MedicationRequest resources associated with an mCODE patient SHOULD conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form."
* subject 1..1 MS
* subject only Reference(USCorePatient)
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TerminationReason named terminationReason 0..* MS
* reasonCode MS
* reasonCode from CancerDisorderVS (extensible)
* reasonReference MS
* reasonReference only Reference(CancerConditionParent) // only for cancer-related reasons
* requester MS
* requester only Reference(USCorePractitioner or USCoreOrganization or CancerPatient)
* extension[treatmentIntent] ^short = "Treatment Intent"
* extension[treatmentIntent] ^definition = "The purpose of a treatment."
* extension[terminationReason] ^short = "Termination Reason"
* extension[terminationReason] ^definition = "A code explaining an unplanned or premature termination of a plan of treatment, course of medication, or research study."

/*
Profile:  CancerRelatedMedicationAdministration
Parent:   MedicationAdministration
Id:       mcode-cancer-related-medication-administration
Title:    "Cancer-Related Medication Administration"
Description:    "An episode of medication administration for a patient whose condition is related to a primary or secondary cancer condition. In the context of chemotherapy drugs, the medication administration in most cases is performed and documented by the provider.

Conformance statement:

 MedicationAdministration resources associated with an mCODE patient SHOULD conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form."

* ^status = #draft
* ^experimental = true
* subject 1..1 MS
* subject only Reference(USCorePatient)
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TerminationReason named terminationReason 0..* MS
* reasonCode MS
* reasonCode from CancerDisorderVS (extensible)
* reasonReference MS
* reasonReference only Reference(CancerConditionParent) // only for cancer-related reasons
* request MS
* request only Reference(CancerRelatedMedicationRequest) // MLT: loosening constraint is up for discussion.
*/