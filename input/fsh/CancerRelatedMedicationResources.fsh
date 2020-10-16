Profile:  CancerRelatedMedicationRequest
Parent:   USCoreMedicationRequest
Id:       mcode-cancer-related-medication-request
Title:    "Cancer-Related Medication Request"
Description:    "A record of the medication prescription or order for a patient whose condition is related to a primary or secondary cancer condition. The request may be reported by the prescriber, prescribing organization, or patient does not have to be directly observed."
* ^status = #draft
* ^experimental = true
* subject 1..1 MS
* subject only Reference(CancerPatient)
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TerminationReason named terminationReason 0..* MS
* reasonCode MS
* reasonCode from AnyCancerDisorderVS (extensible)
* reasonReference MS
* reasonReference only Reference(CancerConditionParent) // only for cancer-related reasons
* requester MS
* requester only Reference(USCorePractitioner or USCoreOrganization or CancerPatient)
