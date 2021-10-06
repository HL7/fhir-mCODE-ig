//----------- MODALITIES -----------------------

ValueSet:  TeleradiotherapyModalityVS
Id: mcode-teleradiotherapy-modality-vs
Title: "Teleradiotherapy Modality Value Set"
Description: "Codes describing the modalities of teleradiotherapy (external beam) procedures."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#10611004 "External beam radiation therapy protons (procedure)"
* SCT#45643008 "External beam radiation therapy using electrons (procedure)"
* SCT#80347004 "External beam radiation therapy neutrons (procedure)"
* SCT#1156505006 "External beam radiation therapy using carbon ions (procedure)"
* SCT#1156506007 "External beam radiation therapy using photons (procedure)"

ValueSet: BrachytherapyModalityVS
Id: mcode-brachytherapy-modality-vs
Title: "Brachytherapy Modality Value Set"
Description: "Codes describing the modalities of brachytherapy procedures."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#1156708005 "Low dose rate brachytherapy using temporary radioactive source (procedure)"
//* SCT#1156707000 "Low dose rate brachytherapy (procedure)"
* SCT#169359004 "Internal radiotherapy - permanent seeds (procedure)"  //* RT#LDR-PERM
* SCT#1156384006 "Pulsed dose rate brachytherapy (procedure)"
* SCT#394902000 "High dose brachytherapy (procedure)"
* SCT#438629002 "High dose rate electronic brachytherapy (procedure)"
* SCT#440252007 "Administration of radiopharmaceutical (procedure)"

ValueSet: RadiotherapyModalityVS
Id: mcode-radiotherapy-modality-vs
Title: "Radiotherapy Modality Value Set"
Description: "Codes describing the modalities of external beam and brachytherapy radiation procedures, for use with radiotherapy summaries.  This value set is the union of the teleradiotherapy and brachytherapy modality value sets."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from valueset TeleradiotherapyModalityVS
* include codes from valueset BrachytherapyModalityVS

//----------- TECHNIQUES -----------------------
//
ValueSet: TeleradiotherapyTechniqueVS
Id: mcode-teleradiotherapy-technique-vs
Title: "Teleradiotherapy Technique Value Set"
Description: "Codes describing the techniques of teleradiotherapy (external beam) procedures."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* SCT#1156530009 "Volumetric Modulated Arc Therapy (procedure)"
* SCT#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* SCT#1156526006 "Two dimensional external beam radiation therapy (procedure)"
* SCT#168524008 "Radiotherapy - intraoperative control (procedure)"
* SCT#1156529004 "External beam radiation therapy using particle passive scattering technique (procedure)"
* SCT#1156528007 "External beam radiation therapy using particle spot scanning technique (procedure)"
* SCT#1156525005 "Mixed beam external beam radiation therapy (procedure)"
* SCT#169317000 "Neutron capture therapy (procedure)"
// * SCT#1163157007 "Ultra high dose rate radiotherapy (procedure)"

ValueSet: BrachytherapyTechniqueVS
Id: mcode-brachytherapy-technique-vs
Title: "Brachytherapy Technique Value Set"
Description: "Codes describing the techniques of brachytherapy (internal or surface radiation) procedures."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#384692006 "Intracavitary brachytherapy (procedure)"
* SCT#1156382005 "Intensity modulated intracavitary brachytherapy (procedure)"
* SCT#113120007 "Interstitial brachytherapy (procedure)"
* SCT#1156383000 "Intravascular brachytherapy (procedure)"
* SCT#384691004 "Intraluminal brachytherapy (procedure)"
* SCT#168524008 "Radiotherapy - intraoperative control (procedure)"
* SCT#14473006 "Surface brachytherapy (procedure)"
* SCT#16560241000119104 "Oral radionuclide therapy (procedure)"

ValueSet: RadiotherapyTechniqueVS
Id: mcode-radiotherapy-technique-vs
Title: "Radiotherapy Technique Value Set"
Description: "Codes describing the techniques of external beam and brachytherapy radiation procedures, for use with radiotherapy summaries. This is the union of the EBRT and brachytherapy technique value sets."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// Union of EBRT and brachytherapy value sets
* include codes from valueset TeleradiotherapyTechniqueVS
* include codes from valueset BrachytherapyTechniqueVS

