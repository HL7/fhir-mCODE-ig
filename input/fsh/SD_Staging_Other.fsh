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


//  Binet Staging System for CLL

Profile: BinetStage
Id: mcode-binet-stage
Parent: CancerStage
Title: "Binet Stage Profile"
Description: "Binet stage for chronic lymphocytic leukemia"
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = NCIT#C141212 // Binet Stage -- request a SNOMED code?
* method = SCT#1149099005 // "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* value[x] from BinetStageValueVS (required)

Profile: CMLPhase
Id: mcode-cml-phase
Parent: CancerStage   // consider if this is a better as a CancerDiseaseStatus
Title: "Chronic Myeloid Leukemia Phase Profile"
Description: "Phase of Chronic Myeloid Leukemia (CML) observed at a specified point in time."
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = MDR#10066506  // CML Progression (code from medDRA; no suitable codes in NCIT, SCT, or LNC)
* value[x] from CMLPhaseValueVS (required)

//  French-American-British (FAB) Classification for ALL

Profile: FABClassification
Id: mcode-fab-classification
Parent: CancerStage  // is this really a stage?
Title: "French-American-British Classification Profile"
Description: "French-American-British stage for acute lymphoblastic leukemia"
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = NCIT#C91220 // French-American-British Classification
* value[x] from FABClassificationValueVS (required)

// International Federation of Gynecology and Obstetrics (FIGO)

Profile: FIGOStage
Id: mcode-figo-stage
Parent: CancerStage
Title: "FIGO Stage Profile"
Description: "International Federation of Gynecology and Obstetrics (FIGO) Staging Profile"
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = SCT#385361009 // "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* method from FIGOStagingMethodVS (extensible)
* value[x] from FIGOStageValueVS (extensible)

//  International Neuroblastoma Staging System (INSS)

Profile: InternationalNeuroblastomaStage
Id: mcode-international-neuroblastoma-stage
Parent: CancerStage
Title: "International Neuroblastoma Stage Profile"
Description: "The International Neuroblastoma Staging System (INSS) stage for neuroblastoma."
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = SCT#409720004  // International neuroblastoma staging system stage (observable entity)
* value[x] from InternationalNeuroblastomaStagingSystemStageValueVS (required)

//  International Neuroblastoma Risk Group Staging System (NRGSS)

Profile: InternationalNeuroblastomaRiskGroup
Id: mcode-international-neuroblastoma-risk-group
Parent: CancerStage
Title: "International Neuroblastoma Risk Group Profile"
Description: "The stage according to the International Neuroblastoma Risk Group Staging System (INRGSS). It is based on preoperative imaging and determined prior to any treatment, including surgery."
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = NCIT#C192760 // International Neuroblastoma Risk Group
* value[x] from InternationalNeuroblastomaRiskGroupValueVS (required)

// Lymphoma Stage

Profile: LymphomaStage
Id: mcode-lymphoma-stage
Parent: CancerStage
Title: "Lymphoma Stage Profile"
Description: "Staging of lymphoma (both Hodgkins and Non-Hodgkins) by Ann Arbor, Cotwold, or Lugano staging systems. The method (required) indicates which of these related staging systems was used."
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

//  Rai Staging System for CLL

Profile: RaiStage
Id: mcode-rai-stage
Parent: CancerStage
Title: "Rai Stage Profile"
Description: "Rai stage for chronic lymphocytic leukemia"
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = NCIT#C141207 // Rai Stage -- request a SNOMED code?
* method from RaiStagingMethodVS
* value[x] from RaiStageValueVS (required)

//  Wilms Tumor Staging

Profile: WilmsTumorStage
Id: mcode-wilms-tumor-stage
Parent: CancerStage
Title: "Wilms Tumor Stage Profile"
Description: "Profile for staging Wilms Tumors via National Wilms Tumor Study Group (NWTSG) Staging method or the National Wilms Tumor Study Group (NWTS) and updated by the Children's Oncology Group Renal Tumor Committee (COG/NWTSG)."
* ^extension[FMM].valueInteger = 0
* insert NotUsed(component)
* code = SCT#405931009 // National Wilms Tumor Study Group Stage
* value[x] from WilmsTumorStageValueVS (required)
* method from WilmsTumorStagingMethodVS (extensible)
* bodySite from WilmsTumorBodySiteVS (extensible)