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
* component.extension contains 
     ComorbidConditionCode named conditionCode 0..* and
     ComorbidConditionReference named conditionReference 0..*


Profile: CancerRelatedComorbidities
Parent: ComorbiditiesParent
Id: mcode-cancer-related-comorbidities
Title: "Cancer-Related Comorbidities"
Description: "Comorbid conditions for a cancer condition, using Elixhauser comorbidity categories."
* ^abstract = false
* focus only Reference(PrimaryCancerCondition)
* code = LNC#78923-0  // Comorbid condition panel
* focus and component and component.extension[conditionReference] and component.extension[conditionCode] and component.extension[conditionReference] MS
* insert ObservationComponentSlicingRules
* component contains 
    alcoholAbuse 0..1 and
    cardiacArrhythmia 0..1 and
    deficiencyAnemia 0..1 and
    rheumatoidArthritis 0..1 and
    bloodLossAnemia 0..1 and
    congestiveHeartFailure 0..1 and
    chronicPulmonaryDisease 0..1 and
    coagulationDeficiency 0..1 and
    depression 0..1 and
    diabetesUncomplicated 0..1 and
    diabetesComplicated 0..1 and
    drugAbuse 0..1 and
    hIVAIDS 0..1 and
    hypertensionUncomplicated 0..1 and
    hypertensionComplicated 0..1 and
    hypothyroidism 0..1 and
    liverDisease 0..1 and
    fluidElectrolyteDisorders 0..1 and
    neurological 0..1 and
    obesity 0..1 and
    paralysis 0..1 and
    peripheralVascularDisease 0..1 and
    psychoses 0..1 and
    pulmonaryCirculationDisorders 0..1 and
    renalFailure 0..1 and
    ulcer 0..1 and
    valvularDisease 0..1 and
    weightLoss 0..1
* component[alcoholAbuse].code = ElixhauserCategoryCS#ALCOHOL
* component[alcoholAbuse] ^short = "Alcohol Abuse Comorbidity"
* component[alcoholAbuse] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[cardiacArrhythmia].code = ElixhauserCategoryCS#ARRHYTH
* component[cardiacArrhythmia] ^short = "Cardiac Arrhythmia Comorbidity"
* component[cardiacArrhythmia] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[deficiencyAnemia].code = ElixhauserCategoryCS#ANEMDEF
* component[deficiencyAnemia] ^short = "DeficiencyAnemia Comorbidity"
* component[deficiencyAnemia] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[rheumatoidArthritis].code = ElixhauserCategoryCS#ARTH
* component[rheumatoidArthritis] ^short = "Rheumatoid Arthritis Comorbidity"
* component[rheumatoidArthritis] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[bloodLossAnemia].code = ElixhauserCategoryCS#BLDLOSS
* component[bloodLossAnemia] ^short = "Blood Loss Anemia Comorbidity"
* component[bloodLossAnemia] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[congestiveHeartFailure].code = ElixhauserCategoryCS#CHF
* component[congestiveHeartFailure] ^short = "CongestiveHeartFailure Comorbidity"
* component[congestiveHeartFailure] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[chronicPulmonaryDisease].code = ElixhauserCategoryCS#CHRNLUNG
* component[chronicPulmonaryDisease] ^short = "ChronicPulmonaryDisease Comorbidity"
* component[chronicPulmonaryDisease] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[coagulationDeficiency].code = ElixhauserCategoryCS#COAG
* component[coagulationDeficiency] ^short = "Coagulation Deficiency Comorbidity"
* component[coagulationDeficiency] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[depression].code = ElixhauserCategoryCS#DEPRESS
* component[depression] ^short = "Depression Comorbidity"
* component[depression] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[diabetesUncomplicated].code = ElixhauserCategoryCS#DM
* component[diabetesUncomplicated] ^short = "Diabetes Uncomplicated Comorbidity"
* component[diabetesUncomplicated] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[diabetesComplicated].code = ElixhauserCategoryCS#DMCX
* component[diabetesComplicated] ^short = "Diabetes Complicated Comorbidity"
* component[diabetesComplicated] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[drugAbuse].code = ElixhauserCategoryCS#DRUG
* component[drugAbuse] ^short = "Drug Abuse Comorbidity"
* component[drugAbuse] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[hIVAIDS].code = ElixhauserCategoryCS#HIV
* component[hIVAIDS] ^short = "HIV-AIDS Comorbidity"
* component[hIVAIDS] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[hypertensionUncomplicated].code = ElixhauserCategoryCS#HTN
* component[hypertensionUncomplicated] ^short = "Hypertension Uncomplicated Comorbidity"
* component[hypertensionUncomplicated] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[hypertensionComplicated].code = ElixhauserCategoryCS#HTNCX
* component[hypertensionComplicated] ^short = "Hypertension Complicated Comorbidity"
* component[hypertensionComplicated] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[hypothyroidism].code = ElixhauserCategoryCS#HYPOTHY
* component[hypothyroidism] ^short = "Hypothyroidism Comorbidity"
* component[hypothyroidism] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[liverDisease].code = ElixhauserCategoryCS#LIVER
* component[liverDisease] ^short = "Liver Disease Comorbidity"
* component[liverDisease] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[fluidElectrolyteDisorders].code = ElixhauserCategoryCS#LYTES
* component[fluidElectrolyteDisorders] ^short = "Fluid Electrolyte Disorders Comorbidity"
* component[fluidElectrolyteDisorders] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[neurological].code = ElixhauserCategoryCS#NEURO
* component[neurological] ^short = "Neurological Comorbidity"
* component[neurological] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[obesity].code = ElixhauserCategoryCS#OBESE
* component[obesity] ^short = "Obesity Comorbidity"
* component[obesity] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[paralysis].code = ElixhauserCategoryCS#PARA
* component[paralysis] ^short = "Paralysis Comorbidity"
* component[paralysis] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[peripheralVascularDisease].code = ElixhauserCategoryCS#PERIVASC
* component[peripheralVascularDisease] ^short = "Peripheral Vascular Disease Comorbidity"
* component[peripheralVascularDisease] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[psychoses].code = ElixhauserCategoryCS#PSYCH
* component[psychoses] ^short = "Psychoses Comorbidity"
* component[psychoses] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[pulmonaryCirculationDisorders].code = ElixhauserCategoryCS#PULMCIRC
* component[pulmonaryCirculationDisorders] ^short = "Pulmonary Circulation Disorders Comorbidity"
* component[pulmonaryCirculationDisorders] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[renalFailure].code = ElixhauserCategoryCS#RENLFAIL
* component[renalFailure] ^short = "Renal Failure Comorbidity"
* component[renalFailure] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[ulcer].code = ElixhauserCategoryCS#ULCER
* component[ulcer] ^short = "Ulcer Comorbidity"
* component[ulcer] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[valvularDisease].code = ElixhauserCategoryCS#VALVE
* component[valvularDisease] ^short = "Valvular Disease Comorbidity"
* component[valvularDisease] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."
* component[weightLoss].code = ElixhauserCategoryCS#WGHTLOSS
* component[weightLoss] ^short = "Weight Loss Comorbidity"
* component[weightLoss] ^definition = "Component representing the presence or absence of the named comorbidity with optional condition code(s) or reference to the actual condition(s)."

