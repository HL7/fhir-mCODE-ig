Profile: ComorbiditiesParent
Parent: USCoreClinicalTest
Id: mcode-comorbidities-parent
Title: "Comorbidities Parent Abstract Profile"
Description: "General structure for capturing comorbid conditions with respect to a primary ('index') condition. The specific set of comorbidities of interest in a given context are defined by slicing the components array. The same general approach can be applied to any comorbidity category checklist."
* ^abstract = true
* focus only Reference(Condition)
* focus ^short = "The Index Condition"
* focus ^definition = "The comorbid conditions may be defined with respect to a specific 'index' condition. For example, the US Centers for Disease Control (CDC) has a list of comorbid conditions important to COVID-19. In this case, the focus would be COVID-19 and the comorbid condition categories would be those called out by CDC, namely obesity, renal disease, respiratory disease, etc."
* component.value[x] only CodeableConcept // do not bind to present/absent value set because some comorbidity scales use grades 1, 2, 3 (see Adult Comorbidity Evaluation-27)
* component ^definition = "Component representing the presence or absence of the named comorbidity, with optional condition code(s) or reference to the actual condition(s)."
* component.extension contains
     ComorbidConditionCode named conditionCode 0..* and
     ComorbidConditionReference named conditionReference 0..*
* component.modifierExtension 0..0
* component.code ^short = "Code representing the comorbidity category"
* component.code ^definition = "The code identifying category of comorbidity, for example, congestive heart failure or severe renal disease. The category typically represents a set of specific diagnosis codes."
* component.extension ^short = "Extensions to capture specific conditions that fall into the given category."
* component.extension ^definition = "If more detail about the comorbid condition is desired, elements in this extension can be populated with a specific condition code or a reference to a Condition resource. The extension elements SHALL be used only if the comorbidity category is present."
* insert NotUsed(bodySite)
* insert NotUsed(specimen)
* insert NotUsed(device)
* subject only Reference(CancerPatient)
* subject ^definition = "The patient whose comorbidities are recorded."

// No Must Suppports in the abstract profile
//* component and component.extension MS


