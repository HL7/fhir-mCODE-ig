Alias: COMORB =  http://terminology.hl7.org/CodeSystem/comorbidities-elixhauser
Alias: RID = http://hl7.org/fhir/us/mcode/CodeSystem/mcode-resource-identifier-cs
Alias: CC = http://hl7.org/fhir/us/mcode/CodeSystem/mcode-catch-code-cs
Alias: RT = http://terminology.hl7.org/CodeSystem/radiotherapy

CodeSystem: CatchCodeCS
Id: mcode-catch-code-cs
Title: "mCODE Catch Codes"
Description: "Codes needed for positive identification of certain types of instances, more specifically, to uniquely associate instances with slices when they are used in bundles. The codes in this code system are used when a concept falls outside of the defined set of codes. They make it possible to use 'required' bindings where 'extensible' bindings would result an instance matching multiple slices and thus trigger validation errors."
* #PCC-OTHER "Other Primary Cancer Condition, Specify" "Code to be used when the desired concept is not represented base value set. This code represents the equivalent of 'Other, specify: _________'. Specify the additional concept as the second coding."
* #SCC-OTHER "Other Secondary Cancer Condition, Specify" "Code to be used when the desired concept is not represented base value set. This code represents the equivalent of 'Other, specify: _________'. Specify the additional concept as the second coding."
* #TMT-OTHER "Other Tumor Marker Test, Specify" "Code to be used when the desired concept is not represented base value set. This code represents the equivalent of 'Other, specify: _________'. Specify the additional concept as the second coding."
* #CD-OTHER "Other Cancer Disorder, Specify"  "Code to be used when the desired concept is not represented base value set. This code represents the equivalent of 'Other, specify: _________'. Specify the additional concept as the second coding."

CodeSystem: ResourceIdentifierCS
Id: mcode-resource-identifier-cs
Title: "mCODE Resource Identifier Code System"
Description: "Concepts describing instance types, to be used in the `code` element of instances. These codes were created because no appropriate concept could be found in established vocabularies. These concepts are analogous to LOINC codes for laboratory observations: they identify the type of thing an instance represents.

Please note that while these codes may imply conformance to the profiles that use them, they are not synonymous with profiles and do not serve the same purpose in a FHIR resource for several reasons:

