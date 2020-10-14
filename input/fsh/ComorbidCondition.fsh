Profile: ComorbidConditionParent
Parent:  USCoreCondition
Id: mcode-comorbid-condition
Title: "Comorbid Condition"
Description:  "A comorbidity refers to one or more diseases or conditions that occur along with another condition in the same person at the same time. Conditions considered comorbidities are often long-term or chronic conditions. Comorbidities are defined relative to an index disease and may be categorical, rather than described in full detail. The comorbid condition class provides comorbidity codes corresponding the Elixhauser Comorbidity Index. Conformance note: If an ICD-10-CM code is used for the code attribute, and a semantically equivalent SNOMED code is available, the resulting instance will not be compliant with US Core Profiles."
* ^abstract = true
* category = SCT#398192003
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* bodySite.extension contains
    Laterality named laterality 0..1
* subject only Reference(USCorePatient)

Profile: ElixhauserHIVAIDSComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-hiv-aids-comorbidity
Title: "Elixhauser HIV AIDS Comorbidity"
Description:  "Elixhauser comorbid condition profile for HIV-AIDS."
* ^abstract = false
* code from ElixhauserHIVAIDSVS (extensible)


Profile: ElixhauserAlcoholAbuseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-alcohol-abuse-comorbidity
Title: "Elixhauser Alcohol Abuse Comorbidity"
Description:  "Elixhauser comorbid condition profile for Alcohol Abuse."
* ^abstract = false
* code from ElixhauserAlcoholAbuseVS (extensible)

Profile: ElixhauserCardiacArrhythmiaComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-cardiac-arrhythmia-comorbidity
Title: "Elixhauser Cardiac Arrhythmia Comorbidity"
Description:  "Elixhauser comorbid condition profile for Cardiac Arrhythmia."
* ^abstract = false
* code from ElixhauserCardiacArrhythmiaVS (extensible)


Profile: ElixhauserDeficiencyAnemiaComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-deficiency-anemia-comorbidity
Title: "Elixhauser Deficiency Anemia Comorbidity"
Description:  "Elixhauser comorbid condition profile for Deficiency Anemia."
* ^abstract = false
* code from ElixhauserDeficiencyAnemiaVS (extensible)


Profile: ElixhauserRheumatoidArthritisComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-rheumatoid-arthritis-comorbidity
Title: "Elixhauser Rheumatoid Arthritis Comorbidity"
Description:  "Elixhauser comorbid condition profile for Rheumatoid Arthritis."
* ^abstract = false
* code from ElixhauserRheumatoidArthritisVS (extensible)


Profile: ElixhauserBloodLossAnemiaComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-blood-loss-anemia-comorbidity
Title: "Elixhauser Blood Loss Anemia Comorbidity"
Description:  "Elixhauser comorbid condition profile for Blood Loss Anemia."
* ^abstract = false
* code from ElixhauserBloodLossAnemiaVS (extensible)


Profile: ElixhauserCongestiveHeartFailureComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-congestive-heart-failure-comorbidity
Title: "Elixhauser Congestive Heart Failure Comorbidity"
Description:  "Elixhauser comorbid condition profile for Congestive Heart Failure."
* ^abstract = false
* code from ElixhauserCongestiveHeartFailureVS (extensible)


Profile: ElixhauserChronicPulmonaryDiseaseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-chronic-pulmonary-disease-comorbidity
Title: "Elixhauser Chronic Pulmonary Disease Comorbidity"
Description:  "Elixhauser comorbid condition profile for Chronic Pulmonary Disease."
* ^abstract = false
* code from ElixhauserChronicPulmonaryDiseaseVS (extensible)


Profile: ElixhauserCoagulationDeficiencyComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-coagulation-deficiency-comorbidity
Title: "Elixhauser Coagulation Deficiency Comorbidity"
Description:  "Elixhauser comorbid condition profile for Coagulation Deficiency."
* ^abstract = false
* code from ElixhauserCoagulationDeficiencyVS (extensible)


Profile: ElixhauserDepressionComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-depression-comorbidity
Title: "Elixhauser Depression Comorbidity"
Description:  "Elixhauser comorbid condition profile for Depression."
* ^abstract = false
* code from ElixhauserDepressionVS (extensible)


Profile: ElixhauserDiabetesUncomplicatedComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-diabetes-uncomplicated-comorbidity
Title: "Elixhauser Diabetes Uncomplicated Comorbidity"
Description:  "Elixhauser comorbid condition profile for Diabetes Uncomplicated."
* ^abstract = false
* code from ElixhauserDiabetesUncomplicatedVS (extensible)


Profile: ElixhauseDiabetesComplicatedComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-diabetes-complicated-comorbidity
Title: "Elixhauser Diabetes Complicated Comorbidity"
Description:  "Elixhauser comorbid condition profile for Diabetes with complications."
* ^abstract = false
* code from ElixhauserDiabetesComplicatedVS (extensible)


Profile: ElixhauserDrugAbuseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-drug-abuse-comorbidity
Title: "Elixhauser Drug Abuse Comorbidity"
Description:  "Elixhauser comorbid condition profile for Drug Abuse."
* ^abstract = false
* code from ElixhauserDrugAbuseVS (extensible)


Profile: ElixhauserHypertensionUncomplicatedComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-hypertension-uncomplicated-comorbidity
Title: "Elixhauser Hypertension Uncomplicated Comorbidity"
Description:  "Elixhauser comorbid condition profile for Hypertension Uncomplicated."
* ^abstract = false
* code from ElixhauserHypertensionUncomplicatedVS (extensible)


Profile: ElixhauserHypertensionComplicatedComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-hypertension-complicated-comorbidity
Title: "Elixhauser Hypertension Complicated Comorbidity"
Description:  "Elixhauser comorbid condition profile for Hypertension with complications."
* ^abstract = false
* code from ElixhauserHypertensionComplicatedVS (extensible)


Profile: ElixhauserHypothyroidismComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-hypothyroidism-comorbidity
Title: "Elixhauser Hypothyroidism Comorbidity"
Description:  "Elixhauser comorbid condition profile for Hypothyroidism."
* ^abstract = false
* code from ElixhauserHypothyroidismVS (extensible)


Profile: ElixhauserLiverDiseaseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-liver-disease-comorbidity
Title: "Elixhauser Liver Disease Comorbidity"
Description:  "Elixhauser comorbid condition profile for Liver Disease."
* ^abstract = false
* code from ElixhauserLiverDiseaseVS (extensible)

/*
Profile: ElixhauserLymphomaComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-lymphoma-comorbidity
Title: "Elixhauser Lymphoma Comorbidity"
Description:  "Elixhauser comorbid condition profile for Lymphoma."
* ^abstract = false
* code from ElixhauserLymphomaVS (extensible)
*/

Profile: ElixhauserFluidElectrolyteDisordersComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-fluid-electrolyte-disorders-comorbidity
Title: "Elixhauser Fluid Electrolyte Disorders Comorbidity"
Description:  "Elixhauser comorbid condition profile for Fluid Electrolyte Disorders."
* ^abstract = false
* code from ElixhauserFluidElectrolyteDisordersVS (extensible)

/*
Profile: ElixhauserMetastaticCancerComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-metastatic-cancer-comorbidity
Title: "Elixhauser Metastatic Cancer Comorbidity"
Description:  "Elixhauser comorbid condition profile for Metastatic Cancer."
* ^abstract = false
* code from ElixhauserMetastaticCancerVS (extensible)
*/

Profile: ElixhauserOtherNeurologicalComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-other-neurological-comorbidity
Title: "Elixhauser Other Neurological Comorbidity"
Description:  "Elixhauser comorbid condition profile for Other Neurological Conditions."
* ^abstract = false
* code from ElixhauserOtherNeurologicalVS (extensible)


Profile: ElixhauserObesityComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-obesity-comorbidity
Title: "Elixhauser Obesity Comorbidity"
Description:  "Elixhauser comorbid condition profile for Obesity."
* ^abstract = false
* code from ElixhauserObesityVS (extensible)


Profile: ElixhauserParalysisComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-paralysis-comorbidity
Title: "Elixhauser Paralysis Comorbidity"
Description:  "Elixhauser comorbid condition profile for Paralysis."
* ^abstract = false
* code from ElixhauserParalysisVS (extensible)


Profile: ElixhauserPeripheralVascularDiseaseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-peripheral-vascular-disease-comorbidity
Title: "Elixhauser Peripheral Vascular Disease Comorbidity"
Description:  "Elixhauser comorbid condition profile for Peripheral Vascular Disease."
* ^abstract = false
* code from ElixhauserPeripheralVascularDiseaseVS (extensible)


Profile: ElixhauserPsychosesComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-Psychoses-comorbidity
Title: "Elixhauser Psychoses Comorbidity"
Description:  "Elixhauser comorbid condition profile for Psychoses."
* ^abstract = false
* code from ElixhauserPsychosesVS (extensible)


Profile: ElixhauserPulmonaryCirculationDisordersComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-pulmonary-circulation-cisorders-comorbidity
Title: "Elixhauser Pulmonary Circulation Disorders Comorbidity"
Description:  "Elixhauser comorbid condition profile for Pulmonary Circulation Disorders."
* ^abstract = false
* code from ElixhauserPulmonaryCirculationDisordersVS (extensible)


Profile: ElixhauserRenalFailureComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-renal-failure-comorbidity
Title: "Elixhauser Renal Failure Comorbidity"
Description:  "Elixhauser comorbid condition profile for Renal Failure."
* ^abstract = false
* code from ElixhauserRenalFailureVS (extensible)

/*
Profile: ElixhauserSolidTumorComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-solid-tumor-comorbidity
Title: "Elixhauser Solid Tumor Comorbidity"
Description:  "Elixhauser comorbid condition profile for Solid Tumors."
* ^abstract = false
* code from ElixhauserSolidTumorVS (extensible)
*/

Profile: ElixhauserUlcerComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-ulcer-comorbidity
Title: "Elixhauser Ulcer Comorbidity"
Description:  "Elixhauser comorbid condition profile for Ulcer."
* ^abstract = false
* code from ElixhauserUlcerVS (extensible)


Profile: ElixhauserValvularDiseaseComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-valvular-disease-comorbidity
Title: "Elixhauser Valvular Disease Comorbidity"
Description:  "Elixhauser comorbid condition profile for Valvular Disease."
* ^abstract = false
* code from ElixhauserValvularDiseaseVS (extensible)


Profile: ElixhauserWeightLossComorbidity
Parent:  ComorbidConditionParent
Id: mcode-elixhauser-weight-loss-comorbidity
Title: "Elixhauser Weight Loss Comorbidity"
Description:  "Elixhauser comorbid condition profile for Weight Loss."
* ^abstract = false
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