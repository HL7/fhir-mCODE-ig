Profile: ComorbiditiesParent
Parent: Observation
Id: mcode-comorbidities-parent
Title: "Comorbidities Parent"
Description: "General structure for capturing comorbid conditions with respect to a primary condition. The specific set of comorbidities of interest in a given context are defined by slicing the components array."
* ^abstract = true
* focus only Reference(Condition)  // the index condition, i.e. the context of the assessment of comorbidities
* focus ^short = "Index Condition"
* focus ^definition = "The comorbid conditions may be defined with respect to a particular condition. For example, the CDC has a list of comorbid conditions important to COVID-19. In this case, the focus would be COVID-19 and the comorbid condition categories would be those called out by CDC, namely obesity, renal disease, respiratory disease, etc."
* component.value[x] only CodeableConcept
* component.value[x] from PresentAbsentUnknownVS (required)
* component ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component.extension contains 
     ComorbidConditionCode named conditionCode 0..* and
     ComorbidConditionReference named conditionReference 0..*

// SCT#762713009 "Charlson Comorbidity Index (assessment scale)"

Profile: ComorditiesElixhauser
Parent: ComorbiditiesParent
Id: comorbidities-elixhauser
Description: "Comorbid condition checklist and optional risk score, using Elixhauser comorbidity categories. The Elixhauser Comorbidity Index is a method of categorizing comorbidities of patients based on the International Classification of Diseases (ICD) diagnosis codes found in administrative data, such as hospital abstracts data. Each comorbidity category is dichotomous -- it is either present or it is not. The Index can be used to predict hospital resource use and in-hospital mortality (Elixhauser et al., 1998)."
* ^abstract = false
* code = LNC#78923-0  // Comorbid condition panel -- not specific to Elixhauser
* insert ObservationComponentSlicingRules
// slices
* component contains 
    aids 0..1 and
    alcoholAbuse 0..1 and
    deficiencyAnemia 0..1 and
    arthropathy 0..1 and
    bloodLossAnemia 0..1 and
    cancerLeukemia 0..1 and
    cancerLymphoma 0..1 and
    cancerMetastatic 0..1 and
    cancerSolidInSitu 0..1 and
    cancerSolidMalignant 0..1 and
    cerebrovascular 0..1 and
    congestiveHeartFailure 0..1 and
    coagulopathy 0..1 and
    dementia 0..1 and
    depression 0..1 and
    diabetesComplicated 0..1 and
    diabetesUncomplicated 0..1 and
    drugAbuse 0..1 and
    hypertensionComplicated 0..1 and
    hypertensionUncomplicated 0..1 and
    liverDiseaseMild 0..1 and
    liverDiseaseSevere 0..1 and
    chronicPulmonaryDisease 0..1 and
    neurologicalMovement 0..1 and
    neurologicalOther 0..1 and
    neurologicalSeizure 0..1 and
    obesity 0..1 and
    paralysis 0..1 and
    peripheralVascularDisease 0..1 and
    psychoses 0..1 and
    pulmonaryCirculationDisorders 0..1 and
    renalFailureModerate 0..1 and
    renalFailureSevere 0..1 and
    hypothyroidism 0..1 and
    thyroidOther 0..1 and
    ulcer 0..1 and
    valvularDisease 0..1 and
    weightLoss 0..1
