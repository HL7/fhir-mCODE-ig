Extension: ComorbidCondition
Id: mcode-comorbid-condition
Title: "Comorbid Condition"
* extension contains comorbidityCategory 1..1 
    * extension[comorbidityCategory] ^short = "Comorbidity category"
    * extension[comorbidityCategory] ^description = "The type or general category of the reported comorbid condition(s), for example, diabetes, dementia, or prior myocardial infarction."
    * extension[comorbidityCategory].value[x] only CodeableConcept
    * extension[comorbidityCategory].valueCodeableConcept from comorbidityCategoryVS (extensible)
* extension contains isPresent 1..1
    * extension[isPresent] ^short = "Is present"
    * extension[isPresent] ^description = "Whether the comorbidity in the specified category is present or absent."
    * extension[isPresent].value[x] only CodeableConcept
    * extension[isPresent] from PresentAbsentUnknownVS
* extension contains comorbidConditionCode 0..*
    * extension[comorbidConditionReference] ^short = "Comorbidity condition code."
    * extension[comorbidConditionReference] ^description = "A code representing the specific comorbid condition. The condition code must be consistent with the comorbidity category, and should only be provided if isPresent is true."
    * extension[comorbidConditionReference].value[x] only CodeableConcept
    * extension[comorbidConditionReference].valueCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/us-core-condition-code (extensible)
* extension contains comorbidConditionReference 0..*
    * extension[comorbidConditionReference] ^short = "Comorbidity condition reference"
    * extension[comorbidConditionReference] ^description = "A reference to a Condition resource that is considered to be a comorbidity, consistent with the comorbidity category."
    * extension[comorbidConditionReference].value[x] only valueReference
    * extension[comorbidConditionReference].valueReference only Reference(ComorbidConditionParent)
* extension contains score 0..1 
    * extension[score] ^short = "Comorbidity score"
    * extension[score] ^description = "The severity rating or weighting score associated of the reported comorbid condition(s), consistent with the code system of the comorbidity category."
    * extension[score].value[x] only Quantity


Profile: ComorbidConditionParent
Parent:  USCoreCondition
Id: mcode-comorbid-condition
Title: "Comorbid Condition"
Description:  "A comorbidity refers to one or more diseases or conditions that occur along with another condition in the same person at the same time. Conditions considered comorbidities are often long-term or chronic conditions. Comorbidities are defined relative to an index disease and may be categorical, rather than described in full detail. 

The ComorbidConditionParent profile provides a base profile for specific comorbidity profiles. In mCODE, one profile is defined for each comorbid condition in the Elixhauser Comorbidity Index, with the exception of cancer conditions. These profiles allow implementers to validate the PrimaryCancerCondition. Value sets for each comorbid condition are defined."


Profile: ElixhauserHIVAIDSComorbidity
Parent:  USCoreCondition
Id: mcode-elixhauser-hiv-aids-comorbidity
Title: "Elixhauser HIV AIDS Comorbidity"
Description:  "Elixhauser comorbid condition profile for HIV-AIDS. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserHIVAIDSVS (extensible)


Profile: ElixhauserAlcoholAbuseComorbidity
Parent:  USCoreCondition
Id: mcode-elixhauser-alcohol-abuse-comorbidity
Title: "Elixhauser Alcohol Abuse Comorbidity"
Description:  "Elixhauser comorbid condition profile for Alcohol Abuse. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserAlcoholAbuseVS (extensible)

Profile: ElixhauserCardiacArrhythmiaComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-cardiac-arrhythmia-comorbidity
Title: "Elixhauser Cardiac Arrhythmia Comorbidity"
Description:  "Elixhauser comorbid condition profile for Cardiac Arrhythmia. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserCardiacArrhythmiaVS (extensible)


Profile: ElixhauserDeficiencyAnemiaComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-deficiency-anemia-comorbidity
Title: "Elixhauser Deficiency Anemia Comorbidity"
Description:  "Elixhauser comorbid condition profile for Deficiency Anemia. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserDeficiencyAnemiaVS (extensible)


Profile: ElixhauserRheumatoidArthritisComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-rheumatoid-arthritis-comorbidity
Title: "Elixhauser Rheumatoid Arthritis Comorbidity"
Description:  "Elixhauser comorbid condition profile for Rheumatoid Arthritis. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserRheumatoidArthritisVS (extensible)


Profile: ElixhauserBloodLossAnemiaComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-blood-loss-anemia-comorbidity
Title: "Elixhauser Blood Loss Anemia Comorbidity"
Description:  "Elixhauser comorbid condition profile for Blood Loss Anemia. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserBloodLossAnemiaVS (extensible)


Profile: ElixhauserCongestiveHeartFailureComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-congestive-heart-failure-comorbidity
Title: "Elixhauser Congestive Heart Failure Comorbidity"
Description:  "Elixhauser comorbid condition profile for Congestive Heart Failure. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserCongestiveHeartFailureVS (extensible)


Profile: ElixhauserChronicPulmonaryDiseaseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-chronic-pulmonary-disease-comorbidity
Title: "Elixhauser Chronic Pulmonary Disease Comorbidity"
Description:  "Elixhauser comorbid condition profile for Chronic Pulmonary Disease. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserChronicPulmonaryDiseaseVS (extensible)


Profile: ElixhauserCoagulationDeficiencyComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-coagulation-deficiency-comorbidity
Title: "Elixhauser Coagulation Deficiency Comorbidity"
Description:  "Elixhauser comorbid condition profile for Coagulation Deficiency. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserCoagulationDeficiencyVS (extensible)


Profile: ElixhauserDepressionComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-depression-comorbidity
Title: "Elixhauser Depression Comorbidity"
Description:  "Elixhauser comorbid condition profile for Depression. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserDepressionVS (extensible)


Profile: ElixhauserDiabetesUncomplicatedComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-diabetes-uncomplicated-comorbidity
Title: "Elixhauser Diabetes Uncomplicated Comorbidity"
Description:  "Elixhauser comorbid condition profile for Diabetes without complications. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserDiabetesUncomplicatedVS (extensible)


Profile: ElixhauseDiabetesComplicatedComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-diabetes-complicated-comorbidity
Title: "Elixhauser Diabetes Complicated Comorbidity"
Description:  "Elixhauser comorbid condition profile for Diabetes with complications. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserDiabetesComplicatedVS (extensible)


Profile: ElixhauserDrugAbuseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-drug-abuse-comorbidity
Title: "Elixhauser Drug Abuse Comorbidity"
Description:  "Elixhauser comorbid condition profile for Drug Abuse. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserDrugAbuseVS (extensible)


Profile: ElixhauserHypertensionUncomplicatedComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-hypertension-uncomplicated-comorbidity
Title: "Elixhauser Hypertension Uncomplicated Comorbidity"
Description:  "Elixhauser comorbid condition profile for Hypertension Uncomplicated. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserHypertensionUncomplicatedVS (extensible)


Profile: ElixhauserHypertensionComplicatedComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-hypertension-complicated-comorbidity
Title: "Elixhauser Hypertension Complicated Comorbidity"
Description:  "Elixhauser comorbid condition profile for Hypertension with complications. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserHypertensionComplicatedVS (extensible)


Profile: ElixhauserHypothyroidismComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-hypothyroidism-comorbidity
Title: "Elixhauser Hypothyroidism Comorbidity"
Description:  "Elixhauser comorbid condition profile for Hypothyroidism. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserHypothyroidismVS (extensible)


Profile: ElixhauserLiverDiseaseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-liver-disease-comorbidity
Title: "Elixhauser Liver Disease Comorbidity"
Description:  "Elixhauser comorbid condition profile for Liver Disease. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserLiverDiseaseVS (extensible)

/*
Profile: ElixhauserLymphomaComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-lymphoma-comorbidity
Title: "Elixhauser Lymphoma Comorbidity"
Description:  "Elixhauser comorbid condition profile for Lymphoma. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."

* code from ElixhauserLymphomaVS (extensible)
*/

Profile: ElixhauserFluidElectrolyteDisordersComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-fluid-electrolyte-disorders-comorbidity
Title: "Elixhauser Fluid Electrolyte Disorders Comorbidity"
Description:  "Elixhauser comorbid condition profile for Fluid and Electrolyte Disorders. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserFluidElectrolyteDisordersVS (extensible)

/*
Profile: ElixhauserMetastaticCancerComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-metastatic-cancer-comorbidity
Title: "Elixhauser Metastatic Cancer Comorbidity"
Description:  "Elixhauser comorbid condition profile for Metastatic Cancer. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."

* code from ElixhauserMetastaticCancerVS (extensible)
*/

Profile: ElixhauserOtherNeurologicalComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-other-neurological-comorbidity
Title: "Elixhauser Other Neurological Comorbidity"
Description:  "Elixhauser comorbid condition profile for Other Neurological Conditions (i.e., not covered in other Elixhauser categories). This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserOtherNeurologicalVS (extensible)


Profile: ElixhauserObesityComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-obesity-comorbidity
Title: "Elixhauser Obesity Comorbidity"
Description:  "Elixhauser comorbid condition profile for Obesity. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserObesityVS (extensible)


Profile: ElixhauserParalysisComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-paralysis-comorbidity
Title: "Elixhauser Paralysis Comorbidity"
Description:  "Elixhauser comorbid condition profile for Paralysis. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserParalysisVS (extensible)


Profile: ElixhauserPeripheralVascularDiseaseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-peripheral-vascular-disease-comorbidity
Title: "Elixhauser Peripheral Vascular Disease Comorbidity"
Description:  "Elixhauser comorbid condition profile for Peripheral Vascular Disease. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserPeripheralVascularDiseaseVS (extensible)


Profile: ElixhauserPsychosesComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-Psychoses-comorbidity
Title: "Elixhauser Psychoses Comorbidity"
Description:  "Elixhauser comorbid condition profile for Psychoses. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserPsychosesVS (extensible)


Profile: ElixhauserPulmonaryCirculationDisordersComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-pulmonary-circulation-cisorders-comorbidity
Title: "Elixhauser Pulmonary Circulation Disorders Comorbidity"
Description:  "Elixhauser comorbid condition profile for Pulmonary Circulation Disorders. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserPulmonaryCirculationDisordersVS (extensible)


Profile: ElixhauserRenalFailureComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-renal-failure-comorbidity
Title: "Elixhauser Renal Failure Comorbidity"
Description:  "Elixhauser comorbid condition profile for Renal Failure. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserRenalFailureVS (extensible)

/*
Profile: ElixhauserSolidTumorComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-solid-tumor-comorbidity
Title: "Elixhauser Solid Tumor Comorbidity"
Description:  "Elixhauser comorbid condition profile for Solid Tumors. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."

* code from ElixhauserSolidTumorVS (extensible)
*/

Profile: ElixhauserUlcerComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-ulcer-comorbidity
Title: "Elixhauser Ulcer Comorbidity"
Description:  "Elixhauser comorbid condition profile for Ulcer. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserUlcerVS (extensible)


Profile: ElixhauserValvularDiseaseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-valvular-disease-comorbidity
Title: "Elixhauser Valvular Disease Comorbidity"
Description:  "Elixhauser comorbid condition profile for Valvular Disease. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserValvularDiseaseVS (extensible)


Profile: ElixhauserWeightLossComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-weight-loss-comorbidity
Title: "Elixhauser Weight Loss Comorbidity"
Description:  "Elixhauser comorbid condition profile for Weight Loss. This profile is provided primarily so its canonical URL can be used in [meta.profile](https://www.hl7.org/fhir/resource-definitions.html#Meta.profile) to indicate a Condition instance falls into this Elixhauser comorbidity category."
* code from ElixhauserWeightLossVS (extensible)


/* Save

ElixhauserHIVAIDSVS
ElixhauserAlcoholAbuseVS
ElixhauserCardiacArrhythmiaVS
ElixhauserDeficiencyAnemiaVS
ElixhauserRheumatoidArthritisVS
ElixhauserBloodLossAnemiaVS
ElixhauserCongestiveHeartFailureVS
ElixhauserChronicPulmonaryDiseaseVS
ElixhauserCoagulationDeficiencyVS
ElixhauserDepressionVS
ElixhauserDiabetesUncomplicatedVS
ElixhauserDiabetesComplicatedVS
ElixhauserDrugAbuseVS
ElixhauserHypertensionUncomplicatedVS
ElixhauserHypertensionComplicatedVS
ElixhauserHypothyroidismVS
ElixhauserLiverDiseaseVS
ElixhauserLymphomaVS
ElixhauserFluidElectrolyteDisordersVS
ElixhauserMetastaticCancerVS
ElixhauserOtherNeurologicalVS
ElixhauserObesityVS
ElixhauserParalysisVS
ElixhauserPeripheralVascularDiseaseVS
ElixhauserPsychosesVS
ElixhauserPulmonaryCirculationDisordersVS
ElixhauserRenalFailureVS
ElixhauserSolidTumorVS
ElixhauserUlcerVS
ElixhauserValvularDiseaseVS
ElixhauserWeightLossVS

*/
