Profile: ComorbiditiesParent
Parent: Observation
Id: comorbidities-parent
Title: "Comorbidities Parent"
Description: "General structure for capturing comorbid conditions with respect to a primary ('index') condition. The specific set of comorbidities of interest in a given context are defined by slicing the components array. The same general approach can be applied to any comorbidity category checklist."
* ^abstract = true
* focus only Reference(Condition)
* focus ^short = "The Index Condition"
* focus ^definition = "The comorbid conditions may be defined with respect to a specific 'index' condition. For example, the US Centers for Disease Control (CDC) has a list of comorbid conditions important to COVID-19. In this case, the focus would be COVID-19 and the comorbid condition categories would be those called out by CDC, namely obesity, renal disease, respiratory disease, etc."
* component.value[x] only CodeableConcept
* component.value[x] from PresentAbsentUnknownVS (required)
* component ^definition = "Component representing the presence or absence of the named comorbidity, with optional condition code(s) or reference to the actual condition(s)."
* component and component.extension MS
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
// No Must Suppports in the abstract profile


Profile: ComorbiditiesElixhauser
Parent: ComorbiditiesParent
Id: comorbidities-elixhauser
Title: "Elixhauser Comorbidities"
Description: "Comorbid condition checklist and optional risk score, using Elixhauser comorbidity categories as defined by the Agency for Healthcare Research and Quality (AHRQ) Healthcare Cost and Utilization Project (H-CUP). The Elixhauser Comorbidity Index is a method of categorizing comorbidities of patients based on the International Classification of Diseases (ICD) diagnosis codes found in administrative data, such as hospital abstracts data. Each comorbidity category is dichotomous -- it is either present or it is not. The Index can be used to predict hospital resource use and in-hospital mortality (see <https://pubmed.ncbi.nlm.nih.gov/9431328> for details)."
* ^abstract = false
* code = ElixhauserAHRQ_CS#ElixhauserAHRQ
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "Slice based on the component.code pattern"
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
    psychosis 0..1 and
    pulmonaryCirculationDisorder 0..1 and
    renalFailureModerate 0..1 and
    renalFailureSevere 0..1 and
    hypothyroidism 0..1 and
    thyroidOther 0..1 and
    ulcer 0..1 and
    valvularDisease 0..1 and
    weightLoss 0..1
