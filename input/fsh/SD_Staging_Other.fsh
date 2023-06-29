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
Title: "Binet stage for chronic lymphocytic leukemia"
Description: "Binet stage for chronic lymphocytic leukemia"
* insert NotUsed(component)
* code = NCIT#C141212 // Binet Stage -- need a SNOMED code
* method = SCT#1149099005 // "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* value[x] from BinetStageVS (required)

Profile: CMLPhase
Id: mcode-cml-phase
Parent: CancerStage   // consider if this is a better as a CancerDiseaseStatus
Title: "Chronic Myeloid Leukemia Phase Profile"
Description: "Phase of Chronic Myeloid Leukemia (CML) observed at a specified point in time."
* insert NotUsed(component)
* code = MDR#10066506  // CML Progression (code from medDRA; no suitable codes in NCIT, SCT, or LNC)
* value[x] from CMLPhaseVS (required)

//  French-American-British (FAB) Classification for ALL

Profile: FABClassification
Id: mcode-fab-classification
Parent: CancerStage  // ?
Title: "FAB Classification for acute lymphoblastic leukemia"
Description: "French-American-British stage for acute lymphoblastic leukemia"
* insert NotUsed(component)
* code = NCIT#C91220 // French-American-British Classification
* value[x] from FABClassificationVS (required)

// International Federation of Gynecology and Obstetrics (FIGO)

Profile: FIGOStage
Id: mcode-figo-stage
Parent: CancerStage
Title: "FIGO Stage Profile"
Description: "International Federation of Gynecology and Obstetrics (FIGO) Staging Profile"
* insert NotUsed(component)
* code from FIGOStageTypeVS (extensible)
* method from FIGOStagingMethodVS (extensible)
* value[x] from FIGOStageVS (extensible)

//  International Neuroblastoma Staging System (INSS)

Profile: INSSStage
Id: mcode-inss-stage
Parent: CancerStage
Title: "International Neuroblastoma Stage Profile"
Description: "The International Neuroblastoma Staging System (INSS) stage for neuroblastoma."
* insert NotUsed(component)
* code = SCT#409720004  // International neuroblastoma staging system stage (observable entity)
* value[x] from INSSStageVS (required)

//  International Neuroblastoma Risk Group Staging System (NRGSS)

Profile: InternationalNeuroblastomaRiskGroup
Id: mcode-international-neuroblastoma-risk-group
Parent: CancerStage
Title: "International Neuroblastoma Risk Group Profile"
Description: "The stage according to the International Neuroblastoma Risk Group Staging System (INRGSS). It is based on preoperative imaging and determined prior to any treatment, including surgery."
* insert NotUsed(component)
* code = NCIT#C192760 // International Neuroblastoma Risk Group
* value[x] from INSSStageVS (required)

// Lymphoma Stage

Profile: LymphomaStage
Id: mcode-lymphoma-stage
Parent: CancerStage
Title: "Lymphoma Stage Profile"
Description: "Ann Arbor Staging of Lymphoma. The Ann Arbor staging system is the same for both Hodgkins and Non-Hodgkins lymphoma, but the differences between Hodgkin's and non-Hodgkin's lymphoma lie in their cellular origin, presentation, and treatment approaches."
* insert SNOMEDCopyrightForVS
* code from LymphomaStageTypeVS (extensible)
* method 1..1 MS
* method from LymphomaStagingMethodVS
* value[x] from LymphomaStageVS (required)
* insert ObservationComponentSlicingRules
* component contains modifier 0..* and clin-or-path 0..1
* component[modifier].value[x] only CodeableConcept
* component[modifier].value[x] from LymphomaModifierVS
* component[clin-or-path].value[x] only CodeableConcept
* component[clin-or-path].value[x] from ClinOrPathVS

//  Rai Staging System for CLL

Profile: RaiStage
Id: mcode-rai-stage
Parent: CancerStage
Title: "Rai stage for chronic lymphocytic leukemia"
Description: "Rai stage for chronic lymphocytic leukemia"
* insert NotUsed(component)
* code = NCIT#C141207 // Rai Stage -- need a SNOMED code
* method from RaiStagingMethodVS
* value[x] from RaiStageVS (required)

//  Wilms Tumor Staging

Profile: WilmsTumorStage
Id: mcode-wilms-tumor-stage
Parent: CancerStage
Title: "Wilms Tumor Stage Profile"
Description: "Profile for staging Wilms Tumors via National Wilms Tumor Study Group (NWTSG) Staging method or the National Wilms Tumor Study Group (NWTS) and updated by the Children's Oncology Group Renal Tumor Committee (COG/NWTSG)."
* insert NotUsed(component)
* code = SCT#405931009 // National Wilms Tumor Study Group Stage
* value[x] from WilmsTumorStageVS (required)
* method from WilmsTumorStagingMethodVS (extensible)
* bodySite from WilmsTumorBodySiteVS (extensible)
