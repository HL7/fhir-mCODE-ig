// Stub for CancerRelatedMedicationRequest
Profile:  CancerRelatedMedicationRequest
Parent:   MedicationRequest
Id:       mcode-cancer-related-medication-request
Title:    "Stub for Cancer-Related Medication Request"
Description: "Not yet implemented"

/*
Profile:  CancerRelatedMedicationStatement
Parent:   MedicationStatement
Id:       mcode-cancer-related-medication-statement
Title:    "Cancer-Related Medication Statement"
Description:    "A record of the use of a medication (individual administration or entire course) for a condition that is related to a primary or secondary cancer condition. The use may be reported by the patient or clinician and administration does not have to be directly observed.

Conformance statement:

MedicationStatement resources associated with an [mCODE patient](conformance.html#mcode-patients) SHOULD conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form."

* effective[x] and medication[x] MS
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TerminationReason named terminationReason 0..* MS
* effective[x] 1..1  // change from 0..1 to 1..1
* dosage 0..1
* medicationCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/us-core-medication-codes (extensible)
*/