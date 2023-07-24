Instance: primary-cancer-condition-nonspecific
InstanceOf: PrimaryCancerCondition
Description: "Generic unspecific Primary Cancer Condition (PCC) for use in IG examples. Any real PCC would use a more specific code."
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
Description: "Example of a non-TNM Stage Group (Binet staging for CLL)"
* insert StagingInstanceRuleSet
* code = NCIT#C141212 "Binet Stage"
// method is optional because Binet staging is implicit in Observation.code
* method = SCT#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)."
* valueCodeableConcept = NCIT#C80134 "Binet Stage A"
* focus = Reference(primary-cancer-condition-cll) // added requirement STU3
* derivedFrom = Reference(lab-result-observation-hemoglobin)

Instance: rai-stage-II
InstanceOf: CLLRaiStage
Description: "Example of a non-TNM Stage Group (Binet staging for CLL)."
* insert StagingInstanceRuleSet
* code = NCIT#C141207 "Rai Stage"
* method = SCT#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"
* valueCodeableConcept = NCIT#C7875 "Stage II Chronic Lymphocytic Leukemia"

Instance: cml-phase-chronic
InstanceOf: CMLPhase
Description: "Example of FAB (French-American-British) staging of acute lymphoblastic leukemia (ALL)."
* insert StagingInstanceRuleSet
* code = MDR#10066506  "CML Progression"
* valueCodeableConcept = SCT#278177007 "Chronic phase (qualifier value)"

Instance: figo-stage-IIIA
InstanceOf: GynecologicTumorFIGOStage
Description: "Example of gynecologic tumor staged by International Federation of Gynecology and Obstetrics (FIGO) Staging System."
* insert StagingInstanceRuleSet
* code = SCT#385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* method = SCT#106250008 "International Federation of Gynecology and Obstetrics staging system for cervical carcinoma (tumor staging)"
* valueCodeableConcept = NCIT#C96256 "FIGO Stage IIIA"

Instance: Hodgkins-lymphoma-stage-IIIe
InstanceOf: LymphomaStage
Description: "Example of staging using Cotswold staging of Hodgkin's disease."
* insert StagingInstanceRuleSet
* code = SCT#385388004 "Lymphoma stage (observable entity)"
* method = SCT#254375000 "Cotswolds Hodgkin's disease tumor staging system (tumor staging)"
* valueCodeableConcept = SCT#44255004 "Lymphoma stage IIIe (finding)"

Instance: multiple-myeloma-iss-stage-II
InstanceOf: MyelomaISSStage
Description: "Example of use of International Staging System (ISS) for Myeloma Stage Value Set"
* insert StagingInstanceRuleSet
* code = NCIT#C139007 "International Staging System Stage"
* valueCodeableConcept = NCIT#C70659 "ISS Stage II Plasma Cell Myeloma"

Instance: multiple-myeloma-riss-stage-II
InstanceOf: MyelomaRISSStage
Description: "Example of Revised International Staging System (ISS) for Myeloma Stage Value Set"
* insert StagingInstanceRuleSet
* code = NCIT#C141392 "Revised International Staging System Stage"
* valueCodeableConcept = NCIT#C141395 "RISS Stage II Plasma Cell Myeloma"

Instance: neuroblastoma-inss-stage-2B
InstanceOf: NeuroblastomaINSSStage
Description: "Example of The International Neuroblastoma Staging System (INSS) stage for neuroblastoma."
* insert StagingInstanceRuleSet
* code = SCT#409720004  "International neuroblastoma staging system stage (observable entity)"
* valueCodeableConcept = SCT#409724008 "International neuroblastoma staging system stage 2B (finding)"

Instance: international-neuroblastoma-risk-group-L2
InstanceOf: NeuroblastomaRiskGroup
Description: "Example of Neuroblastoma risk group according to the International Neuroblastoma Risk Group Staging System (INRGSS)"
* insert StagingInstanceRuleSet
* code = NCIT#C192760 "International Neuroblastoma Risk Group"
* valueCodeableConcept = NCIT#C133429 "INRG Stage L2"

Instance: wilms-tumor-stage-III
InstanceOf: WilmsTumorStage
Description: "Example of "
* insert StagingInstanceRuleSet
* code = SCT#405931009 "National Wilms Tumor Study Group Stage"
* method = NCIT#C140271 "Children's Oncology Group/National Wilms' Tumor Study Group Staging System"
* valueCodeableConcept = SCT#405973001 "National Wilms Tumor Study Group Stage III (finding)"
* bodySite = SCT#18639004 "Left kidney structure (body structure)"

