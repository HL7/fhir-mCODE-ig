//  International Neuroblastoma Staging

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


//  International Neuroblastoma Risk Group Staging

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


ValueSet: LymphomaStagingMethodVS
Id: mcode-lymphoma-staging-method-vs
Title: "Lymphoma Staging System Value Set"
Description: "Staging Systems used to stage lymphomas."
* include codes from system SCT where concept descendant-of #254372002 "Ann Arbor lymphoma staging system (tumor staging)"
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