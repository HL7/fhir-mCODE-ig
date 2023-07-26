RuleSet: CancerConditionCommonRules
* ^extension[FMM].valueInteger = 4
* extension contains
    HistologyMorphologyBehavior named histologyMorphologyBehavior 0..1 MS
* insert BodySiteQualifierAndLaterality(bodySite)
* bodySite from CancerBodyLocationVS (extensible)
* extension and bodySite and bodySite.extension[locationQualifier] and bodySite.extension[lateralityQualifier] MS

Profile: PrimaryCancerCondition
Id: mcode-primary-cancer-condition
Title: "Primary Cancer Condition Profile"
Parent: USCoreCondition
Description: "Records the the primary cancer condition, the original or first neoplasm in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary."
* insert CancerConditionCommonRules
* code from PrimaryCancerDisorderVS (extensible)
* stage.assessment only Reference(CancerStage)
* stage and stage.assessment MS
* stage.summary ^short = "Stage at time of last staging."
* stage.summary ^definition = "Most recent overall cancer stage, such as stage group IIA in TNM staging. More detailed staging information (such as the individual T, N, and M categories) SHOULD be captured in a separate Observation resource, referenced by stage.assessment, conforming to CancerStage profile."
* stage.type ^short = "The type of stage Staging system or method used."
* stage.type ^definition = "The type of stage reported in stage.summary, or the staging method used to arrive at the stage.summary value."
* stage.type from CancerStagingMethodVS (required)
* evidence.code from CancerDiseaseStatusEvidenceTypeVS (required)
* evidence.code ^orderMeaning = "If more than one code or Reference is present, it is interpreted as the the physician's declaration of how the cancer was diagnosed, with the most invasive method first (e.g., autopsy/histopathology, cytology, radiology, physicial exam, etc.)"


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
* evidence.code from CancerDiseaseStatusEvidenceTypeVS (required)
* evidence.code ^orderMeaning = "If more than one code or Reference is present, it is interpreted as the the physician's declaration of how the cancer was diagnosed, with the most invasive method first (e.g., autopsy/histopathology, cytology, radiology, physicial exam, etc.)"
