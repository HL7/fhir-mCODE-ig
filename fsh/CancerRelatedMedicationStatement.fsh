Profile:  CancerRelatedMedicationStatement
Parent:   MedicationStatement
Id:       mcode-cancer-related-medication-statement
Title:    "Cancer-Related Medication Statement"
Description:    "A record of the use of a medication (individual administration or entire course) for a condition that is related to a primary or secondary cancer condition. The use may be reported by the patient or clinician and adminstration does not have to be directly observed."
/* Notes on mCODE 0.9.x:
1) basedOn is missing Reference(CarePlan)
2) partOf is missing  Reference(MedicationDispense)
3) subject is Reference(US Core Patient), but might be constrained to Reference(CancerPatient)
4) We constrained context to Reference(US Core Encounter | EpisodeOfCare), but US Core has Reference(Encounter | EpisodeOfCare)
5) In informationSource, mCODE uses US Core Practitioner and US Core Organization, but US Core uses Practitioner and Organization.
6) informationSource is missing PractitionerRole
7) not sure why reasonCode has be changed from 0..* to 0..1
*/
* effective[x], medication[x] MS
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TerminationReason named terminationReason 0..* MS
//* reasonReference only Reference(PrimaryCancerCondition | SecondaryCancerCondition | Observation | DiagnosticReport | ComorbidCondition)
* effective[x] 1..1  // change from 0..1 to 1..1
* reasonCode 0..1
* dosage 0..1
* medicationCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/us-core-medication-codes (extensible)