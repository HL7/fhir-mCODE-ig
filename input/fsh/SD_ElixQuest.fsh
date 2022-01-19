
RuleSet: CreateComorbidityitem(sliceName, code, short, vs)
* item contains {sliceName} 0..1 MS
* item[{sliceName}].linkId MS
* item[{sliceName}].answer MS
//* item[{sliceName}].dataAbsentReason MS
* item[{sliceName}].answer.extension MS
* item[{sliceName}].answer.extension[conditionCode] MS
* item[{sliceName}].answer.extension[conditionReference] MS
* item[{sliceName}].linkId = #{code}
* item[{sliceName}] ^short = {short}
* item[{sliceName}].answer.extension ^definition = "The patient's specific condition within this comorbidity class."
* item[{sliceName}].answer.extension[conditionCode].value[x] from {vs}

Profile: ElixhauserQuestionaireResponse
Parent: QuestionnaireResponse
Title:  "Questionaire response for Elixhauser Comorbidity Responses"
Id: mcode-elixhauser-comorbidity-questionaire
Description: "Questionaire response for Elixhauser Comorbidity Responses"
* identifier.system = LNC_TBD
* identifier.value = "comorbidities-elixhauser"
* subject only Reference(Condition)
* subject ^short = "The Index Condition"
* subject ^definition = "The comorbid conditions may be defined with respect to a specific 'index' condition. For example, the US Centers for Disease Control (CDC) has a list of comorbid conditions important to COVID-19. In this case, the focus would be COVID-19 and the comorbid condition categories would be those called out by CDC, namely obesity, renal disease, respiratory disease, etc."
* item.answer.value[x] only Coding // do not bind to present/absent value set because some comorbidity scales use grades 1, 2, 3 (see Adult Comorbidity Evaluation-27)
* item.answer.value[x] from PresentAbsentVS (required)
* item.answer ^definition = "item representing the presence or absence of the named comorbidity, with optional condition code(s) or reference to the actual condition(s)."
* item.answer.extension contains
     ComorbidConditionCode named conditionCode 0..* and
     ComorbidConditionReference named conditionReference 0..*
