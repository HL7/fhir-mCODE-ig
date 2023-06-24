/* Staging Systems to consider:
TNM - check
INSS - check
INRGSS - check
Ann Arbor - check
COG/Wilms - check?  Wilms but not COG/Wilms
FIGO - check
French-American-British (FAB) classification -- This is a grading method (appearance and behavio of cells), not a staging method
Rai - check
Binet - check
CML Phase -- Chronic, blastic, accelerated are considered disease phases (in the SCT disorder hierarchy)
B-cell ALL, T-cell ALL  - Currently, there is no staging system for acute lymphocytic leukemia (ALL).  The phases of ALL are described as untreated, in remission, relapsed (also called recurrent) or refractory.
*/

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

ValueSet: RaiStagingMethodVS
Id: mcode-rai-staging-method-vs
Title: "Rai Staging System Value Set"
Description: "Rai Staging Systems used to stage chronic lymphocytic leukemia."
* insert SNOMEDCopyrightForVS
* SCT#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"
* NCIT#C141206  "Chronic Lymphocytic Leukemia- Modified Rai Staging System"

ValueSet: RaiStageVS
Id: mcode-rai-stage-vs
Title: "Rai Stage Value Set"
Description: "Codes in the Rai staging system representing Chronic Lymphocytic Leukemia (CLL) stage."
* insert SNOMEDCopyrightForVS
* NCIT#C7847 "Stage 0 Chronic Lymphocytic Leukemia"
* NCIT#C7874 "Stage I Chronic Lymphocytic Leukemia"
* NCIT#C7875 "Stage II Chronic Lymphocytic Leukemia"
* NCIT#C7876 "Stage III Chronic Lymphocytic Leukemia"
* NCIT#C8646 "Stage IV Chronic Lymphocytic Leukemia"

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

ValueSet: BinetStageVS
Id: mcode-binet-stage-vs
Title: "Binet Stage Value Set"
Description: "Codes in the Binet staging system representing Chronic Lymphocytic Leukemia (CLL) stage."
* NCIT#C80134 "Binet Stage A"
* NCIT#C80135 "Binet Stage B"
* NCIT#C80136 "Binet Stage C"

//  International Neuroblastoma Staging System (INSS)

Profile: INSSStage
Id: mcode-inss-stage
Parent: CancerStage
Title: "International Neuroblastoma Stage Profile"
Description: "The International Neuroblastoma Staging System (INSS) stage for neuroblastoma."
* insert NotUsed(component)
* code = SCT#409720004  // International neuroblastoma staging system stage (observable entity)
* value[x] from INSSStageVS (required)

ValueSet: INSSStageVS
Id: mcode-inss-stage-vs
Title: "INNS Stage Value Set"
Description: "Codes in INSS staging system representing neuroblastoma stage."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #409721000 "International neuroblastoma staging system stage finding (finding)"

//  International Neuroblastoma Risk Group Staging System (NRGSS)

Profile: InternationalNeuroblastomaRiskGroup
Id: mcode-international-neuroblastoma-risk-group
Parent: CancerStage
Title: "International Neuroblastoma Risk Group Profile"
Description: "The stage according to the International Neuroblastoma Risk Group Staging System (INRGSS). It is based on preoperative imaging and determined prior to any treatment, including surgery."
* insert NotUsed(component)
* code = NCIT#C192760 // International Neuroblastoma Risk Group
* value[x] from INSSStageVS (required)

ValueSet: INRGSSVS
Id: mcode-inrgss-vs
Title: "International Neuroblastoma Risk Group Value Set"
Description: "Codes in International Neuroblastoma Risk Group. It includes two stages of localized disease (L1 and L2) and two stages of metastatic disease (M and MS)."
* NCIT#C133428 "INRG Stage L1"
* NCIT#C133429 "INRG Stage L2"
* NCIT#C133430 "INRG Stage M"
* NCIT#C133431 "INRG Stage MS"

