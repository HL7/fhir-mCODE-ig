//  Leukemia Stage

Profile: CLLBinetStage
Id: mcode-cll-binet-stage
Parent: CancerStage
Title: "CLL Binet Stage Profile"
Description: "Binet stage for chronic lymphocytic leukemia (CLL)"
* ^extension[FMM].valueInteger = 0
* code = NCIT#C141212 // Binet Stage -- request a SNOMED code?
//* method = SCT#1149099005 // "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* value[x] from BinetStageValueVS (extensible)

Profile: CLLRaiStage
Id: mcode-cll-rai-stage
Parent: CancerStage
Title: "CLL Rai Stage Profile"
Description: "Rai stage for chronic lymphocytic leukemia (CLL)"
* ^extension[FMM].valueInteger = 0
* code = NCIT#C141207 // Rai Stage -- request a SNOMED code?
* method from RaiStagingMethodVS
* value[x] from RaiStageValueVS (extensible)

// Gynecologic Tumors

Profile: GynecologicTumorFIGOStage
Id: mcode-gynecologic-tumor-figo-stage
Parent: CancerStage
Title: "Gynecologic Tumor FIGO Stage Profile"
Description: "Gynecologic tumor stage by International Federation of Gynecology and Obstetrics (FIGO) Staging System"
* ^extension[FMM].valueInteger = 0
* code = SCT#385361009 // "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* method from FIGOStagingMethodVS (extensible)
* value[x] from FIGOStageValueVS (extensible)

// Lymphoma Stage

Profile: LymphomaStage
Id: mcode-lymphoma-stage
Parent: CancerStage
Title: "Lymphoma Stage Profile"
Description: "Staging of lymphoma (both Hodgkins and Non-Hodgkins) by Ann Arbor, Cotswold, or Lugano staging systems. The method (required) indicates which of these related staging systems was used."
* ^extension[FMM].valueInteger = 0
* code = SCT#385388004 // "Lymphoma stage (observable entity)"
* method 1..1 MS
* method from LymphomaStagingMethodVS
* value[x] from LymphomaStageValueVS (required)
* insert ObservationComponentSlicingRules
* component contains stage-modifier 0..* and clin-or-path-modifier 0..1 and bulky-modifier 0..1
* component[stage-modifier].value[x] only CodeableConcept
* component[stage-modifier].value[x] from LymphomaStageValueModifierVS
* component[stage-modifier].code = SCT#106252000 "Staging classification for lymphoma (tumor staging)"

* component[clin-or-path-modifier].value[x] only CodeableConcept
* component[clin-or-path-modifier].value[x] from ClinOrPathModifierVS
* component[clin-or-path-modifier].code = SCT#277366005 "Nature of staging values (qualifier value)"

* component[bulky-modifier].value[x] only CodeableConcept
* component[bulky-modifier].value[x] from LymphomaStageBulkyModifierVS
* component[bulky-modifier].code = SCT#260873006 "Bulky disease status (attribute)"


// Melanoma

Profile: MelanomaBreslowDepthStage
Id: mcode-melanoma-breslow-depth-stage
Parent: CancerStage
Title: "Melanoma Breslow Depth Stage Profile"
Description: "Breslow depth stage for melanoma of the skin"
* ^extension[FMM].valueInteger = 0
* code = SCT#106243009 // Breslow depth staging for melanoma of skin (observable entity)
* value[x] from BreslowDepthStageValueVS

Profile: MelanomaClarkLevel
Id: mcode-melanoma-clark-level
Parent: CancerStage
Title: "Melanoma Clark Level Profile"
Description: "Clark level for melanoma"
* ^extension[FMM].valueInteger = 0
* code = SCT#103419001 // "Clark melanoma level of invasion of excised malignant melanoma of skin (observable entity)
* value[x] from ClarkLevelValueVS (required)


