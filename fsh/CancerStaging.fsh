Profile: CancerStageParent
Id: mcode-cancer-stage-parent
Parent: Observation
Title: "Cancer Stage Parent"
Description:  "Abstract parent class for members of cancer staging panels. Cancer panel members must include a timing element and staging system, and focus on a cancer disorder. Specific realizations will have value sets specific to certain staging systems."
* ^abstract = true
* status, code, subject, effective[x], valueCodeableConcept, method MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept ^comment = ""    // suppress QA error on #notes link
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* component 0..0
* partOf only Reference(Procedure)
* basedOn only Reference(ServiceRequest)
* focus only Reference(PrimaryCancerCondition)
* subject only Reference(CancerPatient)
* method from CancerStagingSystemVS (extensible)
* performer only Reference(Practitioner)


//-------------------- Clinical Staging -------------------------

Profile: TNMClinicalStageGroup
Id: mcode-tnm-clinical-stage-group
Parent: CancerStageParent
Title: "TNM Clinical Stage Group"
Description: "The extent of the cancer in the body, according to the TNM classification system, based on evidence such as physical examination, imaging, and/or biopsy."
* ^abstract = false
* hasMember MS
* code = LNC#21908-9 //"Stage group.clinical Cancer"
* valueCodeableConcept from TNMStageGroupVS (preferred)
* hasMember ^slicing.discriminator.type = #profile // #pattern
* hasMember ^slicing.discriminator.path =  "$this.resolve()" // "$this.resolve().code"
* hasMember ^slicing.rules = #open
* hasMember contains 
    TNMClinicalPrimaryTumorCategory 0..1 and
    TNMClinicalRegionalNodesCategory 0..1 and
    TNMClinicalDistantMetastasesCategory 0..1
// Set metadata attributes that show up in the IG
* hasMember[TNMClinicalPrimaryTumorCategory] only Reference(TNMClinicalPrimaryTumorCategory)
* hasMember[TNMClinicalPrimaryTumorCategory] ^short = "TNM Clinical Primary Tumor Category"
* hasMember[TNMClinicalPrimaryTumorCategory] ^definition = "Category of the primary tumor, based on its size and extent, and based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[TNMClinicalPrimaryTumorCategory] ^comment = "When using this element, the Observation must validate against the specified profile."

* hasMember[TNMClinicalRegionalNodesCategory] only Reference(TNMClinicalRegionalNodesCategory)
* hasMember[TNMClinicalRegionalNodesCategory] ^short = "TNM Clinical Regional Nodes Category"
* hasMember[TNMClinicalRegionalNodesCategory] ^definition = "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[TNMClinicalRegionalNodesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[TNMClinicalDistantMetastasesCategory] only Reference(TNMClinicalDistantMetastasesCategory)
* hasMember[TNMClinicalDistantMetastasesCategory] ^short = "TNM Clinical Distant Metastases Category"
* hasMember[TNMClinicalDistantMetastasesCategory] ^definition = "Category describing the presence or absence of metastases in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[TNMClinicalDistantMetastasesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."

Profile:  TNMClinicalPrimaryTumorCategory
Id: mcode-tnm-clinical-primary-tumor-category
Parent: CancerStageParent
Title: "TNM Clinical Primary Tumor Category"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* ^abstract = false
* code = LNC#21905-5 //"Primary tumor.clinical [Class] Cancer"
* valueCodeableConcept from TNMPrimaryTumorCategoryVS (preferred)

Profile:  TNMClinicalRegionalNodesCategory
Id: mcode-tnm-clinical-regional-nodes-category
Parent: CancerStageParent
Title: "TNM Clinical Regional Nodes Category"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* ^abstract = false
* code = LNC#21906-3 //"Regional lymph nodes.clinical [Class] Cancer"
* valueCodeableConcept from TNMRegionalNodesCategoryVS (preferred)

Profile:  TNMClinicalDistantMetastasesCategory
Id: mcode-tnm-clinical-distant-metastases-category
Parent: CancerStageParent
Title: "TNM Clinical Distant Metastases Category"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* ^abstract = false
* code = LNC#21907-1 //"Distant metastases.clinical [Class] Cancer"
* valueCodeableConcept from TNMDistantMetastasesCategoryVS (preferred)