1. An instance of a resource like Group, Observation, or Procedure may conform to multiple profiles, but may only have one 'type of thing' as determined by the value of `code` (which has a maximum cardinality of 1).
2. `Procedure.code`, `Observation.code`, and `Group.code` elements require a [CodeableConcept data type](http://www.hl7.org/fhir/datatypes.html#CodeableConcept), which can be satisfied with a code from this code system. In contrast, a profile is identified with a [canonical URL](http://www.hl7.org/fhir/structuredefinition-definitions.html#StructureDefinition.url), which is represented by a [URI data type](http://www.hl7.org/fhir/datatypes.html#uri). In other words, a profile's canonical URL belongs in the `meta.profile` element, whereas the codes in this code system belong in `Resource.code` elements.
3. The same `code` can correspond to more than one profile (although not the case here)."

* #mcode-patient "mCODE Patient Group Resource" "Identifies a Group resource containing in-scope cancer patients that conforms to the MCODEPatientGroup profile."
* #mcode-radiotherapy-course-summary "Radiotherapy Course Summary Resource" "Identifies a Procedure resource that summarizes a radiotherapy treatment that conforms to the RadiotherapyCourseSummary profile."
* #mcode-teleradiotherapy-treatment-phase "Teleradiotherapy Treatment Phase Resource" "Identifies a Procedure resource that describes delivery of teleradiotherapy (external beam radiation) and conforms to the TeleradiotherapyTreatmentPhase profile."
* #mcode-brachytherapy-treatment-phase "Brachytherapy Treatment Phase Resource" "Identifies a Procedure resource that describes delivery of brachytherapy (internal or surface radiation) and conforms to the BrachytherapyTreatmentPhase profile."

// CodeSystem: RadiotherapyCS
// Id: radiotherapy-cs
// Title: "Radiotherapy Code System"
// Description: "Concepts used in association with radiotherapy profiles in mCODE, where terms could not be found in standard sources such as SNOMED CT."
// * ^url =  http://terminology.hl7.org/CodeSystem/radiotherapy
//* #LDR-PERM "Low Dose Rate Brachytherapy - Permanent Placement" "Radiation treatment that irradiates a body volume with permanently placed radiation sources delivering low dose rates (typically less than or equal to 2 Gy/hour)."
//* #LDR-TEMP "Low Dose Rate Brachytherapy - Temporary Placement" "Radiation treatment that irradiates a body volume with temporarily placed radiation sources delivering low dose rates (typically less than or equal to 2 Gy/hour)."
//* #3D "Three Dimensional"  "Dose calculated with projection onto 3D imaging (e.g., CT or MR) delivered with either static aperture (Collimator, SRS Cone, Static MLC, blocks, etc) or non-IMRT/VMAT dynamic apertures (e.g., field-in-field, dynamic arc) using either single gantry angles or arcs."
//* #PPS  "Particle Passive Scattering" "In proton or carbon ion beam therapy, a technique where the beam is spread out to larger dimension using a scattering device such as lead foil."
//* #PSS "Particle Spot Scanning"  "In proton or carbon ion beam therapy, a technique where accelerated particles are focused into a small beam and then moved (scanned) over target regions in the patient."
//* #MIX "Mixed" "Both photon and particle based beams are used to deliver the radiation therapy."
//* #CAV-IMB "Intracavitary, Intensity Modulated" "A technique of brachytherapy that dynamically directs the radiation into the tumours and away from healthy tissue, for example, by incorporation of metallic shields inside brachytherapy applicators."
// * #LN_AX_L1  "Level 1 Axillary Lymph Nodes"
// * #LN_Ax_L2  "Level 2 Axillary Lymph Nodes"
// * #LN_Ax_L3  "Level 3 Axillary Lymph Nodes"
// * #LN_Neck_IA  "Level IA (Submental) neck node"
// * #LN_Neck_IB  "Level IB (Submandibular) neck node"
// * #LN_Neck_II  "Level II (Upper Jugular) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_IIA  "Level IIA (Upper Jugular) neck node"
// * #LN_Neck_IIB  "Level IIB (Upper Jugular) neck node"
// * #LN_Neck_III  "Level III (Middle Jugular) neck node"
// * #LN_Neck_IV  "Level IV neck (Lower Jugular) node"
// * #LN_Neck_IVA  "Level IVA (Lower Jugular) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_IVB  "Level IVB (Medial Suprclavicular) nodes"  // Post STU 2 ballot
// * #LN_Neck_V  "Level V (Posterior Triangle) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_VA  "Level VA (Upper Posterior Triangle) neck node"
// * #LN_Neck_VB  "Level VB (Lower Posterior Triangle) neck node"
// * #LN_Neck_VC  "Level VC (Lateral spraclavicular) neck node"
// * #LN_Neck_VI  "Level VI (Anterior Triangle) neck node"
// * #LN_Neck_VIA  "Level VIA (Anterior Jugular) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_VIB  "Level VIB (Prelaryngeal, pretracheal, & paratracheal) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_VII  "Level VII (Prevertebral compartment) neck node"
// * #LN_Neck_VIIA  "Level VIIA (Retropharyngeal) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_VIIB  "Level VIIB (Retro-styloid) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_VIII  "Level VIII (Parotid) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_IX  "Level IX (Bucco-facial) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_X  "Level X (Posterior skull) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_XA  "Level XA (Retroauricular & subauricular) neck nodes"  // Post STU 2 ballot
// * #LN_Neck_XB  "Level XB (Occipital) neck nodes"  // Post STU 2 ballot


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
