Alias: COMORB = http://hl7.org/fhir/us/mcode/CodeSystem/mcode-comorbidities-elixhauser-ahrq-cs
Alias: RID = http://hl7.org/fhir/us/mcode/CodeSystem/mcode-resource-identifier-cs
Alias: CC = http://hl7.org/fhir/us/mcode/CodeSystem/mcode-catch-code-cs
Alias: RT = http://hl7.org/fhir/us/mcode/CodeSystem/mcode-radiotherapy-cs

CodeSystem: CatchCodeCS
Id: mcode-catch-code-cs
Title: "mCODE Catch Codes"
Description: "Codes needed for positive identification of certain types of instances, more specifically, to uniquely associate instances with slices when they are used in bundles. The codes in this code system are used when a concept falls outside of the defined set of codes. They make it possible to use 'required' bindings where 'extensible' bindings would result an instance matching multiple slices and thus trigger a validation error."
* #PCC-OTHER "Other Primary Cancer Condition, Specify" "Code to be used when the desired concept is not represented base value set. This code represents the equivalent of 'Other, specify: _________'. Specify the additional concept as the second coding."
* #SCC-OTHER "Other Secondary Cancer Condition, Specify" "Code to be used when the desired concept is not represented base value set. This code represents the equivalent of 'Other, specify: _________'. Specify the additional concept as the second coding."
* #TMT-OTHER "Other Tumor Marker Test, Specify" "Code to be used when the desired concept is not represented base value set. This code represents the equivalent of 'Other, specify: _________'. Specify the additional concept as the second coding."
* #CD-OTHER "Other Cancer Disorder, Specify"  "Code to be used when the desired concept is not represented base value set. This code represents the equivalent of 'Other, specify: _________'. Specify the additional concept as the second coding."

CodeSystem: ResourceIdentifierCS
Id: mcode-resource-identifier-cs
Title: "mCODE Resource Identifier Code System"
Description: "Concepts describing types of instances, to be used in the 'code' element of an instance."
* #mcode-patient "mCODE Patient Group Resource" "Identifies a Group resource containing mCODE cancer patients that conforms to the MCODEPatientGroup profile."
* #mcode-comorbidity  "Elixhauser Comorbidity Resource" "Identifies an Observation resource representing Elixhauser comorbidities that conforms to the ComorbiditiesElixhauser profile."
* #mcode-radiotherapy-summary "Radiotherapy Summary Resource" "Identifies an Observation resource that summarizes a radiotherapy course of treatment that conforms to the RadiotherapySummary profile."
* #mcode-radiotherapy-ebrt "Teleradiotherapy Prescription Delivery Resource" "Identifies an Observation resource that describes delivery of a teleradiotherapy (external beam) prescription and conforms to the TeleradiotherapyPrescriptionDelivery profile."
* #mcode-radiotherapy-brachy "Brachytherapy Prescription Delivery Resource" "Identifies an Observation resource that describes delivery of a brachytherapy (external beam) prescription and conforms to the BrachytherapyPrescriptionDelivery profile."

CodeSystem: RadiotherapyCS
Id: mcode-radiotherapy-cs
Title: "Radiotherapy Code System"
Description: "Codes describing the modalities, techniques, and devices used in external beam radiotherapy and brachytherapy procedures."
//-- Teleradiotherapy Modalities
* #PROTON "Proton Beam Radiation Therapy" "A type of external beam radiation therapy using a beam of proton particles." 
* #ELECTRON "Electron Beam Radiation Therapy"  "Radiation therapy using electron (beta particle) beam."
* #NEUTRON "Neutron Beam Radiation Therapy" "A type of radiation therapy that uses a beam of accelerated neutrons."
* #CARBON  "Carbon Ion Beam Radiation Therapy"  "Ion beam radiation therapy that uses charged carbon particle. Compared to proton beam therapy, the larger mass of carbon results in decreased beam scattering, yielding a sharper dose distribution border with minimal penumbra and two to three times the relative biological effect."
* #PHOTON "Photon Beam Radiation Therapy" "Radiation therapy that uses photons (electromagnetic radiation) to treat tumors, including gamma rays and x-rays."
//-- Brachytherapy Modalities
* #LDR "Low Dose Rate Brachytherapy" "Internal or surface radiation treatment that targets a cancerous tissue with low dose rates of radiation."
* #PDR "Pulsed Dose Rate Brachytherapy" "Internal or surface radiation using a stronger radiation source than low dose rate brachytherapy and producing series of short exposures of 10 to 30 minutes in every hour."
* #HDR  "High Dose Rate Brachytherapy" "Internal or surface radiation treatment that targets a cancerous tissue with high rates of radiation."
* #ELEC "High Dose Rate Electronic Brachytherapy"  "A modality of internal or surface radiation that uses miniaturized X-ray sources instead of radionuclides to deliver high rates of radiation."
* #PHARM "Radiopharmaceutical Therapy" "The use of radioactive drugs that can be given by mouth, infused, or injected."
//-- Teleradiotherapy Techniques
* #IMRT "Intensity Modulated Radiation Therapy" "A technique of high-precision radiotherapy that uses computer control to deliver precise radiation doses that conform to a three-dimensional (3-D) shape by modulating the intensity of the radiation beam in multiple small volumes."
* #VMAT "Volumetric Modulated Arc Therapy" "A type of IMRT technique where the radiotherapy machine rotates around the patient, radiating the target in a complete three-dimensional manner with precision and speed."
* #3D "Three Dimensional"  "Dose calculated with projection onto 3D imaging (e.g. CT or MR) delivered with either static aperture (Collimator, SRS Cone, Static MLC, blocks, etc) or non-IMRT/VMAT dynamic apertures (e.g. field-in-field, dynamic arc) using either single gantry angles or arcs."
* #2D "Two Dimensional" "Dose calculated without projection onto 3D imaging and delivered without 3D techniques."
* #IORT "Intraoperative Radiation Therapy" "An intensive radiation treatment administered during surgery."
* #PPS  "Particle Passive Scattering" "In proton or carbon ion beam therapy, a technique where the beam is spread out to larger dimension using a scattering device such as lead foil."
* #PSS "Particle Spot Scanning"  "In proton or carbon ion beam therapy, a technique where accelerated particles are focused into a small beam and then moved (scanned) over target regions in the patient."
* #MIX "Mixed" "Both Photon and Particle based beams are used to deliver the therapeutic dose"
* #IMNT "Intensity Modulated Neutron Therapy" "A technique of conformal application of neutron beams that resuts in substantial reduction in normal tissue dose."
* #NCT "Neutron Capture Therapy" "A technique where the patient is injected with a tumor-localizing drug containing a neutron absorber (boron-10), and then radiated with neutrons, which are captured, releasing high-energy alpha particles."
//-- Brachytherapy Techniques
* #CAV "Intracavitary" "Placement of a radioactive source within an open cavity of the body."
* #CAV-IMB "Intracavitary, Intensity Modulated" "A technique of brachytherapy that dynamically directs the radiation into the tumours and away from healthy tissue, for example, by incorporation of metallic shields inside brachytherapy catheters."
* #INSTIT "Interstitial"  "Placement or implanting radioactive source into tissue."
* #INSTIT-PERM "Interstitial-Permanent" "Implantment of a radioactive source into body tissue, and left in place permanently."
* #INSTIT-TEMP "Interstitial-Temporary"  "Implantment of a radioactive source into body tissue, and removed after a period of time."
* #LUM "Intraluminal"  "Placement of a radioactive source into a lumen, usually understood to mean the gastrointestinal, esophageal, endobrochial, or less commonly, within the bile duct or urinary bladder."
* #SURF "Surface" "Placement of a radioactive source on the skin." 
* #VASC "Intravascular" "Placement of a radioactive source into a blood vessel or blood vascular system or vascular injection of radiopharaceutical."
* #ORAL "Oral"  "Ingestion of radiopharaceutical via oral route."

CodeSystem: ComorbiditiesElixhauserAHRQCS
Id: mcode-comorbidities-elixhauser-ahrq-cs
Title: "Elixhauser Comorbidity Category"
Description: "A code system that contains codes representing the comorbidity categories originally defined by Elixhauser, and updated by the Agency for Healthcare Research and Quality (AHRQ) Healthcare Cost and Utilization Project (H-CUP)."
* #AIDS    "Acquired immune deficiency syndrome"
* #ALCOHOL    "Alcohol abuse" 
* #ANEMDF    "Deficiency anemias"
* #ARTH    "Arthropathies"
* #BLDLOSS    "Chronic blood loss anemia"
* #CANCER_LEUK    "Leukemia"
* #CANCER_LYMPH    "Lymphoma"
* #CANCER_METS    "Metastatic cancer"
* #CANCER_NSITU    "Solid tumor without metastasis, in situ"
* #CANCER_SOLID    "Solid tumor without metastasis, malignant"
* #CBVD    "Cerebrovascular disease"
* #CHF    "Congestive heart failure"
* #COAG    "Coagulopathy"
* #DEMENTIA    "Dementia"
* #DEPRESS    "Depression"
* #DIAB_CX    "Diabetes with chronic complications"
* #DIAB_UNCX    "Diabetes without chronic complications"
* #DRUG_ABUSE    "Drug abuse"
* #HTN_CX    "Hypertension, complicated"
* #HTN_UNCX    "Hypertension, uncomplicated"
* #LIVER_MLD    "Liver disease, mild"
* #LIVER_SEV    "Liver disease, moderate to severe"
* #LUNG_CHRONIC    "Chronic pulmonary disease"
* #NEURO_MOVT    "Neurological disorders affecting movement"
* #NEURO_OTH    "Other neurological disorders"
* #NEURO_SEIZ    "Seizures and epilepsy"
* #OBESE    "Obesity"
* #PARALYSIS    "Paralysis"
* #PERIVASC    "Peripheral vascular disease"
* #PSYCHOSIS    "Psychosis"
* #PULMCIRC    "Pulmonary circulation disease"
* #RENLFL_MOD    "Renal failure, moderate"
* #RENLFL_SEV    "Renal failure, severe"
* #THYROID_HYPO    "Hypothyroidism"
* #THYROID_OTH    "Other thyroid disorders"
* #ULCER_PEPTIC    "Peptic ulcer with bleeding"
* #VALVE    "Valvular disease"
* #WGHTLOSS    "Weight loss"
