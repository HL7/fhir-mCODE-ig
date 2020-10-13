Profile: ComorbidConditionParent
Parent:  USCoreCondition
Id: mcode-comorbid-condition
Title: "Comorbid Condition"
Description:  "A comorbidity refers to one or more diseases or conditions that occur along with another condition in the same person at the same time. Conditions considered comorbidities are often long-term or chronic conditions. Comorbidities are defined relative to an index disease and may be categorical, rather than described in full detail. The comorbid condition class provides comorbidity codes corresponding the Elixhauser Comorbidity Index. Conformance note: If an ICD-10-CM code is used for the code attribute, and a semantically equivalent SNOMED code is available, the resulting instance will not be compliant with US Core Profiles."
* category = SCT#398192003
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* bodySite.extension contains
    Laterality named laterality 0..1
* subject only Reference(USCorePatient)

/*
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