ValueSet: RadiotherapyVolumeTypeVS
Id: mcode-radiotherapy-volume-type-vs
Title: "Radiotherapy Volume Type Value Set"
Description: "Codes describing the types of body volumes used in radiotherapy planning and treatment. The value set includes the most common codes from DICOM CID 9534 Radiotherapy Targets (UID 1.2.840.10008.6.1.1244) and adds a code for Organs at Risk (OAR)."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#228793007 "Planning target volume (observable entity)"
* SCT#228791009 "Gross tumor volume (observable entity)"
* SCT#228792002 "Clinical target volume (observable entity)"
* SCT#1162586008 "Irradiated volume of organ at risk (observable entity)"  // MSH#D058958 "Organs at Risk"


ValueSet: RadiotherapyTreatmentLocationQualifierVS
Id: mcode-radiotherapy-treatment-location-qualifier-vs
Title: "Radiotherapy Treatment Location Qualifier Value Set"
Description: "Various modifiers that can be applied to body locations where radiotherapy treatments can be directed."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system SCT where concept is-a #258399006  "Lymph node level value (qualifier value)"
// SCT codes requested or existing
// * SCT#258400004 "Lymph node level I (qualifier value)"
// * SCT#1162616006 "Lymph node level Ia (qualifier value)"
// * SCT#1162617002 "Lymph node level Ib (qualifier value)"
// * SCT#258401000 Lymph node level II (qualifier value)
// * SCT#258403002 "Lymph node level III (qualifier value)"
// * SCT#258403002 "Lymph node level IV (qualifier value)"
// * SCT#1162620005 "Lymph node level IVa (qualifier value)"
// * SCT#1162621009 "Lymph node level IVb (qualifier value)"
// * SCT#258404008 "Lymph node level V (qualifier value)"
// * SCT#1162622002f "Lymph node level Va (qualifier value)"
// Lymph node level VB (qualifier value) - R
// Lymph node level VC (qualifier value) - R
// * SCT#258405009 "Lymph node level VI(qualifier value)"
// Lymph node level VIA (qualifier value) - R
// Lymph node level VIB (qualifier value) - R
// * SCT#395168005 "Lymph node level VII (qualifier value)"
// Lymph node level VIIA (qualifier value) - R
// Lymph node level VIIB (qualifier value) - R
// Lymph node level VIII (qualifier value) - R
// Lymph node level IX (qualifier value) - R
// Lymph node level X (qualifier value) - R
// Lymph node level XA (qualifier value) - R
// Lymph node level XB (qualifier value) - R

* include codes from valueset LateralityQualifierVS
* SCT#255549009    "Anterior (qualifier value)"
* SCT#255551008    "Posterior (qualifier value)"
* SCT#261089000    "Inferior (qualifier value)"
* SCT#264217000    "Superior (qualifier value)"
* SCT#261183002    "Upper (qualifier value)"
* SCT#261122009    "Lower (qualifier value)"
* SCT#260528009    "Middle (qualifier value)"
* SCT#46053002    "Distal (qualifier value)"
* SCT#40415009    "Proximal (qualifier value)"
* SCT#255503000    "Entire (qualifier value)"
* SCT#255609007    "Partial (qualifier value)"
* SCT#14414005  "Peripheral (qualifier value)"
* SCT#26216008  "Central (qualifier value)"
* SCT#18769003   "Adjacent" // "Juxta-posed (qualifier value)"
* UMLS#C0687118  "Detached"  // standing in for non-adjacent  (USCRS-33144)


