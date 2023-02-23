Profile: CancerStageGroup  // introduced 8/30/2020 to handle non-TNM staging more clearly
Id: mcode-cancer-stage-group
Parent: Observation
Title: "Cancer Stage Group Profile"
Description: "An assessment of the extent of the cancer in the body, according to a given cancer staging classification system. This profile can be used with any staging system, but it is specifically targeted for non-TNM staging systems, since specialized TNM staging profiles are provided."
* ^extension[FMM].valueInteger = 4
* method from CancerStagingMethodVS (extensible)
* code from CancerStagingTypeVS (preferred)
* code ^short = "The type of stage information reported."
* code ^definition = "The type of staging performed, e.g., clinically by oncologist, by a pathologist on a specimen, or other method. This information is required, although it may be redundant with the stage code recorded in Observation.valueCodeableConcept (for example, the 'c' in cN0 represents clinical staging)."
* value[x] only CodeableConcept
* value[x] from CancerStageVS (preferred)
* value[x] ^comment = ""    // suppress QA error on #notes link
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* focus only Reference(PrimaryCancerCondition)
* focus ^short = "The cancer condition associated with staging assessment."
* focus ^definition = "Staging is associated with a particular primary cancer condition. Observation.focus is used to point back to that condition."
* hasMember ^short = "Prognostic factors contributing to stage determination."
* hasMember ^definition = "References to the prognostic factors affecting the stage, for example, the T, N, and M categories."
* subject only Reference(CancerPatient)
* subject ^definition = "The patient associated with staging assessment."
* status and code and subject and effective[x] and value[x] and method and focus MS


Profile: TNMStageGroup  // formerly CancerStageGroup
Id: mcode-tnm-stage-group
Parent: CancerStageGroup
Title: "TNM Stage Group Profile"
Description: "The extent of cancer reprsented by the stage group, based on a TNM staging system."
* insert NotUsed(component)
* code from TNMStageGroupStagingTypeVS (required)
* value[x] from TNMStageGroupVS (preferred)
* value[x] ^short = "The stage group"
* value[x] ^definition = "The overall cancer stage, such as stage group IIA."
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMStageGroupMaxVS)
* hasMember MS
* method 1..1  // NEW requirement 
* method from TNMStagingMethodVS (extensible)
* focus 1..1  // NEW requirement -- see https://jira.hl7.org/browse/FHIR-37575
* insert SliceReferenceOnProfile(hasMember)
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
Parent: CancerStageGroup
Title: "TNM Primary Tumor Category Profile"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* insert NotUsed(hasMember)
* method 1..1
* method from TNMStagingMethodVS (extensible)
* code from TNMPrimaryTumorStagingTypeVS (required)  
* value[x] from TNMPrimaryTumorCategoryVS (preferred)  // MK 8/29/2022 - Using "preferred" binding because some users might use AJCC codes directly; in addition, the codes for "r" and "a" staging are not in SNOMED
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMPrimaryTumorCategoryMaxVS)

Profile:  TNMRegionalNodesCategory
Id: mcode-tnm-regional-nodes-category
Parent: CancerStageGroup
Title: "TNM Regional Nodes Category Profile"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* insert NotUsed(hasMember)
* method 1..1
* method from TNMStagingMethodVS (extensible)
* code from TNMRegionalNodesStagingTypeVS (required)
* value[x] from TNMRegionalNodesCategoryVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMRegionalNodesCategoryMaxVS)

Profile:  TNMDistantMetastasesCategory
Id: mcode-tnm-distant-metastases-category
Parent: CancerStageGroup
Title: "TNM Distant Metastases Category Profile"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* insert NotUsed(hasMember)
* method 1..1
* method from TNMStagingMethodVS (extensible)
* code from TNMDistantMetastasesStagingTypeVS (required)
* value[x] from TNMDistantMetastasesCategoryVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMDistantMetastasesCategoryMaxVS)
