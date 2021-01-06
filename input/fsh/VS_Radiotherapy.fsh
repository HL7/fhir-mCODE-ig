ValueSet:  RadiationModalityVS
Id: mcode-radiation-modality-vs
Title: "Radiation Procedure Value Set"
Description: "Codes describing the major categories of radiation therapy procedures, for example, external application of beam (teleradiology), internal sealed-source (brachytherapy), or an unsealed-source radiopharmaceutical."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// External Beam
* SCT#33195004 "Teleradiotherapy procedure (procedure)"
* SCT#169291001 "X-ray beam therapy (procedure)" // photons
* SCT#80347004 "Teleradiotherapy neutrons (procedure)"
* SCT#10611004 "Teleradiotherapy protons (procedure)"
* SCT#45643008 "Teleradiotherapy using electrons (procedure)"
* SCT#312248006 "Heavy ion teletherapy (procedure)" // e.g., carbon ion
// Brachytherapy
C0454271  Low dose rate brachytherapy  // SCT#228868000 | Low dose rate brachytherapy (observable entity) |
C0454270  High dose brachytherapy (procedure) SCT#394902000 | High dose brachytherapy (procedure) |
C3897809  Pulsed-Dose Rate Brachytherapy
C2584639  High dose rate electronic brachytherapy

// Radiopharmaceutical
* SCT#440252007 "Administration of radiopharmaceutical (procedure)"
// potentially include injected radionuclide


ValueSet: RadiationTechniqueVS
// External Beam
C5236971  Conventional Radiotherapy   // 2D Radiotherapy
441783000 | Conformal radiotherapy (procedure) |  // 3D
441799006 | Intensity modulated radiation therapy (procedure) |    // C3489631 Volumetric-Modulated Arc Therapy 
C3179062  Radiotherapy, Image-Guided  // IGRT
C3896609  Stereotactic Body Radiation Therapy  // SBRT
C3846112  Radiosurgery, Stereotactic // SRS
// Brachytherapy
* SCT#113120007 "Interstitial brachytherapy (procedure)"
* SCT#384692006 "Intracavitary brachytherapy (procedure)"
* MTH#C0338240  "Intraoperative radiation therapy"
271291003 | Temporary implant radiotherapy (procedure) |
C2169181   irradiation by permanent brachytherapy implants







/*
ValueSet:  RadiationTypeVS
Id: mcode-radiation-type-vs
Title: "Radiation Type Value Set"
Description:    "Codes describing the type of radiation used to deliver treatment (e.g., photons, protons, x-rays), often called the modality of treatment."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
SCT#82371002 "Proton beam (physical force)"
SCT#285324001 "Neutron radiation (physical force)"
SCT#312253001 "Heavy ion radiation (physical force)"  // e.g. carbon-ion
SCT#73494004 "Electron beam (physical force)"
SCT#312252006 "Positron beam radiation (physical force)"
SCT#286630003 "Soft X-radiation (physical force)"
SCT#286629008 "Hard X-radiation (physical force)"
SCT#76772003 "Gamma radiation (physical force)"
SCT#89457008 "Radioactive isotope (substance)"
*/

/*
Radiation source -- radioisotope emission (iridium 192, iodine 131, palladium, cesium-137)
Superficial X-rays – 60  to 150 keV
Diagnostic X-rays – 20 to 150 keV
Orthovoltage X-rays – 200 to 500 keV
Supervoltage X-rays – 500 to 1000 keV
Megavoltage X-rays – 1 to 25 MeV (High energy photons)
*/




