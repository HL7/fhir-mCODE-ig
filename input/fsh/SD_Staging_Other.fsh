//  Leukemia Stage

Profile: CLLBinetStage
Id: mcode-cll-binet-stage
Parent: CancerStage
Title: "CLL Binet Stage Profile"
Description: "Binet stage for chronic lymphocytic leukemia (CLL)"
* ^extension[FMM].valueInteger = 0
* code = NCIT#C141212 // Binet Stage -- request a SNOMED code?
//* method = SCT#1149099005 // "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* value[x] from BinetStageValueVS (required)

Profile: CLLRaiStage
Id: mcode-cll-rai-stage
Parent: CancerStage
Title: "CLL Rai Stage Profile"
Description: "Rai stage for chronic lymphocytic leukemia (CLL)"
* ^extension[FMM].valueInteger = 0
* code = NCIT#C141207 // Rai Stage -- request a SNOMED code?
* method from RaiStagingMethodVS
* value[x] from RaiStageValueVS (required)

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
* component contains stage-modifier 0..* and clin-or-path-modifier 0..1
* component[stage-modifier].value[x] only CodeableConcept
* component[stage-modifier].value[x] from LymphomaStageValueModifierVS
* component[clin-or-path-modifier].value[x] only CodeableConcept
* component[clin-or-path-modifier].value[x] from ClinOrPathModifierVS

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
* value[x] from MyelomaISSValueVS (required)

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
* value[x] from MyelomaRISSValueVS (required)

// Prostate Cancer

Profile: ProstateGleasonGradeGroup
Id: mcode-prostate-gleason-grade-group
Parent: CancerStage
Title: "Prostate Gleason Grade Group Profile"
Description: "Gleason Grade Group for prostatic cancer"
* ^extension[FMM].valueInteger = 0
* code = SCT#385377005 // Gleason grade finding for prostatic cancer (finding)
* value[x] from GleasonGradeGroupValueVS (required)
