Alias: COMORB =  http://terminology.hl7.org/CodeSystem/comorbidities-elixhauser
Alias: RID = http://hl7.org/fhir/us/mcode/CodeSystem/mcode-resource-identifier-cs
Alias: RT = http://terminology.hl7.org/CodeSystem/radiotherapy

CodeSystem: ResourceIdentifierCS
Id: mcode-resource-identifier-cs
Title: "mCODE Resource Identifier Code System"
Description: "Concepts describing instance types, to be used in the `code` element of instances. These codes were created because no appropriate concept could be found in established vocabularies. These concepts are analogous to LOINC codes for laboratory observations: they identify the type of thing an instance represents.

Please note that while these codes may imply conformance to the profiles that use them, they are not synonymous with profiles and do not serve the same purpose in a FHIR resource for several reasons:

1. An instance of a resource like Group, Observation, or Procedure may conform to multiple profiles, but may only have one 'type of thing' as determined by the value of `code` (which has a maximum cardinality of 1).
2. `Procedure.code`, `Observation.code`, and `Group.code` elements require a [CodeableConcept data type](http://www.hl7.org/fhir/datatypes.html#CodeableConcept), which can be satisfied with a code from this code system. In contrast, a profile is identified with a [canonical URL](http://www.hl7.org/fhir/structuredefinition-definitions.html#StructureDefinition.url), which is represented by a [URI data type](http://www.hl7.org/fhir/datatypes.html#uri). In other words, a profile's canonical URL belongs in the `meta.profile` element, whereas the codes in this code system belong in `Resource.code` elements.
3. The same `code` can correspond to more than one profile (although not the case here)."

* #mcode-patient "mCODE Patient Group Resource" "Identifies a Group resource containing in-scope cancer patients that conforms to the MCODEPatientGroup profile."


// LOINC Request 6073 requests LOINC codes for these categories, and for the overall index. Submitted 7/7/21
CodeSystem: ComorbiditiesElixhauserCS
Id: comorbidities-elixhauser-cs
Title: "Elixhauser Comorbidity Categories"
Description: "A set of codes representing the comorbidity categories originally defined by Elixhauser, and updated by the Agency for Healthcare Research and Quality (AHRQ) Healthcare Cost and Utilization Project (H-CUP)."
* ^url =  http://terminology.hl7.org/CodeSystem/comorbidities-elixhauser
* #AIDS    "Acquired immune deficiency syndrome Elixhauser category" "Patient has a disorder in the value set ElixhauserAidsVS"
* #ALCOHOL    "Alcohol abuse Elixhauser category" "Patient has a disorder in the value set ElixhauserAlcoholAbuseVS"
* #ANEMDF    "Deficiency anemias Elixhauser category" "Patient has a disorder in the value set ElixhauserDeficiencyAnemiaVS"
* #ARTH    "Arthropathies Elixhauser category" "Patient has a disorder in the value set ElixhauserRheumatoidArthritisVS"
* #BLDLOSS    "Chronic blood loss anemia Elixhauser category" "Patient has a disorder in the value set ElixhauserBloodLossAnemiaVS"
* #CANCER_LEUK    "Leukemia Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerLeukemiaVS"
* #CANCER_LYMPH    "Lymphoma Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerLymphomaVS"
* #CANCER_METS    "Metastatic cancer Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerMetastaticVS"
* #CANCER_NSITU    "Solid tumor without metastasis, in situ Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerSolidTumorInSituVS"
* #CANCER_SOLID    "Solid tumor without metastasis, malignant Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerSolidTumorMalignantVS"
* #CBVD    "Cerebrovascular disease Elixhauser category" "Patient has a disorder in the value set ElixhauserCerebrovascularDiseaseVS"
* #CHF    "Congestive heart failure Elixhauser category" "Patient has a disorder in the value set ElixhauserCongestiveHeartFailureVS"
* #COAG    "Coagulopathy Elixhauser category" "Patient has a disorder in the value set ElixhauserCoagulationDeficiencyVS"
* #DEMENTIA    "Dementia Elixhauser category" "Patient has a disorder in the value set ElixhauserDementiaVS"
* #DEPRESS    "Depression Elixhauser category" "Patient has a disorder in the value set ElixhauserDepressionVS"
* #DIAB_CX    "Diabetes with chronic complications Elixhauser category" "Patient has a disorder in the value set ElixhauserDiabetesComplicatedVS"
* #DIAB_UNCX    "Diabetes without chronic complications Elixhauser category" "Patient has a disorder in the value set ElixhauserDiabetesUncomplicatedVS"
* #DRUG_ABUSE    "Drug abuse Elixhauser category"  "Patient has a disorder in the value set ElixhauserDrugAbuseVS"
* #HTN_CX    "Hypertension, complicated Elixhauser category" "Patient has a disorder in the value set ElixhauserHypertensionComplicatedVS"
* #HTN_UNCX    "Hypertension, uncomplicated Elixhauser category" "Patient has a disorder in the value set ElixhauserHypertensionUncomplicatedVS"
* #LIVER_MLD    "Liver disease, mild Elixhauser category" "Patient has a disorder in the value set ElixhauserLiverDiseaseMildVS"
* #LIVER_SEV    "Liver disease, moderate to severe Elixhauser category" "Patient has a disorder in the value set ElixhauserLiverDiseaseSevereVS"
* #LUNG_CHRONIC    "Chronic pulmonary disease Elixhauser category" "Patient has a disorder in the value set ElixhauserChronicPulmonaryDiseaseVS"
* #NEURO_MOVT    "Neurological disorders affecting movement Elixhauser category" "Patient has a disorder in the value set ElixhauserNeurologicalMovementDisorderVS"
* #NEURO_OTH    "Other neurological disorders Elixhauser category" "Patient has a disorder in the value set ElixhauserOtherNeurologicalVS"
* #NEURO_SEIZ    "Seizures and epilepsy Elixhauser category" "Patient has a disorder in the value set ElixhauserNeurologicalSeizureDisorderVS"
* #OBESE    "Obesity Elixhauser category" "Patient has a disorder in the value set ElixhauserObesityVS"
* #PARALYSIS    "Paralysis Elixhauser category" "Patient has a disorder in the value set ElixhauserParalysisVS"
* #PERIVASC    "Peripheral vascular disease Elixhauser category" "Patient has a disorder in the value set ElixhauserPeripheralVascularDiseaseVS"
* #PSYCHOSIS    "Psychosis Elixhauser category" "Patient has a disorder in the value set ElixhauserPsychosisVS"
* #PULMCIRC    "Pulmonary circulation disease Elixhauser category" "Patient has a disorder in the value set ElixhauserPulmonaryCirculationDisorderVS"
* #RENLFL_MOD    "Renal failure, moderate Elixhauser category" "Patient has a disorder in the value set ElixhauserRenalFailureModerateVS"
* #RENLFL_SEV    "Renal failure, severe Elixhauser category" "Patient has a disorder in the value set ElixhauserRenalFailureSevereVS"
* #THYROID_HYPO    "Hypothyroidism Elixhauser category" "Patient has a disorder in the value set ElixhauserHypothyroidismVS"
* #THYROID_OTH    "Other thyroid disorders Elixhauser category" "Patient has a disorder in the value set ElixhauserOtherThyroidDisorderVS"
* #ULCER_PEPTIC    "Peptic ulcer with bleeding Elixhauser category" "Patient has a disorder in the value set ElixhauserUlcerVS"
* #VALVE    "Valvular disease Elixhauser category" "Patient has a disorder in the value set ElixhauserValvularDiseaseVS"
* #WGHTLOSS    "Weight loss Elixhauser category" "Patient has a disorder in the value set ElixhauserWeightLossVS"

CodeSystem: LNC_TBD
Id: loinc-tbd-cs
Title: "Requested LOINC Codes"
Description: "Codes requested from LOINC by Clinical Genomics Work Group, to be issued at a later date."
* #molecular-consequence "Molecular Consequence" "Annotated changes to sequence features caused by this variant. Terms are from the sequence ontology under SO:0001537."
* #diagnostic-implication "Diagnosic Implication" "Diagnostic Implication"

CodeSystem: SCT_TBD
Id: snomed-tbd-cs
Title: "Requested SNOMED Codes"
Description: "Codes requested from SNOMED by mCODE, to be issued at a later date. Where numeric codes are given, these correspond to the expected SNOMED-CT codes. Terms beginning with 'USCRS-' (for United States Content Request Service) represent request identifiers with no SNOMED code yet approved or assigned."
* #1162492000 "Tumor bed (morphologic abnormality)" // SNOMED term available to be released in Jan 2021
* #1162782007 "Three dimensional external beam radiation therapy (procedure)" // to be released Jan 2021
* #1162586008 "Irradiated volume of organ at risk (observable entity)"  // to be released Jan 2021
* #1162616006 "Lymph node level IA (qualifier value)"
* #1162617002 "Lymph node level IB (qualifier value)"
* #1162620005 "Lymph node level IVA (qualifier value)"
* #1162621009 "Lymph node level IVB (qualifier value)"
* #1162622002 "Lymph node level VA (qualifier value)"
* #1162623007 "Lymph node level VB (qualifier value)"
* #1162624001 "Lymph node level VC (qualifier value)"
* #1162625000 "Lymph node level VIA (qualifier value)"
* #1162626004 "Lymph node level VIB (qualifier value)"
* #1162628003 "Lymph node level VIIA (qualifier value)"
* #1162627008 "Lymph node level VIIB (qualifier value)"
* #1162618007 "Lymph node level VIII (qualifier value)"
* #1162619004 "Lymph node level IX (qualifier value)"
* #1162614009 "Lymph node level X (qualifier value)"
* #1162615005 "Lymph node level XA (qualifier value)"
* #1162613003 "Lymph node level XB (qualifier value)"
* #USCRS-33351 "Bowel space (body structure)"
* #USCRS-33352 "Small bowel space (body structure)"
* #USCRS-33346 "Presacral lymph node group (body structure)"
* #USCRS-PS "External beam radiation therapy using particle scanning technique (procedure)" // not yet requested through US Content Request Service
* #USCRS-33144 "non-adjacent (qualifier)"
* #USCRS-352237 "Cancer in partial remission (finding)"  // not yet used anywhere
* #USCRS-352236 "Cancer in complete remission(finding)"  // not yet used anywhere
* #USCRS-33292 "Radiotherapy Course Summary (procedure)"
// * #USCRS-33347 "supra-mammary" // request rejected, TRG requested qualifier removal
* #USCRS-33146 "Bone structure of thirteenth rib (body structure)"
* #USCRS-33350 "Retrostyloid space (body structure)"
* #USCRS-33147 "Structure of body of thirteenth thoracic vertebra (body structure)"
* #USCRS-33348 "Jugular Fossa (body structure)"
