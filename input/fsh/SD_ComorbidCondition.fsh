Profile: ComorbiditiesParent
Parent: Observation
Id: mcode-comorbidities-parent
Description: "General structure for capturing comorbid conditions with respect to a primary condition. The specific set of comorbidities of interest in a given context are defined by slicing the components array."
* ^abstract = true
* focus only Reference(Condition)
* code = LNC#78923-0  // Comorbid condition panel
* component.value[x] only CodeableConcept
* component.valueCodeableConcept from PresentAbsentUnknownVS (required)
* component.extension contains ComorbidConditionCode named conditionCode 0..*
* component.extension[conditionCode] ^short = "Comorbid Condition Code"
* component.extension[conditionCode] ^definition = "An extension for representing the condition code corresponding to the named comorbid condition."
* component.extension contains ComorbidConditionReference named conditionReference 0..*
* component.extension[conditionReference] ^short = "Comorbid Condition Reference"
* component.extension[conditionReference] ^definition = "An extension for representing a reference to a condition resource corresponding to the named comorbid condition."

Profile: CancerRelatedComorbidities
Parent: ComorbiditiesParent
Id: mcode-cancer-related-comorbidities
Description: "Comorbid conditions for a cancer condition, using Elixhauser comorbidity categories."
* ^abstract = false
* focus and component and component.extension MS
* focus only Reference(PrimaryCancerCondition)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* focus and component and component.extension[conditionReference] and component.extension[conditionCode] and component.extension[conditionReference] MS
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

* component[alcoholAbuse].extension[conditionCode].valueCodeableConcept from ElixhauserAlcoholAbuseVS (extensible)
* component[cardiacArrhythmia].extension[conditionCode].valueCodeableConcept from ElixhauserCardiacArrhythmiaVS (extensible)
* component[deficiencyAnemia].extension[conditionCode].valueCodeableConcept from ElixhauserDeficiencyAnemiaVS (extensible)
* component[rheumatoidArthritis].extension[conditionCode].valueCodeableConcept from ElixhauserRheumatoidArthritisVS (extensible)
* component[bloodLossAnemia].extension[conditionCode].valueCodeableConcept from ElixhauserBloodLossAnemiaVS (extensible)
* component[congestiveHeartFailure].extension[conditionCode].valueCodeableConcept from ElixhauserCongestiveHeartFailureVS (extensible)
* component[chronicPulmonaryDisease].extension[conditionCode].valueCodeableConcept from ElixhauserChronicPulmonaryDiseaseVS (extensible)
* component[coagulationDeficiency].extension[conditionCode].valueCodeableConcept from ElixhauserCoagulationDeficiencyVS (extensible)
* component[depression].extension[conditionCode].valueCodeableConcept from ElixhauserDepressionVS (extensible)
* component[diabetesUncomplicated].extension[conditionCode].valueCodeableConcept from ElixhauserDiabetesUncomplicatedVS (extensible)
* component[diabetesComplicated].extension[conditionCode].valueCodeableConcept from ElixhauserDiabetesComplicatedVS (extensible)
* component[drugAbuse].extension[conditionCode].valueCodeableConcept from ElixhauserDrugAbuseVS (extensible)
* component[hIVAIDS].extension[conditionCode].valueCodeableConcept from ElixhauserHIVAIDSVS (extensible)
* component[hypertensionUncomplicated].extension[conditionCode].valueCodeableConcept from ElixhauserHypertensionUncomplicatedVS (extensible)
* component[hypertensionComplicated].extension[conditionCode].valueCodeableConcept from ElixhauserHypertensionComplicatedVS (extensible)
* component[hypothyroidism].extension[conditionCode].valueCodeableConcept from ElixhauserHypothyroidismVS (extensible)
* component[liverDisease].extension[conditionCode].valueCodeableConcept from ElixhauserLiverDiseaseVS (extensible)
* component[fluidElectrolyteDisorders].extension[conditionCode].valueCodeableConcept from ElixhauserFluidElectrolyteDisordersVS (extensible)
* component[neurological].extension[conditionCode].valueCodeableConcept from ElixhauserOtherNeurologicalVS (extensible)
* component[obesity].extension[conditionCode].valueCodeableConcept from ElixhauserObesityVS (extensible)
* component[paralysis].extension[conditionCode].valueCodeableConcept from ElixhauserParalysisVS (extensible)
* component[peripheralVascularDisease].extension[conditionCode].valueCodeableConcept from ElixhauserPeripheralVascularDiseaseVS (extensible)
* component[psychoses].extension[conditionCode].valueCodeableConcept from ElixhauserPsychosesVS (extensible)
* component[pulmonaryCirculationDisorders].extension[conditionCode].valueCodeableConcept from ElixhauserPulmonaryCirculationDisordersVS (extensible)
* component[renalFailure].extension[conditionCode].valueCodeableConcept from ElixhauserRenalFailureVS (extensible)
* component[ulcer].extension[conditionCode].valueCodeableConcept from ElixhauserUlcerVS (extensible)
* component[valvularDisease].extension[conditionCode].valueCodeableConcept from ElixhauserValvularDiseaseVS (extensible)
* component[weightLoss].extension[conditionCode].valueCodeableConcept from ElixhauserWeightLossVS (extensible)

