Profile:  CancerRelatedMedicationRequest
Parent:   USCoreMedicationRequest
Id:       mcode-cancer-related-medication-request
Title:    "Cancer-Related Medication Request"
Description:    "A record of a medication prescription, administration, or consumption used to treat cancer. The medication may reported by the prescriber, prescribing organization, or patient. It does not have to be directly observed.

Conformance statement:

 MedicationRequest resources associated with an mCODE patient and associated with cancer treatment MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile (i.e., a prescription, administration, or medication exposure) SHOULD be published in this form."
* obeys mcode-reason-required
* subject 1..1 MS
* subject only Reference(CancerPatient)
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TerminationReason named terminationReason 0..* MS
* reasonCode and reasonReference and requester MS
* reasonCode from CancerDisorderVS (required)
* reasonReference only Reference(PrimaryCancerCondition or SecondaryCancerCondition) // only for cancer-related reasons
* requester only Reference(USCorePractitioner or USCoreOrganization or CancerPatient)

Invariant:  mcode-reason-required
Description: "reasonCode or reasonReference SHALL be present"
Expression: "reasonCode.exists() or reasonReference.exists()"
Severity:   #error