// Lymphoma Stage

Profile: LymphomaStage
Id: mcode-lymphoma-stage
Parent: CancerStage
Title: "Lymphoma Stage Profile"
Description: "Ann Arbor Staging of Lymphoma. The Ann Arbor staging system is the same for both Hodgkins and Non-Hodgkins lymphoma, but the differences between Hodgkin's and non-Hodgkin's lymphoma lie in their cellular origin, presentation, and treatment approaches."
* insert SNOMEDCopyrightForVS
* code = SCT#385388004 // Lymphoma stage (observable entity)
* method from LymphomaStagingMethodVS
* value[x] from LymphomaStageVS (required)
* insert ObservationComponentSlicingRules
* component contains modifier 0..* and clin-or-path 0..1
* component[modifier].value[x] only CodeableConcept
* component[modifier].value[x] from LymphomaModifierVS
* component[clin-or-path].value[x] only CodeableConcept
* component[clin-or-path].value[x] from ClinOrPathVS


ValueSet: 

* include NCIT#C141147 "Lugano Stage"
* include NCIT#C177558 "Ann Arbor Clinical Stage"
* include NCIT#C177559 "Ann Arbor Pathologic Stage"
* include NCIT#C141138 "Ann Arbor Stage"

ValueSet: LymphomaStagingMethodVS
Id: mcode-lymphoma-staging-method-vs
Title: "Lymphoma Staging System Value Set"
Description: "Staging Systems used to stage lymphomas (Hodgkin's and non-Hodgkin's)."
* SCT#254372002 "Ann Arbor lymphoma staging system (tumor staging)"
* SCT#254373007 "Ann Arbor Hodgkin's disease tumor staging system (tumor staging)"
* SCT#254374001 "Ann Arbor non-Hodgkin's lymphoma tumor staging system (tumor staging)"
* SCT#254375000 "Cotswolds Hodgkin's disease tumor staging system (tumor staging)"
* SCT#254371009 "St Jude's non-Hodgkin's lymphoma staging system (tumor staging)"
* NCIT#C141189 "Lugano Classification Adult Hodgkin Lymphoma by AJCC v8 Stage"
* NCIT#C141178 "Lugano Classification Childhood Hodgkin Lymphoma by AJCC v8 Stage"
* NCIT#C141158 "Lugano Classification Adult Non-Hodgkin Lymphoma by AJCC v8 Stage"

ValueSet: LymphomaStageVS
Id: mcode-lymphoma-stage-vs
Title: "Lymphoma Stage Value Set"
Description: "Stage values used in lymphoma staging systems."
* include codes from system SCT where concept descendant-of #385389007 "Lymphoma stage finding (finding)"
* NCIT#C171157 "Ann Arbor Stage IIX (Bulky)"

ValueSet: LymphomaModifierVS
Id: mcode-lymphoma-modifier-vs
Title: "Lymphoma Modifier Value Set"
Description: "Staging modifiers indicating symptoms and extent for lymphomas."
* include codes from system SCT where concept descendant-of #106252000 "Staging classification for lymphoma (tumor staging)"

ValueSet: ClinOrPathVS
Id: mcode-clin-or-path-vs
Title: "Clinical or Pathologic Staging"
Description: "Codes to indicate if staging was based on clinical or pathologic evidence."
* SCT#385349001 "Clinical stage (observable entity)"
* SCT#405978005 "Pathologic stage (observable entity)"


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

ValueSet: WilmsTumorStagingMethodVS
Id: mcode-wilms-tumor-staging-method-vs
Title: "WilmsTumor Staging Method Value Set"
Description: "Methods for staging Wilms Tumors that differentiate the original National Wilms' tumor study staging system from the Children's Oncology Group modification of the National Wilms' Tumor Study Group Staging System."
* insert SNOMEDCopyrightForVS
* include SCT#254364004 "National Wilms' tumor study staging system (tumor staging)"
* include NCIT#C140271 "Children's Oncology Group/National Wilms' Tumor Study Group Staging System"