// codes and definitions
* component[aids].code = ElixhauserAHRQ_CS#AIDS
* component[aids] ^short = "Acquired Immune Deficiency Syndrome"
* component[alcoholAbuse].code = ElixhauserAHRQ_CS#ALCOHOL
* component[alcoholAbuse] ^short = "Alcohol Abuse"
* component[deficiencyAnemia].code = ElixhauserAHRQ_CS#ANEMDF
* component[deficiencyAnemia] ^short = "DeficiencyAnemia"
* component[arthropathy].code = ElixhauserAHRQ_CS#ARTH
* component[arthropathy] ^short = "Arthropathy"
* component[bloodLossAnemia].code = ElixhauserAHRQ_CS#BLDLOSS
* component[bloodLossAnemia] ^short = "Chronic Blood Loss Anemia"
* component[cancerLeukemia].code = ElixhauserAHRQ_CS#CANCER_LEUK
* component[cancerLeukemia] ^short = "Leukemia"
* component[cancerLymphoma].code = ElixhauserAHRQ_CS#CANCER_LYMPH
* component[cancerLymphoma] ^short = "Lymphoma"
* component[cancerMetastatic].code = ElixhauserAHRQ_CS#CANCER_METS
* component[cancerMetastatic] ^short = "Metastatic Cancer"
* component[cancerSolidInSitu].code = ElixhauserAHRQ_CS#CANCER_NSITU
* component[cancerSolidInSitu] ^short = "Solid tumor without metastasis, in situ"
* component[cancerSolidMalignant].code = ElixhauserAHRQ_CS#CANCER_SOLID
* component[cancerSolidMalignant] ^short = "Solid tumor without metastasis, malignant"
* component[cerebrovascular].code = ElixhauserAHRQ_CS#CBVD
* component[cerebrovascular] ^short = "Cerebrovascular disease"
* component[congestiveHeartFailure].code = ElixhauserAHRQ_CS#CHF
* component[congestiveHeartFailure] ^short = "CongestiveHeartFailure"
* component[coagulopathy].code = ElixhauserAHRQ_CS#COAG
* component[coagulopathy] ^short = "Coagulation Deficiency"
* component[dementia].code = ElixhauserAHRQ_CS#DEMENTIA
* component[dementia] ^short = "Dementia"
* component[depression].code = ElixhauserAHRQ_CS#DEPRESS
* component[depression] ^short = "Depression"
* component[diabetesUncomplicated].code = ElixhauserAHRQ_CS#DIAB_CX
* component[diabetesUncomplicated] ^short = "Diabetes with chronic complications"
* component[diabetesComplicated].code = ElixhauserAHRQ_CS#DIAB_UNCX
* component[diabetesComplicated] ^short = "Diabetes without chronic complications"
* component[drugAbuse].code = ElixhauserAHRQ_CS#DRUG_ABUSE
* component[drugAbuse] ^short = "Drug Abuse"
* component[hypertensionComplicated].code = ElixhauserAHRQ_CS#HTN_CX
* component[hypertensionComplicated] ^short = "Hypertension, Complicated"
* component[hypertensionUncomplicated].code = ElixhauserAHRQ_CS#HTN_UNCX
* component[hypertensionUncomplicated] ^short = "Hypertension, Uncomplicated"
* component[liverDiseaseMild].code = ElixhauserAHRQ_CS#LIVER_MLD
* component[liverDiseaseMild] ^short = "Mild Liver Disease"
* component[liverDiseaseSevere].code = ElixhauserAHRQ_CS#LIVER_SEV
* component[liverDiseaseSevere] ^short = "Moderate to Severe Liver Disease"
* component[chronicPulmonaryDisease].code = ElixhauserAHRQ_CS#LUNG_CHRONIC
* component[chronicPulmonaryDisease] ^short = "Chronic pulmonary disease"
* component[neurologicalMovement].code = ElixhauserAHRQ_CS#NEURO_MOVT
* component[neurologicalMovement] ^short = "Neurological disorders affecting movement"
* component[neurologicalOther].code = ElixhauserAHRQ_CS#NEURO_OTH
* component[neurologicalOther] ^short = "Other neurological disorders"
* component[neurologicalSeizure].code = ElixhauserAHRQ_CS#NEURO_SEIZ
* component[neurologicalSeizure] ^short = "Seizures and epilepsy"
* component[obesity].code = ElixhauserAHRQ_CS#OBESE
* component[obesity] ^short = "Obesity"
* component[paralysis].code = ElixhauserAHRQ_CS#PARALYSIS
* component[paralysis] ^short = "Paralysis"
* component[peripheralVascularDisease].code = ElixhauserAHRQ_CS#PERIVASC
* component[peripheralVascularDisease] ^short = "Peripheral Vascular Disease"
* component[psychosis].code = ElixhauserAHRQ_CS#PSYCHOSIS
* component[psychosis] ^short = "Psychosis"
* component[pulmonaryCirculationDisorder].code = ElixhauserAHRQ_CS#PULMCIRC
* component[pulmonaryCirculationDisorder] ^short = "Pulmonary Circulation Disorders"
* component[renalFailureModerate].code = ElixhauserAHRQ_CS#RENLFL_MOD
* component[renalFailureModerate] ^short = "Moderate Renal Failure"
* component[renalFailureSevere].code = ElixhauserAHRQ_CS#RENLFL_SEV
* component[renalFailureSevere] ^short = "Severe Renal Failure"
* component[hypothyroidism].code = ElixhauserAHRQ_CS#THYROID_HYPO
* component[hypothyroidism] ^short = "Hypothyroidism"
* component[thyroidOther].code = ElixhauserAHRQ_CS#THYROID_OTH
* component[thyroidOther] ^short = "Other Thyroid Disease"
* component[ulcer].code = ElixhauserAHRQ_CS#ULCER_PEPTIC
* component[ulcer] ^short = "Ulcer"
* component[valvularDisease].code = ElixhauserAHRQ_CS#VALVE
* component[valvularDisease] ^short = "Valvular Disease"
* component[weightLoss].code = ElixhauserAHRQ_CS#WGHTLOSS
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
// MS flags omitted since this profile is not associated with mCODE use cases

