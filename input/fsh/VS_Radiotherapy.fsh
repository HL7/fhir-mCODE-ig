Alias: RO = http://hl7.org/fhir/us/mcode/CodeSystem/radiotherapy-cs

//----------- MODALITIES -----------------------

ValueSet:  TeleradiotherapyModalityVS
Id: teleradiotherapy-modality-vs
Title: "Teleradiotherapy Modality Value Set"
Description: "Codes describing the modalities of teleradiotherapy (external beam) procedures."
* RO#PROTON
* RO#ELECTRON
* RO#NEUTRON
* RO#CARBON
* RO#PHOTON
/*
* NCIT#C66897 "Proton Beam Radiation Therapy"
* NCIT#C15650 "Electron Beam Therapy"
* NCIT#C15440 "High-LET Neutron Therapy"
* NCIT#C160816  "Carbon Ion Radiation Therapy"
* NCIT#C104914 "Photon Beam Radiation Therapy"
Teleradiotherapy using electrons (procedure) SCTID: 45643008
Teleradiotherapy protons (procedure) SCTID: 10611004
Teleradiotherapy neutrons (procedure) SCTID: 80347004
*/

ValueSet: BrachytherapyModalityVS
Id: brachytherapy-modality-vs
Title: "Brachytherapy Modality Value Set"
Description: "Codes describing the modalities of brachytherapy (internal radiation) procedures."
* RO#LDR
* RO#PDR
* RO#HDR
* RO#ELEC
* RO#PHARM

/*
* NCIT#C85254 "Low-Dose Rate Brachytherapy"
* NCIT#C116542 "Pulsed-Dose Rate Brachytherapy"
* NCIT#C15651  "High dose brachytherapy"
* SCT#438629002 "High dose rate electronic brachytherapy"
* SCT#440252007  "Administration of radiopharmaceutical (procedure)"
*/

//----------- TECHNIQUES -----------------------

ValueSet: TeleradiotherapyTechniqueVS
Id: teleradiotherapy-technique-vs
Title: "Teleradiotherapy Technique Value Set"
Description: "Codes describing the techniques of teleradiotherapy (external beam) procedures."
* RO#IMRT
* RO#VMAT
* RO#3D
* RO#2D
* RO#IORT
* RO#Compensator
* RO#PPS
* RO#PSS
* RO#Mixed
* RO#IMNT
* RO#NCT

ValueSet: BrachytherapyTechniqueVS
Id: brachytherapy-technique-vs
Title: "Brachytherapy Technique Value Set"
Description: "Codes describing the techniques of brachytherapy (internal radiation) procedures."
* RO#Intracavitary
* RO#Intracavitary-IMB
* RO#Interstitial
* RO#Interstitial–Permanent
* RO#Interstitial–Temporary
* RO#Intravascular
* RO#Intraluminal
* RO#IORT
* RO#Surface
* RO#Surface-Temporary
* RO#Oral

//----------- DEVICES -----------------------

ValueSet: TeleradiotherapyDeviceVS
Id: teleradiotherapy-device-vs
Title: "Teleradiotherapy Device Value Set"
Description: "Codes describing the devices used in teleradiotherapy (external beam) procedures."
* RO#Linac
* RO#RLinac
* RO#MRLinac
* RO#Robotic
* RO#IsotopeMS
* RO#kV
* RO#NGLinac
* RO#MS

ValueSet: BrachytherapyDeviceVS
Id: brachytherapy-device-vs
Title: "Brachytherapy Device Value Set"
Description: "Codes describing the devices used in brachytherapy (internal radiation) procedures."
* RO#Tandem
* RO#Cylinder
* RO#Ovoids
* RO#Ring
* RO#Seeds 
* RO#Eye-plaque
* RO#Hybrid
* RO#Targeted 
* RO#NonTargeted 

//---------RADIOTHERAPY CODE SYSTEM-------