* component[alcoholAbuse].extension[conditionCode].value[x] from ElixhauserAlcoholAbuseVS (extensible)
* component[cardiacArrhythmia].extension[conditionCode].value[x] from ElixhauserCardiacArrhythmiaVS (extensible)
* component[deficiencyAnemia].extension[conditionCode].value[x] from ElixhauserDeficiencyAnemiaVS (extensible)
* component[rheumatoidArthritis].extension[conditionCode].value[x] from ElixhauserRheumatoidArthritisVS (extensible)
* component[bloodLossAnemia].extension[conditionCode].value[x] from ElixhauserBloodLossAnemiaVS (extensible)
* component[congestiveHeartFailure].extension[conditionCode].value[x] from ElixhauserCongestiveHeartFailureVS (extensible)
* component[chronicPulmonaryDisease].extension[conditionCode].value[x] from ElixhauserChronicPulmonaryDiseaseVS (extensible)
* component[coagulationDeficiency].extension[conditionCode].value[x] from ElixhauserCoagulationDeficiencyVS (extensible)
* component[depression].extension[conditionCode].value[x] from ElixhauserDepressionVS (extensible)
* component[diabetesUncomplicated].extension[conditionCode].value[x] from ElixhauserDiabetesUncomplicatedVS (extensible)
* component[diabetesComplicated].extension[conditionCode].value[x] from ElixhauserDiabetesComplicatedVS (extensible)
* component[drugAbuse].extension[conditionCode].value[x] from ElixhauserDrugAbuseVS (extensible)
* component[hIVAIDS].extension[conditionCode].value[x] from ElixhauserHIVAIDSVS (extensible)
* component[hypertensionUncomplicated].extension[conditionCode].value[x] from ElixhauserHypertensionUncomplicatedVS (extensible)
* component[hypertensionComplicated].extension[conditionCode].value[x] from ElixhauserHypertensionComplicatedVS (extensible)
* component[hypothyroidism].extension[conditionCode].value[x] from ElixhauserHypothyroidismVS (extensible)
* component[liverDisease].extension[conditionCode].value[x] from ElixhauserLiverDiseaseVS (extensible)
* component[fluidElectrolyteDisorders].extension[conditionCode].value[x] from ElixhauserFluidElectrolyteDisordersVS (extensible)
* component[neurological].extension[conditionCode].value[x] from ElixhauserOtherNeurologicalVS (extensible)
* component[obesity].extension[conditionCode].value[x] from ElixhauserObesityVS (extensible)
* component[paralysis].extension[conditionCode].value[x] from ElixhauserParalysisVS (extensible)
* component[peripheralVascularDisease].extension[conditionCode].value[x] from ElixhauserPeripheralVascularDiseaseVS (extensible)
* component[psychoses].extension[conditionCode].value[x] from ElixhauserPsychosesVS (extensible)
* component[pulmonaryCirculationDisorders].extension[conditionCode].value[x] from ElixhauserPulmonaryCirculationDisordersVS (extensible)
* component[renalFailure].extension[conditionCode].value[x] from ElixhauserRenalFailureVS (extensible)
* component[ulcer].extension[conditionCode].value[x] from ElixhauserUlcerVS (extensible)
* component[valvularDisease].extension[conditionCode].value[x] from ElixhauserValvularDiseaseVS (extensible)
* component[weightLoss].extension[conditionCode].value[x] from ElixhauserWeightLossVS (extensible)

