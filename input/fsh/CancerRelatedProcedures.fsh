Profile: CancerRelatedProcedureParent
Parent: USCoreProcedure
Id:     mcode-cancer-related-procedure-parent
Title:  "Cancer-Related Procedure Parent"
Description: "Abstract parent class for cancer procedure profiles."
* ^abstract = true
* extension contains
    TreatmentIntent named treatmentIntent 0..1
* category 1..1
* reasonCode from AnyCancerDisorderVS (extensible)
* reasonReference only Reference(CancerConditionParent)  // rather than Primary, Secondary, Tumor
* partOf only Reference(Procedure)
* recorder only Reference(Practitioner or PractitionerRole)
* performer.actor only Reference(Practitioner or PractitionerRole or Organization)
* bodySite.extension contains
    Laterality named laterality 0..1
* reasonCode and reasonReference and extension[treatmentIntent] and bodySite and bodySite.extension[laterality] MS

Profile:  CancerRelatedRadiationProcedure
Parent:   CancerRelatedProcedureParent
Id:       mcode-cancer-related-radiation-procedure
Title:    "Cancer-Related Radiation Procedure"
Description: "A radiological treatment addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the ReasonReference and ReasonCode to cancer conditions.

Conformance statement:

Procedure resources associated with an mCODE patient with Procedure.category SNOMED-CT 53438000 MAY conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Specifically, we expect that any radiation therapy related to the treatment of a `PrimaryCancerCondition` or `SecondaryCancerCondition` would be published in this form."
* ^abstract = false
* category = SCT#53438000 //"Radiation therapy procedure or service (procedure)"
* code from RadiationProcedureVS (extensible)
* bodySite from RadiationTargetBodySiteVS (extensible)

Profile:  CancerRelatedSurgicalProcedure
Parent:   CancerRelatedProcedureParent
Id:       mcode-cancer-related-surgical-procedure
Title:    "Cancer-Related Surgical Procedure"
Description: "A surgical action addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the ReasonReference and ReasonCode to cancer conditions.

Conformance statement:

Procedure resources associated with an mCODE patient with Procedure.category SNOMED-CT 387713003 MAY conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Specifically, we expect that any surgical procedure related to the treatment of a `PrimaryCancerCondition` or `SecondaryCancerCondition` would be published in this form."
* ^abstract = false
* category = SCT#387713003 //"Surgical procedure"
* code from CancerRelatedSurgicalProcedureVS (extensible)




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