// ValueSet: LymphNodeLocationQualifierVS
// Id: mcode-lymph-node-location-qualifier-vs
// Title: "Lymph Node Location Qualifier Value Set"
// Description: "Qualifiers for Lymph Node Locations"
// * ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// * SCT#258400004 "Lymph node level I (qualifier value)"
// * SCT#1162616006 "Lymph node level Ia (qualifier value)"
// * SCT#1162617002 "Lymph node level Ib (qualifier value)"
// * SCT#258401000 "Lymph node level II (qualifier value)"
// * SCT#258402007 "Lymph node level III (qualifier value)"
// * SCT#258403002 "Lymph node level IV (qualifier value)"
// * SCT#1162620005 "Lymph node level IVa (qualifier value)"
// * SCT#1162621009 "Lymph node level IVb (qualifier value)"
// * SCT#258404008 "Lymph node level V (qualifier value)"
// * SCT#1162622002 "Lymph node level Va (qualifier value)"
// * SCT#1162623007 "Lymph node level Vb (qualifier value)"
// * SCT#1162624001 "Lymph node level Vc (qualifier value)"
// * SCT#258405009 "Lymph node level VI (qualifier value)"
// * SCT#1162625000 "Lymph node level VIa (qualifier value)"
// * SCT#1162626004 "Lymph node level VIb (qualifier value)"
// * SCT#395168005 "Lymph node level VII (qualifier value)"
// * SCT#1162628003 "Lymph node level VIIa (qualifier value)"
// * SCT#1162627008 "Lymph node level VIIb (qualifier value)"
// * SCT#1162618007 "Lymph node level VIII (qualifier value)"
// * SCT#1162619004 "Lymph node level IX (qualifier value)"
// * SCT#1162614009 "Lymph node level X (qualifier value)"
// * SCT#1162615005 "Lymph node level Xa (qualifier value)"
// * SCT#1162613003 "Lymph node level Xb (qualifier value)"

