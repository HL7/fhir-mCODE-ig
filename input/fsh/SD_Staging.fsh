Profile: CancerStageAssessment  // new, 8/30/2020 to handle non-TNM staging more clearly
Id: mcode-cancer-stage-assessment
Parent: Observation
Title: "Cancer Stage Assessment"
Description: "An assessment of the extent of the cancer in the body, according to a given cancer staging classification system. This profile can be used with any staging system, but is specifically targeted for non-TNM staging systems, since a specialized TNM staging profile (CancerStageGroupTNM) is also provided."
* ^extension[FMM].valueInteger = 4
* insert CategorySlicingRules
* category[requiredCategory] = SCT#385356007 // Tumor stage finding (finding)
* method from CancerStagingSystemVS (extensible)
* code from ObservationCodesStageAssessmentVS
* code ^short = "The type of stage reported."
* code ^definition = "The type of staging performed, e.g., clinically by oncologist, by a pathologist on a specimen, or other method. This information is required, although it may be redundant with the stage code recorded in Observation.valueCodeableConcept (for example, the 'c' in cN0 represents clinical staging)."
* value[x] only CodeableConcept
* value[x] ^comment = ""    // suppress QA error on #notes link
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* focus only Reference(PrimaryCancerCondition)
* focus ^short = "The cancer condition associated with staging assessment."
* focus ^definition = "Staging is associated with a particular primary cancer condition. Observation.focus is used to point back to that condition."
* subject only Reference(CancerPatient)
* subject ^definition = "The patient associated with staging assessment."
* status and code and subject and effective[x] and value[x] and method and focus MS


Profile: CancerStageGroupTNM  // formerly CancerStageGroup
Id: mcode-cancer-stage-group-tnm
Parent: CancerStageAssessment
Title: "Cancer TNM Stage Profile"
Description: "The extent of cancer, based on a TNM staging system."
* insert NotUsed(component)
* code from ObservationCodesStageGroupVS (required)
* value[x] from CancerStageGroupVS (preferred)
* value[x] ^short = "The stage group"
* value[x] ^definition = "The overall cancer stage, such as stage group IIA."
* hasMember MS
* focus 1..1  // NEW requirement -- see https://jira.hl7.org/browse/FHIR-37575
* insert ObservationHasMemberSlicingRules
* hasMember contains
    tnmPrimaryTumorCategory 0..1 MS and
    tnmRegionalNodesCategory 0..1 MS and
    tnmDistantMetastasesCategory 0..1 MS
* hasMember[tnmPrimaryTumorCategory] only Reference(TNMPrimaryTumorCategory)
* hasMember[tnmPrimaryTumorCategory] ^short = "TNM Primary Tumor Category"
* hasMember[tnmPrimaryTumorCategory] ^definition = "Category of the primary tumor, based on its size and extent, and based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmPrimaryTumorCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmRegionalNodesCategory] only Reference(TNMRegionalNodesCategory)
* hasMember[tnmRegionalNodesCategory] ^short = "TNM  Regional Nodes Category"
* hasMember[tnmRegionalNodesCategory] ^definition = "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmRegionalNodesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmDistantMetastasesCategory] only Reference(TNMDistantMetastasesCategory)
* hasMember[tnmDistantMetastasesCategory] ^short = "TNM  Distant Metastases Category"
* hasMember[tnmDistantMetastasesCategory] ^definition = "Category describing the presence or absence of metastases in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmDistantMetastasesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."


Profile:  TNMPrimaryTumorCategory
Id: mcode-tnm-primary-tumor-category
Parent: CancerStageAssessment
Title: "TNM Primary Tumor Category Profile"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* insert NotUsed(hasMember)
* code from ObservationCodesPrimaryTumorVS (required)  
* value[x] from TNMPrimaryTumorCategoryVS (preferred)  // MK 8/29/2022 - Only preferred because some users might use AJCC codes directly; in addition, the coes for "r" and "a" staging are not in SNOMED

Profile:  TNMRegionalNodesCategory
Id: mcode-tnm-regional-nodes-category
Parent: CancerStageAssessment
Title: "TNM Regional Nodes Category Profile"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* insert NotUsed(hasMember)
* code from ObservationCodesRegionalNodesVS (required)
* value[x] from TNMRegionalNodesCategoryVS (preferred)

Profile:  TNMDistantMetastasesCategory
Id: mcode-tnm-distant-metastases-category
Parent: CancerStageAssessment
Title: "TNM Distant Metastases Category Profile"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* insert NotUsed(hasMember)
* code from ObservationCodesDistantMetastasesVS (required)
* value[x] from TNMDistantMetastasesCategoryVS (preferred)
