
RuleSet: CreateComorbidityitem(sliceName, code, short, vs)
* item contains {sliceName} 0..1 MS
* item[{sliceName}].linkId MS
* item[{sliceName}].answer MS
//* item[{sliceName}].dataAbsentReason MS
* item[{sliceName}].linkId = #{code}
* item[{sliceName}] ^short = {short}
//* item[{sliceName}].answer[conditioncode].value[x] from {vs} (required)
* item[{sliceName}].answer.value[x] only Reference(Condition) or Coding or boolean
* item[{sliceName}].answer.value[x] from {vs} (required)
* item[{sliceName}].answer.valueCoding ^short = "Condition Code"
* item[{sliceName}].answer.valueBoolean ^short = "Condition Present"
* item[{sliceName}].answer.valueReference ^short = "Condition Reference"

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
// * item.answer.valueCoding from PresentAbsentVS (required)
* item.answer ^definition = "item representing the presence or absence of the named comorbidity, with optional condition code(s) or reference to the actual condition(s)."
* item.modifierExtension 0..0
* item.linkId ^short = "Code representing the comorbidity category"
* item.linkId ^definition = "The code identifying category of comorbidity, for example, congestive heart failure or severe renal disease. The category typically represents a set of specific diagnosis codes."
* item ^slicing.discriminator.type = #pattern
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* insert CreateComorbidityitem(aids, "AIDS", "Acquired Immune Deficiency Syndrome", ElixhauserAidsVS)
* insert CreateComorbidityitem(alcoholAbuse, "ALCOHOL", "Alcohol Abuse", ElixhauserAlcoholAbuseVS)
* insert CreateComorbidityitem(deficiencyAnemia, "ANEMDF", "DeficiencyAnemia", ElixhauserDeficiencyAnemiaVS)
* insert CreateComorbidityitem(arthropathy, "ARTH", "Arthropathy", ElixhauserRheumatoidArthritisVS)
* insert CreateComorbidityitem(bloodLossAnemia, "BLDLOSS", "Chronic Blood Loss Anemia", ElixhauserBloodLossAnemiaVS)
* insert CreateComorbidityitem(cancerLeukemia, "CANCER_LEUK", "Leukemia", ElixhauserCancerLeukemiaVS)
* insert CreateComorbidityitem(cancerLymphoma, "CANCER_LYMPH", "Lymphoma", ElixhauserCancerLymphomaVS)
* insert CreateComorbidityitem(cancerMetastatic, "CANCER_METS" , "Metastatic Cancer", ElixhauserCancerMetastaticVS)
* insert CreateComorbidityitem(cancerSolidInSitu, "CANCER_NSITU", "Solid tumor without metastasis\, in situ", ElixhauserCancerSolidTumorInSituVS)
* insert CreateComorbidityitem(cancerSolidMalignant, "CANCER_SOLID", "Solid tumor without metastasis\, malignant", ElixhauserCancerSolidTumorMalignantVS)
* insert CreateComorbidityitem(cerebrovascular, "CBVD", "Cerebrovascular disease", ElixhauserCerebrovascularDiseaseVS)
* insert CreateComorbidityitem(congestiveHeartFailure, "CHF", "CongestiveHeartFailure", ElixhauserCongestiveHeartFailureVS)
* insert CreateComorbidityitem(coagulopathy, "COAG", "Coagulation Deficiency", ElixhauserCoagulationDeficiencyVS)
* insert CreateComorbidityitem(dementia, "DEMENTIA", "Dementia", ElixhauserDementiaVS)
* insert CreateComorbidityitem(depression, "DEPRESS", "Depression", ElixhauserDepressionVS)
* insert CreateComorbidityitem(diabetesComplicated, "DIAB_CX", "Diabetes with chronic complications", ElixhauserDiabetesComplicatedVS)
* insert CreateComorbidityitem(diabetesUncomplicated, "DIAB_UNCX", "Diabetes without chronic complications", ElixhauserDiabetesUncomplicatedVS)
* insert CreateComorbidityitem(drugAbuse, "DRUG_ABUSE", "Drug Abuse", ElixhauserDrugAbuseVS)
* insert CreateComorbidityitem(hypertensionComplicated, "HTN_CX", "Hypertension\, Complicated", ElixhauserHypertensionComplicatedVS)
* insert CreateComorbidityitem(hypertensionUncomplicated, "HTN_UNCX", "Hypertension\, Uncomplicated", ElixhauserHypertensionUncomplicatedVS)
* insert CreateComorbidityitem(liverDiseaseMild, "LIVER_MLD", "Mild Liver Disease", ElixhauserLiverDiseaseMildVS)  //*** UNCOMMENT THIS LINE--> ERROR
* insert CreateComorbidityitem(liverDiseaseSevere, "LIVER_SEV", "Moderate to Severe Liver Disease", ElixhauserLiverDiseaseSevereVS)
* insert CreateComorbidityitem(chronicPulmonaryDisease, "LUNG_CHRONIC", "Chronic pulmonary disease", ElixhauserChronicPulmonaryDiseaseVS)
* insert CreateComorbidityitem(neurologicalMovement, "NEURO_MOVT", "Neurological disorders affecting movement", ElixhauserNeurologicalMovementDisorderVS)
* insert CreateComorbidityitem(neurologicalOther, "NEURO_OTH", "Other neurological disorders", ElixhauserOtherNeurologicalVS)
* insert CreateComorbidityitem(neurologicalSeizure, "NEURO_SEIZ", "Seizures and epilepsy", ElixhauserNeurologicalSeizureDisorderVS)
* insert CreateComorbidityitem(obesity, "OBESE", "Obesity", ElixhauserObesityVS)
* insert CreateComorbidityitem(paralysis, "PARALYSIS", "Paralysis", ElixhauserParalysisVS)
* insert CreateComorbidityitem(peripheralVascularDisease, "PERIVASC", "Peripheral Vascular Disease", ElixhauserPeripheralVascularDiseaseVS)
* insert CreateComorbidityitem(psychosis, "PSYCHOSIS", "Psychosis", ElixhauserPsychosisVS)
* insert CreateComorbidityitem(pulmonaryCirculationDisorder, "PULMCIRC", "Pulmonary Circulation Disorders", ElixhauserPulmonaryCirculationDisorderVS)
* insert CreateComorbidityitem(renalFailureModerate, "RENLFL_MOD", "Moderate Renal Failure", ElixhauserRenalFailureModerateVS)
* insert CreateComorbidityitem(renalFailureSevere, "RENLFL_SEV", "Severe Renal Failure", ElixhauserRenalFailureSevereVS)
* insert CreateComorbidityitem(hypothyroidism, "THYROID_HYPO", "Hypothyroidism", ElixhauserHypothyroidismVS)
* insert CreateComorbidityitem(thyroidOther, "THYROID_OTH", "Other Thyroid Disease", ElixhauserOtherThyroidDisorderVS)
* insert CreateComorbidityitem(ulcer, "ULCER_PEPTIC", "Ulcer", ElixhauserUlcerVS)
* insert CreateComorbidityitem(valvularDisease, "VALVE", "Valvular Disease", ElixhauserValvularDiseaseVS)
* insert CreateComorbidityitem(weightLoss, "WGHTLOSS","Weight Loss", ElixhauserWeightLossVS)
// Must Supports -- none inherited
//* item and status and code and subject and focus and effective[x] MS
//
//* value[x] only integer
//* value[x] MS
// No Must Suppports in the abstract profile
//* item and item.extension MS
