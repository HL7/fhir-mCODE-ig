//----------- MODALITIES -----------------------

ValueSet:  TeleradiotherapyModalityVS
Id: mcode-teleradiotherapy-modality-vs
Title: "Teleradiotherapy Modality Value Set"
Description: "Codes describing the modalities of teleradiotherapy (external beam) procedures. This value set is considered closed (not extensible on ad hoc basis by the implementer)."
// * insert ExpandValueSet
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#10611004 "Teleradiotherapy protons (procedure)"
* SCT#45643008 "Teleradiotherapy using electrons (procedure)"
* SCT#80347004 "Teleradiotherapy neutrons (procedure)"
* RT#CARBON
* RT#PHOTON

ValueSet: BrachytherapyModalityVS
Id: mcode-brachytherapy-modality-vs
Title: "Brachytherapy Modality Value Set"
Description: "Codes describing the modalities of brachytherapy procedures. This value set is considered closed (not extensible on ad hoc basis by the implementer)."
// * insert ExpandValueSet
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* RT#LDR-TEMP
* RT#LDR-PERM
* RT#PDR
* SCT#394902000 "High dose brachytherapy (procedure)"
* RT#EBRACHY
* SCT#440252007 "Administration of radiopharmaceutical (procedure)"

ValueSet: RadiotherapyModalityVS
Id: mcode-radiotherapy-modality-vs
Title: "Radiotherapy Modality Value Set"
Description: "Codes describing the modalities of external beam and brachytherapy radiation procedures, for use with radiotherapy summaries."
// * insert ExpandValueSet
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from valueset TeleradiotherapyModalityVS
* include codes from valueset BrachytherapyModalityVS

//----------- TECHNIQUES -----------------------

ValueSet: TeleradiotherapyTechniqueVS
Id: mcode-teleradiotherapy-technique-vs
Title: "Teleradiotherapy Technique Value Set"
Description: "Codes describing the techniques of teleradiotherapy (external beam) procedures. This vallue set is considered extensible."
// * insert ExpandValueSet
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* RT#VMAT
* SCT#434131000124108 "Three dimensional conformal radiotherapy (procedure)"	
* RT#2D
* RT#IORT
* RT#PPS
* RT#PSS
* RT#MIX
* RT#IMNT
* SCT#169317000 "Neutron capture therapy (procedure)"

ValueSet: BrachytherapyTechniqueVS
Id: mcode-brachytherapy-technique-vs
Title: "Brachytherapy Technique Value Set"
Description: "Codes describing the techniques of brachytherapy (internal or surface radiation) procedures. This vallue set is considered extensible."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#384692006 "Intracavitary brachytherapy (procedure)"
* RT#CAV-IMB
* SCT#113120007 "Interstitial brachytherapy (procedure)"
* RT#VASC
* SCT#384691004 "Intraluminal brachytherapy (procedure)"
* RT#IORT
* SCT#14473006 "Surface brachytherapy (procedure)"
* SCT#16560241000119104 "Oral radionuclide therapy (procedure)"

ValueSet: RadiotherapyTechniqueVS
Id: mcode-radiotherapy-technique-vs
Title: "Radiotherapy Technique Value Set"
Description: "Codes describing the techniques of external beam and brachytherapy radiation procedures, for use with radiotherapy summaries."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from valueset TeleradiotherapyTechniqueVS
* include codes from valueset BrachytherapyTechniqueVS


/*  SAVE
ValueSet: RadiotherapyBodySiteVS
Id: mcode-radiotherapy-body-site-vs
Title: "Radiation Target Body Site Value Set"
Description: "Codes for body sites that can be targets of radiation therapy. This list of sites is based on Commission on Cancer’s 'Standards for Oncology Registry Entry  - STORE 2018'. This value set contains SNOMED CT equivalent terms."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#81105003       "Cervical lymph node group (body structure)"
* SCT#196374005       "Entire lymph node of thorax (body structure)"
* SCT#245269009       "Axillary lymph node group (body structure)"
* SCT#245265003       "Supraclavicular lymph node group (body structure)"
* SCT#245282001       "Internal mammary lymph node group (body structure)"
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


//----------- DEVICES -----------------------

ValueSet: TeleradiotherapyDeviceVS
Id: mcode-teleradiotherapy-device-vs
Title: "Teleradiotherapy Device Value Set"
Description: "Codes describing the devices used in teleradiotherapy (external beam) procedures."
* RT#LINAC
* RT#RLINAC
* RT#MRLINAC
* RT#ROBOTIC
* RT#ISOMULTI
* RT#KV
* RT#NGLINAC
* RT#MULTI

ValueSet: BrachytherapyDeviceVS
Id: mcode-brachytherapy-device-vs
Title: "Brachytherapy Device Value Set"
Description: "Codes describing the devices used in brachytherapy (internal or surface radiation) procedures."
* RT#TANDEM
* RT#CYL
* RT#OVOID
* RT#RING
* RT#SEED 
* RT#EYE
* RT#HYBRID
* RT#TARG 
* RT#NONTARG 

//-- Teleradiotherapy Devices
* #LINAC "Linac" "Gantry based delivery with linear accelerator based source"
* #RLINAC "RLinac" "Ring Gantry based delivery with linear accelerator based source e.g. Ethos, Tomotherapy"
* #MRLINAC "MRLinac" "Gantry based delivery with linear accelerator based source with onboard MRI for patient positioning."
* #NGLINAC "Non-gantry based linear accelerator, e.g. specialty devices used for IORT, e.g. Mobetron."
* #ROBOTIC "Robotic" "Multiple axis (other than MLCs) moved under electronic control during delivery of dose from a single beam with linear accelerator based source. e.g. CyberKnife."
* #ISOMULTI "Isotope Multisource" "Multisource radiation use of multiple sources at different positons using isotope based source e.g. GammaKnife"
* #KV "Kilovolt (kV)" "Non-megavoltage, electronically generated photons"
* #MULTI "Multisource radiation" "Multisource radiation use of multiple sources at different positons using linear accelerator-based source"
//-- Brachytherapy Devices
* #TANDEM  "Tandem" "Tandem Brachytherapy Device"
* #CYL  "Cylinder" "Cylinder Brachytherapy Device"
* #OVOID "Ovoids" "Ovoid Brachytherapy Device"
* #RING  "Ring" "Ring Brachytherapy Device"
* #SEED  "Seeds" "Seeds Brachytherapy Device"
* #EYE  "Eye-plaque" "Eye-plaque Brachytherapy Device"  
* #HYBRID   "Hybrid"  "Hybrid Brachytherapy Device"
* #TARG  "Targeted" "Targeted Brachytherapy Device"
* #NONTARG  "NonTargeted" "NonTargeted Brachytherapy Device"
*/