* item.modifierExtension 0..0
* item.linkId ^short = "Code representing the comorbidity category"
* item.linkId ^definition = "The code identifying category of comorbidity, for example, congestive heart failure or severe renal disease. The category typically represents a set of specific diagnosis codes."
* item.answer.extension ^short = "Extensions to capture specific conditions that fall into the given category."
* item.answer.extension ^definition = "If more detail about the comorbid condition is desired, elements in this extension can be populated with a specific condition code or a reference to a Condition resource. The extension elements SHALL be used only if the comorbidity category is present."
* item ^slicing.discriminator.type = #pattern
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
// * item contains aids 0..1 MS
// * item[aids].linkId MS
// * item[aids].answer MS
// //* item[{sliceName}].dataAbsentReason MS
// * item[aids].answer.extension MS
// * item[aids].answer.extension[conditionCode] MS
// * item[aids].answer.extension[conditionReference] MS
// * item[aids].linkId = "AIDS"
// * item[aids] ^short = "AIDS"
// * item[aids].answer.extension ^definition = "The patient's specific condition within this comorbidity class."
// * item[aids].answer.extension[conditionCode].value[x] from ElixhauserAidsVS
// * insert CreateComorbidityitem(aids, "AIDS", "Acquired Immune Deficiency Syndrome", ElixhauserAidsVS)
// * insert CreateComorbidityitem(alcoholAbuse, "ALCOHOL", "Alcohol Abuse", ElixhauserAlcoholAbuseVS)
// * insert CreateComorbidityitem(deficiencyAnemia, "ANEMDF", "DeficiencyAnemia", ElixhauserDeficiencyAnemiaVS)
// * insert CreateComorbidityitem(arthropathy, "ARTH", "Arthropathy", ElixhauserRheumatoidArthritisVS)
// * insert CreateComorbidityitem(bloodLossAnemia, "BLDLOSS", "Chronic Blood Loss Anemia", ElixhauserBloodLossAnemiaVS)
// * insert CreateComorbidityitem(cancerLeukemia, "CANCER_LEUK", "Leukemia", ElixhauserCancerLeukemiaVS)
// * insert CreateComorbidityitem(cancerLymphoma, "CANCER_LYMPH", "Lymphoma", ElixhauserCancerLymphomaVS)
// * insert CreateComorbidityitem(cancerMetastatic, "CANCER_METS" , "Metastatic Cancer", ElixhauserCancerMetastaticVS)
// * insert CreateComorbidityitem(cancerSolidInSitu, "CANCER_NSITU", "Solid tumor without metastasis\, in situ", ElixhauserCancerSolidTumorInSituVS)
// * insert CreateComorbidityitem(cancerSolidMalignant, "CANCER_SOLID", "Solid tumor without metastasis\, malignant", ElixhauserCancerSolidTumorMalignantVS)
// * insert CreateComorbidityitem(cerebrovascular, "CBVD", "Cerebrovascular disease", ElixhauserCerebrovascularDiseaseVS)
// * insert CreateComorbidityitem(congestiveHeartFailure, "CHF", "CongestiveHeartFailure", ElixhauserCongestiveHeartFailureVS)
// * insert CreateComorbidityitem(coagulopathy, "COAG", "Coagulation Deficiency", ElixhauserCoagulationDeficiencyVS)
// * insert CreateComorbidityitem(dementia, "DEMENTIA", "Dementia", ElixhauserDementiaVS)
// * insert CreateComorbidityitem(depression, "DEPRESS", "Depression", ElixhauserDepressionVS)
// * insert CreateComorbidityitem(diabetesComplicated, "DIAB_CX", "Diabetes with chronic complications", ElixhauserDiabetesComplicatedVS)
// * insert CreateComorbidityitem(diabetesUncomplicated, "DIAB_UNCX", "Diabetes without chronic complications", ElixhauserDiabetesUncomplicatedVS)
// * insert CreateComorbidityitem(drugAbuse, "DRUG_ABUSE", "Drug Abuse", ElixhauserDrugAbuseVS)
// * insert CreateComorbidityitem(hypertensionComplicated, "HTN_CX", "Hypertension\, Complicated", ElixhauserHypertensionComplicatedVS)
// * insert CreateComorbidityitem(hypertensionUncomplicated, "HTN_UNCX", "Hypertension\, Uncomplicated", ElixhauserHypertensionUncomplicatedVS)
//* insert CreateComorbidityitem(liverDiseaseMild, "LIVER_MLD", "Mild Liver Disease", ElixhauserLiverDiseaseMildVS)  *** UNCOMMENT THIS LINE--> ERROR
//* insert CreateComorbidityitem(liverDiseaseSevere, "LIVER_SEV", "Moderate to Severe Liver Disease", ElixhauserLiverDiseaseSevereVS)
//* insert CreateComorbidityitem(chronicPulmonaryDisease, "LUNG_CHRONIC", "Chronic pulmonary disease", ElixhauserChronicPulmonaryDiseaseVS)
//* insert CreateComorbidityitem(neurologicalMovement, "NEURO_MOVT", "Neurological disorders affecting movement", ElixhauserNeurologicalMovementDisorderVS)
* insert CreateComorbidityitem(neurologicalOther, "NEURO_OTH", "Other neurological disorders", ElixhauserOtherNeurologicalVS)
* insert CreateComorbidityitem(neurologicalSeizure, "NEURO_SEIZ", "Seizures and epilepsy", ElixhauserNeurologicalSeizureDisorderVS)
* insert CreateComorbidityitem(obesity, "OBESE", "Obesity", ElixhauserObesityVS)
* insert CreateComorbidityitem(paralysis, "PARALYSIS", "Paralysis", ElixhauserParalysisVS)
// * insert CreateComorbidityitem(peripheralVascularDisease, "PERIVASC", "Peripheral Vascular Disease", ElixhauserPeripheralVascularDiseaseVS)
// * insert CreateComorbidityitem(psychosis, "PSYCHOSIS", "Psychosis", ElixhauserPsychosisVS)
// * insert CreateComorbidityitem(pulmonaryCirculationDisorder, "PULMCIRC", "Pulmonary Circulation Disorders", ElixhauserPulmonaryCirculationDisorderVS)
// * insert CreateComorbidityitem(renalFailureModerate, "RENLFL_MOD", "Moderate Renal Failure", ElixhauserRenalFailureModerateVS)
// * insert CreateComorbidityitem(renalFailureSevere, "RENLFL_SEV", "Severe Renal Failure", ElixhauserRenalFailureSevereVS)
// * insert CreateComorbidityitem(hypothyroidism, "THYROID_HYPO", "Hypothyroidism", ElixhauserHypothyroidismVS)
// * insert CreateComorbidityitem(thyroidOther, "THYROID_OTH", "Other Thyroid Disease", ElixhauserOtherThyroidDisorderVS)
* insert CreateComorbidityitem(ulcer, "ULCER_PEPTIC", "Ulcer", ElixhauserUlcerVS)
// * insert CreateComorbidityitem(valvularDisease, "VALVE", "Valvular Disease", ElixhauserValvularDiseaseVS)
* insert CreateComorbidityitem(weightLoss, "WGHTLOSS","Weight Loss", ElixhauserWeightLossVS)
// Must Supports -- none inherited
//* item and status and code and subject and focus and effective[x] MS
//
//* value[x] only integer
//* value[x] MS
// No Must Suppports in the abstract profile
//* item and item.extension MS