ValueSet: RadiotherapyTreatmentLocationVS
Id: mcode-radiotherapy-treatment-location-vs
Title: "Radiotherapy Treatment Location Value Set"
Description: "Codes describing the body locations where radiotherapy treatments can be directed."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#818983003    "Structure of abdominopelvic cavity and/or content of abdominopelvic cavity and/or anterior abdominal wall (body structure)"
* SCT#245284000    "Abdominal lymph node group (body structure)"
* SCT#23451007    "Adrenal structure (body structure)"
* SCT#53505006    "Anal structure (body structure)"
* SCT#53120007    "Upper limb structure (body structure)"
* SCT#245269009    "Axillary lymph node group (body structure)"
* SCT#31467002    "Base of skull structure (body structure)"
* SCT#47975008    "Structure of root of tongue (body structure)"
* SCT#34707002    "Biliary tract structure (body structure)"
* SCT#89837001    "Urinary bladder structure (body structure)"
* SCT#48566001    "Bone structure of extremity (body structure)"
* SCT#46633002    "Entire bony pelvis (body structure)"
* SCT#118645006    "Structure of innominate bone and/or sacrum and/or coccyx (body structure)"
* SCT#113276009    "Intestinal structure (body structure)"
* SCT#12738006    "Brain structure (body structure)"
* SCT#389079005    "Brain and spinal cord structure (body structure)"
* SCT#15926001    "Brainstem structure (body structure)"
* SCT#76752008    "Breast structure (body structure)"
* SCT#14806007    "Bone structure of atlas (body structure)"   // aka C1
* SCT#39976000    "Bone structure of axis (body structure)"    // aka C2
* SCT#91116008    "Structure of body of third cervical vertebra (body structure)"
* SCT#14705001    "Structure of body of fourth cervical vertebra (body structure)"
* SCT#67479001    "Structure of body of fifth cervical vertebra (body structure)"
* SCT#88298007    "Structure of body of sixth cervical vertebra (body structure)"
* SCT#16126006    "Structure of body of seventh cervical vertebra (body structure)"
* SCT#53840002    "Structure of calf of leg (body structure)"
* SCT#32713005    "Cecum structure (body structure)"
* SCT#113305005    "Cerebellar structure (body structure)"
* SCT#81105003    "Cervical lymph node structure (body structure)"
* SCT#122494005    "Structure of cervical vertebral column (body structure)"
* SCT#71252005    "Cervix uteri structure (body structure)"
* SCT#60819002    "Cheek structure (body structure)"
* SCT#78904004    "Chest wall structure (body structure)"
* SCT#80621003    "Structure of choroid plexus (body structure)"
* SCT#51299004    "Bone structure of clavicle (body structure)"
* SCT#64688005    "Bone structure of coccyx (body structure)"
* SCT#71854001    "Colon structure (body structure)"
* SCT#245295006    "Common iliac lymph node group (body structure)"
* SCT#89546000    "Bone structure of cranium (body structure)"
* SCT#38848004    "Duodenal structure (body structure)"
* SCT#117590005    "Ear structure (body structure)"
* SCT#5953002    "Bone structure of eighth rib (body structure)"
* SCT#127949000    "Elbow region structure (body structure)"
* SCT#58830002    "Bone structure of eleventh rib (body structure)"
* SCT#2739003    "Endometrial structure (body structure)"
* SCT#28870006    "Structure of epitrochlear lymph node (body structure)"
* SCT#32849002    "Esophageal structure (body structure)"
* SCT#54215007    "Ethmoid sinus structure (body structure)"
* SCT#81745001    "Structure of eye proper (body structure)"
* SCT#80243003    "Eyelid structure (body structure)"
* SCT#89545001    "Face structure (body structure)"
* SCT#31435000    "Fallopian tube structure (body structure)"
* SCT#279802007    "Femoral lymph node group (body structure)"
* SCT#71341001    "Bone structure of femur (body structure)"
* SCT#15339008    "Bone structure of fifth rib (body structure)"
* SCT#48535007    "Bone structure of first rib (body structure)"
* SCT#56459004    "Foot structure (body structure)"
* SCT#14975008    "Forearm structure (body structure)"
* SCT#25523003    "Bone structure of fourth rib (body structure)"
* SCT#83251001    "Frontal lobe structure (body structure)"
* SCT#28231008    "Gallbladder structure (body structure)"
* SCT#1307006    "Glottis structure (body structure)"
* SCT#3711007    "Structure of great blood vessel (organ) (body structure)"
* SCT#279763008    "Inguinofemoral lymph node group (body structure)"
* SCT#85562004    "Hand structure (body structure)"
* SCT#90228003    "Hard palate structure (body structure)"
* SCT#69536005    "Head structure (body structure)"
* SCT#774007    "Structure of head and/or neck (body structure)"
* SCT#80891009    "Heart structure (body structure)"
* SCT#264016003    "Hilar lymph node group (body structure)"
* SCT#29836001    "Hip region structure (body structure)"
* SCT#81502006    "Hypopharyngeal structure (body structure)"
* SCT#279807001    "Infraclavicular lymph node group"
* SCT#245312007    "Inguinal lymph node group (body structure)"
* SCT#245282001    "Internal mammary lymph node group (body structure)"
* SCT#21306003    "Jejunal structure (body structure)"
* SCT#245260008    "Jugular lymph node group (body structure)"
* SCT#64033007    "Kidney structure (body structure)"
* SCT#61032001    "Structure of body of first lumbar vertebra (body structure)"
* SCT#53983007    "Structure of body of second lumbar vertebra (body structure)"
* SCT#55492004    "Structure of body of third lumbar vertebra (body structure)"
* SCT#71996003    "Structure of body of fourth lumbar vertebra (body structure)"
* SCT#21799000    "Structure of body of fifth lumbar vertebra (body structure)"
* SCT#14742008    "Structure of large intestine (body structure)"
* SCT#4596009    "Laryngeal structure (body structure)"
* SCT#59438005    "Structure of anterior descending branch of left coronary artery (body structure)"
* SCT#50018008    "Left coronary artery structure (body structure)"
* SCT#61685007    "Lower limb structure (body structure)"
* SCT#48477009    "Lip structure (body structure)"
* SCT#10200004    "Liver structure (body structure)"
* SCT#31094006    "Structure of lobe of lung (body structure)"
* SCT#122496007    "Structure of lumbar vertebral column (body structure)"
* SCT#39607008    "Lung structure (body structure)"
* SCT#59441001    "Structure of lymph node (body structure)"
* SCT#91609006    "Bone structure of mandible (body structure)"
* SCT#245276004    "Mediastinal lymph node group (body structure)"
* SCT#72410000    "Mediastinal structure (body structure)"
* SCT#279795009    "Structure of lymph node of mesentery (body structure)"
* SCT#71400007    "Mesothelium structure (body structure)"
* SCT#53342003    "Internal nose structure (body structure)"
* SCT#71836000    "Nasopharyngeal structure (body structure)"
* SCT#45048000    "Neck structure (body structure)"
* SCT#22565002    "Bone structure of ninth rib (body structure)"
* SCT#45206002    "Nasal structure (body structure)"
* SCT#31065004    "Occipital lobe structure (body structure)"
* SCT#245266002    "Occipital lymph node group (body structure)"
* SCT#18234004    "Optic nerve structure (body structure)"
* SCT#74262004    "Oral cavity structure (body structure)"
* SCT#363654007    "Structure of orbit proper (body structure)"
* SCT#31389004    "Oropharyngeal structure (body structure)"
* SCT#15497006    "Ovarian structure (body structure)"
* SCT#21547004    "Palm (region) structure (body structure)"
* SCT#15776009    "Pancreatic structure (body structure)"
* SCT#245285004    "Para-aortic lymph node group (body structure)"
* SCT#45682005    "Structure of parametrium (body structure)"
* SCT#2095001    "Nasal sinus structure (body structure)"
* SCT#279818001    "Paratracheal lymph node group (body structure)"
* SCT#16630005    "Parietal lobe structure (body structure)"
* SCT#10209003    "Structure of parotid lymph node (body structure)"
* SCT#279806005    "Pectoral lymph node group (body structure)"
* SCT#245294005    "Pelvic lymph node group (body structure)"
* SCT#12921003    "Structure of pelvis (body structure)"
* SCT#18911002    "Penile structure (body structure)"
* SCT#56329008    "Pituitary structure (body structure)"
* SCT#279804008    "Popliteal lymph node group (body structure)"
* SCT#245267006    "Preauricular lymph node group (body structure)"
* SCT#74203007    "Structure of prelaryngeal lymph node (body structure)"
* SCT#41216001    "Prostatic structure (body structure)"
* SCT#10418003    "Structure of pulmonic area (body structure)"
* SCT#62413002    "Bone structure of radius (body structure)"
* SCT#34402009    "Rectum structure (body structure)"
* SCT#312500006    "Regional lymph node structure (body structure)"
* SCT#25990002    "Renal pelvis structure (body structure)"
* SCT#30793004    "Posterior auricular lymph node (body structure)"
* SCT#25683005    "Retropharyngeal Lymph Node"
* SCT#113197003    "Bone structure of rib (body structure)"
* SCT#13647002    "Right coronary artery structure (body structure)"
* SCT#65985001    "Structure of first sacral vertebra (body structure)"
* SCT#11808007    "Structure of second sacral vertebra (body structure)"
* SCT#49967005    "Structure of third sacral vertebra (body structure)"
* SCT#69950008    "Structure of fourth sacral vertebra (body structure)"
* SCT#21452006    "Structure of fifth sacral vertebra (body structure)"
* SCT#303950008    "Sacral spine structure (body structure)"
* SCT#385294005    "Salivary gland structure (body structure)"
* SCT#41695006    "Scalp structure (body structure)"
* SCT#79601000    "Bone structure of scapula (body structure)"
* SCT#12402003    "Scar (morphologic abnormality)"
* SCT#20233005    "Scrotal structure (body structure)"
* SCT#78247007    "Bone structure of second rib (body structure)"
* SCT#64739004    "Seminal vesicle structure (body structure)"
* SCT#24915002    "Bone structure of seventh rib (body structure)"
* SCT#16982005    "Shoulder region structure (body structure)"
* SCT#59558009    "Bone structure of sixth rib (body structure)"
* SCT#39937001    "Skin structure (body structure)"
* SCT#58308009    "Skin structure of head and/or neck (body structure)"
* SCT#30315005    "Structure of small intestine (body structure)"
* SCT#49460000    "Soft palate structure (body structure)"
* SCT#87784001    "Soft tissues (body structure)"
* SCT#61853006    "Spinal canal structure (body structure)"
* SCT#421060004    "Structure of vertebral column and/or spinal cord (body structure)"
* SCT#2748008    "Spinal cord structure (body structure)"
* SCT#78961009    "Splenic structure (body structure)"
* SCT#56873002    "Bone structure of sternum (body structure)"
* SCT#69695003    "Stomach structure (body structure)"
* SCT#245259003    "Submandibular lymph node group (body structure)"
* SCT#245258006    "Submental lymph node group (body structure)"
* SCT#245265003    "Supraclavicular lymph node group (body structure)"
* SCT#56094003    "Structure of body of first thoracic vertebra (body structure)"
* SCT#48405002    "Structure of body of tenth thoracic vertebra (body structure)"
* SCT#52120002    "Structure of body of eleventh thoracic vertebra (body structure)"
* SCT#280849005    "Structure of body of twelfth thoracic vertebra (body structure)"
* SCT#50060007    "Structure of body of second thoracic vertebra (body structure)"
* SCT#73138009    "Structure of body of third thoracic vertebra (body structure)"
* SCT#86197001    "Structure of body of fourth thoracic vertebra (body structure)"
* SCT#6105006    "Structure of body of fifth thoracic vertebra (body structure)"
* SCT#32430008    "Structure of body of sixth thoracic vertebra (body structure)"
* SCT#71737002    "Structure of body of seventh thoracic vertebra (body structure)"
* SCT#77435000    "Structure of body of eighth thoracic vertebra (body structure)"
* SCT#33766003    "Structure of body of ninth thoracic vertebra (body structure)"
* SCT#78277001    "Temporal lobe structure (body structure)"
* SCT#77644006    "Bone structure of tenth rib (body structure)"
* SCT#40689003    "Testis structure (body structure)"
* SCT#68367000    "Thigh structure (body structure)"
* SCT#25888004    "Bone structure of third rib (body structure)"
* SCT#47109002    "Structure of lymph node of thorax (body structure)"
* SCT#122495006    "Structure of thoracic vertebral column (body structure)"
* SCT#51185008    "Thoracic structure (body structure)"
* SCT#9875009    "Thymus gland structure (body structure)"
* SCT#69748006    "Thyroid structure (body structure)"
* SCT#12611008    "Bone structure of tibia (body structure)"
* SCT#21974007    "Tongue structure (body structure)"
* SCT#44567001    "Tracheal structure (body structure)"
* SCT#43993008    "Bone structure of twelfth rib (body structure)"
* SCT#23416004    "Bone structure of ulna (body structure)"
* SCT#87953007    "Ureteric structure (body structure)"
* SCT#13648007    "Urethral structure (body structure)"
* SCT#35039007    "Uterine structure (body structure)"
* SCT#76784001    "Vaginal structure (body structure)"
* SCT#263355003    "Vaginal wall (body structure)"
* SCT#35764002    "Brain ventricle structure (body structure)"
* SCT#45292006    "Vulval structure (body structure)"
* SCT#17861009    "Waldeyer's ring structure (body structure)"
* SCT#38266002    "Entire body as a whole (body structure)"
* SCT#27612005    "Bone structure of fibula (body structure)"
* SCT#87342007    "Trigeminal nerve structure (body structure)"
* SCT#361351001   "All lymph nodes (body structure)"
* SCT#85050009    "Bone structure of the humerus (body structure)"
* SCT#32764006    "Portal vein structure (body structure)"
* SCT#91381003    "Pleural cavity structure (body structure)"
// ADDED 4-1-2021
* SCT#143925009   "Structure of buccinator lymph node (body structure)"
* SCT#16227691000119107 "Post-surgical excision site (morphologic abnormality)"
* SCT#1162492000 "Tumor bed (morphologic abnormality)"

