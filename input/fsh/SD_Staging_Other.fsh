/* Staging Systems to consider:
TNM - check
INSS - check
INRGSS - check
Ann Arbor - check
COG/Wilms - check?  Wilms but not COG/Wilms
FIGO - check
French-American-British (FAB) classification -- This is a grading method (based on appearance and behavior of cells), not a staging method, but still fits the overall pattern of CancerStage profile
Rai - check
Binet - check
CML Phase -- Chronic, blastic, accelerated CML are considered disease phases and appear in the SCT disorder hierarchy
B-cell ALL, T-cell ALL  - Currently, there is no staging system for acute lymphocytic leukemia (ALL).  The phases of ALL are described as untreated, in remission, relapsed (also called recurrent) or refractory.

Consider the WHO classification of myeloid neoplasms and acute leukemia? see https://ashpublications.org/blood/article/127/20/2391/35255/The-2016-revision-to-the-World-Health-Organization
*/

//  Leukemia Stage

Profile: CLLBinetStage
Id: mcode-cll-binet-stage
Parent: CancerStage
Title: "CLL Binet Stage Profile"
Description: "Binet stage for chronic lymphocytic leukemia (CLL)"
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = NCIT#C141212 // Binet Stage -- request a SNOMED code?
* method = SCT#1149099005 // "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* value[x] from BinetStageValueVS (required)

Profile: CLLRaiStage
Id: mcode-cll-rai-stage
Parent: CancerStage
Title: "CLL Rai Stage Profile"
Description: "Rai stage for chronic lymphocytic leukemia (CLL)"
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = NCIT#C141207 // Rai Stage -- request a SNOMED code?
* method from RaiStagingMethodVS
* value[x] from RaiStageValueVS (required)

Profile: CMLPhase
Id: mcode-cml-phase
Parent: CancerStage   // since this is a phase, is it appropriate to inherit from CancerStage?
Title: "Chronic Myeloid Leukemia Phase Profile"
Description: "Phase of Chronic Myeloid Leukemia (CML) observed at a specified point in time."
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = MDR#10066506  // CML Progression (code from medDRA; no suitable codes in NCIT, SCT, or LNC)
* value[x] from CMLPhaseValueVS (required)

Profile: ALLClassification
Id: mcode-all-fab-classification
Parent: CancerStage  // is the FAB classification really a stage?
Title: "ALL French-American-British Classification Profile"
Description: "French-American-British (FAB) stage for acute lymphoblastic leukemia (ALL)"
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = NCIT#C91220 // French-American-British Classification
* value[x] from FABClassificationValueVS (required)

// Gynecologic Tumors

Profile: GynecologicTumorFIGOStage
Id: mcode-gynecologic-tumor-figo-stage
Parent: CancerStage
Title: "Gynecologic Tumor FIGO Stage Profile"
Description: "Gynecologic tumor stage by International Federation of Gynecology and Obstetrics (FIGO) Staging System"
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = SCT#385361009 // "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* method from FIGOStagingMethodVS (extensible)
* value[x] from FIGOStageValueVS (extensible)

// Neuroblastoma Staging

Profile: NeuroblastomaINSSStage
Id: mcode-neuroblastoma-inss-stage
Parent: CancerStage
Title: "Neuroblastoma INNS Stage Profile"
Description: "The International Neuroblastoma Staging System (INSS) stage for neuroblastoma."
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = SCT#409720004  // International neuroblastoma staging system stage (observable entity)
* value[x] from NeuroblastomaStageValueVS (required)

Profile: NeuroblastomaRiskGroup
Id: mcode-international-neuroblastoma-risk-group
Parent: CancerStage
Title: "Neuroblastoma International Risk Group Profile"
Description: "Neuroblastoma risk group according to the International Neuroblastoma Risk Group Staging System (INRGSS)."
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = NCIT#C192760 // International Neuroblastoma Risk Group
* value[x] from NeuroblastomaRiskGroupValueVS (required)

// Lymphoma Stage

Profile: LymphomaStage
Id: mcode-lymphoma-stage
Parent: CancerStage
Title: "Lymphoma Stage Profile"
Description: "Staging of lymphoma (both Hodgkins and Non-Hodgkins) by Ann Arbor, Cotswold, or Lugano staging systems. The method (required) indicates which of these related staging systems was used."
* ^extension[FMM].valueInteger = 0
* insert SNOMEDCopyrightForVS
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

// Myeloma (aka Multiple Myeloma, Plasma Cell Myeloma) Stage. There is no code for Myeloma Stage independent of the staging system, so we need separate profiles for each method (ISS and RISS)

Profile: MyelomaISSStage
Id: mcode-myeloma-iss-stage
Parent: CancerStage
Title: "Myeloma ISS Stage Profile"
Description: "Myeloma Stage by International Staging System (ISS)"
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
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
* insert NotUsed(component)
// There is no code for Myeloma Stage independent of the staging system, so we need two separate profiles for ISS and RISS
* code = NCIT#C141392 // "Revised International Staging System Stage"
// How do I say "method is not required, but if you include it, it must be this code"?
//* method = SCT#1149163003 // Revised International Staging System for multiple myeloma (staging scale)
* value[x] from MyelomaRISSValueVS (required)

//  Wilms Tumor Staging

Profile: WilmsTumorStage
Id: mcode-wilms-tumor-stage
Parent: CancerStage
Title: "Wilms Tumor COG/NWTSG Stage Profile"
Description: "Profile for staging Wilms Tumors via National Wilms Tumor Study Group (NWTSG) Staging method or NWTSG updated by the Children's Oncology Group Renal Tumor Committee (COG/NWTSG)."
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = SCT#405931009 // National Wilms Tumor Study Group Stage
* value[x] from WilmsTumorStageValueVS (required)
* method from WilmsTumorStagingMethodVS (extensible)
* bodySite from WilmsTumorBodySiteVS (extensible)
