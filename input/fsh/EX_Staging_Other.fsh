Instance: primary-cancer-condition-nonspecific
InstanceOf: PrimaryCancerCondition
Description: "An unspecific Primary Cancer Condition (PCC) used in IG examples. Any real PCC would use a specific diagnostic code."
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#128462008 "Metastatic malignant neoplasm (disorder)"
* subject = Reference(cancer-patient-adam-everyman)
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* onsetDateTime = "2020-05-12"

RuleSet: StagingInstanceRuleSet
* status = #final "final"
* focus = Reference(primary-cancer-condition-nonspecific)
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2021-04-01"

//-------------------------------------------------

Instance: all-fab-classification-M5b
InstanceOf: ALLClassification
Description: "Example of FAB (French-American-British) staging of acute lymphoblastic leukemia (ALL)."
* insert StagingInstanceRuleSet
* code = NCIT#C91220 "French-American-British Classification"
* valueCodeableConcept = SCT#278171008 "French-American-British type M5b (qualifier value)"

Instance: binet-stage-group-A
InstanceOf: CLLBinetStage
Description: "Example of Binet staging for CLL."
* insert StagingInstanceRuleSet
* code = NCIT#C141212 "Binet Stage"
// method is optional because Binet staging is implicit in Observation.code
* method = SCT#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* valueCodeableConcept = NCIT#C80134 "Binet Stage A"
* focus = Reference(primary-cancer-condition-cll) // added requirement STU3
* derivedFrom = Reference(lab-result-observation-hemoglobin)

Instance: rai-stage-II
InstanceOf: CLLRaiStage
Description: "Example of Rai staging for CLL."
* insert StagingInstanceRuleSet
* code = NCIT#C141207 "Rai Stage"
* method = SCT#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"
* valueCodeableConcept = NCIT#C7875 "Stage II Chronic Lymphocytic Leukemia"

Instance: figo-stage-IIIA
InstanceOf: GynecologicTumorFIGOStage
Description: "Example of gynecologic tumor staged by International Federation of Gynecology and Obstetrics (FIGO) Staging System."
* insert StagingInstanceRuleSet
* code = SCT#385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* method = SCT#106250008 "International Federation of Gynecology and Obstetrics staging system for cervical carcinoma (tumor staging)"
* valueCodeableConcept = NCIT#C96256 "FIGO Stage IIIA"

Instance: hodgkins-lymphoma-stage-IIIe
InstanceOf: LymphomaStage
Description: "Example of staging using Cotswold staging of Hodgkin's disease."
* insert StagingInstanceRuleSet
* code = SCT#385388004 "Lymphoma stage (observable entity)"
* method = SCT#254375000 "Cotswolds Hodgkin's disease tumor staging system (tumor staging)"
* valueCodeableConcept = SCT#44255004 "Lymphoma stage IIIe (finding)"

Instance: melanoma-clark-level-4
InstanceOf: MelanomaClarkLevel
Description: "Example of Clark level staging for melanoma."
* insert StagingInstanceRuleSet
* code = SCT#103419001 "Clark melanoma level of invasion of excised malignant melanoma of skin (observable entity)"
// method is optional because Clark staging is implicit in Observation.code
* valueCodeableConcept = SCT#1556006 "Clark melanoma level 4 (finding)"

Instance: multiple-myeloma-iss-stage-II
InstanceOf: MyelomaISSStage
Description: "Example of use of International Staging System (ISS) for myeloma staging."
* insert StagingInstanceRuleSet
* code = NCIT#C139007 "International Staging System Stage"
* valueCodeableConcept = NCIT#C70659 "ISS Stage II Plasma Cell Myeloma"

Instance: multiple-myeloma-riss-stage-II
InstanceOf: MyelomaRISSStage
Description: "Example of Revised International Staging System (RISS) for myeloma staging."
* insert StagingInstanceRuleSet
* code = NCIT#C141392 "Revised International Staging System Stage"
* valueCodeableConcept = NCIT#C141395 "RISS Stage II Plasma Cell Myeloma"

Instance: neuroblastoma-inss-stage-2B
InstanceOf: NeuroblastomaINSSStage
Description: "Example of The International Neuroblastoma Staging System (INSS) stage for neuroblastoma."
* insert StagingInstanceRuleSet
* code = SCT#409720004  "International neuroblastoma staging system stage (observable entity)"
* valueCodeableConcept = SCT#409724008 "International neuroblastoma staging system stage 2B (finding)"

Instance: neuroblastoma-risk-group-L2
InstanceOf: NeuroblastomaRiskGroup
Description: "Example of Neuroblastoma risk group according to the International Neuroblastoma Risk Group Staging System (INRGSS)"
* insert StagingInstanceRuleSet
* code = NCIT#C192760 "International Neuroblastoma Risk Group"
* valueCodeableConcept = NCIT#C133429 "INRG Stage L2"
