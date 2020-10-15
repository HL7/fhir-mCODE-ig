Profile:  CancerRelatedMedicationStatement
Parent:   MedicationStatement
Id:       mcode-cancer-related-medication-statement
Title:    "Cancer-Related Medication Statement"
Description:    "A record of the use of a medication (individual administration or entire course) intended to treat cancer. Cancer-related medications are identified by the reasonCode or reasonReference, and include both curative and palliative medications. The use may be reported by the patient or clinician and administration does not have to be directly observed. The profile includes two extensions, TreatmentIntent and TerminationReason, that capture additional context around the use of the medication. 

It is important to note that cancer-related medications are not the ONLY medications that might be important in assessing or planning treatment. To represent other medications, this profile is not required.

Conformance statement:

MedicationStatement resources associated with an mCODE patient that are prescribed to treat the cancer condition SHOULD conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form."
/* Notes on mCODE 0.9.x:
1) basedOn is missing Reference(CarePlan)
2) partOf is missing  Reference(MedicationDispense)
3) subject is Reference(US Core Patient), but might be constrained to Reference(CancerPatient)
4) We constrained context to Reference(US Core Encounter | EpisodeOfCare), but US Core has Reference(Encounter | EpisodeOfCare)
5) In informationSource, mCODE uses US Core Practitioner and US Core Organization, but US Core uses Practitioner and Organization.
6) informationSource is missing PractitionerRole
7) not sure why reasonCode has be changed from 0..* to 0..1
*/
* subject only Reference(CancerPatient)
* effective[x] and medication[x] MS
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TerminationReason named terminationReason 0..* MS
* medicationCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/us-core-medication-codes (extensible)
* reasonCode from AnyCancerDisorderVS
* reasonReference only Reference(CancerConditionParent) 
// MK 10/15/2020 -- The following constraints were in STU 1, but there is no apparent justification on why we added these constraints.
// * effective[x] 1..1  
// * dosage 0..1 