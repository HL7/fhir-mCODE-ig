Alias: AssertedDate = http://hl7.org/fhir/StructureDefinition/condition-assertedDate

Profile: CancerConditionParent
Parent:  USCoreCondition
Id: mcode-cancer-condition-parent
Title: "Cancer Condition Parent"
Description:  "Abstract parent class for describing a primary or secondary metastatic neoplastic diseases, or individual tumors."
/* Issues relative to mCODE 0.9.x -- Fixed
1) asserter should include PractitionerRole
2) recorder should include PractitionerRole
3) Laterality should be 0..1, not 0..*
*/
* ^abstract = true
* extension contains
    AssertedDate named assertedDate 0..1 and
    HistologyMorphologyBehavior named histologyMorphologyBehavior 0..1
* bodySite.extension contains
    Laterality named laterality 0..1
* extension[assertedDate] and extension[histologyMorphologyBehavior] and bodySite and bodySite.extension[laterality] MS
// proposing to take out the non-US Core category and allow clinicians to choose
//* category = SCT#64572001 //"Disease"
* bodySite from CancerBodyLocationVS (extensible)
* asserter only Reference(Practitioner or PractitionerRole)
* recorder only Reference(Practitioner or PractitionerRole)

Profile: PrimaryCancerCondition
Id: mcode-primary-cancer-condition
Title: "Primary Cancer Condition"
Parent: CancerConditionParent
Description: "Records the the primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.

Cancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the TNMClinicalStageGroup and/or TNMPathologicalStageGroup, which refer back to PrimaryCancerCondition.

Conformance statement:

Condition resources associated with an mCODE patient with a Condition.code in the value set PrimaryOrUncertainBehaviorCancerDisorderVS MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form, for example, when employing a code that extends the PrimaryOrUncertainBehaviorCancerDisorderVS value set. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly."

* ^abstract = false
* code from PrimaryOrUncertainBehaviorCancerDisorderVS (extensible)
* stage.assessment only Reference(CancerStageParent)


Profile: SecondaryCancerCondition
Parent: CancerConditionParent
Id: mcode-secondary-cancer-condition
Title: "Secondary Cancer Condition"
Description: "Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).

Conformance statement:

Condition resources associated with an mCODE patient with a Condition.code in the value set SecondaryCancerDisorderVS MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form, for example, when employing a code that extends the code from SecondaryCancerDisorderVS value set. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly."

* ^abstract = false
* extension contains RelatedPrimaryCancerCondition named relatedPrimaryCancerCondition 0..1 MS
* code from SecondaryCancerDisorderVS
* stage 0..0

Extension: HistologyMorphologyBehavior
Id: mcode-histology-morphology-behavior
Title: "Histology-Morphology-Behavior"
Description: "A code describing the morphologic and behavioral characteristics of the cancer."
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* value[x] from HistologyMorphologyBehaviorVS (extensible)

Extension: RelatedPrimaryCancerCondition
Id: mcode-related-primary-cancer-condition
Title: "Related Primary Cancer Condition"
Description: "A reference to the primary cancer condition that provides context for this resource."
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* value[x] only Reference(PrimaryCancerCondition)