// Myeloma (aka Multiple Myeloma, Plasma Cell Myeloma) Stage. There is no code for Myeloma Stage independent of the staging system, so we need separate profiles for each method (ISS and RISS)

Profile: MyelomaISSStage
Id: mcode-myeloma-iss-stage
Parent: CancerStage
Title: "Myeloma ISS Stage Profile"
Description: "Myeloma Stage by International Staging System (ISS)"
* ^extension[FMM].valueInteger = 0
* code = NCIT#C139007  // "International Staging System Stage"
// How do I say "method is not required, but if you include it, it must be this code"?
//* method = SCT#1149162008 // International Staging System for multiple myeloma (staging scale)
* value[x] from MyelomaISSValueVS (extensible)

Profile: MyelomaRISSStage
Id: mcode-myeloma-riss-stage
Parent: CancerStage
Title: "Myeloma RISS Stage Profile"
Description: "Myeloma Stage by Revised International Staging System (RISS)"
* ^extension[FMM].valueInteger = 0
// There is no code for Myeloma Stage independent of the staging system, so we need two separate profiles for ISS and RISS
* code = NCIT#C141392 // "Revised International Staging System Stage"
// How do I say "method is not required, but if you include it, it must be this code"?
//* method = SCT#1149163003 // Revised International Staging System for multiple myeloma (staging scale)
* value[x] from MyelomaRISSValueVS (extensible)

// Prostate Cancer

Profile: ProstateGleasonGradeGroup
Id: mcode-prostate-gleason-grade-group
Parent: CancerStage
Title: "Prostate Gleason Grade Group Profile"
Description: "Gleason Grade Group for prostatic cancer"
* ^extension[FMM].valueInteger = 0
* code = SCT#385377005 // Gleason grade finding for prostatic cancer (finding)
* value[x] from GleasonGradeGroupValueVS (required)


//Neuroblastoma//

Profile: NeuroblastomaINSStage
Id: mcode-neuroblastoma-inss-stage
Parent: CancerStage
Title: "Neuroblastoma INSS Stage Profile"
Description: "The International Neuroblastoma Staging System (INSS) stage for neuroblastoma."
* ^extension[FMM].valueInteger = 0
* code = SCT#409720004  // International neuroblastoma staging system stage (observable entity)
* value[x] from NeuroblastomaINSSValueVS (required)


Profile: NeuroblastomaINRGSSStage
Id: mcode-neuroblastoma-inrgss-stage
Parent: CancerStage
Title: "Neuroblastoma INRGSS Stage Profile"
Description: "International Neuroblastoma Risk Group Staging System (INRGSS) for neuroblastoma."
* ^extension[FMM].valueInteger = 0
* code = NCIT#C133427 // International Neuroblastoma Risk Group Staging System
* value[x] from NeuroblastomaINRGSSValueVS (extensible)

//WilmsTumor//

Profile: WilmsTumorStage
Id: mcode-wilms-tumor-stage
Parent: CancerStage
Title: "Wilms Tumor Stage Profile"
Description: "Wilms Tumors (nephroblastoma) Stage by the National Wilms Tumor Study Group."
* ^extension[FMM].valueInteger = 0
* code = SCT#405931009 // National Wilms Tumor Study Group Stage (observable entity)
* value[x] from WilmsTumorStageValueVS (required)
* bodySite from WilmsTumorBodySiteVS (extensible)

//Rhabdomyosarcoma//

Profile: RhabdomyosarcomaClinicalGroupStage
Id: mcode-rhabdomyosarcoma-clinical-group-stage
Parent: CancerStage
Title: "Rhabdomyocaroma Clinical Group Stage Profile"
Description: "Clinical stage group for rhabdomyocaroma."
* ^extension[FMM].valueInteger = 0
* code = SCT#405916000 // Intergroup rhabdomyosarcoma study post-surgical clinical group (observable entity)
* value[x] from RhabdomyosarcomaClinicalGroupValueVS (required)