Profile: ComorbiditiesElixhauser
Parent: ComorbiditiesParent
Id: mcode-comorbidities-elixhauser
Title: "Comorbidities Elixhauser Profile"
Description: "Comorbid condition checklist and optional risk score, using Elixhauser comorbidity categories as defined by the Agency for Healthcare Research and Quality (AHRQ) Healthcare Cost and Utilization Project (H-CUP)."
* ^extension[FMM].valueInteger = 1
* ^abstract = false
* code = LNC_TBD#comorbidities-elixhauser "Elixhauser Comorbidity Panel"
* focus only Reference(PrimaryCancerCondition)
* focus ^definition = "A reference to the cancer condition that is the context for the current list of comorbid conditions."
* component.value[x] from PresentAbsentVS (required)  //FHIR-32281
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "Slice based on the component.code pattern"
* insert CreateComorbidityComponent(aids, AIDS, "Acquired Immune Deficiency Syndrome", ElixhauserAidsVS)
* insert CreateComorbidityComponent(alcoholAbuse, ALCOHOL, "Alcohol Abuse", ElixhauserAlcoholAbuseVS)
* insert CreateComorbidityComponent(deficiencyAnemia, ANEMDF, "DeficiencyAnemia", ElixhauserDeficiencyAnemiaVS)
* insert CreateComorbidityComponent(arthropathy, ARTH, "Arthropathy", ElixhauserRheumatoidArthritisVS)
* insert CreateComorbidityComponent(bloodLossAnemia, BLDLOSS, "Chronic Blood Loss Anemia", ElixhauserBloodLossAnemiaVS)
* insert CreateComorbidityComponent(cancerLeukemia, CANCER_LEUK, "Leukemia", ElixhauserCancerLeukemiaVS)
* insert CreateComorbidityComponent(cancerLymphoma, CANCER_LYMPH, "Lymphoma", ElixhauserCancerLymphomaVS)
* insert CreateComorbidityComponent(cancerMetastatic, CANCER_METS , "Metastatic Cancer", ElixhauserCancerMetastaticVS)
* insert CreateComorbidityComponent(cancerSolidInSitu, CANCER_NSITU, "Solid tumor without metastasis\, in situ", ElixhauserCancerSolidTumorInSituVS)
* insert CreateComorbidityComponent(cancerSolidMalignant, CANCER_SOLID, "Solid tumor without metastasis\, malignant", ElixhauserCancerSolidTumorMalignantVS)
* insert CreateComorbidityComponent(cerebrovascular, CBVD, "Cerebrovascular disease", ElixhauserCerebrovascularDiseaseVS)
* insert CreateComorbidityComponent(congestiveHeartFailure, CHF, "CongestiveHeartFailure", ElixhauserCongestiveHeartFailureVS)
* insert CreateComorbidityComponent(coagulopathy, COAG, "Coagulation Deficiency", ElixhauserCoagulationDeficiencyVS)
* insert CreateComorbidityComponent(dementia, DEMENTIA, "Dementia", ElixhauserDementiaVS)
* insert CreateComorbidityComponent(depression, DEPRESS, "Depression", ElixhauserDepressionVS)
* insert CreateComorbidityComponent(diabetesComplicated, DIAB_CX, "Diabetes with chronic complications", ElixhauserDiabetesComplicatedVS)
* insert CreateComorbidityComponent(diabetesUncomplicated, DIAB_UNCX, "Diabetes without chronic complications", ElixhauserDiabetesUncomplicatedVS)
* insert CreateComorbidityComponent(drugAbuse, DRUG_ABUSE, "Drug Abuse", ElixhauserDrugAbuseVS)
* insert CreateComorbidityComponent(hypertensionComplicated, HTN_CX, "Hypertension\, Complicated", ElixhauserHypertensionComplicatedVS)
* insert CreateComorbidityComponent(hypertensionUncomplicated, HTN_UNCX, "Hypertension\, Uncomplicated", ElixhauserHypertensionUncomplicatedVS)
* insert CreateComorbidityComponent(liverDiseaseMild, LIVER_MLD, "Mild Liver Disease", ElixhauserLiverDiseaseMildVS)
* insert CreateComorbidityComponent(liverDiseaseSevere, LIVER_SEV, "Moderate to Severe Liver Disease", ElixhauserLiverDiseaseSevereVS)
* insert CreateComorbidityComponent(chronicPulmonaryDisease, LUNG_CHRONIC, "Chronic pulmonary disease", ElixhauserChronicPulmonaryDiseaseVS)
* insert CreateComorbidityComponent(neurologicalMovement, NEURO_MOVT, "Neurological disorders affecting movement", ElixhauserNeurologicalMovementDisorderVS)
* insert CreateComorbidityComponent(neurologicalOther, NEURO_OTH, "Other neurological disorders", ElixhauserOtherNeurologicalVS)
* insert CreateComorbidityComponent(neurologicalSeizure, NEURO_SEIZ, "Seizures and epilepsy", ElixhauserNeurologicalSeizureDisorderVS)
* insert CreateComorbidityComponent(obesity, OBESE, "Obesity", ElixhauserObesityVS)
* insert CreateComorbidityComponent(paralysis, PARALYSIS, "Paralysis", ElixhauserParalysisVS)
* insert CreateComorbidityComponent(peripheralVascularDisease, PERIVASC, "Peripheral Vascular Disease", ElixhauserPeripheralVascularDiseaseVS)
* insert CreateComorbidityComponent(psychosis, PSYCHOSIS, "Psychosis", ElixhauserPsychosisVS)
* insert CreateComorbidityComponent(pulmonaryCirculationDisorder, PULMCIRC, "Pulmonary Circulation Disorders", ElixhauserPulmonaryCirculationDisorderVS)
* insert CreateComorbidityComponent(renalFailureModerate, RENLFL_MOD, "Moderate Renal Failure", ElixhauserRenalFailureModerateVS)
* insert CreateComorbidityComponent(renalFailureSevere, RENLFL_SEV, "Severe Renal Failure", ElixhauserRenalFailureSevereVS)
* insert CreateComorbidityComponent(hypothyroidism, THYROID_HYPO, "Hypothyroidism", ElixhauserHypothyroidismVS)
* insert CreateComorbidityComponent(thyroidOther, THYROID_OTH, "Other Thyroid Disease", ElixhauserOtherThyroidDisorderVS)
* insert CreateComorbidityComponent(ulcer, ULCER_PEPTIC, "Ulcer", ElixhauserUlcerVS)
* insert CreateComorbidityComponent(valvularDisease, VALVE, "Valvular Disease", ElixhauserValvularDiseaseVS)
* insert CreateComorbidityComponent(weightLoss, WGHTLOSS,"Weight Loss", ElixhauserWeightLossVS)
// Must Supports -- none inherited
* component and status and code and subject and focus and effective[x] MS
//
* value[x] only integer
* value[x] MS
