//----------- AJCC TNM Staging Profiles--------------

Profile: TNMStageGroup
Id: mcode-tnm-stage-group
Parent: CancerStage
Title: "TNM Stage Group Profile"
Description: "Reporting of the stage group representing the overall extent of a cancer, based on AJCC staging guidelines."
* ^extension[FMM].valueInteger = 4
* insert NotUsed(component)
* code from TNMStageGroupStagingTypeVS (preferred)
* code ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMStageGroupStagingTypeMaxVS)
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
Parent: CancerStage
Title: "TNM Primary Tumor Category Profile"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* ^extension[FMM].valueInteger = 4
* insert NotUsed(hasMember)
* method 1..1
* method from TNMStagingMethodVS (extensible)
* code from TNMPrimaryTumorStagingTypeVS (preferred)
* code ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMPrimaryTumorStagingTypeMaxVS)
// MK 8/29/2022 - Using "preferred" binding with a maximum value set because some users might use AJCC codes directly
// In addition, the codes for "r" and "a" staging are not in SNOMED
* value[x] from TNMPrimaryTumorCategoryVS (preferred)  
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMPrimaryTumorCategoryMaxVS)

Profile:  TNMRegionalNodesCategory
Id: mcode-tnm-regional-nodes-category
Parent: CancerStage
Title: "TNM Regional Nodes Category Profile"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* ^extension[FMM].valueInteger = 4
* insert NotUsed(hasMember)
* method 1..1
* method from TNMStagingMethodVS (extensible)
* code from TNMRegionalNodesStagingTypeVS (preferred)
* code ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMRegionalNodesStagingTypeMaxVS)
* value[x] from TNMRegionalNodesCategoryVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMRegionalNodesCategoryMaxVS)

Profile:  TNMDistantMetastasesCategory
Id: mcode-tnm-distant-metastases-category
Parent: CancerStage
Title: "TNM Distant Metastases Category Profile"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* ^extension[FMM].valueInteger = 4
* insert NotUsed(hasMember)
* method 1..1
* method from TNMStagingMethodVS (extensible)
* code from TNMDistantMetastasesStagingTypeVS (preferred)
* code ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMDistantMetastasesStagingTypeMaxVS)
* value[x] from TNMDistantMetastasesCategoryVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMDistantMetastasesCategoryMaxVS)
