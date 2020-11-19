Profile: CancerRelatedProcedureParent
Parent: USCoreProcedure
Id:     mcode-cancer-related-procedure-parent
Title:  "Cancer-Related Procedure Parent"
Description: "Abstract parent class for cancer procedure profiles."
* ^abstract = true
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS
* category 1..1
* reasonCode from AnyCancerDisorderVS (extensible)
* reasonReference only Reference(CancerConditionParent)  // rather than Primary, Secondary, Tumor
* partOf only Reference(Procedure)
* recorder only Reference(Practitioner or PractitionerRole)
* performer.actor only Reference(Practitioner or PractitionerRole or Organization)
* bodySite.extension contains
    LocationQualifier named locationQualifier 0..1 MS
* bodySite.extension[locationQualifier] ^short = "Location Qualifier"
* bodySite.extension[locationQualifier] ^definition = "Qualifier to refine the anatomical location. These include qualifiers for laterality, relative location, directionality, number, and plane."
* reasonCode and reasonReference and bodySite MS
* extension[treatmentIntent] ^short = "Treatment Intent"
* extension[treatmentIntent] ^definition = "The purpose of a treatment."

Profile:  CancerRelatedRadiationProcedure
Parent:   CancerRelatedProcedureParent
Id:       mcode-cancer-related-radiation-procedure
Title:    "Cancer-Related Radiation Procedure"
Description: "A radiological treatment addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the ReasonReference and ReasonCode to cancer conditions.

Conformance statement:

Procedure resources associated with an mCODE patient with Procedure.category SNOMED-CT 53438000 MAY conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Specifically, we expect that any radiation therapy related to the treatment of a `PrimaryCancerCondition` or `SecondaryCancerCondition` would be published in this form."
* ^abstract = false
* insert CategorySlicingRules
* category = SCT#53438000 //"Radiation therapy procedure or service (procedure)"
* code from RadiationProcedureVS (extensible)
* bodySite from RadiationTargetBodySiteVS (extensible)
* extension contains
    TerminationReason named terminationReason 0..1 MS
* extension[terminationReason] ^short = "Termination Reason"
* extension[terminationReason] ^definition = "A code explaining an unplanned or premature termination of a plan of treatment, course of medication, or research study."

Profile:  CancerRelatedSurgicalProcedure
Parent:   CancerRelatedProcedureParent
Id:       mcode-cancer-related-surgical-procedure
Title:    "Cancer-Related Surgical Procedure"
Description: "A surgical action addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the ReasonReference and ReasonCode to cancer conditions.

Conformance statement:

Procedure resources associated with an mCODE patient with Procedure.category SNOMED-CT 387713003 MAY conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Specifically, we expect that any surgical procedure related to the treatment of a `PrimaryCancerCondition` or `SecondaryCancerCondition` would be published in this form."
* ^abstract = false
* insert CategorySlicingRules
* category = SCT#387713003 //"Surgical procedure"
* code from CancerRelatedSurgicalProcedureVS (extensible)

