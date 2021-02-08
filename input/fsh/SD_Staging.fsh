RuleSet: CancerStageCommonRules
* status and code and subject and effective[x] and value[x] and method and focus MS
* value[x] only CodeableConcept
* value[x] ^comment = ""    // suppress QA error on #notes link
* device 0..0
* referenceRange 0..0
* component 0..0
* partOf only Reference(Procedure)
* basedOn only Reference(ServiceRequest)
* focus only Reference(PrimaryCancerCondition)
* subject only Reference(CancerPatient)
* method from CancerStagingSystemVS (extensible)

Profile: TNMStageGroup
Id: mcode-tnm-stage-group
Parent: Observation
Title: "TNM Stage Group"
Description: "The extent of the cancer in the body, according to the TNM classification system, based on evidence such as physical examination, imaging, and/or biopsy or based on pathologic analysis of a specimen."
* insert CancerStageCommonRules
* hasMember MS
* code from ObservationCodesStageGroupVS (required)
* value[x] from TNMStageGroupVS (preferred)
* insert ObservationHasMemberSlicingRules
* hasMember contains
    TNMPrimaryTumorCategory 0..1 and
    TNMRegionalNodesCategory 0..1 and
    TNMDistantMetastasesCategory 0..1
// Set metadata attributes that show up in the IG
* hasMember[TNMPrimaryTumorCategory] only Reference(TNMPrimaryTumorCategory)
* hasMember[TNMPrimaryTumorCategory] ^short = "TNM Primary Tumor Category"
* hasMember[TNMPrimaryTumorCategory] ^definition = "Category of the primary tumor, based on its size and extent, and based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[TNMPrimaryTumorCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[TNMRegionalNodesCategory] only Reference(TNMRegionalNodesCategory)
* hasMember[TNMRegionalNodesCategory] ^short = "TNM  Regional Nodes Category"
* hasMember[TNMRegionalNodesCategory] ^definition = "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[TNMRegionalNodesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[TNMDistantMetastasesCategory] only Reference(TNMDistantMetastasesCategory)
* hasMember[TNMDistantMetastasesCategory] ^short = "TNM  Distant Metastases Category"
* hasMember[TNMDistantMetastasesCategory] ^definition = "Category describing the presence or absence of metastases in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[TNMDistantMetastasesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."

Profile:  TNMPrimaryTumorCategory
Id: mcode-tnm-primary-tumor-category
Parent: Observation
Title: "TNM Primary Tumor Category"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* code from ObservationCodesPrimaryTumorVS (required)
* value[x] from TNMPrimaryTumorCategoryVS (preferred)

Profile:  TNMRegionalNodesCategory
Id: mcode-tnm-regional-nodes-category
Parent: Observation
Title: "TNM Regional Nodes Category"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* code from ObservationCodesRegionalNodesTumorVS (required)
* insert CategorySlicingRules
* category = ObsCat#exam "exam"
* value[x] from TNMRegionalNodesCategoryVS (preferred)

Profile:  TNMDistantMetastasesCategory
Id: mcode-tnm--distant-metastases-category
Parent: Observation
Title: "TNM Distant Metastases Category"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* code from ObservationCodesDistantMetastasesVS (required)
* value[x] from TNMDistantMetastasesCategoryVS (preferred)
