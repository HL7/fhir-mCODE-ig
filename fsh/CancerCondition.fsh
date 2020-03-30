Alias: AssertedDate = http://hl7.org/fhir/StructureDefinition/condition-assertedDate

Profile: CancerConditionParent
Parent:  USCoreCondition
Id: mcode-cancer-condition-parent
Title: "Cancer Condition Parent"
Description:  "Abstract parent class for describing a primary or secondary metastatic neoplastic diseases, or individual tumors."
/* Issues relative to mCODE 0.9.x
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
* extension[assertedDate], extension[histologyMorphologyBehavior], bodySite, bodySite.extension[laterality] MS
* category = SCT#64572001 //"Disease"
* severity 0..0
* bodySite from CancerBodyLocationVS (preferred)
* asserter only Reference(Practitioner | PractitionerRole)
* recorder only Reference(Practitioner | PractitionerRole)

Profile: PrimaryCancerCondition
Id: mcode-primary-cancer-condition
Title: "Primary Cancer Condition"
Parent: CancerConditionParent
Description: "Records the history of the primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.

Cancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the TNMClinicalStageGroup and/or TNMPathologicalStageGroup, which refer back to PrimaryCancerCondition.

Conformance note: For the code attribute, to be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/index.html), SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used."
* ^abstract = false
* code from PrimaryOrUncertainBehaviorCancerDisorderVS (extensible)
* stage.assessment only Reference(CancerStageParent)

Profile: SecondaryCancerCondition
Parent: CancerConditionParent
Id: mcode-secondary-cancer-condition
Title: "Secondary Cancer Condition"
Description: "Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).

Conformance note: For the code attribute, to be compliant with US Core Profiles, SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used."
* ^abstract = false
* extension contains
    RelatedPrimaryCancerCondition named relatedPrimaryCancerCondition 0..1
* code from SecondaryCancerDisorderVS
* stage 0..0

// Extensions

Extension:  HistologyMorphologyBehavior
Id: mcode-histology-morphology-behavior
Title: "Histology-Morphology-Behavior"
Description: "A description of the morphologic and behavioral characteristics of the cancer."
* value[x] only CodeableConcept
* valueCodeableConcept from HistologyMorphologyBehaviorVS (extensible)

Extension: RelatedPrimaryCancerCondition
Id: mcode-related-primary-cancer-condition
Title: "Related Primary Cancer Condition"
Description: "The primary cancer related to this secondary cancer."
* value[x] only Reference
* valueReference only Reference(PrimaryCancerCondition)


Profile: ComorbidCondition
Parent:  USCoreCondition
Id: mcode-comorbid-condition
Title: "Comorbid Condition"
Description:  "A comorbidity refers to one or more diseases or conditions that occur along with another condition in the same person at the same time. Conditions considered comorbidities are often long-term or chronic conditions. Comorbidities are defined relative to an index disease and may be categorical, rather than described in full detail. The comorbid condition class provides comorbidity codes corresponding the Elixhauser Comorbidity Index. Conformance note: If an ICD-10-CM code is used for the code attribute, and a semantically equivalent SNOMED code is available, the resulting instance will not be compliant with US Core Profiles."
* verificationStatus 1..1
* category = SCT#398192003
* code from ComorbidConditionVS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* bodySite.extension contains
    Laterality named laterality 0..1
* subject only Reference(USCorePatient)








// Tumor profile was in mCODE, but not primary (hidden). The way we have used the CancerConditionParent, it is not necessary to list Tumor explicitly in TumorMarker and CancerDiseaseStatus. For example, we have `* focus only Reference(CancerConditionParent)` and not (in CIMPL) `Value only PrimaryCancerCondition or SecondaryCancerCondition or Tumor`
/*
Profile: Tumor
Parent: CancerConditionParent
Id: mcode-tumor
Title: "Tumor"
Description: "The presence of an abnormal mass of tissue (neoplasm) that results when cells divide more than they should or do not die when they should. Tumors may be benign (not cancer), or malignant (cancer). (source: NCI Dictionary).

Conformance note: For the HistologyMorphologyBehavior attribute, to be compliant with US Core Profiles, SNOMED CT must be used unless there is no suitable code, in which case ICD-O-3 can be used."
* ^abstract = false
* extension contains
    RelatedPrimaryCancerCondition 0..1 and
    IsPrimaryTumor 0..1
* IsPrimaryTumor ^short = "Whether the tumor is the original or first tumor in the body, for a particular cancer."
* IsPrimaryTumor.value[x] only CodeableConcept
*/