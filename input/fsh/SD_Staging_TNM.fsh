//----------- AJCC TNM Staging Profiles--------------
Profile: TNMCategory
Id: mcode-tnm-category
Parent: Observation
Title: "Parent for T, N, and M Categories."
Description: "Parent profile for T, N, and M category profiles."
* ^abstract = true
* subject only Reference(CancerPatient)
* subject ^definition = "The patient associated with TNM category."
* value[x] only CodeableConcept
* method 1..1
* method from TNMStagingMethodVS (extensible)
* method ^short = "The staging system used."
* method ^definition = "The staging system or protocol used to determine the category of the cancer based on its extent. When the staging system is implied by Observation.code, Observation.method is not required. However, when Observation.code does not imply a staging system (for example, if the code is SNOMED CT 385388004 Lymphoma stage), then the staging system must be specified in Observation.method. "
* focus only Reference(PrimaryCancerCondition)
* focus ^short = "The cancer condition associated with TNM category."
* focus ^definition = "Staging is associated with a particular primary cancer condition. Observation.focus is used to point back to that condition."
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* insert NotUsed(hasMember)
* status and code and subject and effective[x] and value[x] and method and focus MS

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
* hasMember contains TNMCategory 0..3 MS
* hasMember ^short = "Element containing the T, N, and M categories as references to separate T, N, M observations. The referenced resources are observations leading to the Stage Group reported in the current resource."

Profile:  TNMPrimaryTumorCategory
Id: mcode-tnm-primary-tumor-category
Parent: TNMCategory
Title: "TNM Primary Tumor Category Profile"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* ^extension[FMM].valueInteger = 4
* code from TNMPrimaryTumorStagingTypeVS (preferred)
* code ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMPrimaryTumorStagingTypeMaxVS)
// MK 8/29/2022 - Using "preferred" binding with a maximum value set because some users might use AJCC codes directly
// In addition, the codes for "r" and "a" staging are not in SNOMED
* value[x] from TNMPrimaryTumorCategoryVS (preferred)  
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMPrimaryTumorCategoryMaxVS)

Profile:  TNMRegionalNodesCategory
Id: mcode-tnm-regional-nodes-category
Parent: TNMCategory
Title: "TNM Regional Nodes Category Profile"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* ^extension[FMM].valueInteger = 4
* code from TNMRegionalNodesStagingTypeVS (preferred)
* code ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMRegionalNodesStagingTypeMaxVS)
* value[x] from TNMRegionalNodesCategoryVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMRegionalNodesCategoryMaxVS)

Profile:  TNMDistantMetastasesCategory
Id: mcode-tnm-distant-metastases-category
Parent: TNMCategory
Title: "TNM Distant Metastases Category Profile"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* ^extension[FMM].valueInteger = 4
* code from TNMDistantMetastasesStagingTypeVS (preferred)
* code ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMDistantMetastasesStagingTypeMaxVS)
* value[x] from TNMDistantMetastasesCategoryVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMDistantMetastasesCategoryMaxVS)
