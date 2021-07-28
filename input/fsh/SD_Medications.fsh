Profile:  CancerRelatedMedicationRequest
Parent:   USCoreMedicationRequest
Id: mcode-cancer-related-medication-request
Title:    "Cancer-Related Medication Request"
Description:  "A record of a medication prescription or consumption associated with cancer treatment. The medication may reported by the prescriber, prescribing organization, or patient. It does not have to be directly observed."
// * insert ReduceText
// * insert ReduceText(dosageInstruction)
// * insert ReduceText2(dosageInstruction.doseAndRate)
// * insert ReduceText(dispenseRequest)
// * insert ReduceText(dispenseRequest.initialFill)
// * insert ReduceText(substitution)
* insert MedicationResourcesRS
* requester only Reference(USCorePractitioner or USCoreOrganization or CancerPatient)


Profile:  CancerRelatedMedicationAdministration
Parent:   MedicationAdministration
Id: mcode-cancer-related-medication-administration
Title:    "Cancer-Related Medication Administration"
Description:    "An episode of medication administration for a patient whose condition is related to a primary or secondary cancer condition. In the context of chemotherapy drugs, the medication administration in most cases is performed and documented by the provider."
// * insert ReduceText
// * insert ReduceText(performer)
// * insert ReduceText(dosage)
* insert MedicationResourcesRS
* medication[x] from http://hl7.org/fhir/us/core/ValueSet/us-core-medication-codes (extensible)
// Model the Must Supports on US Core MedicationRequest
* status and medication[x] and subject and effective[x] MS


RuleSet: MedicationResourcesRS
* obeys mcode-reason-required
* subject only Reference(CancerPatient)
* extension contains
    ProcedureIntent named treatmentIntent 0..1 MS and
    TreatmentTerminationReason named terminationReason 0..* MS
* reasonCode from CancerDisorderVS (required)
* reasonReference only Reference(PrimaryCancerCondition or SecondaryCancerCondition) // only for cancer-related reasons
* reasonCode and reasonReference and extension MS

Invariant:  mcode-reason-required
Description: "One of reasonCode or reasonReference SHALL be present"
Expression: "reasonCode.exists() or reasonReference.exists()"
Severity:   #warning    // FHIR-32387 error-->warning

