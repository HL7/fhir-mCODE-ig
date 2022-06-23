Alias: LNC_TBD = http://hl7.org/fhir/us/mcode/CodeSystem/loinc-requested-cs
Alias: SCT_TBD = http://hl7.org/fhir/us/mcode/CodeSystem/snomed-requested-cs

CodeSystem: LoincRequestedCS
Id: loinc-requested-cs
Title: "Requested LOINC Codes Code System"
Description: "Codes requested from LOINC, but not yet approved or assigned. Codes related to comorbidities use the categories originally defined by Elixhauser, and updated by the Agency for Healthcare Research and Quality (AHRQ) Healthcare Cost and Utilization Project (H-CUP) [Elixhauser Comorbidity Software Refined for ICD-10-CM v2021.1](https://www.hcup-us.ahrq.gov/toolssoftware/comorbidityicd10/comorbidity_icd10.jsp). Each comorbidity category is associated with a specific ICD-10-CM value set. For example, the category #CHF (congestive heart failure) refers to the patient having a diagnosis within the [Elixhauser Comorbid Condition Value Set for Congestive Heart Failure](http://hl7.org/fhir/us/mcode/ValueSet/elixhauser-congestive-heart-failure-vs)."
* ^caseSensitive = true
* #molecular-consequence "Molecular Consequence" "Annotated changes to sequence features caused by this variant. Terms are from the sequence ontology under SO:0001537."
* #diagnostic-implication "Diagnosic Implication" "Diagnostic Implication"
// LOINC Request 6073 requests LOINC codes for these categories, and for the overall index. Submitted 7/7/21
* #comorbidities-elixhauser "Elixhauser Comorbidity Panel" "Code identifying an Observation as a comorbidity panel consistent with mCODE's ComorbidityElixhauser profile."
* #AIDS    "Acquired immune deficiency syndrome (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserAidsVS"
* #ALCOHOL    "Alcohol abuse (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserAlcoholAbuseVS"
* #ANEMDF    "Deficiency anemias (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserDeficiencyAnemiaVS"
* #ARTH    "Arthropathies (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserRheumatoidArthritisVS"
* #BLDLOSS    "Chronic blood loss anemia (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserBloodLossAnemiaVS"
* #CANCER_LEUK    "Leukemia (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserCancerLeukemiaVS"
* #CANCER_LYMPH    "Lymphoma (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserCancerLymphomaVS"
* #CANCER_METS    "Metastatic cancer (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserCancerMetastaticVS"
* #CANCER_NSITU    "Solid tumor without metastasis, in situ (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserCancerSolidTumorInSituVS"
* #CANCER_SOLID    "Solid tumor without metastasis, malignant (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserCancerSolidTumorMalignantVS"
* #CBVD    "Cerebrovascular disease (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserCerebrovascularDiseaseVS"
* #CHF    "Congestive heart failure (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserCongestiveHeartFailureVS"
* #COAG    "Coagulopathy (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserCoagulationDeficiencyVS"
* #DEMENTIA    "Dementia (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserDementiaVS"
* #DEPRESS    "Depression (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserDepressionVS"
* #DIAB_CX    "Diabetes with chronic complications (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserDiabetesComplicatedVS"
* #DIAB_UNCX    "Diabetes without chronic complications (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserDiabetesUncomplicatedVS"
* #DRUG_ABUSE    "Drug abuse (Elixhauser comorbidity category)"  "Patient has a disorder in the value set ElixhauserDrugAbuseVS"
* #HTN_CX    "Hypertension, complicated (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserHypertensionComplicatedVS"
* #HTN_UNCX    "Hypertension, uncomplicated (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserHypertensionUncomplicatedVS"
* #LIVER_MLD    "Liver disease, mild (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserLiverDiseaseMildVS"
* #LIVER_SEV    "Liver disease, moderate to severe (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserLiverDiseaseSevereVS"
* #LUNG_CHRONIC    "Chronic pulmonary disease (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserChronicPulmonaryDiseaseVS"
* #NEURO_MOVT    "Neurological disorders affecting movement (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserNeurologicalMovementDisorderVS"
* #NEURO_OTH    "Other neurological disorders (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserOtherNeurologicalVS"
* #NEURO_SEIZ    "Seizures and epilepsy (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserNeurologicalSeizureDisorderVS"
* #OBESE    "Obesity (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserObesityVS"
* #PARALYSIS    "Paralysis (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserParalysisVS"
* #PERIVASC    "Peripheral vascular disease (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserPeripheralVascularDiseaseVS"
* #PSYCHOSIS    "Psychosis (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserPsychosisVS"
* #PULMCIRC    "Pulmonary circulation disease (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserPulmonaryCirculationDisorderVS"
* #RENLFL_MOD    "Renal failure, moderate (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserRenalFailureModerateVS"
* #RENLFL_SEV    "Renal failure, severe (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserRenalFailureSevereVS"
* #THYROID_HYPO    "Hypothyroidism (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserHypothyroidismVS"
* #THYROID_OTH    "Other thyroid disorders (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserOtherThyroidDisorderVS"
* #ULCER_PEPTIC    "Peptic ulcer with bleeding (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserUlcerVS"
* #VALVE    "Valvular disease (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserValvularDiseaseVS"
* #WGHTLOSS    "Weight loss (Elixhauser comorbidity category)" "Patient has a disorder in the value set ElixhauserWeightLossVS"

CodeSystem: SnomedRequestedCS
Id: snomed-requested-cs
Title: "Requested SNOMED Codes Code System"
Description: "Codes requested from SNOMED by mCODE, to be issued at a later date. Where numeric codes are given, these correspond to the expected SNOMED-CT codes. Terms beginning with 'USCRS-' (for United States Content Request Service) represent request identifiers with no SNOMED code yet approved or assigned."
* ^caseSensitive = true
* #USCRS-33351 "Bowel space (body structure)"               // rejected
* #USCRS-33352 "Small bowel space (body structure)"         // rejected

