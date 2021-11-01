Alias: AssertedDate = http://hl7.org/fhir/StructureDefinition/condition-assertedDate


RuleSet: CancerConditionCommonRules
* extension contains
    AssertedDate named assertedDate 0..1 MS and
    HistologyMorphologyBehavior named histologyMorphologyBehavior 0..1 MS
* bodySite.extension contains
     BodyLocationQualifier named locationQualifier 0..*   and
     LateralityQualifier named lateralityQualifier 0..1
// removed the non-US Core category and allow clinicians to choose MK 11-19-2020
//* category = SCT#64572001 //"Disease"
* bodySite from CancerBodyLocationVS (extensible)
* extension and bodySite and bodySite.extension[locationQualifier] and bodySite.extension[lateralityQualifier] MS

Profile: PrimaryCancerCondition
Id: mcode-primary-cancer-condition
Title: "Primary Cancer Condition Profile"
Parent: USCoreCondition
Description: "Records the the primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary."
* insert CancerConditionCommonRules
* code from PrimaryCancerDisorderVS (extensible)
* stage.assessment only Reference(CancerStageGroup)
* stage and stage.assessment MS
* stage.summary ^short = "Most recent Stage Group"
* stage.summary ^definition = "In mCODE, staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the stage group MAY appear in this element, copied from the CancerStageGroup, but mCODE Data Senders and Receivers MAY ignore it."
* stage.type ^short = "Staging system used."
* stage.type ^definition = "In mCODE, staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the staging system MAY appear in this element, but mCODE Data Senders and Receivers MAY ignore it."
* stage.type from ObservationCodesStageGroupVS (required)

Profile: SecondaryCancerCondition
Parent: USCoreCondition
Id: mcode-secondary-cancer-condition
Title: "Secondary Cancer Condition Profile"
Description: "Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms)."
* insert CancerConditionCommonRules
* extension contains condition-related named relatedPrimaryCancerCondition 0..1 MS
* extension[relatedPrimaryCancerCondition].value[x] only Reference(PrimaryCancerCondition)
* extension[relatedPrimaryCancerCondition] ^short = "Related Primary Cancer Condition"
* extension[relatedPrimaryCancerCondition] ^definition = "A reference to the primary cancer condition that provides context for this resource."
* code from SecondaryCancerDisorderVS (extensible)
* insert NotUsed(stage)
* extension and extension[relatedPrimaryCancerCondition] MS