// codes and definitions
* component[aids].code = ElixhauserCategoryCS#AIDS
* component[aids] ^short = "Acquired Immune Deficiency Syndrome"
* component[alcoholAbuse].code = ElixhauserCategoryCS#ALCOHOL
* component[alcoholAbuse] ^short = "Alcohol Abuse"
* component[deficiencyAnemia].code = ElixhauserCategoryCS#ANEMDF
* component[deficiencyAnemia] ^short = "DeficiencyAnemia"
* component[arthropathy].code = ElixhauserCategoryCS#ARTH
* component[arthropathy] ^short = "Arthropathy"
* component[bloodLossAnemia].code = ElixhauserCategoryCS#BLDLOSS
* component[bloodLossAnemia] ^short = "Chronic Blood Loss Anemia"
* component[cancerLeukemia].code = ElixhauserCategoryCS#CANCER_LEUK
* component[cancerLeukemia] ^short = "Leukemia"
* component[cancerLymphoma].code = ElixhauserCategoryCS#CANCER_LYMPH
* component[cancerLymphoma] ^short = "Lymphoma"
* component[cancerMetastatic].code = ElixhauserCategoryCS#CANCER_METS
* component[cancerMetastatic] ^short = "Metastatic Cancer"
* component[cancerSolidInSitu].code = ElixhauserCategoryCS#CANCER_NSITU
* component[cancerSolidInSitu] ^short = "Solid tumor without metastasis, in situ"
* component[cancerSolidMalignant].code = ElixhauserCategoryCS#CANCER_SOLID
* component[cancerSolidMalignant] ^short = "Solid tumor without metastasis, malignant"
* component[cerebrovascular].code = ElixhauserCategoryCS#CBVD
* component[cerebrovascular] ^short = "Cerebrovascular disease"
* component[congestiveHeartFailure].code = ElixhauserCategoryCS#CHF
* component[congestiveHeartFailure] ^short = "CongestiveHeartFailure"
* component[coagulopathy].code = ElixhauserCategoryCS#COAG
* component[coagulopathy] ^short = "Coagulation Deficiency"
* component[dementia].code = ElixhauserCategoryCS#DEMENTIA
* component[dementia] ^short = "Dementia"
* component[depression].code = ElixhauserCategoryCS#DEPRESS
* component[depression] ^short = "Depression"
* component[diabetesUncomplicated].code = ElixhauserCategoryCS#DIAB_CX
* component[diabetesUncomplicated] ^short = "Diabetes with chronic complications"
* component[diabetesComplicated].code = ElixhauserCategoryCS#DIAB_UNCX
* component[diabetesComplicated] ^short = "Diabetes without chronic complications"
* component[drugAbuse].code = ElixhauserCategoryCS#DRUG_ABUSE
* component[drugAbuse] ^short = "Drug Abuse"
* component[hypertensionComplicated].code = ElixhauserCategoryCS#HTN_CX
* component[hypertensionComplicated] ^short = "Hypertension, Complicated"
* component[hypertensionUncomplicated].code = ElixhauserCategoryCS#HTN_UNCX
* component[hypertensionUncomplicated] ^short = "Hypertension, Uncomplicated"
* component[liverDiseaseMild].code = ElixhauserCategoryCS#LIVER_MLD
* component[liverDiseaseMild] ^short = "Mild Liver Disease"
* component[liverDiseaseSevere].code = ElixhauserCategoryCS#LIVER_SEV
* component[liverDiseaseSevere] ^short = "Moderate to Severe Liver Disease"
* component[chronicPulmonaryDisease].code = ElixhauserCategoryCS#LUNG_CHRONIC
* component[chronicPulmonaryDisease] ^short = "Chronic pulmonary disease"
* component[neurologicalMovement].code = ElixhauserCategoryCS#NEURO_MOVT
* component[neurologicalMovement] ^short = "Neurological disorders affecting movement"
* component[neurologicalOther].code = ElixhauserCategoryCS#NEURO_OTH
* component[neurologicalOther] ^short = "Other neurological disorders"
* component[neurologicalSeizure].code = ElixhauserCategoryCS#NEURO_SEIZ
* component[neurologicalSeizure] ^short = "Seizures and epilepsy"
* component[obesity].code = ElixhauserCategoryCS#OBESE
* component[obesity] ^short = "Obesity"
* component[paralysis].code = ElixhauserCategoryCS#PARALYSIS
* component[paralysis] ^short = "Paralysis"
* component[peripheralVascularDisease].code = ElixhauserCategoryCS#PERIVASC
* component[peripheralVascularDisease] ^short = "Peripheral Vascular Disease"
* component[psychoses].code = ElixhauserCategoryCS#PSYCH
* component[psychoses] ^short = "Psychoses"
* component[pulmonaryCirculationDisorders].code = ElixhauserCategoryCS#PULMCIRC
* component[pulmonaryCirculationDisorders] ^short = "Pulmonary Circulation Disorders"
* component[renalFailureModerate].code = ElixhauserCategoryCS#RENLFL_MOD
* component[renalFailureModerate] ^short = "Moderate Renal Failure"
* component[renalFailureSevere].code = ElixhauserCategoryCS#RENLFL_SEV
* component[renalFailureSevere] ^short = "Severe Renal Failure"
* component[hypothyroidism].code = ElixhauserCategoryCS#THYROID_HYPO
* component[hypothyroidism] ^short = "Hypothyroidism"
* component[thyroidOther].code = ElixhauserCategoryCS#THYROID_OTHER
* component[thyroidOther] ^short = "Other Thyroid Disease"
* component[ulcer].code = ElixhauserCategoryCS#ULCER_PEPTIC
* component[ulcer] ^short = "Ulcer"
* component[valvularDisease].code = ElixhauserCategoryCS#VALVE
* component[valvularDisease] ^short = "Valvular Disease"
* component[weightLoss].code = ElixhauserCategoryCS#WGHTLOSS
* component[weightLoss] ^short = "Weight Loss"