ValueSet: WilmsTumorStageVS
Id: mcode-wilms-tumor-stage-vs
Title: "Wilms Stage Value Set"
Description: "Stages I-V for Wilms Tumor Staging."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept descendant-of #405971004 "National Wilms Tumor Study Group Stage finding (finding)"

ValueSet: WilmsTumorBodySiteVS
Id: mcode-wilms-tumor-body-site-vs
Title: "Wilms Tumor Body Site Value Set"
Description: "Codes indicating the location of Wilms Tumor"
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #18639004 "Left kidney structure (body structure)"
* include codes from system SCT where concept is-a #9846003 "Right kidney structure (body structure)"

// International Federation of Gynecology and Obstetrics (FIGO)

Profile: FIGOStage
Id: mcode-figo-stage
Parent: CancerStage
Title: "FIGO Stage Profile"
Description: "International Federation of Gynecology and Obstetrics (FIGO) Staging Profile"
* insert NotUsed(component)
* code from FIGOStageTypeVS (extensible)
* method from FIGOStageSystemVS (extensible)
* value[x] from FIGOStageVS (extensible)

ValueSet: FIGOStageTypeVS
Id: mcode-figo-stage-type-vs
Title: "FIGO Stage Type Value Set"
Description: "Stage Types for International Federation of Gynecology and Obstetrics (FIGO) Staging System."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"

ValueSet: FIGOStageSystemVS
Id: mcode-figo-stage-system-vs
Title: "FIGO Stage System Value Set"
Description: "Stage Systems from International Federation of Gynecology and Obstetrics (FIGO)."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #254383006 "International Federation of Gynecology and Obstetrics staging system of gynecological malignancy (tumor staging)"

ValueSet: FIGOStageVS
Id: mcode-figo-stage-vs
Title: "FIGO Stage Value Set"
Description: "Values for International Federation of Gynecology and Obstetrics (FIGO) Staging System."
* NCIT#C96243 "FIGO Stage 0"
* NCIT#C96244 "FIGO Stage I"
* NCIT#C96245 "FIGO Stage IA"
* NCIT#C96246 "FIGO Stage IA1"
* NCIT#C96247 "FIGO Stage IA2"
* NCIT#C96248 "FIGO Stage IB"
* NCIT#C96249 "FIGO Stage IB1"
* NCIT#C96250 "FIGO Stage IB2"
* NCIT#C162222 "FIGO Stage IB3"
* NCIT#C96251 "FIGO Stage IC"
* NCIT#C128099 "FIGO Stage IC1"
* NCIT#C128100 "FIGO Stage IC2"
* NCIT#C128101 "FIGO Stage IC3"
* NCIT#C96252 "FIGO Stage II"
* NCIT#C96253 "FIGO Stage IIA"
* NCIT#C162223 "FIGO Stage IIA1"
* NCIT#C128103 "FIGO Stage IIA1(i)"
* NCIT#C128104 "FIGO Stage IIA1(ii)"
* NCIT#C162224 "FIGO Stage IIA2"
* NCIT#C96257 "FIGO Stage IIB"
* NCIT#C188300 "FIGO Stage IIC1"
* NCIT#C96255 "FIGO Stage III"
* NCIT#C96256 "FIGO Stage IIIA"
* NCIT#C128102 "FIGO Stage IIIA1"
* NCIT#C128105 "FIGO Stage IIIA2"
* NCIT#C96257 "FIGO Stage IIIB"
* NCIT#C96258 "FIGO Stage IIIC"
* NCIT#C96259 "FIGO Stage IIIC1"
* NCIT#C96260 "FIGO Stage IIIC2"
* NCIT#C96261 "FIGO Stage IV"
* NCIT#C96262 "FIGO Stage IVA"
* NCIT#C96263 "FIGO Stage IVB"

