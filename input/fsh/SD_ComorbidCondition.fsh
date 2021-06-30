Profile: ComorbiditiesParent
Parent: Observation
Id: mcode-comorbidities-parent
Title: "Comorbidities Parent"
Description: "General structure for capturing comorbid conditions with respect to a primary ('index') condition. The specific set of comorbidities of interest in a given context are defined by slicing the components array. The same general approach can be applied to any comorbidity category checklist."
// * insert ReduceText
// * insert ReduceText(referenceRange)
// * insert ReduceText(component)
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
// No Must Suppports in the abstract profile
//* component and component.extension MS


Profile: ComorbiditiesElixhauser
Parent: ComorbiditiesParent
Id: mcode-comorbidities-elixhauser
Title: "Comorbidities Elixhauser"
Description: "Comorbid condition checklist and optional risk score, using Elixhauser comorbidity categories as defined by the Agency for Healthcare Research and Quality (AHRQ) Healthcare Cost and Utilization Project (H-CUP)."
// * insert ReduceText
* ^abstract = false
* code = LNC#78923-0 "Comorbid condition panel"
* focus only Reference(PrimaryCancerCondition)
* focus ^definition = "A reference to the cancer condition that is the context for the current list of comorbid conditions."
* component.value[x] from PresentAbsentUnknownVS (required)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "Slice based on the component.code pattern"
* insert CreateComorbidityComponent(aids)
* insert CreateComorbidityComponent(alcoholAbuse)
* insert CreateComorbidityComponent(deficiencyAnemia)
* insert CreateComorbidityComponent(arthropathy)
* insert CreateComorbidityComponent(bloodLossAnemia)
* insert CreateComorbidityComponent(cancerLeukemia)
* insert CreateComorbidityComponent(cancerLymphoma)
* insert CreateComorbidityComponent(cancerMetastatic)
* insert CreateComorbidityComponent(cancerSolidInSitu)
* insert CreateComorbidityComponent(cancerSolidMalignant)
* insert CreateComorbidityComponent(cerebrovascular)
* insert CreateComorbidityComponent(congestiveHeartFailure)
* insert CreateComorbidityComponent(coagulopathy)
* insert CreateComorbidityComponent(dementia)
* insert CreateComorbidityComponent(depression)
* insert CreateComorbidityComponent(diabetesUncomplicated)
* insert CreateComorbidityComponent(diabetesComplicated)
* insert CreateComorbidityComponent(drugAbuse)
* insert CreateComorbidityComponent(hypertensionComplicated)
* insert CreateComorbidityComponent(hypertensionUncomplicated)
* insert CreateComorbidityComponent(liverDiseaseMild)
* insert CreateComorbidityComponent(liverDiseaseSevere)
* insert CreateComorbidityComponent(chronicPulmonaryDisease)
* insert CreateComorbidityComponent(neurologicalMovement)
* insert CreateComorbidityComponent(neurologicalOther)
* insert CreateComorbidityComponent(neurologicalSeizure)
* insert CreateComorbidityComponent(obesity)
* insert CreateComorbidityComponent(paralysis)
* insert CreateComorbidityComponent(peripheralVascularDisease)
* insert CreateComorbidityComponent(psychosis)
* insert CreateComorbidityComponent(pulmonaryCirculationDisorder)
* insert CreateComorbidityComponent(renalFailureModerate)
* insert CreateComorbidityComponent(renalFailureSevere)
* insert CreateComorbidityComponent(hypothyroidism)
* insert CreateComorbidityComponent(thyroidOther)
* insert CreateComorbidityComponent(ulcer)
* insert CreateComorbidityComponent(valvularDisease)
* insert CreateComorbidityComponent(weightLoss)
// codes and definitions
* component[aids].code = COMORB#AIDS
* component[aids] ^short = "Acquired Immune Deficiency Syndrome"
* component[alcoholAbuse].code = COMORB#ALCOHOL
* component[alcoholAbuse] ^short = "Alcohol Abuse"
* component[deficiencyAnemia].code = COMORB#ANEMDF
* component[deficiencyAnemia] ^short = "DeficiencyAnemia"
* component[arthropathy].code = COMORB#ARTH
* component[arthropathy] ^short = "Arthropathy"
* component[bloodLossAnemia].code = COMORB#BLDLOSS
* component[bloodLossAnemia] ^short = "Chronic Blood Loss Anemia"
* component[cancerLeukemia].code = COMORB#CANCER_LEUK
* component[cancerLeukemia] ^short = "Leukemia"
* component[cancerLymphoma].code = COMORB#CANCER_LYMPH
* component[cancerLymphoma] ^short = "Lymphoma"
* component[cancerMetastatic].code = COMORB#CANCER_METS
* component[cancerMetastatic] ^short = "Metastatic Cancer"
* component[cancerSolidInSitu].code = COMORB#CANCER_NSITU
* component[cancerSolidInSitu] ^short = "Solid tumor without metastasis, in situ"
* component[cancerSolidMalignant].code = COMORB#CANCER_SOLID
* component[cancerSolidMalignant] ^short = "Solid tumor without metastasis, malignant"
* component[cerebrovascular].code = COMORB#CBVD
* component[cerebrovascular] ^short = "Cerebrovascular disease"
* component[congestiveHeartFailure].code = COMORB#CHF
* component[congestiveHeartFailure] ^short = "CongestiveHeartFailure"
* component[coagulopathy].code = COMORB#COAG
* component[coagulopathy] ^short = "Coagulation Deficiency"
* component[dementia].code = COMORB#DEMENTIA
* component[dementia] ^short = "Dementia"
* component[depression].code = COMORB#DEPRESS
* component[depression] ^short = "Depression"
* component[diabetesUncomplicated].code = COMORB#DIAB_CX
* component[diabetesUncomplicated] ^short = "Diabetes with chronic complications"
* component[diabetesComplicated].code = COMORB#DIAB_UNCX
* component[diabetesComplicated] ^short = "Diabetes without chronic complications"
* component[drugAbuse].code = COMORB#DRUG_ABUSE
* component[drugAbuse] ^short = "Drug Abuse"
* component[hypertensionComplicated].code = COMORB#HTN_CX
* component[hypertensionComplicated] ^short = "Hypertension, Complicated"
* component[hypertensionUncomplicated].code = COMORB#HTN_UNCX
* component[hypertensionUncomplicated] ^short = "Hypertension, Uncomplicated"
* component[liverDiseaseMild].code = COMORB#LIVER_MLD
* component[liverDiseaseMild] ^short = "Mild Liver Disease"
* component[liverDiseaseSevere].code = COMORB#LIVER_SEV
* component[liverDiseaseSevere] ^short = "Moderate to Severe Liver Disease"
* component[chronicPulmonaryDisease].code = COMORB#LUNG_CHRONIC
* component[chronicPulmonaryDisease] ^short = "Chronic pulmonary disease"
* component[neurologicalMovement].code = COMORB#NEURO_MOVT
* component[neurologicalMovement] ^short = "Neurological disorders affecting movement"
* component[neurologicalOther].code = COMORB#NEURO_OTH
* component[neurologicalOther] ^short = "Other neurological disorders"
* component[neurologicalSeizure].code = COMORB#NEURO_SEIZ
* component[neurologicalSeizure] ^short = "Seizures and epilepsy"
* component[obesity].code = COMORB#OBESE
* component[obesity] ^short = "Obesity"
* component[paralysis].code = COMORB#PARALYSIS
* component[paralysis] ^short = "Paralysis"
* component[peripheralVascularDisease].code = COMORB#PERIVASC
* component[peripheralVascularDisease] ^short = "Peripheral Vascular Disease"
* component[psychosis].code = COMORB#PSYCHOSIS
* component[psychosis] ^short = "Psychosis"
* component[pulmonaryCirculationDisorder].code = COMORB#PULMCIRC
* component[pulmonaryCirculationDisorder] ^short = "Pulmonary Circulation Disorders"
* component[renalFailureModerate].code = COMORB#RENLFL_MOD
* component[renalFailureModerate] ^short = "Moderate Renal Failure"
* component[renalFailureSevere].code = COMORB#RENLFL_SEV
* component[renalFailureSevere] ^short = "Severe Renal Failure"
* component[hypothyroidism].code = COMORB#THYROID_HYPO
* component[hypothyroidism] ^short = "Hypothyroidism"
* component[thyroidOther].code = COMORB#THYROID_OTH
* component[thyroidOther] ^short = "Other Thyroid Disease"
* component[ulcer].code = COMORB#ULCER_PEPTIC
* component[ulcer] ^short = "Ulcer"
* component[valvularDisease].code = COMORB#VALVE
* component[valvularDisease] ^short = "Valvular Disease"
* component[weightLoss].code = COMORB#WGHTLOSS
* component[weightLoss] ^short = "Weight Loss"
// value[x] constraints
* component[aids].extension[conditionCode].value[x] from ElixhauserAidsVS
* component[alcoholAbuse].extension[conditionCode].value[x] from ElixhauserAlcoholAbuseVS
* component[deficiencyAnemia].extension[conditionCode].value[x] from ElixhauserDeficiencyAnemiaVS
* component[arthropathy].extension[conditionCode].value[x] from ElixhauserRheumatoidArthritisVS
* component[bloodLossAnemia].extension[conditionCode].value[x] from ElixhauserBloodLossAnemiaVS
* component[cancerLeukemia].extension[conditionCode].value[x] from ElixhauserCancerLeukemiaVS
* component[cancerLymphoma].extension[conditionCode].value[x] from ElixhauserCancerLymphomaVS
* component[cancerMetastatic].extension[conditionCode].value[x] from ElixhauserCancerMetastaticVS
* component[cancerSolidInSitu].extension[conditionCode].value[x] from ElixhauserCancerSolidTumorInSituVS
* component[cancerSolidMalignant].extension[conditionCode].value[x] from ElixhauserCancerSolidTumorMalignantVS
* component[cerebrovascular].extension[conditionCode].value[x] from ElixhauserCerebrovascularDiseaseVS
* component[congestiveHeartFailure].extension[conditionCode].value[x] from ElixhauserCongestiveHeartFailureVS
* component[chronicPulmonaryDisease].extension[conditionCode].value[x] from ElixhauserChronicPulmonaryDiseaseVS
* component[coagulopathy].extension[conditionCode].value[x] from ElixhauserCoagulationDeficiencyVS
* component[dementia].extension[conditionCode].value[x] from ElixhauserDementiaVS
* component[depression].extension[conditionCode].value[x] from ElixhauserDepressionVS
* component[diabetesComplicated].extension[conditionCode].value[x] from ElixhauserDiabetesComplicatedVS
* component[diabetesUncomplicated].extension[conditionCode].value[x] from ElixhauserDiabetesUncomplicatedVS
* component[drugAbuse].extension[conditionCode].value[x] from ElixhauserDrugAbuseVS
* component[hypertensionComplicated].extension[conditionCode].value[x] from ElixhauserHypertensionComplicatedVS
* component[hypertensionUncomplicated].extension[conditionCode].value[x] from ElixhauserHypertensionUncomplicatedVS
* component[liverDiseaseMild].extension[conditionCode].value[x] from ElixhauserLiverDiseaseMildVS
* component[liverDiseaseSevere].extension[conditionCode].value[x] from ElixhauserLiverDiseaseSevereVS
* component[neurologicalMovement].extension[conditionCode].value[x] from ElixhauserNeurologicalMovementDisorderVS
* component[neurologicalOther].extension[conditionCode].value[x] from ElixhauserOtherNeurologicalVS
* component[neurologicalSeizure].extension[conditionCode].value[x] from ElixhauserNeurologicalSeizureDisorderVS
* component[obesity].extension[conditionCode].value[x] from ElixhauserObesityVS
* component[paralysis].extension[conditionCode].value[x] from ElixhauserParalysisVS
* component[peripheralVascularDisease].extension[conditionCode].value[x] from ElixhauserPeripheralVascularDiseaseVS
* component[psychosis].extension[conditionCode].value[x] from ElixhauserPsychosisVS
* component[pulmonaryCirculationDisorder].extension[conditionCode].value[x] from ElixhauserPulmonaryCirculationDisorderVS
* component[renalFailureModerate].extension[conditionCode].value[x] from ElixhauserRenalFailureModerateVS
* component[renalFailureSevere].extension[conditionCode].value[x] from ElixhauserRenalFailureSevereVS
* component[hypothyroidism].extension[conditionCode].value[x] from ElixhauserHypothyroidismVS
* component[thyroidOther].extension[conditionCode].value[x] from ElixhauserOtherThyroidDisorderVS
* component[ulcer].extension[conditionCode].value[x] from ElixhauserUlcerVS
* component[valvularDisease].extension[conditionCode].value[x] from ElixhauserValvularDiseaseVS
* component[weightLoss].extension[conditionCode].value[x] from ElixhauserWeightLossVS
// Must Supports -- none inherited
* component and status and code and subject and focus and effective[x] MS
// 
* value[x] only integer 
* value[x] MS 