ValueSet:       RadiationTargetBodySiteVS
Id: mcode-radiation-target-body-site-vs
Title: "Radiation Target Body Site Value Set"
Description:    "Codes for body sites that can be targets of radiation therapy. This list of sites is based on Commission on Cancer’s 'Standards for Oncology Registry Entry  - STORE 2018'. This value set contains SNOMED CT equivalent terms."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#81105003       "Cervical lymph node group (body structure)"
* SCT#196374005       "Entire lymph node of thorax (body structure)"
* SCT#81105003       "Cervical lymph node group (body structure)"
* SCT#196374005       "Entire lymph node of thorax (body structure)"
* SCT#245269009       "Axillary lymph node group (body structure)"
* SCT#245265003       "Supraclavicular lymph node group (body structure)"
* SCT#245282001       "Internal mammary lymph node group (body structure)"
* SCT#245284000       "Abdominal lymph node group (body structure)"
* SCT#245294005       "Pelvic lymph node group (body structure)"
* SCT#245284000       "Abdominal lymph node group (body structure)"
* SCT#245294005       "Pelvic lymph node group (body structure)"
* SCT#59441001       "Structure of lymph node (body structure)"
* SCT#244486005       "Entire eye (body structure)"
* SCT#56329008       "Pituitary structure (body structure)"
* SCT#12738006       "Brain structure (body structure)"
* SCT#119235005       "Brain part (body structure)"
* SCT#2748008       "Spinal cord structure (body structure)"
* SCT#71836000       "Nasopharyngeal structure (body structure)"
* SCT#74262004       "Oral cavity structure (body structure)"
* SCT#31389004       "Oropharyngeal structure (body structure)"
* SCT#4596009       "Laryngeal structure (body structure)"
* SCT#81502006       "Hypopharyngeal structure (body structure)"
* SCT#2095001       "Nasal sinus structure (body structure)"
* SCT#385294005       "Salivary gland structure (body structure)"
* SCT#69748006       "Thyroid structure (body structure)"
* SCT#361355005       "Entire head and neck (body structure)"
* SCT#181216001       "Entire lung (body structure)"
* SCT#71400007       "Mesothelium structure (body structure)"
* SCT#302551006       "Entire thorax (body structure)"
* SCT#181131000       "Entire breast (body structure)"
* SCT#119184005       "Breast part (body structure)"
* SCT#78904004       "Chest wall structure (body structure)"
* SCT#181245004       "Entire esophagus (body structure)"
* SCT#69695003       "Stomach structure (body structure)"
* SCT#30315005       "Small intestinal structure (body structure)"
* SCT#71854001       "Colon structure (body structure)"
* SCT#34402009       "Rectum structure (body structure)"
* SCT#53505006       "Anal structure (body structure)"
* SCT#10200004       "Liver structure (body structure)"
* SCT#34707002       "Biliary tract structure (body structure)"
* SCT#28231008       "Gallbladder structure (body structure)"
* SCT#15776009       "Pancreatic structure (body structure)"
* SCT#113345001       "Abdominal structure (body structure)"
* SCT#302512001       "Entire urinary bladder (body structure)"
* SCT#119221008       "Bladder part (body structure)"
* SCT#64033007       "Kidney structure (body structure)"
* SCT#87953007       "Ureteric structure (body structure)"
* SCT#181422007       "Entire prostate (body structure)"
* SCT#119231001       "Prostate part (body structure)"
* SCT#13648007       "Urethral structure (body structure)"
* SCT#18911002       "Penile structure (body structure)"
* SCT#40689003       "Testis structure (body structure)"
* SCT#20233005       "Scrotal structure (body structure)"
* SCT#15497006       "Ovarian structure (body structure)"
* SCT#31435000       "Fallopian tube structure (body structure)"
* SCT#35039007       "Uterine structure (body structure)"
* SCT#71252005       "Cervix uteri structure (body structure)"
* SCT#76784001       "Vaginal structure (body structure)"
* SCT#45292006       "Vulval structure (body structure)"
* SCT#89546000       "Bone structure of cranium (body structure)"
* SCT#44300000       "Entire vertebral column (body structure)"
* SCT#16982005       "Shoulder region structure (body structure)"
* SCT#113197003       "Bone structure of rib (body structure)"
* SCT#29836001       "Hip region structure (body structure)"
* SCT#46633002       "Entire bony pelvis (body structure)"
* SCT#12921003       "Pelvic structure (body structure)"
* SCT#48566001       "Bone structure of extremity (body structure)"
* SCT#39937001       "Skin structure (body structure)"
* SCT#87784001       "Soft tissues (body structure)"
* SCT#38266002       "Entire body as a whole (body structure)"
// no concept for hemibody
