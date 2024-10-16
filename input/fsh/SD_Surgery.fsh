Profile:  CancerRelatedSurgicalProcedure
Parent:   USCoreProcedure
Id: mcode-cancer-related-surgical-procedure
Title:    "Cancer-Related Surgical Procedure Profile"
Description: "A surgical action addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the reasonReference and reasonCode to cancer conditions, one of which is required. If a procedure occurs that is NOT a surgical procedure, use the US Core Procedure profile."
* ^extension[FMM].valueInteger = 3
* subject ^definition = "The patient on whom the procedure was performed"
* obeys mcode-reason-required
* extension contains
    ProcedureIntent named treatmentIntent 0..1 MS
* reasonCode from CancerDisorderVS (extensible)
* reasonReference only Reference(USCoreCondition)  // primary or secondary
* insert BodySiteQualifierAndLaterality(bodySite)
// It is not kosher to slice a 0..1 element, however, the cardinality of Procedure.category is a mistake. It was supposed to have changed in 2019 to 0..* (https://jira.hl7.org/browse/FHIR-20628). However, it is still 0..1 in R4, but the change has been made for R5.
* code from CancerRelatedSurgicalProcedureVS (extensible)
// MUST SUPPORTS -- US Core Procedure sets status, code, subject, performed[x]
* bodySite and bodySite.extension and extension and reasonCode and reasonReference and bodySite.extension[locationQualifier] and bodySite.extension[lateralityQualifier] MS
