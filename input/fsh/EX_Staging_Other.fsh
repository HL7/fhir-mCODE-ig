Instance: primary-cancer-condition-nonspecific
InstanceOf: PrimaryCancerCondition
Description: "An unspecified Primary Cancer Condition (PCC) used in IG examples. Any real PCC would use a specific diagnostic code."
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
* performer = Reference(us-core-practitioner-kyle-anydoc)
* effectiveDateTime = "2021-04-01"

//-------------------------------------------------

Instance: binet-stage-group-B
InstanceOf: CLLBinetStage
Description: "Example of Binet staging for CLL."
* insert StagingInstanceRuleSet
* code = NCIT#C141212 "Binet Stage"
// method is optional because Binet staging is implicit in Observation.code
* method = SCT#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* valueCodeableConcept = NCIT#C80135 "Binet Stage B"
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

Instance: gleason-grade-group-4
InstanceOf: ProstateGleasonGradeGroup
Description: "Example of Gleason Grade Group for prostatic cancer, with Gleason score 3 + 5 = 8."
* insert StagingInstanceRuleSet
* code = SCT#385377005 "Gleason grade finding for prostatic cancer (finding)"
* valueCodeableConcept = SCT#1279718003 "International Society of Urological Pathology grade group 4 (Gleason score 3 + 5 = 8) (qualifier value)"

Instance: hodgkins-lymphoma-stage-IIIe
InstanceOf: LymphomaStage
Description: "Example of staging using Cotswold staging of Hodgkin's disease."
* insert StagingInstanceRuleSet
* code = SCT#385388004 "Lymphoma stage (observable entity)"
* method = SCT#254375000 "Cotswolds Hodgkin's disease tumor staging system (tumor staging)"
* valueCodeableConcept = SCT#44255004 "Lymphoma stage IIIe (finding)"
* component[stage-modifier].valueCodeableConcept = SCT#282436004 "E - Extralymphatic organ involvement marker"
* component[clin-or-path-modifier].valueCodeableConcept = SCT#261023001 "Pathological staging (qualifier value)"
* component[bulky-modifier].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"

Instance: melanoma-breslow-depth-stage
InstanceOf: MelanomaBreslowDepthStage
Description: "Example of Breslow depth stage for melanoma."
* insert StagingInstanceRuleSet
* code = SCT#106243009 "Breslow depth staging for melanoma of skin (observable entity)"
* valueCodeableConcept = SCT#17456000 "Breslow measurement - depth from 0.76 to 1.75 mm (finding)"

Instance: melanoma-clark-level-4
InstanceOf: MelanomaClarkLevel
Description: "Example of Clark level staging for melanoma."
* insert StagingInstanceRuleSet
* code = SCT#103419001 "Clark melanoma level of invasion of excised malignant melanoma of skin (observable entity)"
// method is optional because Clark staging is implicit in Observation.code
* valueCodeableConcept = SCT#1556006 "Clark melanoma level 4 (finding)"

Instance: multiple-myeloma-iss-stage-II
InstanceOf: MyelomaISSStage
Description: "Example using the International Staging System (ISS) for myeloma staging."
* insert StagingInstanceRuleSet
* code = NCIT#C139007 "International Staging System Stage"
* valueCodeableConcept = NCIT#C70659 "ISS Stage II Multiple Myeloma"

Instance: multiple-myeloma-riss-stage-II
InstanceOf: MyelomaRISSStage
Description: "Example of Revised International Staging System (RISS) for myeloma staging."
* insert StagingInstanceRuleSet
* code = NCIT#C141392 "RISS Stage"
* valueCodeableConcept = NCIT#C141395 "RISS Stage II Multiple Myeloma"

Instance: neuroblastoma-inss-stage-III
InstanceOf: NeuroblastomaINSSStage
Description: "Example of International Neuroblastoma Staging System (INSS) for neuroblastoma staging."
* insert StagingInstanceRuleSet
* valueCodeableConcept = SCT#409725009 "International neuroblastoma staging system stage 3 (finding)"

Instance: neuroblastoma-inrgss-stage-MS
InstanceOf: NeuroblastomaINRGSSStage
Description: "Example of International Neuroblastoma Risk Group Staging System (INSS) for neuroblastoma staging."
* insert StagingInstanceRuleSet
* valueCodeableConcept = NCIT#C133431 "INRG Stage MS"

Instance: wilms-tumor-stage-III
InstanceOf: WilmsTumorStage
Description: "Example of National Wilms Tumor Study Group stage for Wilms Tumor staging."
* insert StagingInstanceRuleSet
* valueCodeableConcept = SCT#405973001 "National Wilms Tumor Study Group Stage III (finding)"
* bodySite = SCT#18639004 "Left kidney structure (body structure)"

Instance: rhabdomyosarcoma-clinical-group-stage-IA
InstanceOf: RhabdomyosarcomaClinicalGroupStage
Description: "Example of Rhabdomyosarcoma Clinical Group Stage for rhabdomyosarcoma staging."
* insert StagingInstanceRuleSet
* valueCodeableConcept = SCT#405957007 "Intergroup rhabdomyosarcoma study post-surgical clinical group IA: localized tumor, confined to site of origin, completely resected (finding)"