// value[x] constraints
* component[aids].extension[conditionCode].value[x] from ElixhauserAidsVS (extensible)
* component[alcoholAbuse].extension[conditionCode].value[x] from ElixhauserAlcoholAbuseVS (extensible)
* component[deficiencyAnemia].extension[conditionCode].value[x] from ElixhauserDeficiencyAnemiaVS (extensible)
* component[arthropathy].extension[conditionCode].value[x] from ElixhauserRheumatoidArthritisVS (extensible)
* component[bloodLossAnemia].extension[conditionCode].value[x] from ElixhauserBloodLossAnemiaVS (extensible)
* component[cancerLeukemia].extension[conditionCode].value[x] from ElixhauserCancerLeukemiaVS (extensible)
* component[cancerLymphoma].extension[conditionCode].value[x] from ElixhauserCancerLymphomaVS (extensible)
* component[cancerMetastatic].extension[conditionCode].value[x] from ElixhauserCancerMetastaticVS (extensible)
* component[cancerSolidInSitu].extension[conditionCode].value[x] from ElixhauserCancerSolidTumorInSituVS (extensible)
* component[cancerSolidMalignant].extension[conditionCode].value[x] from ElixhauserCancerSolidTumorMalignantVS (extensible)
* component[cerebrovascular].extension[conditionCode].value[x] from ElixhauserCerebrovascularDiseaseVS (extensible)
* component[congestiveHeartFailure].extension[conditionCode].value[x] from ElixhauserCongestiveHeartFailureVS (extensible)
* component[chronicPulmonaryDisease].extension[conditionCode].value[x] from ElixhauserChronicPulmonaryDiseaseVS (extensible)
* component[coagulopathy].extension[conditionCode].value[x] from ElixhauserCoagulationDeficiencyVS (extensible)
* component[dementia].extension[conditionCode].value[x] from ElixhauserDementiaVS (extensible)
* component[depression].extension[conditionCode].value[x] from ElixhauserDepressionVS (extensible)
* component[diabetesComplicated].extension[conditionCode].value[x] from ElixhauserDiabetesComplicatedVS (extensible)
* component[diabetesUncomplicated].extension[conditionCode].value[x] from ElixhauserDiabetesUncomplicatedVS (extensible)
* component[drugAbuse].extension[conditionCode].value[x] from ElixhauserDrugAbuseVS (extensible)
* component[hypertensionComplicated].extension[conditionCode].value[x] from ElixhauserHypertensionComplicatedVS (extensible)
* component[hypertensionUncomplicated].extension[conditionCode].value[x] from ElixhauserHypertensionUncomplicatedVS (extensible)
* component[liverDiseaseMild].extension[conditionCode].value[x] from ElixhauserLiverDiseaseMildVS (extensible)
* component[liverDiseaseSevere].extension[conditionCode].value[x] from ElixhauserLiverDiseaseSevereVS (extensible)
* component[neurologicalMovement].extension[conditionCode].value[x] from ElixhauserNeurologicalMovementDisorderVS (extensible)
* component[neurologicalOther].extension[conditionCode].value[x] from ElixhauserOtherNeurologicalVS (extensible)
* component[neurologicalSeizure].extension[conditionCode].value[x] from ElixhauserNeurologicalSeizureDisorderVS (extensible)
* component[obesity].extension[conditionCode].value[x] from ElixhauserObesityVS (extensible)
* component[paralysis].extension[conditionCode].value[x] from ElixhauserParalysisVS (extensible)
* component[peripheralVascularDisease].extension[conditionCode].value[x] from ElixhauserPeripheralVascularDiseaseVS (extensible)
* component[psychoses].extension[conditionCode].value[x] from ElixhauserPsychosesVS (extensible)
* component[pulmonaryCirculationDisorders].extension[conditionCode].value[x] from ElixhauserPulmonaryCirculationDisordersVS (extensible)
* component[renalFailureModerate].extension[conditionCode].value[x] from ElixhauserRenalFailureModerateVS (extensible)
* component[renalFailureSevere].extension[conditionCode].value[x] from ElixhauserRenalFailureSevereVS (extensible)
* component[hypothyroidism].extension[conditionCode].value[x] from ElixhauserHypothyroidismVS (extensible)
* component[thyroidOther].extension[conditionCode].value[x] from ElixhauserOtherThyroidDisorderVS (extensible)
* component[ulcer].extension[conditionCode].value[x] from ElixhauserUlcerVS (extensible)
* component[valvularDisease].extension[conditionCode].value[x] from ElixhauserValvularDiseaseVS (extensible)
* component[weightLoss].extension[conditionCode].value[x] from ElixhauserWeightLossVS (extensible)

Profile: CancerRelatedComorbidities
Parent: ComorditiesElixhauser
Id: mcode-cancer-related-comorbidities
Title: "Cancer-Related Comorbidities"
Description: "Comorbid condition checklist and optional risk score, using Elixhauser comorbidity categories. The comorbidities are cancer-related by virtue of restricting the index condition to a PrimaryCancerCondition."
* focus only Reference(PrimaryCancerCondition)
* focus and component and component.extension[conditionReference] and component.extension[conditionCode] and component.extension[conditionReference] MS