* UMLS#C0223388 "Structure of body of thirteenth thoracic vertebra (body structure)"
//* SCT#Requested (352072) "Structure of body of thirteenth thoracic vertebra (body structure)"
* UMLS#C0222987 "Bone structure of thirteenth rib (body structure)"
//  These have movied to qualifiers,
// * RT#LN_AX_L1  "Level 1 Axillary Lymph Nodes"
// * RT#LN_Ax_L2  "Level 2 Axillary Lymph Nodes"
// * RT#LN_Ax_L3  "Level 3 Axillary Lymph Nodes"
//* SCT#Requested (352073) "Bone structure of thirteenth rib (body structure)"

// Added after STU 2 ballot version
* SCT#8928004  "Inguinal lymph node structure (body structure)"   // groin lymph nodes
* SCT#50837003  "Structure of lingula of left lung (body structure)"  // Post STU 2 ballot
* SCT#245321008  "Upper jugular lymph node (body structure)"  // Post STU 2 ballot
* SCT#245262000 "Middle jugular lymph node group (body structure)"  // Post STU 2 ballot
* SCT#245263005 "Lower jugular lymph node group (body structure)"  // Post STU 2 ballot
* SCT#76838003 "Structure of supraclavicular lymph node (body structure)"  // Post STU 2 ballot
* SCT#279143009 "Mastoid lymph node (body structure)"  // Post STU 2 ballot

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