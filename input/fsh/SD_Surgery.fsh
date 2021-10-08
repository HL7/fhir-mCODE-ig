Profile:  CancerRelatedSurgicalProcedure
Parent:   USCoreProcedure
Id: mcode-cancer-related-surgical-procedure
Title:    "Cancer-Related Surgical Procedure"
Description: "A surgical action addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the reasonReference and reasonCode to cancer conditions, one of which is required."
// * insert ReduceText
// * insert ReduceText(performer)
// * insert ReduceText(focalDevice)
* obeys mcode-reason-required
* extension contains
    ProcedureIntent named treatmentIntent 0..1 MS
* category 1..  // upper cardinality is already 1
* reasonCode from CancerDisorderVS (required)
* reasonReference only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* bodySite.extension contains
     BodyLocationQualifier named locationQualifier 0..*   and
     LateralityQualifier named lateralityQualifier 0..1   
* bodySite.extension[locationQualifier] ^short = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[locationQualifier] ^definition = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[lateralityQualifier] ^short = "Laterality qualifier (excluding laterality) for this bodySite"
* bodySite.extension[lateralityQualifier] ^definition = "Laterality qualifier (excluding laterality) for this bodySite"
// Do not insert the category slicing rules because Procedure.category is 0..1.
* category = SCT#387713003 //"Surgical procedure"
* code from CancerRelatedSurgicalProcedureVS (extensible)
// MUST SUPPORTS -- US Core Procedure sets status, code, subject, performed[x]
* bodySite and bodySite.extension and extension and reasonCode and reasonReference and bodySite.extension[locationQualifier] and bodySite.extension[lateralityQualifier] MS