CodeSystem: RadiotherapyCS
Id: radiotherapy-cs
Title: "Radiotherapy Code System"
Description: "Codes describing the modalities, techniques, and devices used in external beam radiotherapy and brachytherapy (internal radiation) procedures."
//-- Teleradiotherapy Modalities
* #PROTON "Proton Beam Radiation Therapy"
* #ELECTRON "Electron Beam Radiation Therapy"
* #NEUTRON "Neutron Beam Radiatioin Therapy"
* #CARBON  "Carbon Ion Beam Radiation Therapy"
* #PHOTON "Photon Beam Radiation Therapy"
//-- Brachytherapy Modalities
* #LDR "Low-Dose Rate Brachytherapy"
* #PDR "Pulsed-Dose Rate Brachytherapy"
* #HDR  "High dose brachytherapy"
* #ELEC "High dose rate electronic brachytherapy"
* #PHARM "Radiopharmaceutical"
//-- Teleradiotherapy Techniques
* #IMRT "Intensity Modulated Radiation Therapy"
* #VMAT "Volumetric Modulated Radiation Therapy"
* #3D "3 Dimensional"  "Dose calculated with projection onto 3D imaging (e.g. CT or MR) delivered with either static aperture (Collimator, SRS Cone, Static MLC, blocks, etc) or Non-IMRT/VMAT dynamic apertures (e.g. Field-in-Field, dynamic arc) using either single gantry angles or arcs."
* #2D "2 Dimensional" "Dose calculated without projection onto 3D imaging (e.g. CT or MR) delivered with either static aperture (Collimator, SRS Cone, Static MLC, blocks, etc) or Non-IMRT/VMAT dynamic apertures (e.g. Field-in-Field, dynamic arc) using either single gantry angles or arcs."
* #IORT "Intraoperative Radiation Therapy"
* #Compensator "Compensator" "Applied to EBRT Electron, a thickness varied device is used to modulate both energy and intensity of electron"
* #PPS  "Particle Passive Scattering"
* #PSS "Particle Spot Scanning"
* #Mixed "Mixed" "Both Photon and Particle based beams are used to deliver the therapeutic dose"
* #IMNT "Intensity Modulated Neutron Therapy"
* #NCT "Neutron Capture Therapy"
//-- Brachytherapy Techniques
* #Intracavitary "Intracavitary"
* #Intracavitary-IMB "Intracavitary Intensity Modulated Brachytherapy"
* #Interstitial "Interstitial"
* #Interstitial–Permanent "Interstitial–Permanent"
* #Interstitial–Temporary "Interstitial–Temporary"
* #Intravascular "Intravascular"
* #Intraluminal "Intraluminal"
* #Surface "Surface"
* #Surface-Temporary "Surface-Temporary"
* #Oral "Oral"
//-- Teleradiotherapy Devices
* #Linac "Linac" "Gantry based delivery with linear accelerator based source"
* #RLinac "RLinac" "Ring Gantry based delivery with linear accelerator based source e.g. Ethos, Tomotherapy"
* #MRLinac "MRLinac" "Gantry based delivery with linear accelerator based source with onboard MRI for patient positioning."
* #Robotic "Robotic" "Multiple axis (other than MLCs) are moved under electronic control during delivery of dose from a single beam with linear accelerator based source. e.g. CyberKnife. "
* #IsotopeMS "IsotopeMS" "Multisource radiation use of multiple sources at different positons using isotope based source e.g. GammaKnife"
* #kV "kV" "Non-megavoltage, electronically generated photons"
* #NGLinac "Non-gantry based linac, e.g. specialty devices used for IORT e.g. Mobetron"
* #MS "Multisource radiation" "Multisource radiation use of multiple sources at different positons using linear accelerator-based source"
//-- Brachytherapy Devices
* #Tandem  "Tandem" "Tandem Brachytherapy Device"
* #Cylinder  "Cylinder" "Cylinder Brachytherapy Device"
* #Ovoids  "Ovoids" "Ovoid Brachytherapy Device"
* #Ring  "Ring" "Ring Brachytherapy Device"
* #Seeds  "Seeds" "Seeds Brachytherapy Device"
* #Eye-plaque  "Eye-plaque" "Eye-plaque Brachytherapy Device"
* #Hybrid   "Hybrid"  "Hybrid Brachytherapy Device"
* #Targeted  "Targeted" "Targeted Brachytherapy Device"
* #NonTargeted  "NonTargeted" "NonTargeted Brachytherapy Device"

//----------BODY SITE------------

ValueSet: RadiationTargetBodySiteVS
Id: mcode-radiation-target-body-site-vs
Title: "Radiation Target Body Site Value Set"
Description:    "Codes for body sites that can be targets of radiation therapy. This list of sites is based on Commission on Cancer’s 'Standards for Oncology Registry Entry  - STORE 2018'. This value set contains SNOMED CT equivalent terms."
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


/* Hold
* NCIT#C28049  "Intracavitary Radiation Therapy"
* NCIT#C66891  "Interstitial Radiation Therapy"
* MEDCIN#342092  "temporary radiation therapy implant"
* MEDCIN#195192  "irradiation by permanent brachytherapy implants"
* NCIT#C15623   "Intraoperative Radiotherapy"
* NCIT#C94420  "Unsealed Internal Radiation Therapy"
* MEDCIN#195195  "brachytherapy using sealed isotopes"


* NCIT#C104941  "Scanning Proton Beam Therapy"
* NCIT#C159611  "Intensity-Modulated Proton Therapy"
* NCIT#C165189  "Conventional Radiotherapy"
* NCIT#C16035   "3-Dimensional Conformal Radiation Therapy"
* NCIT#C15623   "Intraoperative Radiotherapy"
* NCIT#C16135    "Intensity-Modulated Radiation Therapy"  // IMRT
* MEDCIN#304003 "intracranial stereotactic radiosurgery"
* NCIT#C116432  "Image-Guided Adaptive Radiation Therapy" 
* NCIT#C62727 "Image Guided Radiation Therapy"  // IGRT	
* NCIT#C118286 "Stereotactic Body Radiation Therapy"  // SBRT	
* NCIT#C15358  "Stereotactic Radiosurgery" // SRS
*/