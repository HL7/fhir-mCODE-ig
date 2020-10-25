Profile: ComorbidityAssessment
Parent: Observation
Id: mcode-comorbidity-assessment
Description: "General structure for capturing assessment of comorbid conditions with respect to a primary condition. The specific set of comorbidities of interest in a given context are defined by slicing the components array."
* ^abstract = true
* focus only Reference(Condition)
* code = LNC#78923-0  // Comorbid condition panel
* component.value[x] only CodeableConcept
* component.valueCodeableConcept from PresentAbsentUnknownVS (required)
* component.extension contains conditionCode 0..* and conditionReference 0..*
* component.extension[conditionCode].value[x] only CodeableConcept
* component.extension[conditionReference].value[x] only Reference(Condition)

Profile: CancerComorbidityAssessment
Parent: ComorbidityAssessment
Id: mcode-cancer-comorbidity-assessment
Description: "Comorbid conditions for a cancer condition, using Elixhauser comorbidity categories."
* ^abstract = false
* focus only Reference(PrimaryCancerCondition)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component and component.extension[conditionCode] and component.extension[conditionReference] MS
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
* component[cardiacArrhythmia].code = ElixhauserCategoryCS#ARRHYTH
* component[deficiencyAnemia].code = ElixhauserCategoryCS#ANEMDEF
* component[rheumatoidArthritis].code = ElixhauserCategoryCS#ARTH
* component[bloodLossAnemia].code = ElixhauserCategoryCS#BLDLOSS
* component[congestiveHeartFailure].code = ElixhauserCategoryCS#CHF
* component[chronicPulmonaryDisease].code = ElixhauserCategoryCS#CHRNLUNG
* component[coagulationDeficiency].code = ElixhauserCategoryCS#COAG
* component[depression].code = ElixhauserCategoryCS#DEPRESS
* component[diabetesUncomplicated].code = ElixhauserCategoryCS#DM 
* component[diabetesComplicated].code = ElixhauserCategoryCS#DMCX
* component[drugAbuse].code = ElixhauserCategoryCS#DRUG
* component[hIVAIDS].code = ElixhauserCategoryCS#HIV
* component[hypertensionUncomplicated].code = ElixhauserCategoryCS#HTN
* component[hypertensionComplicated].code = ElixhauserCategoryCS#HTNCX
* component[hypothyroidism].code = ElixhauserCategoryCS#HYPOTHY
* component[liverDisease].code = ElixhauserCategoryCS#LIVER
* component[fluidElectrolyteDisorders].code = ElixhauserCategoryCS#LYTES
* component[neurological].code = ElixhauserCategoryCS#NEURO
* component[obesity].code = ElixhauserCategoryCS#OBESE
* component[paralysis].code = ElixhauserCategoryCS#PARA
* component[peripheralVascularDisease].code = ElixhauserCategoryCS#PERIVASC
* component[psychoses].code = ElixhauserCategoryCS#PSYCH
* component[pulmonaryCirculationDisorders].code = ElixhauserCategoryCS#PULMCIRC
* component[renalFailure].code = ElixhauserCategoryCS#RENLFAIL
* component[ulcer].code = ElixhauserCategoryCS#ULCER
* component[valvularDisease].code = ElixhauserCategoryCS#VALVE
* component[weightLoss].code = ElixhauserCategoryCS#WGHTLOSS

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


/*   A previous modeling attempt I'm keeping around a while, just in case

Extension: ComorbidConditionExtension
Id: mcode-comorbid-condition-extension
Title:  "Comorbid Condition Extension"
Description: "An extension that captures the relationship between a primary disease and underlying (comorbid) conditions. A comorbidity refers to one or more diseases or conditions that occur along with another condition in the same person at the same time. Conditions considered comorbidities are often long-term or chronic conditions. Comorbidities are defined relative to an index disease and may be categorical, rather than described in full detail."
* extension contains comorbidityCategory 1..1
    * extension[comorbidityCategory] ^short = "Comorbidity category"
    * extension[comorbidityCategory] ^description = "The type or general category of the reported comorbid condition(s), for example, diabetes, dementia, or prior myocardial infarction."
    * extension[comorbidityCategory].value[x] only CodeableConcept
    * extension[comorbidityCategory].valueCodeableConcept from ComorbidityCategoryVS (extensible) (extensible)
* extension contains isPresent 1..1
    * extension[isPresent] ^short = "Is present"
    * extension[isPresent] ^description = "Whether the comorbidity in the specified category is present or absent."
    * extension[isPresent].value[x] only CodeableConcept
    * extension[isPresent] from PresentAbsentUnknownVS (extensible)
* extension contains conditionReference 0..*
    * extension[conditionReference] ^short = "Comorbid Condition"
    * extension[comorbidConditionReference] ^description = "A reference to a Condition resource that is considered to be a comorbidity, consistent with the comorbidity category."
    * extension[conditionReference].value[x] only valueReference
    * extension[conditionCode].valueCodeableConcept only Reference(USCoreCondition)
*/