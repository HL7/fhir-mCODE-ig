ValueSet: BinetStageVS
Id: mcode-binet-stage-vs
Title: "Binet Stage Value Set"
Description: "Codes in the Binet staging system representing Chronic Lymphocytic Leukemia (CLL) stage."
* NCIT#C80134 "Binet Stage A"
* NCIT#C80135 "Binet Stage B"
* NCIT#C80136 "Binet Stage C"

ValueSet: ClinOrPathVS
Id: mcode-clin-or-path-vs
Title: "Clinical or Pathologic Staging"
Description: "Codes to indicate if staging was based on clinical or pathologic evidence."
* SCT#385349001 "Clinical stage (observable entity)"
* SCT#405978005 "Pathologic stage (observable entity)"

ValueSet: CMLPhaseVS
Id: mcode-cml-phase-vs
Title: "Chronic Myeloid Leukemia Phase Value Set"
Description: "Phases of Chronic Myeloid Leukemia (CML)"
* SCT#278177007 "Chronic phase (qualifier value)"
* SCT#278179005 "Accelerated phase (qualifier value)"
//* SCT#278180008 "Blast crisis (qualifier value)"
* SCT#255251009 "Acute phase"

ValueSet: FABClassificationVS
Id: mcode-fab-classification-vs
Title: "FAB Classification"
Description: "French American British classification for acute myeloid leukemias, acute lymphoblastic leukemias, and myelodysplastic syndromes."
* include codes from system SCT where concept descendant-of #278159002 "French-American-British type values (qualifier value)"

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
* NCIT#C96254 "FIGO Stage IIB"
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

ValueSet: INRGSSVS
Id: mcode-inrgss-vs
Title: "International Neuroblastoma Risk Group Value Set"
Description: "Codes in International Neuroblastoma Risk Group. It includes two stages of localized disease (L1 and L2) and two stages of metastatic disease (M and MS)."
* NCIT#C133428 "INRG Stage L1"
* NCIT#C133429 "INRG Stage L2"
* NCIT#C133430 "INRG Stage M"
* NCIT#C133431 "INRG Stage MS"

ValueSet: INSSStageVS
Id: mcode-inss-stage-vs
Title: "INNS Stage Value Set"
Description: "Codes in INSS staging system representing neuroblastoma stage."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #409721000 "International neuroblastoma staging system stage finding (finding)"

ValueSet: LymphomaStageTypeVS
Id: mcode-lymphoma-stage-type-vs
Title: "Lymphoma Stage Type Value Set"
Description: "The kind or type of stage reported in an Observation. In general, the 'Lymphoma stage' code can be used since the staging method is required, and carries more detailed information than the Observation.code."
* SCT#385388004 "Lymphoma stage (observable entity)"
* NCIT#C141147 "Lugano Stage"
* NCIT#C177558 "Ann Arbor Clinical Stage"
* NCIT#C177559 "Ann Arbor Pathologic Stage"
* NCIT#C141138 "Ann Arbor Stage"

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

ValueSet: RaiStagingMethodVS
Id: mcode-rai-staging-method-vs
Title: "Rai Staging System Value Set"
Description: "Rai Staging Systems used to stage chronic lymphocytic leukemia (CLL)."
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