Profile: CancerRelatedComorbiditiesElixhauser
Parent: ComorbiditiesElixhauser
Id: mcode-cancer-related-comorbidities-elixhauser
Title: "Cancer-Related Elixhauser Comorbidities"
Description: "Comorbid conditions using the Elixhauser comorbidity categories, from the perspective of the primary cancer condition." 
* focus only Reference(PrimaryCancerCondition)
* focus ^definition = "A reference to the cancer condition that is the context for the current list of comorbid conditions."
* insert NotUsed(value[x])
* insert NotUsed(component[cancerLeukemia])
* insert NotUsed(component[cancerLymphoma])
* insert NotUsed(component[cancerMetastatic])
* insert NotUsed(component[cancerSolidInSitu])
* insert NotUsed(component[cancerSolidMalignant])
// Must Supports -- none are inherited
* component and status and code and subject and focus and effective[x] MS
* insert ComorbidityMustSupports(aids)
* insert ComorbidityMustSupports(alcoholAbuse)
* insert ComorbidityMustSupports(deficiencyAnemia)
* insert ComorbidityMustSupports(arthropathy)
* insert ComorbidityMustSupports(bloodLossAnemia)
* insert ComorbidityMustSupports(cerebrovascular)
* insert ComorbidityMustSupports(congestiveHeartFailure)
* insert ComorbidityMustSupports(coagulopathy)
* insert ComorbidityMustSupports(dementia)
* insert ComorbidityMustSupports(depression)
* insert ComorbidityMustSupports(diabetesUncomplicated)
* insert ComorbidityMustSupports(diabetesComplicated)
* insert ComorbidityMustSupports(drugAbuse)
* insert ComorbidityMustSupports(hypertensionComplicated)
* insert ComorbidityMustSupports(hypertensionUncomplicated)
* insert ComorbidityMustSupports(liverDiseaseMild)
* insert ComorbidityMustSupports(liverDiseaseSevere)
* insert ComorbidityMustSupports(chronicPulmonaryDisease)
* insert ComorbidityMustSupports(neurologicalMovement)
* insert ComorbidityMustSupports(neurologicalOther)
* insert ComorbidityMustSupports(neurologicalSeizure)
* insert ComorbidityMustSupports(obesity)
* insert ComorbidityMustSupports(paralysis)
* insert ComorbidityMustSupports(peripheralVascularDisease)
* insert ComorbidityMustSupports(psychosis)
* insert ComorbidityMustSupports(pulmonaryCirculationDisorder)
* insert ComorbidityMustSupports(renalFailureModerate)
* insert ComorbidityMustSupports(renalFailureSevere)
* insert ComorbidityMustSupports(hypothyroidism)
* insert ComorbidityMustSupports(thyroidOther)
* insert ComorbidityMustSupports(ulcer)
* insert ComorbidityMustSupports(valvularDisease)
* insert ComorbidityMustSupports(weightLoss)

// SCT#762713009 "Charlson Comorbidity Index (assessment scale)"

RuleSet: ComorbidityMustSupports(sliceName)
* component[{sliceName}] MS
* component[{sliceName}].code MS
* component[{sliceName}].value[x] MS
* component[{sliceName}].dataAbsentReason MS
* component[{sliceName}].extension MS
* component[{sliceName}].extension[conditionCode] MS
* component[{sliceName}].extension[conditionReference] MS
