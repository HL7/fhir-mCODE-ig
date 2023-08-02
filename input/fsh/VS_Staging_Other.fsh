ValueSet: BinetStageValueVS
Id: mcode-binet-stage-value-vs
Title: "Binet Stage Value Set"
Description: "Codes in the Binet staging system representing Chronic Lymphocytic Leukemia (CLL) stage."
* ^experimental = false
* NCIT#C80134 "Binet Stage A"
* NCIT#C80135 "Binet Stage B"
* NCIT#C80136 "Binet Stage C"

ValueSet: BreslowDepthStageValueVS
Id: mcode-breslow-depth-stage-value-vs
Title: "Breslow Depth Stage Value Set"
Description: "Codes in the Breslow staging system representing melanoma depth."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept descendant-of #385348009 "Breslow depth finding for melanoma (finding)"

ValueSet: ClarkLevelValueVS
Id: mcode-clark-level-value-vs
Title: "Clark Level Value Set"
Description: "Levels for Clark staging of melanoma"
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept descendant-of #385347004 "Clark melanoma level finding (finding)"

ValueSet: ClinOrPathModifierVS
Id: mcode-clin-or-path-modifier-vs
Title: "Clinical or Pathologic Modifier"
Description: "Stage value modifier indicating if staging was based on clinical or pathologic evidence."
* insert SNOMEDCopyrightForVS
* SCT#260998006 "Clinical staging (qualifier value)"
* SCT#261023001 "Pathological staging (qualifier value)"

ValueSet: FABClassificationValueVS
Id: mcode-fab-classification-value-vs
Title: "FAB Classification Value"
Description: "French American British classification for acute myeloid leukemias, acute lymphoblastic leukemias, and myelodysplastic syndromes."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept descendant-of #278159002 "French-American-British type values (qualifier value)"

ValueSet: FIGOStagingMethodVS
Id: mcode-figo-staging-method-vs
Title: "FIGO Staging Method Value Set"
Description: "Staging methods from International Federation of Gynecology and Obstetrics (FIGO)."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #254383006 "International Federation of Gynecology and Obstetrics staging system of gynecological malignancy (tumor staging)"

ValueSet: FIGOStageValueVS
Id: mcode-figo-stage-value-vs
Title: "FIGO Stage Value Set"
Description: "Values for International Federation of Gynecology and Obstetrics (FIGO) Staging System."
* ^experimental = false
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

ValueSet: GleasonGradeGroupValueVS
Id: mcode-gleason-grade-group-value-vs
Title: "Gleason Grade Value Set"
Description: "Gleason grade for prostatic cancer, with values that explicitly reference the Gleason score."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept descendant-of #1515521000004104 "International Society of Pathology histologic grade group (qualifier value)"

ValueSet: LymphomaStagingMethodVS
Id: mcode-lymphoma-staging-method-vs
Title: "Lymphoma Staging System Value Set"
Description: "Staging Systems used to stage lymphomas (Hodgkin's and non-Hodgkin's)."
* insert SNOMEDCopyrightForVS
* SCT#254373007 "Ann Arbor Hodgkin's disease tumor staging system (tumor staging)"
* SCT#254374001 "Ann Arbor non-Hodgkin's lymphoma tumor staging system (tumor staging)"
* SCT#254375000 "Cotswolds Hodgkin's disease tumor staging system (tumor staging)"
* SCT#254371009 "St Jude's non-Hodgkin's lymphoma staging system (tumor staging)"
* NCIT#C141189 "Lugano Classification Adult Hodgkin Lymphoma by AJCC v8 Stage"
* NCIT#C141178 "Lugano Classification Childhood Hodgkin Lymphoma by AJCC v8 Stage"
* NCIT#C141158 "Lugano Classification Adult Non-Hodgkin Lymphoma by AJCC v8 Stage"

ValueSet: LymphomaStageValueVS
Id: mcode-lymphoma-stage-value-vs
Title: "Lymphoma Stage Value Set"
Description: "Stage values used in lymphoma staging systems."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept descendant-of #385389007 "Lymphoma stage finding (finding)"
* NCIT#C171157 "Ann Arbor Stage IIX (Bulky)"

ValueSet: LymphomaStageValueModifierVS
Id: mcode-lymphoma-stage-value-modifier-vs
Title: "Lymphoma Stage Value Modifier Value Set"
Description: "Staging modifiers indicating symptoms and extent for lymphomas."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept descendant-of #106252000 "Staging classification for lymphoma (tumor staging)"

ValueSet: MyelomaISSValueVS
Id: mcode-myeloma-iss-stage-value-vs
Title: "International Staging System (ISS) for Myeloma Stage Value Set"
Description: "Codes in ISS staging system representing plasma cell or multiple myeloma stage."
* ^experimental = false
* NCIT#C70658 "ISS Stage I Plasma Cell Myeloma"
* NCIT#C70659 "ISS Stage II Plasma Cell Myeloma"
* NCIT#C70660 "ISS Stage III Plasma Cell Myeloma"

ValueSet: MyelomaRISSValueVS
Id: mcode-myeloma-riss-stage-value-vs
Title: "Revised International Staging System (ISS) for Multiple Myeloma Stage Value Set"
Description: "Codes in RISS staging system representing plasma cell or multiple myeloma stage."
* ^experimental = false
* NCIT#C141394 "RISS Stage I Plasma Cell Myeloma"
* NCIT#C141395 "RISS Stage II Plasma Cell Myeloma"
* NCIT#C141396 "RISS Stage III Plasma Cell Myeloma"

ValueSet: RaiStagingMethodVS
Id: mcode-rai-staging-method-vs
Title: "Rai Staging System Value Set"
Description: "Rai Staging Systems used to stage chronic lymphocytic leukemia (CLL)."
* insert SNOMEDCopyrightForVS
* SCT#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"
* NCIT#C141206  "Chronic Lymphocytic Leukemia- Modified Rai Staging System"

ValueSet: RaiStageValueVS
Id: mcode-rai-stage-value-vs
Title: "Rai Stage Value Set"
Description: "Codes in the Rai staging system representing Chronic Lymphocytic Leukemia (CLL) stage."
* ^experimental = false
* NCIT#C7847 "Stage 0 Chronic Lymphocytic Leukemia"
* NCIT#C7874 "Stage I Chronic Lymphocytic Leukemia"
* NCIT#C7875 "Stage II Chronic Lymphocytic Leukemia"
* NCIT#C7876 "Stage III Chronic Lymphocytic Leukemia"
* NCIT#C8646 "Stage IV Chronic Lymphocytic Leukemia"

/* not used
ValueSet: LymphomaStageTypeVS
Id: mcode-lymphoma-stage-type-vs
Title: "Lymphoma Stage Type Value Set"
Description: "The kind or type of stage reported in an Observation. In general, the 'Lymphoma stage' code can be used since the staging method is required, and carries more detailed information than the Observation.code."
* SCT#385388004 "Lymphoma stage (observable entity)"
* NCIT#C141147 "Lugano Stage"
* NCIT#C177558 "Ann Arbor Clinical Stage"
* NCIT#C177559 "Ann Arbor Pathologic Stage"
* NCIT#C141138 "Ann Arbor Stage"

ValueSet: GynecologicTumorFIGOStageTypeVS
Id: mcode-gynecologic-tumor-figo-stage-type-vs
Title: "FIGO Stage Type Value Set"
Description: "Stage Types for International Federation of Gynecology and Obstetrics (FIGO) Staging System."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
*/