//-------------------- Pathological Staging -------------------------

Profile: TNMPathologicalStageGroup
Id: mcode-tnm-pathological-stage-group
Parent: CancerStageParent
Title: "TNM Pathological Stage Group"
Description: "The extent of the cancer in the body, according to the TNM classification system, assessed through pathologic analysis of a specimen."
* ^abstract = false
* hasMember MS
* code =  LNC#21902-2 //"Stage group.pathology Cancer"
* valueCodeableConcept from TNMStageGroupVS (preferred)
* hasMember ^slicing.discriminator.type = #profile // #pattern
* hasMember ^slicing.discriminator.path =  "$this.resolve()" // "$this.resolve().code"
* hasMember ^slicing.rules = #open
* hasMember contains 
    TNMPathologicalPrimaryTumorCategory 0..1 and
    TNMPathologicalRegionalNodesCategory 0..1 and
    TNMPathologicalDistantMetastasesCategory 0..1
// Set metadata attributes that show up in the IG
* hasMember[TNMPathologicalPrimaryTumorCategory] only Reference(TNMPathologicalPrimaryTumorCategory)
* hasMember[TNMPathologicalPrimaryTumorCategory] ^short = "TNM Pathological Primary Tumor Category"
* hasMember[TNMPathologicalPrimaryTumorCategory] ^definition = "Category of the primary tumor, based on its size and extent, assessed through pathologic analysis of a specimen."
* hasMember[TNMPathologicalPrimaryTumorCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[TNMPathologicalRegionalNodesCategory] only Reference(TNMPathologicalRegionalNodesCategory)
* hasMember[TNMPathologicalRegionalNodesCategory] ^short = "TNM Pathological Regional Nodes Category"
* hasMember[TNMPathologicalRegionalNodesCategory] ^definition = "Category of the presence or absence of metastases in regional lymph nodes, assessed through pathologic analysis of a specimen."
* hasMember[TNMPathologicalRegionalNodesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[TNMPathologicalDistantMetastasesCategory] only Reference(TNMPathologicalDistantMetastasesCategory)
* hasMember[TNMPathologicalDistantMetastasesCategory] ^short = "TNM Pathological Distant Metastases Category"
* hasMember[TNMPathologicalDistantMetastasesCategory] ^definition = "Category describing the presence or absence of metastases in remote anatomical locations, assessed through pathologic analysis of a specimen."
* hasMember[TNMPathologicalDistantMetastasesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."

Profile:  TNMPathologicalPrimaryTumorCategory
Id: mcode-tnm-pathological-primary-tumor-category
Parent: CancerStageParent
Title: "TNM Pathological Primary Tumor Category"
Description: "Category of the primary tumor, based on its size and extent, assessed through pathologic analysis of a specimen."
* ^abstract = false
* code = LNC#21899-0 //"Primary tumor.pathology Cancer"
* valueCodeableConcept from TNMPrimaryTumorCategoryVS (preferred)

Profile:  TNMPathologicalRegionalNodesCategory
Id: mcode-tnm-pathological-regional-nodes-category
Parent: CancerStageParent
Title: "TNM Pathological Regional Nodes Category"
Description: "Category of the presence or absence of metastases in regional lymph nodes, assessed through pathologic analysis of a specimen."
* ^abstract = false
* code = LNC#21900-6 //"Regional lymph nodes.pathology [Class] Cancer"
* valueCodeableConcept from TNMRegionalNodesCategoryVS (preferred)

Profile:  TNMPathologicalDistantMetastasesCategory
Id: mcode-tnm-pathological-distant-metastases-category
Parent: CancerStageParent
Title: "TNM Pathological Distant Metastases Category"
Description: "Category describing the presence or absence of metastases in remote anatomical locations, assessed through pathologic analysis of a specimen."
* ^abstract = false
* code = LNC#21901-4 //"Distant metastases.pathology [Class] Cancer"
* valueCodeableConcept from TNMDistantMetastasesCategoryVS (preferred)
