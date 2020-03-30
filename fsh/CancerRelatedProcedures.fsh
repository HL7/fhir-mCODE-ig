Profile:  CancerRelatedRadiationProcedure
Parent:   USCoreProcedure
Id:       mcode-cancer-related-radiation-procedure
Title:    "Cancer-Related Radiation Procedure"
Description: "A radiological treatment addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the ReasonReference and ReasonCode to cancer conditions.

Conformance note: If an ICD-10-PCS code is used in the code attribute, and there is a semantically equivalent SNOMED CT or CPT code, the resulting Procedure instance will not be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/index.html)"
/* Issues relative to mCODE 0.9.x
1) basedOn should not include ProcedureRequest. No such class in R4.
2) basedOn should include CarePlan
3) partOf should probably not include MedicationAdministration or Observation.
4) recorder should include PractitionerRole and not include RelatedPerson
5) Practitioner in recorder should not be restricted to US Core Practitioner (US Core doesn't do that)
6) performer.actor, restricted to Reference(US Core Practitioner Profile) in mCODE, should be relaxed to Practitioner
7) performer.actor should allow PractitionerRole and Organization, and maybe allow Device (to allow recording of the device used in the radiation procedure)
8) location should not be restricted to US Core Location (US Core doesn't). Relax to Reference(Location)
9) Subject should at least be constrained to US Core Patient (US Core does), and maybe constrained to CancerPatient
10) Encounter should not be constrained to US Core Encounter -- US Core doesn't have this constraint
11) report should allow Reference(DiagnosticReport | DocumentReference | Composition) -- currently mCODE constrains to DiagnosticReport only.
*/
* extension contains
    TreatmentIntent named treatmentIntent 0..1 and
    TerminationReason named terminationReason 0..*
* partOf only Reference(Procedure)
* category = SCT#53438000 //"Radiation therapy procedure or service (procedure)"
* code from RadiationProcedureVS (extensible)
* subject only Reference(CancerPatient)
* recorder only Reference(Practitioner | PractitionerRole)
* performer.actor only Reference(Practitioner | PractitionerRole | Organization)  // include Device?
* reasonCode from CancerDisorderVS (extensible)
* reasonReference only Reference(CancerConditionParent)
* bodySite from RadiationTargetBodySiteVS (extensible)
* bodySite.extension contains
    Laterality named laterality 0..1
* focalDevice 0..0
* bodySite, bodySite.extension[laterality], extension[treatmentIntent] MS


Profile:  CancerRelatedSurgicalProcedure
Parent:   USCoreProcedure
Id:       mcode-cancer-related-surgical-procedure
Title:    "Cancer-Related Surgical Procedure"
Description: "A surgical action addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the ReasonReference and ReasonCode to cancer conditions. Conformance note: If an ICD-10-PCS code is used in the code attribute, and there is a semantically equivalent SNOMED CT or CPT code, the resulting Procedure instance will not be compliant with US Core Profiles."
* code from CancerRelatedSurgicalProcedureVS (extensible)
* extension contains
    TreatmentIntent named treatmentIntent 0..1
* subject only Reference(CancerPatient)
* category = SCT#387713003 //"Surgical procedure"
* reasonCode from CancerDisorderVS (extensible)
* reasonReference only Reference(CancerConditionParent)  // rather than Primary, Secondary, Tumor
* partOf only Reference(Procedure)
* recorder only Reference(Practitioner | PractitionerRole)
* performer.actor only Reference(Practitioner | PractitionerRole | Organization)
* bodySite.extension contains
    Laterality named laterality 0..1
* reasonCode, reasonReference, extension[treatmentIntent], bodySite, bodySite.extension[laterality] MS  // other MS will be inherited from USCoreProcedure

    /* Save for possible later use

Extension: RadiationDose
Id: mcode-radiation-dose
Title:  "Radiation Dose"
Description: "Information related to the dose of radiation received in a RadiationProcedure, including the dose per fraction, the number of fractions delivered, and the total radiation dose delivered."
* value[x] 0..0
* extension contains
    RadiationDosePerFraction 0..1 and
    RadiationFractionsDelivered 0..1 and
    TotalRadiationDoseDelivered 0..1

Extension: RadiationDosePerFraction
Id: mcode-radiation-dose-per-fraction
Title: "Radiation Dose Per Fraction"
Description: "The amount of radiation administered during a single session (fraction) of radiation therapy therapy."
* value[x] only Quantity
* valueQuantity = UCUM#cGy

Extension: RadiationFractionsDelivered
Id: mcode-radiation-fractions-delivered
Title: "Radiation Fractions Delivered"
Description: "Records the total number of treatment sessions (fractions) administered during the first course of therapy. Corresponds to LOINC 21950-2 'Number of radiation treatment' [sic]."
* value[x] only Quantity
* valueQuantity = UCUM#1

Extension: TotalRadiationDoseDelivered
Id: mcode-total-radiation-dose-delivered
Title: "Total Radiation Dose Delivered"
Description: "The total amount of radiation dose delivered for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only Quantity
* valueQuantity = UCUM#cGy

*/
