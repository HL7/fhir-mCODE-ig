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

ValueSet: BrachytherapyModalityVS
Id: brachytherapy-modality-vs
Title: "Brachytherapy Modality Value Set"
Description: "Codes describing the modalities of brachytherapy (internal radiation) procedures."
* RO#LDR
* RO#PDR
* RO#HDR
* RO#ELEC
* RO#PHARM

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
* RO#COMP
* RO#PPS
* RO#PSS
* RO#MIX
* RO#IMNT
* RO#NCT

ValueSet: BrachytherapyTechniqueVS
Id: brachytherapy-technique-vs
Title: "Brachytherapy Technique Value Set"
Description: "Codes describing the techniques of brachytherapy (internal radiation) procedures."
* RO#CAV
* RO#CAV-IMB
* RO#INSTIT
* RO#INSTIT-PERM
* RO#INSTIT-TEMP
* RO#VASC
* RO#LUM
* RO#IORT
* RO#SURF
* RO#SURF-TEMP
* RO#ORAL

//----------- DEVICES -----------------------

ValueSet: TeleradiotherapyDeviceVS
Id: teleradiotherapy-device-vs
Title: "Teleradiotherapy Device Value Set"
Description: "Codes describing the devices used in teleradiotherapy (external beam) procedures."
* RO#LINAC
* RO#RLINAC
* RO#MRLINAC
* RO#ROBOTIC
* RO#ISOMULTI
* RO#KV
* RO#NGLINAC
* RO#MULTI

ValueSet: BrachytherapyDeviceVS
Id: brachytherapy-device-vs
Title: "Brachytherapy Device Value Set"
Description: "Codes describing the devices used in brachytherapy (internal radiation) procedures."
* RO#TANDEM
* RO#CYL
* RO#OVOID
* RO#RING
* RO#SEED 
* RO#EYE
* RO#HYBRID
* RO#TARG 
* RO#NONTARG 

//---------RADIOTHERAPY CODE SYSTEM-------

CodeSystem: RadiotherapyCS
Id: radiotherapy-cs
Title: "Radiotherapy Code System"
Description: "Codes describing the modalities, techniques, and devices used in external beam radiotherapy and brachytherapy (internal radiation) procedures."
//-- Teleradiotherapy Modalities
* #PROTON "Proton Beam Radiation Therapy" "A type of external beam radiation therapy using a beam of proton particles." 
* #ELECTRON "Electron Beam Radiation Therapy"  "Radiation therapy using electron (beta particle) beam."
* #NEUTRON "Neutron Beam Radiation Therapy" "A type of radiation therapy that uses a beam of accelerated neutrons."
* #CARBON  "Carbon Ion Beam Radiation Therapy"  "Ion beam radiation therapy that uses charged carbon particle. Compared to proton beam therapy, the larger mass of carbon results in decreased beam scattering, yielding a sharper dose distribution border with minimal penumbra and two to three times the relative biological effect. [NCI]"
* #PHOTON "Photon Beam Radiation Therapy" "Radiation therapy that uses photons (electromagnetic radiation) to treat tumors, including gamma rays and x-rays."
//-- Brachytherapy Modalities
* #LDR "Low-Dose Rate Brachytherapy" "Internal radiation treatment that targets a cancerous tissue with low doses of radiation through the use of inserted temporary or permanent implants. [NCI]"
* #PDR "Pulsed-Dose Rate Brachytherapy" "Internal radiation using a stronger radiation source than low-dose rate brachytherapy and producing series of short exposures of 10 to 30 minutes in every hour."
* #HDR  "High dose brachytherapy" "Internal radiation treatment that targets a cancerous tissue with accurate, high doses of radiation through the use of inserted temporary implants."
* #ELEC "High dose rate electronic brachytherapy" "A modality of internal radiation that uses miniaturized X-ray sources instead of radionuclides to deliver high doses of radiation."
* #PHARM "Radiopharmaceutical therapy" "The use of radioactive drugs that can be given by mouth or injected."
//-- Teleradiotherapy Techniques
* #IMRT "Intensity Modulated Radiation Therapy" "A technique of high-precision radiotherapy that uses computer control to deliver precise radiation doses that conform to a three-dimensional (3-D) shape by modulating the intensity of the radiation beam in multiple small volumes."
* #VMAT "Volumetric Modulated Arc Therapy" "A type of IMRT technique where the radiotherapy machine rotates around the patient, radiating the target in a complete three-dimensional manner with precision and speed."
* #3D "Three Dimensional"  "Dose calculated with projection onto 3D imaging (e.g. CT or MR) delivered with either static aperture (Collimator, SRS Cone, Static MLC, blocks, etc) or non-IMRT/VMAT dynamic apertures (e.g. field-in-field, dynamic arc) using either single gantry angles or arcs."
* #2D "Two Dimensional" "Dose calculated without projection onto 3D imaging and delivered without 3D techniques."
* #IORT "Intraoperative Radiation Therapy" "An intensive radiation treatment administered during surgery."
* #COMP "Compensator" "In external beam electron therapy, a technique that uses a thickness-varied device to modulate energy and intensity."
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
* #VASC "Intravascular" "Placement of a radioactive source into a blood vessel or blood vascular system."
* #LUM "Intraluminal"  "Placement of a radioactive source into a lumen, usually understood to mean the gastrointestinal tract; less commonly, within the gallbladder or urinary bladder."
* #SURF "Surface" "Placement of a radioactive source on the skin."
* #SURF-TEMP "Surface-Temporary" "Placement of a radioactive source on the skin, to be removed after a period of time." 
* #ORAL "Oral"  "Placement of a radioactive source into the oral cavity." 
//-- Teleradiotherapy Devices
* #LINAC "Linac" "Gantry based delivery with linear accelerator based source"
* #RLINAC "RLinac" "Ring Gantry based delivery with linear accelerator based source e.g. Ethos, Tomotherapy"
* #MRLINAC "MRLinac" "Gantry based delivery with linear accelerator based source with onboard MRI for patient positioning."
* #NGLINAC "Non-gantry based linear accelerator, e.g. specialty devices used for IORT, e.g. Mobetron."
* #ROBOTIC "Robotic" "Multiple axis (other than MLCs) are moved under electronic control during delivery of dose from a single beam with linear accelerator based source. e.g. CyberKnife."
* #ISOMULTI "Isotope Multisource" "Multisource radiation use of multiple sources at different positons using isotope based source e.g. GammaKnife"
* #KV "Kilovolt" "Non-megavoltage, electronically generated photons"
* #MULTI "Multisource radiation" "Multisource radiation use of multiple sources at different positons using linear accelerator-based source"
//-- Brachytherapy Devices
* #TANDEM  "Tandem" "Tandem Brachytherapy Device"
* #CYL  "Cylinder" "Cylinder Brachytherapy Device"
* #OVOID "Ovoids" "Ovoid Brachytherapy Device"
* #RING  "Ring" "Ring Brachytherapy Device"
* #SEED  "Seeds" "Seeds Brachytherapy Device"
* #EYE  "Eye-plaque" "Eye-plaque Brachytherapy Device"  //SCTID: 420529003 Radiotherapy using radioactive plaque on eye (procedure)
* #HYBRID   "Hybrid"  "Hybrid Brachytherapy Device"
* #TARG  "Targeted" "Targeted Brachytherapy Device"
* #NONTARG  "NonTargeted" "NonTargeted Brachytherapy Device"

//----------BODY SITE------------

ValueSet: RadiationTargetBodySiteVS
Id: mcode-radiation-target-body-site-vs
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
