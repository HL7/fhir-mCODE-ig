###  Structure of this Concept Map
A key mapping used by this IG is that of the TG263 concepts for treatment location to SNOMEDCT codes and qualifiers.
See the brief discussion in [RadiotherapyTreatmentLocationVS].  The mapping was documented by reference to a spreadsheet in the STU2
version of the IG, and this ConceptMap has now been added to better support implementers.

Some of the TG263 terms are pre-coordinated, incorporating laterality and other qualifiers directly in the term.
For the mapping to SNOMED, we have chosen to avoid pre-coordination, and rather use a code + qualifier(s) approach to uniquely map each TG263 concept.
The mapping uses the 'product' field of each mapped element to enumerate the qualifiers needed in combination with the SNOMEDCT code to express the
same treatment location as the TG263 concept.

Despite the authors best efforts, two of the TG263 concepts and two of the qualifiers lack corresponding SNOMEDCT terms.

### TG263 to SNOMEDCT Codes and Qualifiers Mapping

| Term | Description | Code | Description | Qualifier 1 Code | Qualifier 1 Description | Qualifier 2 Code | Qualifier 2 Description |
| ---- | -----------  | --- | ----------- | ---------------- | ----------------------- | ---------------- | ----------------------- |
| A_Aorta| Aorta |  15825003 |  Aortic structure (body structure) | | | | |
| A_Aorta_Asc| Ascending Aorta |  54247002 |  Ascending aorta structure (body Structure) | | | | |
| A_Brachiocephls| Brachiocephalic Artery |  425444002 |  Branch of brachiocephalic artery (body structure) | | | | |
| A_Carotid| Common Carotid Artery |  69105007 |  Carotid artery structure (body structure) | | | | |
| A_Carotid_L| Carotid Artery |  69105007 |  Carotid artery structure (body structure) |  7771000| left(qualifier value)| | |
| A_Carotid_R| Carotid Artery |  69105007 |  Carotid artery structure (body structure) |  24028007| right(qualifier value)| | |
| A_Celiac| Celiac Artery |  57850000 |  Structure of celiac artery (body structure) | | | | |
| A_Coronary| Coronary Artery |  41801008 |  Coronary artery structure (body structure) | | | | |
| A_Coronary_L| Coronary Artery Left |  41801008 |  Coronary artery structure (body structure) |  7771000| left(qualifier value)| | |
| A_Coronary_R| Coronary Artery Right |  41801008 |  Coronary artery structure (body structure) |  24028007| right(qualifier value)| | |
| A_Femoral_L| Femoral Artery Left |  7657000 |  Structure of femoral artery (body structure) |  7771000| left(qualifier value)| | |
| A_Femoral_R| Femoral Artery Right |  7657000 |  Structure of femoral artery (body structure) |  24028007| right(qualifier value)| | |
| A_Humeral_Cflx_L| Circumflex Humeral Artery Left |  244314003 |  Circumflex humeral artery (body structure) |  7771000| Left(qualifier value)| | |
| A_Humeral_Cflx_R| Circumflex Humeral Artery Right |  244314003 |  Circumflex humeral artery (body structure) |  24028007| right(qualifier value)| | |
| A_Hypophyseal_I| Hypophyseal Artery Inferior |  74200005 |  Structure of inferior hypophyseal artery (body structure) | | | | |
| A_Hypophyseal_S| Hypophyseal Artery Superior |  55601007 |  Structure of superior hypophyseal artery (body structure) | | | | | |
| A_Iliac_Cflx_L| Circumflex Left Iliac Artery |  244327004 |  Circumflex iliac artery (body structure) |  7771000| Left(qualifier value)| | |
| A_Iliac_Cflx_R| Circumflex Right Iliac Artery |  244327004 |  Circumflex iliac artery (body structure) |  24028007| right(qualifier value)| | |
| A_Iliac_Ext_L| External iliac artery Left |  113269004 |  Structure of external iliac artery (body structure) |  7771000| Left(qualifier value)| | |
| A_Iliac_Ext_R| External iliac artery Right |  113269004 |  Structure of external iliac artery (body structure) |  24028007| right(qualifier value)| | |
| A_Iliac_Int_L| Internal iliac artery Left |  90024005 |  Structure of internal iliac artery (body structure) |  7771000| Left(qualifier value)| | |
| A_Iliac_Int_R| Internal iliac artery Right |  90024005 |  Structure of internal iliac artery (body structure) |  24028007| right(qualifier value)| | |
| A_Iliac_L| Common iliac artery Left |  73634005 |  Common iliac artery structure (body structure) |  7771000| Left(qualifier value)| | |
| A_Iliac_R| Common iliac artery Right |  73634005 |  Common iliac artery structure (body structure) |  24028007| right(qualifier value)| | |
| A_LAD| Anterior interventricular branch of LCA
 (left anterior descending artery) |  33795007 |  Structure of anterior descending branch of left coronary artery (body structure) | | | | |
| A_Mesenteric_I| Inferior mesenteric artery  |  33795007 |  Structure of inferior mesenteric artery (body structure) | | | | |
| A_Mesenteric_S| Superior mesenteric artery  |  42258001 |  Superior mesenteric artery structure (body structure)  | | | | |
| A_Pulmonary| Pulmonary Artery |  81040000 |  Pulmonary artery structure (body structure) | | | | |
| A_Subclavian| Subclavian Artery |  36765005 |  Structure of subclavian artery (body structure) | | | | |
| A_Subclavian_L| Subclavian Artery Left |  36765005 |  Structure of subclavian artery (body structure) |  7771000| left(qualifier value)| | |
| A_Subclavian_R| Subclavian Artery Right |  36765005 |  Structure of subclavian artery (body structure) |  24028007| right(qualifier value)| | |
| A_Vertebral| Vertebral arteries |  85234005 |  Structure of vertebral artery (body structure) | | | | |
| A_Vertebral_L| Vertebral arteries left |  85234005 |  Structure of vertebral artery (body structure) |  7771000| left(qualifier value)| | |
| A_Vertebral_R| Vertebral arteries right |  85234005 |  Structure of vertebral artery (body structure) |  24028007| right(qualifier value)| | |
| Acetabulum_L| Acetabulum |  37783008 |  Bone structure of acetabulum (body structure) |  7771000| Left(qualifier value)| | |
| Acetabulum_R| Acetabulum |  37783008 |  Bone structure of acetabulum (body structure) |  24028007| Right(qualifier value)| | |
| Acetabulums| Acetabulum |  37783008 |  Bone structure of acetabulum (body structure) | | | | |
| AirWay_Dist| Distal Airway |  89187006 |  Airway structure (body structure) |  46053002| distal(qualifier value)| | |
| AirWay_Prox| Proximal Airway |  89187006 |  Airway structure (body structure) |  40415009| proximal(qualifier value)| | |
| Anus| Anus |  123956007 |  Anus part (body structure) | | | | |
| Appendix| Appendix |  66754008 |  Appendix structure (body structure)  | | | | |
| Arytenoid| Arytenoid cartilage |  77578007 |  Arytenoid cartilage structure (body structure) | | | | |
| Arytenoid_L| Arytenoid cartilage Left |  77578007 |  Arytenoid cartilage structure (body structure) |  7771000| left(qualifier value)| | |
| Arytenoid_R| Arytenoid cartilage Right |  77578007 |  Arytenoid cartilage structure (body structure) |  24028007| right(qualifier value)| | |
| Atrium| Atrium of the heart  |  59652004 |  Atrial structure (body structure) | | | | |
| Atrium_L| Atrium of the heart Left |  59652004 |  Atrial structure (body structure) |  7771000| left(qualifier value)| | |
| Atrium_R| Atrium of the heart Right |  59652004 |  Atrial structure (body structure) |  24028007| right(qualifier value)| | |
| BileDuct_Common| Common bile duct |  79741001 |  Common bile duct structure (body structure) | | | | |
| Bladder| Urinary Bladder |  89837001 |  Urinary bladder structure (body structure) | | | | |
| Bladder_Wall| Bladder Wall |  393006 |  Structure of wall of urinary bladder (body structure) | | | | |
| Bone| Bone |  119186007 |  Bone part (body structure) | | | | |
| Bone_Ethmoid| Ethmoid Bone |  52374004 |  Ethmoid bone structure (body structure) | | | | |
| Bone_Frontal| Frontal Bone |  74872008 |  Frontal bone structure (body structure) | | | | |
| Bone_Hyoid| Hyoid Bone |  21387005 |  Hyoid bone structure (body structure) | | | | |
| Bone_Ilium| Ilium |  22356005 |  Bone structure of ilium (body structure) | | | | |
| Bone_Ilium_L| Ilium Left |  22356005 |  Bone structure of ilium (body structure) |  7771000| left(qualifier value)| | |
| Bone_Ilium_R| Ilium Right |  22356005 |  Bone structure of ilium (body structure) |  24028007| right(qualifier value)| | |
| Bone_Incus| Incus |  421793000 |  Bone structure of incus (body structure) | | | | |
| Bone_Incus_L| Incus Left |  421793000 |  Bone structure of incus (body structure) |  7771000| left(qualifier value)| | |
| Bone_Incus_R| Incus Right |  421793000 |  Bone structure of incus (body structure) |  24028007| right(qualifier value)| | |
| Bone_Ischium_L| Ischium Left |  85710004 |  Bone structure of ischium (body structure) |  7771000| left(qualifier value)| | |
| Bone_Ischium_R| Ischium Right |  85710004 |  Bone structure of ischium (body structure) |  24028007| right(qualifier value)| | |
| Bone_Lacrimal| Lacrimal Bone |  6229007 |  Lacrimal bone structure (body structure) | | | | |
| Bone_Lacrimal_L| Lacrimal Bone Left |  6229007 |  Lacrimal bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Lacrimal_R| Lacrimal Bone Right |  6229007 |  Lacrimal bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Mandible| Mandible |  91609006 |  Bone structure of mandible (body structure) | | | | |
| Bone_Mastoid| Both Mastoids |  59066005 |  Mastoid structure (body structure) | | | | |
| Bone_Mastoid_L| Left Mastoid Bone |  59066005 |  Mastoid structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Mastoid_R| Right Mastoid Bone |  59066005 |  Mastoid structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Nasal| Nasal Bone |  74386004 |  Nasal bone structure (body structure) | | | | |
| Bone_Nasal_L| Nasal Bone Left |  74386004 |  Nasal bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Nasal_R| Nasal Bone Right |  74386004 |  Nasal bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Occipital| Occipital Bone |  31640002 |  Occipital bone structure (body structure) | | | | |
| Bone_Palatine| Palatine  bone |  51283005 |  Palatine bone structure (body structure) | | | | |
| Bone_Palatine_L| Palatine bone Left |  51283005 |  Palatine bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Palatine_R| Palatine bone Right |  51283005 |  Palatine bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Parietal| Parietal bone |  24924006 |  Parietal bone structure (body structure) | | | | |
| Bone_Parietal_L| Parietal bone Left |  24924006 |  Parietal bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Parietal_R| Parietal bone Right |  24924006 |  Parietal bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Pelvic| Pelvic Bones (Bony Pelvis) |  118645006 |  Structure of innominate bone and/or sacrum and/or coccyx (body structure) | | | | |
| Bone_Pelvic_L| Bony Pelvis Left |  118645006 |  Structure of innominate bone and/or sacrum and/or coccyx (body structure) |  7771000| left(qualifier value)| | |
| Bone_Pelvic_R| Bony Pelvis Right |  118645006 |  Structure of innominate bone and/or sacrum and/or coccyx (body structure) |  24028007| right(qualifier value)| | |
| Bone_Sphenoid| Sphenoid Bone |  73117003 |  Sphenoid bone structure (body structure) | | | | |
| Bone_Temporal| Temporal Bone |  60911003 |  Temporal bone structure (body structure) | | | | |
| Bone_Temporal_L| Temporal Bone Left |  60911003 |  Temporal bone structure (body structure) |  7771000| Left(qualifier value)| | |
| Bone_Temporal_R| Temporal Bone Right |  60911003 |  Temporal bone structure (body structure) |  24028007| Right(qualifier value)| | |
| Bone_Zygomatic_L| Zygomatic Bone Left |  13881006 |  Zygomatic bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Zygomatic_R| Zygomatic Bone Right |  13881006 |  Zygomatic bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Zygomatics| Zygomatic Bone |  13881006 |  Zygomatic bone structure (body structure) | | | | |
| BoneMarrow| Bone Marrow |  14016003 |   |Bone marrow structure (body structure)| | | | | |
| Diaphragm| Diaphragm |  5798000 |  Diaphragm structure (body structure) | | | | |
| Bowel| Bowel  |  113276009 |  Intestinal structure (body structure) | | | | |
| Bowel_Large| Large Bowel |  14742008 |  Structure of large intestine (body structure) | | | | |
| Bowel_Small| Small Bowel (small intestine) |  30315005 |  Structure of small intestine (body structure) | | | | |
| BrachialPlex_L| Brachial plexus Left |  36582005 |  Brachial plexus structure (body structure) |  7771000| left(qualifier value)| | |
| BrachialPlex_R| Brachial plexus Right |  36582005 |  Brachial plexus structure (body structure) |  24028007| right(qualifier value)| | |
| BrachialPlexs| Brachial plexus |  36582005 |  Brachial plexus structure (body structure) | | | | |
| Brain| Brain |  12738006 |  Brain structure (body structure) | | | | |
| Brainstem| Brain Stem |  15926001 |  Brainstem structure (body structure) | | | | |
| Brainstem_Core| Core of the brainstem |  15926001 |  Brainstem structure (body structure) |  260235002| Core(qualifier value)| | |
| Brainstem_Surf| Surface of the brainstem |  15926001 |  Brainstem structure (body structure) |  410679008| Surface(qualifier value)| | |
| Breast_L| Breast Left |  76752008 |  Breast structure (body structure) |  7771000| left(qualifier value)| | |
| Breast_R| Breast Right |  76752008 |  Breast structure (body structure) |  24028007| right(qualifier value)| | |
| Breasts| Both breasts |  76752008 |  Breast structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Bronchus| Bronchial tree |  955009 |  Bronchial structure (body structure) | | | | |
| Bronchus_L| Bronchial tree Left |  955009 |  Bronchial structure (body structure) |  7771000| left(qualifier value)| | |
| Bronchus_Main| Main Bronchus |  102297006 |  Main bronchus structure (body structure) | | | | |
| Bronchus_Main_L| Main Bronchus Left |  102297006 |  Main bronchus structure (body structure) | | | | |
| Bronchus_Main_R| Main Bronchus Right |  102297006 |  Main bronchus structure (body structure) | | | | |
| Bronchus_R| Bronchial tree Right |  955009 |  Bronchial structure (body structure) |  24028007| right(qualifier value)| | |
| Canal_Anal| Anal Canal |  34381000 |  Anal canal structure (body structure) | | | | | |
| Carina| Carina |  28700002 |  Structure of carina of trachea (body structure) | | | | |
| Duodenum| Small bowel - Duodenum |  38848004 |  Duodenal structure (body structure) | | | | |
| CaudaEquina| Cauda equina |  7173007 |  Cauda equina structure (body structure) | | | | |
| Cavernosum| Penis Corpus Cavernosum |  9284003 |  Corpus cavernosum structure (body structure) | | | | |
| Cavity_Nasal| Nasal Cavity |  279549004 |  Nasal cavity structure (body structure) | | | | |
| Cavity_Oral| Oral cavity |  74262004 |  Oral cavity structure (body structure) | | | | |
| Cecum| Large bowel - Cecum |  32713005 |  Cecum structure (body structure) | | | | |
| Cerebellum| Cerebellum |  113305005 |  Cerebellar structure (body structure) | | | | |
| Cerebrum| Cerebrum |  83678007 |  Structure of cerebrum (body structure) | | | | |
| Cerebrum_L| L Cerebrum |  83678007 |  Structure of cerebrum (body structure) |  7771000| left(qualifier value)| | |
| Cerebrum_R| R Cerebrum |  83678007 |  Structure of cerebrum (body structure) |  24028007| right(qualifier value)| | |
| Cervix| Cervix of uterus |  71252005 |  Cervix uteri structure (body structure) | | | | |
| Chestwall| Chest wall |  78904004 |  Chest wall structure (body structure) | | | | |
| Chestwall_L| Left Chest Wall |  78904004 |  Chest wall structure (body structure) |  7771000| left(qualifier value)| | |
| Chestwall_R| Right Chest Wall |  78904004 |  Chest wall structure (body structure) |  24028007| right(qualifier value)| | |
| Cist_Pontine| Pontine Cistern |  369387006 |  Structure of cisterna pontis (body structure) | | | | |
| Esophagus_S| Upper Esophagus (cervical) |  60075002 |  Cervical esophagus structure (body structure) | | | | |
| Clavicle_L| Clavicle Left |  51299004 |  Bone structure of clavicle (body structure) |  7771000| left(qualifier value)| | |
| Clavicle_R| Clavicle Right |  51299004 |  Bone structure of clavicle (body structure) |  24028007| right(qualifier value)| | |
| CN_III| Third Cranial Nerve (Oculomotor nerve) |  56193007 |  Oculomotor nerve structure (body structure) | | | | |
| CN_III_L| Third Cranial Nerve (Oculomotor nerve) Left |  56193007 |  Oculomotor nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_III_R| Third Cranial Nerve (Oculomotor nerve) Right |  56193007 |  Oculomotor nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_IX| Ninth Cranial Nerve (Glossopharyngeal nerve)  |  21161002 |  Glossopharyngeal nerve structure (body structure) | | | | |
| CN_IX_L| Ninth Cranial Nerve (Glossopharyngeal nerve) Left |  21161002 |  Glossopharyngeal nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_IX_R| Ninth Cranial Nerve (Glossopharyngeal nerve) Right |  21161002 |  Glossopharyngeal nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_V| Fifth Cranial Nerve (Trigeminal nerve) |  27612005 |  Trigeminal nerve structure (body structure) | | | | |
| CN_V_L| Fifth Cranial Nerve (Trigeminal nerve) Left |  27612005 |  Trigeminal nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_V_R| Fifth Cranial Nerve (Trigeminal nerve) Right |  27612005 |  Trigeminal nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_VI| Sixth Cranial Nerve (Abducens nerve) |  80622005 |  Abducens nerve structure (body structure) | | | | |
| CN_VI_L| Sixth Cranial Nerve (Abducens nerve) Left |  80622005 |  Abducens nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_VI_R| Sixth Cranial Nerve (Abducens nerve) Right |  80622005 |  Abducens nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_VII| Seventh Cranial Nerve (Facial) |  56052001 |  Facial nerve structure (body structure) | | | | |
| CN_VII_L| Seventh Cranial Nerve (Facial) Left |  56052001 |  Facial nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_VII_R| Seventh Cranial Nerve (Facial) Right |  56052001 |  Facial nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_VIII| Eighth Cranial (Vestibulocochlear) Nerve |  8598002 |  Vestibulocochlear nerve structure (body structure) | | | | |
| CN_VIII_L| Eighth Cranial (Vestibulocochlear)  Nerve Left |  8598002 |  Vestibulocochlear nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_VIII_R| Eighth Cranial (Vestibulocochlear)  Nerve Right |  8598002 |  Vestibulocochlear nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_XI| Eleventh Cranial Nerve (Spinal accessory nerve) |  15119000 |  Accessory nerve structure (body structure) | | | | |
| CN_XI_L| Eleventh Cranial Nerve (Spinal accessory nerve) Left |  15119000 |  Accessory nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_XI_R| Eleventh Cranial Nerve (Spinal accessory nerve) Right |  15119000 |  Accessory nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_XII| Twelfth Cranial Nerve (Hypoglossal nerve) |  37899009 |  Hypoglossal nerve structure (body structure) | | | | |
| CN_XII_L| Twelfth Cranial Nerve (Hypoglossal nerve) Left |  37899009 |  Hypoglossal nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_XII_R| Twelfth Cranial Nerve (Hypoglossal nerve) Right |  37899009 |  Hypoglossal nerve structure (body structure) |  24028007| right(qualifier value)| | |
| Cochlea| Cochlea |  80169004 |  Cochlear structure (body structure) | | | | |
| Cochlea_L| Left Cochlea |  80169004 |  Cochlear structure (body structure) | | | | |
| Cochlea_R| Right Cochlea |  80169004 |  Cochlear structure (body structure) | | | | |
| Colon| Colon |  71854001 |  Colon structure (body structure) | | | | |
| Colon_Ascending| Large bowel - Ascending colon |  9040008 |  Ascending colon structure (body structure) | | | | |
| Colon_Decending| Large bowel - Descending colon |  32622004 |  Descending colon structure (body structure) | | | | |
| Eyes| Set of eyes |  81745001 |  Structure of eye proper (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Colon_Sigmoid| Large bowel - Sigmoid colon |  60184004 |  Sigmoid colon structure (body structure) | | | | |
| Colon_Transverse| Large bowel -Transverse colon |  485005 |  Transverse colon structure (body structure) | | | | |
| Cornea| Cornea |  28726007 |  Corneal structure (body structure) | | | | |
| Cornea_L| Cornea Left |  28726007 |  Corneal structure (body structure) |  7771000| left(qualifier value)| | |
| Cornea_R| Cornea Right |  28726007 |  Corneal structure (body structure) |  24028007| right(qualifier value)| | |
| CribriformPlate| Cribriform Plate |  36743005 |  Structure of cribriform plate (body structure) | | | | |
| Cricoid| Cricoid cartilage |  8600008 |  Cricoid cartilage structure (body structure) | | | | |
| Cricopharyngeus| Cricopharyngeal part of inferior pharyngeal constrictor |  28276008 |  Structure of cricopharyngeal part of inferior constrictor pharyngeus muscle (body structure) | | | | |
| Gallbladder| Gall bladder |  28231008 |  Gallbladder structure (body structure) | | | | |
| Genitals| Genitals |  71934003 |  Genital structure (body structure) | | | | |
| Glnd_Lacrimal| Lacrimal Gland |  13561001 |  Lacrimal gland structure (body structure) | | | | |
| Ear_External_L| External Ear Left |  117590005 |  Ear structure (body structure) | | | | |
| Ear_External_R| External Ear Right |  117590005 |  Ear structure (body structure) |  261074009| external(qualifier value)|  7771000|  left(qualifier value) |
| Ear_Externals| External Ear |  117590005 |  Ear structure (body structure) |  261074009| external(qualifier value)| | |
| Ear_Internal_L| Internal Ear Left |  117590005 |  Ear structure (body structure) |  260521003| internal(qualifier value)|  7771000|  left(qualifier value) |
| Ear_Internal_R| Internal Ear Right |  117590005 |  Ear structure (body structure) |  260521003| internal(qualifier value)|  24028007|  right(qualifier value) |
| Ear_Internals| Internal Ear |  117590005 |  Ear structure (body structure) |  260521003| internal(qualifier value)| | |
| Ear_Middle| Middle Ear |  117590005 |  Ear structure (body structure) |  260528009| middle(qualifier value)| | |
| Ear_Middle_L| Middle Ear Left |  117590005 |  Ear structure (body structure) |  260528009| middle(qualifier value)|  7771000|  left(qualifier value) |
| Ear_Middle_R| Middle Ear Right |  117590005 |  Ear structure (body structure) |  260528009| middle(qualifier value)|  24028007|  right(qualifier value) |
| Glnd_Parathyroid| Parathyroid gland |  111002 |  Parathyroid structure (body structure) | | | | |
| Elbow| Elbow |  127949000 |  Elbow region structure (body structure) | | | | |
| Elbow_L| Elbow Left |  127949000 |  Elbow region structure (body structure) |  7771000| Left(qualifier value)| | |
| Elbow_R| Elbow Right |  127949000 |  Elbow region structure (body structure) |  24028007| right(qualifier value)| | |
| Esophagus| Esophagus |  32849002 |  Esophageal structure (body structure) | | | | |
| Esophagus_I| Lower Esophagus (abdominal) |  32849002 |  Esophageal structure (body structure) |  261122009| lower(qualifier value)| | |
| Esophagus_M| Middle Esophagus (thoracic) |  32849002 |  Esophageal structure (body structure) |  260528009| middle(qualifier value)| | |
| Esophagus_NAdj| Non Adjacent Esophagus |  32849002 |  Esophageal structure (body structure) |  1217011006| non-adjacent(qualifier value)| | |
| Glnd_Sublings| Sublingual gland |  88481005 |  Sublingual gland structure (body structure) | | | | |
| Glnd_Submands| Submandibular Gland |  385296007 |  Submandibular salivary gland structure (body structure) | | | | |
| Eye_L| Eyeball Left |  81745001 |  Structure of eye proper (body structure) |  7771000| left(qualifier value)| | |
| Eye_R| Eyeball Right |  81745001 |  Structure of eye proper (body structure) |  24028007| right(qualifier value)| | |
| Glnd_Thymus| Thymus Gland |  9875009 |  Thymus gland structure (body structure) | | | | |
| Glnd_Thyroid| Thyroid Gland |  69748006 |  Thyroid structure (body structure) | | | | |
| Femur_Head_L| Femur Head & Neck Left |  2812003 |  Structure of head of femur (body structure)  |  7771000| left(qualifier value)| | |
| Femur_Head_R| Femur Head & Neck Right |  2812003 |  Structure of head of femur (body structure)  |  24028007| right(qualifier value)| | |
| Femur_Joint_L| Femoral Joint Left |  24136001 |  Hip joint structure (body structure) |  7771000| left(qualifier value)| | |
| Femur_Joint_R| Femoral Joint Right |  24136001 |  Hip joint structure (body structure) |  24028007| right(qualifier value)| | |
| Femur| Femur  Whole  |  71341001 |  Bone structure of femur (body structure) | | | | |
| Femur_L| Femur  Whole  Left |  71341001 |  Bone structure of femur (body structure) |  7771000| left(qualifier value)| | |
| Femur_Neck| Femur Neck |  29627003 |  Structure of neck of femur (body structure) | | | | |
| Femur_Neck_L| Femur Neck Right |  29627003 |  Structure of neck of femur (body structure) |  24028007| right(qualifier value)| | |
| Femur_Neck_R| Femur Neck Left |  29627003 |  Structure of neck of femur (body structure) |  7771000| left(qualifier value)| | |
| Femur_R| Femur Whole Right |  71341001 |  Bone structure of femur (body structure) |  24028007| Right(qualifier value)| | |
| Femur_Shaft_L| Femur Shaft Left |  41111004 |  Bone structure of shaft of femur (body structure) |  7771000| left(qualifier value)| | |
| Femur_Shaft_R| Femur Shaft Right |  41111004 |  Bone structure of shaft of femur (body structure) |  24028007| right(qualifier value)| | |
| Femurs| Both Femurs |  71341001 |  Bone structure of femur (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Fibula| Fibula |  87342007 |  Bone structure of fibula (body structure) | | | | |
| Fibula_L| Fibula Left |  87342007 |  Bone structure of fibula (body structure) |  7771000| left(qualifier value)| | |
| Fibula_R| Fibula Right |  87342007 |  Bone structure of fibula (body structure) |  24028007| right(qualifier value)| | |
| Glottis| Glottis |  1307006 |  Glottis structure (body structure) | | | | |
| GreatVes| Great Vessels of the heart (aorta\, vena cava S&I\, pulmonary A&V) |  3711007 |  Structure of great blood vessel (organ) (body structure) | | | | |
| GreatVes_NAdj| Non Adjacent Great Vessels |  3711007 |  Structure of great blood vessel (organ) (body structure) |  1217011006| non-adjacent(qualifier value)| | |
| Hardpalate| Hard palate |  90228003 |  Hard palate structure (body structure) | | | | |
| Glnd_Adrenal| Adrenal glands  |  23451007 |  Adrenal structure (body structure) | | | | |
| Glnd_Adrenal_L| Adrenal glands left |  23451007 |  Adrenal structure (body structure) |  7771000| left(qualifier value)| | |
| Glnd_Adrenal_R| Adrenal glands right |  23451007 |  Adrenal structure (body structure) |  24028007| right(qualifier value)| | |
| Heart| Heart |  80891009 |  Heart structure (body structure) | | | | |
| Glnd_Lacrimal_L| Lacrimal Gland Left |  13561001 |  Lacrimal gland structure (body structure) |  7771000| left(qualifier value)| | |
| Glnd_Lacrimal_R| Lacrimal Gland Right |  13561001 |  Lacrimal gland structure (body structure) |  24028007| right(qualifier value)| | |
| Hemispheres| Hemisphere |  372073000 |  Cerebral hemisphere structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Glnd_Subling_L| Sublingual gland |  88481005 |  Sublingual gland structure (body structure) |  7771000| left(qualifier value)| | |
| Glnd_Subling_R| Sublingual gland |  88481005 |  Sublingual gland structure (body structure) |  24028007| right(qualifier value)| | |
| Hippocampi| Hippocampus |  5366008 |  Hippocampal structure (body structure) | | | | |
| Glnd_Submand_L| Submandibular Gland Left |  385296007 |  Submandibular salivary gland structure (body structure) |  7771000| left(qualifier value)| | |
| Glnd_Submand_R| Submandibular Gland Right |  385296007 |  Submandibular salivary gland structure (body structure) |  24028007| right(qualifier value)| | |
| Hypothalmus| Hypothalamus |  67923007 |  Hypothalamic structure (body structure) | | | | |
| Ileum| Small bowel - Ileum |  34516001 |  Ileal structure (body structure) | | | | |
| Jejunum| Small bowel - Jejunum |  21306003 |  Jejunal structure (body structure) | | | | |
| Jejunum_Ileum| Both ileum and jejunum |  90228003 |  Jejunum and ileum (combined site) (body structure) | | | | |
| Joint_Elbow| Elbow joint |  16953009 |  Elbow joint structure (body structure) | | | | |
| Joint_Glenohum| Glenohumeral Joint |  85537004 |  Glenohumeral joint structure (body structure) | | | | |
| GrowthPlate_L|  |  711190000 |  Structure of epiphyseal plate (body structure) |  7771000| left(qualifier value)| | |
| GrowthPlate_R|  |  711190000 |  Structure of epiphyseal plate (body structure) |  24028007| right(qualifier value)| | |
| Joint_Surface|  |  39352004 |  Joint structure (body structure)  |  410679008| Surface(qualifier value)| | |
| Joint_TM| Temperomandibular Joint  |  53620006 |  Temporomandibular joint structure (body structure) | | | | |
| Hemisphere_L|  |  6566002 |  Cerebellar hemisphere structure (body structure) |  7771000| left(qualifier value)| | |
| Hemisphere_R|  |  6566002 |  Cerebellar hemisphere structure (body structure) |  24028007| right(qualifier value)| | |
| Kidney_Cortex| Renal cortex for both Kidneys |  50403003 |  Structure of cortex of kidney (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Kidney_Hilums| Renal Hilum for both Kidneys |  74033008 |  Structure of hilum of kidney (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Hippocampus_L| Hippocampus Left |  5366008 |  Hippocampal structure (body structure) |  7771000| left(qualifier value)| | |
| Hippocampus_R| Hippocampus Right |  5366008 |  Hippocampal structure (body structure) |  24028007| right(qualifier value)| | |
| Humerus_L| Humerus Left |  85050009 |  Bone structure of humerus (body structure) |  7771000| left(qualifier value)| | |
| Humerus_R| Humerus Right |  85050009 |  Bone structure of humerus (body structure) |  24028007| right(qualifier value)| | |
| Kidneys| Both Kidneys |  64033007 |  Kidney structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Knee| Knee |  72696002 |  Knee region structure (body structure) | | | | |
| Laryngl_Pharynx| Laryngeal pharynx |  81502006 |  Hypopharyngeal structure (body structure) | | | | |
| Larynx| Larynx |  4596009 |  Laryngeal structure (body structure) | | | | |
| Larynx_SG| Supraglottic Larynx |  86483002 |  Structure of supraglottic space (body structure) | | | | |
| Joint_Elbow_L| Left Elbow joint |  16953009 |  Elbow joint structure (body structure) |  7771000| left(qualifier value)| | |
| Joint_Elbow_R| Right Elbow joint |  16953009 |  Elbow joint structure (body structure) |  24028007| right(qualifier value)| | |
| Lens| Eye Lens |  78076003 |  Structure of lens of eye (body structure) | | | | |
| Joint_Glenohum_L| Glenohumeral Joint Left |  85537004 |  Glenohumeral joint structure (body structure) |  7771000| left(qualifier value)| | |
| Joint_Glenohum_R| Glenohumeral Joint Right |  85537004 |  Glenohumeral joint structure (body structure) |  24028007| right(qualifier value)| | |
| Lig_Hepatogastrc| Hepatogastric ligament |  6544009 |  Structure of gastrohepatic ligament (body structure) | | | | |
| Lips| Lips |  81083006 |  Both lips (body structure) | | | | |
| Joint_TM_L| Temperomandibular Joint Left |  53620006 |  Temporomandibular joint structure (body structure) |  7771000| left(qualifier value)| | |
| Joint_TM_R| Temperomandibular Joint Right |  53620006 |  Temporomandibular joint structure (body structure) |  24028007| right(qualifier value)| | |
| Liver| Liver |  10200004 |  Liver structure (body structure) | | | | |
| Kidney_Cortex_L| Renal cortex left |  50403003 |  Structure of cortex of kidney (body structure) |  7771000| left(qualifier value)| | |
| Kidney_Cortex_R| Renal cortex right |  50403003 |  Structure of cortex of kidney (body structure) |  24028007| right(qualifier value)| | |
| Kidney_Hilum_L| Renal Hilum Left |  74033008 |  Structure of hilum of kidney (body structure) |  7771000| left(qualifier value)| | |
| Kidney_Hilum_R| Renal Hilum Right |  74033008 |  Structure of hilum of kidney (body structure) |  24028007| right(qualifier value)| | |
| Lobe_Frontal| Frontal Lobe |  83251001 |  Frontal lobe structure (body structure) | | | | |
| Kidney_L| Kidney Left |  64033007 |  Kidney structure (body structure) |  7771000| left(qualifier value)| | |
| Kidney_Pelvis_L| Renal pelvis Left |  25990002 |  Renal pelvis structure (body structure) |  7771000| left(qualifier value)| | |
| Kidney_Pelvis_R| Renal pelvis Right |  25990002 |  Renal pelvis structure (body structure) |  24028007| right(qualifier value)| | |
| Kidney_R| Kidney Right |  64033007 |  Kidney structure (body structure) |  24028007| right(qualifier value)| | |
| Lobe_Occipital| Occipital Lobe |  31065004 |  Occipital lobe structure (body structure) | | | | |
| Lobe_Parietal| Parietal Lobe |  16630005 |  Parietal lobe structure (body structure) | | | | |
| Knee_L| Knee Left |  72696002 |  Knee region structure (body structure) |  7771000| left(qualifier value)| | |
| Knee_R| Knee Right |  72696002 |  Knee region structure (body structure) |  24028007| right(qualifier value)| | |
| Lobe_Temporal| Temporal Lobe |  78277001 |  Temporal lobe structure (body structure) | | | | |
| Mediastinum| Mediastinum |  72410000 |  Mediastinal structure (body structure) | | | | |
| Musc| Muscle |  71616004 |  Skeletal and/or smooth muscle structure (body structure) | | | | |
| Musc_Constrict| Constrictor Muscle of Pharynx |  4866005 |  Constrictor muscle of pharynx structure (body structure) | | | | |
| Lens_L| Lens Left |  78076003 |  Structure of lens of eye (body structure) |  7771000| left(qualifier value)| | |
| Lens_R| Lens Right |  78076003 |  Structure of lens of eye (body structure) |  24028007| right(qualifier value)| | |
| Musc_Masseter| Masseter Muscle |  79368004 |  Masseter muscle structure (body structure) | | | | |
| Musc_Temporal_R| Temporal muscle - Right |  52927003 |  Structure of temporalis muscle (body structure) |  24028007| right(qualifier value)| | |
| Nasopharynx| Nasal part of pharynx |  71836000 |  Nasopharyngeal structure (body structure) | | | | |
| LN| Lymph Node |  59441001 |  Structure of lymph node (body structure) | | | | |
| LN_Ax_Apical| Set of apical axillary lymphatic vessels |  16051009 |   Structure of apical axillary lymph node (body structure) | | | | |
| LN_Ax_Apical_L| Axillary lymphatic chain - Apical Left |  16051009 |   Structure of apical axillary lymph node (body structure) |  7771000| Left(qualifier value)| | |
| LN_Ax_Apical_R| Axillary lymphatic chain - Apical Right |  16051009 |   Structure of apical axillary lymph node (body structure) |  24028007| Right(qualifier value)| | |
| LN_Ax_Central_L| Axillary lymphatic chain - Central Left |  16051009 |   Structure of apical axillary lymph node (body structure) |  26216008| central(qualifier value)|  7771000|  left(qualifier value) |
| LN_Ax_Central_R| Axillary lymphatic chain - Central Right |  16051009 |   Structure of apical axillary lymph node (body structure) |  26216008| central(qualifier value)|  24028007|  right(qualifier value) |
| LN_Ax_Centrals| Set of central axillary lymphatic vessels |  283001 |  Structure of central axillary lymph node (body structure) | | | | | |
| LN_Ax_L| Axillary lymphatic chain Left |  68171009 |  Axillary lymph node structure (body structure) |  7771000| Left(qualifier value)| | |
| LN_Ax_L1_L| Level 1 Axillary Lymph Node Left |  68171009 |  Axillary lymph node structure (body structure) |  277733009| Level 1(qualifier value)|  7771000|  Left(qualifier value) |
| LN_Ax_L1_R| Level 1 Axillary Lymph Node Right |  68171009 |  Axillary lymph node structure (body structure) |  277733009| Level 1(qualifier value)|  24028007|  Right(qualifier value) |
| LN_Ax_L2_L| Level 2 Axillary Lymph Node Left |  68171009 |  Axillary lymph node structure (body structure) |  277734003| Level 2(qualifier value)|  7771000|  left(qualifier value) |
| LN_Ax_L2_R| Level 2 Axillary Lymph Node Right |  68171009 |  Axillary lymph node structure (body structure) |  277734003| Level 2(qualifier value)|  24028007|  Right(qualifier value) |
| LN_Ax_L3_L| Level 3 Axillary Lymph Node Left |  68171009 |  Axillary lymph node structure (body structure) |  277735002| Level 3(qualifier value)|  7771000|  Left(qualifier value) |
| LN_Ax_L3_R| Level 3 Axillary Lymph Node Right |  68171009 |  Axillary lymph node structure (body structure) |  277735002| Level 3(qualifier value)|  24028007|  Right(qualifier value) |
| LN_Ax_Lateral_L| Axillary lymphatic chain - Lateral Left |  33770006 |  Structure of lateral axillary lymph node (body structure) |  7771000| Left(qualifier value)| | |
| LN_Ax_Lateral_R| Axillary lymphatic chain - Lateral Right |  33770006 |  Structure of lateral axillary lymph node (body structure) |  24028007| Right(qualifier value)| | |
| LN_Ax_Laterals|  lateral axillary lymph nodes |  33770006 |  Structure of lateral axillary lymph node (body structure) | | | | |
| LN_Ax_Pectoral_L| Axillary lymphatic chain - Pectoral Left |  69691007 |  Structure of pectoral axillary lymph node (body structure) |  7771000| Left(qualifier value)| | |
| LN_Ax_Pectoral_R| Axillary lymphatic chain - Pectoral Right |  69691007 |  Structure of pectoral axillary lymph node (body structure) |  24028007| Right(qualifier value)| | |
| LN_Ax_Pectorals| Set of pectoral axillary lymphatic vessels |  69691007 |  Structure of pectoral axillary lymph node (body structure) | | | | |
| LN_Ax_R| Axillary lymphatic chain Right |  68171009 |  Axillary lymph node structure (body structure) |  24028007| Right(qualifier value)| | |
| LN_Ax_Subscap_L| Axillary lymphatic chain - Subscapular Left |  12196003 |  Structure of subscapular axillary lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Ax_Subscap_R| Axillary lymphatic chain - Subscapular Right |  12196003 |  Structure of subscapular axillary lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Ax_Subscaps| Set of subscapular axillary lymphatic vessels |  12196003 |  Structure of subscapular axillary lymph node (body structure) | | | | |
| LN_Brachioceph_L| Lymph nodes of thorax - Brachiocephalic Left |  196821008 |  Structure of innominate lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Brachioceph_R| Lymph nodes of thorax - Brachiocephalic Right |  196821008 |  Structure of innominate lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Brachiocephs| Lymph nodes of thorax - Brachiocephalic |  196821008 |  Structure of innominate lymph node (body structure) | | | | |
| LN_Bronchpulm_L| Lymph nodes of thorax - Bronchopulmonary Left |  279816002 |  Bronchopulmonary lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Bronchpulm_R| Lymph nodes of thorax - Bronchopulmonary Right |  279816002 |  Bronchopulmonary lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Bronchpulms| Lymph nodes of thorax - Bronchopulmonary |  279816002 |  Bronchopulmonary lymph node group (body structure) | | | | |
| LN_Diaphragmatic| Lymph nodes of thorax - Diaphragmatic |  196751009 |  Structure of diaphragmatic lymph node (body structure) | | | | |
| LN_Iliac_Ext| Lymph nodes of pelvis - External iliac |  65349008 |  Structure of external iliac lymph node (body structure) | | | | |
| LN_Iliac_Int| Lymph nodes of pelvis -  Internal iliac |  245357003 |  Structure of internal iliac lymph node (body structure) | | | | | |
| LN_Iliac| Lymph nodes of pelvis -  common iliac |  84219008 |  Structure of iliac lymph node (body structure) | | | | | |
| LN_Iliac_Ext_L| Lymph nodes of pelvis - external iliac Left |  65349008 |  Structure of external iliac lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Iliac_Ext_R| Lymph nodes of pelvis - external iliac Right |  65349008 |  Structure of external iliac lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Iliac_Int_L| Lymph nodes of pelvis - internal iliac Left |  245299000 |  Internal iliac lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Iliac_L| Lymph nodes of pelvis - common iliac Left |  245295006 |  Common iliac lymph node group (body structure) |  7771000| left (qualifier value)| | |
| LN_Iliac_R| Lymph nodes of pelvis - common iliac Right |  245295006 |  Common iliac lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_IMN_L|  |  245282001 |  Internal mammary lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_IMN_R|  |  245282001 |  Internal mammary lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_IMNs| Lymph nodes IMN |  245282001 |  Internal mammary lymph node group (body structure) | | | | |
| LN_Inguinofem| Lymph nodes of pelvis - inguinofemoral |  279763008 |  Inguinofemoral lymph node group (body structure) | | | | |
| LN_Inguinofem_L| Lymph nodes of pelvis - inguinofemoral left |  279763008 |  Inguinofemoral lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Inguinofem_R| Lymph nodes of pelvis - inguinofemoral right |  279763008 |  Inguinofemoral lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Intercostals| Lymph nodes of thorax - Intercostal |  64038003 |  Intercostal lymph node (body structure) | | | | |
| LN_L| Lymph Node Left |  59441001 |  Structure of lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Ligamentarter| Lymph nodes of thorax - Ligamentum arteriosum |  127938006 |  Lymph node of aortopulmonary window (body structure)  | | | | |
| LN_lliac_Int_R| Lymph nodes of pelvis - internal iliac Right |  245299000 |  Internal iliac lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Mediastinals| Lymph nodes of thorax - Mediastinal |  62683002 |  Mediastinal lymph node structure (body structure) | | | | |
| LN_Neck| Neck Lymph Node |  81105003 |  Cervical lymph node structure (body structure) | | | | |
| LN_Neck_IA_L| Level IA (Submental) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162616006|  Level IA(qualifier value) |
| LN_Neck_IA_R| Level IA (Submental) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162616006|  Level IA(qualifier value) |
| LN_Neck_IB_L| Level IB (Submandibular) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162617002|  Level IB(qualifier value) |
| LN_Neck_IB_R| Level IB (Submandibular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162617002|  Level IB(qualifier value) |
| LN_Neck_II_L| Level IIA & IIB (Upper Jugular) neck nodes Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258401000|  Level II(qualifier value) |
| LN_Neck_II_R| Level IIA & IIB (Upper Jugular) neck nodes Left |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258401000|  Level II(qualifier value) |
| LN_Neck_IIA_L| Level IIA (Upper Jugular) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left (qualifier value)|  USCRS-34777|  Level IIA(qualifier value) |
| LN_Neck_IIA_R| Level IIA (Upper Jugular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  USCRS-34777|  Level IIA(qualifier value) |
| LN_Neck_IIB_L| Level IIB (Upper Jugular) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  USCRS-34775|  Level IIB(qualifier value) |
| LN_Neck_IIB_R| Level IIB (Upper Jugular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  USCRS-34775|  Level IIB(qualifier value) |
| LN_Neck_III_L| Level III (Middle Jugular) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258402007|  Level III(qualifier value) |
| LN_Neck_III_R| Level III (Middle Jugular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258402007|  Level III(qualifier value) |
| LN_Neck_IV_L| Level IV neck (Lower Jugular) node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258403002|  Level IV(qualifier value) |
| LN_Neck_IV_R| Level IV (Lower Jugular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258403002|  Level IV(qualifier value) |
| LN_Neck_V_L| Level VA\, VB and VC (Posterior Triangle) neck nodes Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258404008|  Level V(qualifier value) |
| LN_Neck_V_R| Level VA\, VB and VC (Posterior Triangle) neck nodes Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258404008|  Level V(qualifier value) |
| LN_Neck_VA_L| Level VA (Posterior Triangle) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162622002|  Level VA(qualifier value) |
| LN_Neck_VA_R| Level VA (Posterior Triangle) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162622002|  Level VA(qualifier value) |
| LN_Neck_VB_L| Level VB (Posterior Triangle) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162623007|  Level VB(qualifier value) |
| LN_Neck_VB_R| Level VB (Posterior Triangle) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162623007|  Level VB(qualifier value) |
| LN_Neck_VC_L| Level VC (Posterior Triangle) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162624001|  Level VC(qualifier value) |
| LN_Neck_VC_R| Level VC (Posterior Triangle) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162624001|  Level VC(qualifier value) |
| LN_Neck_VI_L| Level VI (Anterior Triangle) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258405009|  Level VI(qualifier value) |
| LN_Neck_VI_R| Level VI (Anterior Triangle) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258405009|  Level VI(qualifier value) |
| LN_Neck_VII_L| Level VII (Upper Mediastinal) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  395168005|  Level VII(qualifier value) |
| LN_Neck_VII_R| Level VII (Upper Mediastinal) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162628003|  Level VIIA(qualifier value) |
| LN_Neck_VIIA_L| LN_Neck_VIIA_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162628003|  Level VIIA(qualifier value) |
| LN_Neck_VIIA_R| LN_Neck_VIIA_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  395168005|  Level VII(qualifier value) |
| LN_Neck_VIII_R| LN_Neck_VIII_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162618007|  Level VIII(qualifier value) |
| LN_Neck_VIII_L| LN_Neck_VIII_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162618007|  Level VIII(qualifier value) |
| LN_Neck_IX_R| LN_Neck_IX_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162619004|  Level IX(qualifier value) |
| LN_Neck_IX_L| LN_Neck_IX_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162619004|  Level IX(qualifier value) |
| LN_Neck_X_R| LN_Neck_X_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162614009|  Level X(qualifier value) |
| LN_Neck_X_L| LN_Neck_X_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162614009|  Level X(qualifier value) |
| LN_Neck_XA_R| LN_Neck_XA_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162615005|  Level XA(qualifier value) |
| LN_Neck_XA_L| LN_Neck_XA_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162615005|  Level XA(qualifier value) |
| LN_Neck_XB_R| LN_Neck_XB_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162613003|  Level XB(qualifier value) |
| LN_Neck_XB_L| LN_Neck_XB_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162613003|  Level XB(qualifier value) |
| LN_Obturator_L| Lymph nodes of pelvis - obturator Left |  36086000 |  Structure of obturator lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Obturator_R| Lymph nodes of pelvis - obturator Right |  36086000 |  Structure of obturator lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Paraaortic| Lymph nodes of abdomen- para-aortic |  35783009 |  Structure of aortic lymph node (body structure) | | | | |
| LN_Paramammary_L| Lymph nodes of thorax - Paramammary Left |  368550005 |  Structure of paramammary lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Paramammary_R| Lymph nodes of thorax - Paramammary Right |  368550005 |  Structure of paramammary lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Paramammarys| Lymph nodes of thorax - Paramammary |  368550005 |  Structure of paramammary lymph node (body structure) | | | | |
| LN_Parasternal_L| Lymph nodes of thorax - Parasternal Left |  82365008 |  Structure of parasternal lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Parasternal_R| Lymph nodes of thorax - Parasternal Right |  82365008 |  Structure of parasternal lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Parasternals| Lymph nodes of thorax - Parasternal |  82365008 |  Structure of parasternal lymph node (body structure) | | | | |
| LN_Pelvic_L| Pelvic Lymph Nodes Left |  245294005 |  Pelvic lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Pelvic_R| Pelvic Lymph Nodes Right |  245294005 |  Pelvic lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Pelvics| Pelvic Lymph Nodes |  245294005 |  Pelvic lymph node group (body structure) | | | | |
| LN_Portahepatis| Porta hepatis |  245288002 |  Portahepatis lymph node group (body structure) | | | | |
| Nose| Nose |  45206002 |  Nasal structure (body structure) | | | | |
| LN_Presacral_L| Lymph nodes of pelvis - presacral Left |  1187336003 |  Presacral lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Presacral_R| Lymph nodes of pelvis - presacral Right |  1187336003 |  Presacral lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Pulmonary_L| Lymph nodes of thorax - Pulmonary Left |  196662004 |  Structure of intrapulmonary lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Pulmonary_R| Lymph nodes of thorax - Pulmonary Right |  196662004 |  Structure of intrapulmonary lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Pulmonarys| Lymph nodes of thorax - Pulmonary |  196662004 |  Structure of intrapulmonary lymph node (body structure) | | | | |
| LN_R| Lymph Node Right |  59441001 |  Structure of lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Sclav_L| Supraclavicular Lymph Node Left |  76838003 |  Structure of supraclavicular lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Sclav_R| Supraclavicular Lymph Node Right |  76838003 |  Structure of supraclavicular lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Trachbrnchs| Lymph nodes of thorax - Tracheobronchial |  245283006 |  Tracheobronchial lymph node group (body structure) | | | | |
| LN_Trachbrnchs_L| Lymph nodes of thorax - Tracheobronchial Left |  245283006 |  Tracheobronchial lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Trachbrnchs_R| Lymph nodes of thorax - Tracheobronchial Right |  245283006 |  Tracheobronchial lymph node group (body structure) |  24028007| right(qualifier value)| | |
| Nrv_Peripheral| Peripheral Nerve |  84782009 |  Peripheral nerve structure (body structure) | | | | |
| Lobe_Frontal_L| Frontal Lobe Left |  83251001 |  Frontal lobe structure (body structure) |  7771000| left(qualifier value)| | |
| Lobe_Frontal_R| Frontal Lobe Right |  83251001 |  Frontal lobe structure (body structure) |  24028007| right(qualifier value)| | |
| Nrv_Root| Nerve Root |  40958000 |  Nerve root structure (body structure) | | | | |
| Lobe_Occipital_L| Occipital Lobe Left |  31065004 |  Occipital lobe structure (body structure) |  7771000| left(qualifier value)| | |
| Lobe_Occipital_R| Occipital Lobe Right |  31065004 |  Occipital lobe structure (body structure) |  24028007| right(qualifier value)| | |
| OpticChiasm| Optic chiasm |  244453006 |  Structure of optic chiasma (body structure) | | | | |
| Lobe_Parietal_L| Parietal Lobe Left |  16630005 |  Parietal lobe structure (body structure) |  7771000| left(qualifier value)| | |
| Lobe_Parietal_R| Parietal Lobe Right |  16630005 |  Parietal lobe structure (body structure) |  24028007| right(qualifier value)| | |
| OpticNrv| Optic nerve |  18234004 |  Optic nerve structure (body structure) | | | | |
| Lobe_Temporal_L| Temporal Lobe Left |  78277001 |  Temporal lobe structure (body structure) |  7771000| left(qualifier value)| | |
| Lobe_Temporal_R| Temporal Lobe Right |  78277001 |  Temporal lobe structure (body structure) |  24028007| right(qualifier value)| | |
| Lung_L| Lung Left |  39607008 |  Lung structure (body structure) |  7771000| left(qualifier value)| | |
| Lung_LLL| Lung - lower lobe of left |  31094006 |  Structure of lobe of lung (body structure) |  7771000| left(qualifier value)|  261122009|  lower(qualifier value) |
| Lung_LUL| Lung - upper lobe of left |  31094006 |  Structure of lobe of lung (body structure) |  7771000| left(qualifier value)|  261183002|  upper(qualifier value) |
| Lung_R| Lung Right |  31094006 |  Structure of lobe of lung (body structure) |  24028007| right(qualifier value)| | |
| Lung_RLL| Lung - lower lobe of right |  31094006 |  Structure of lobe of lung (body structure) |  24028007| right(qualifier value)|  261122009|  lower(qualifier value) |
| Lung_RML| Lung - middle lobe of right |  31094006 |  Structure of lobe of lung (body structure) |  24028007| right(qualifier value)|  260528009|  middle(qualifier value) |
| Lung_RUL| Lung - upper lobe of right |  31094006 |  Structure of lobe of lung (body structure) |  24028007| right(qualifier value)|  261183002|  upper(qualifier value) |
| Lungs| Pair of Lungs |  39607008 |  Lung structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Malleus| Malleus |  34080009 |  Malleus structure (body structure) | | | | |
| Malleus_L| Malleus Left |  34080009 |  Malleus structure (body structure) | | | | |
| Malleus_R| Malleus Right |  34080009 |  Malleus structure (body structure) | | | | |
| Maxilla| Maxilla |  70925003 |  Bone structure of maxilla (body structure) | | | | |
| Maxilla_L| Maxilla Left |  70925003 |  Bone structure of maxilla (body structure) | | | | |
| Maxilla_R| Maxilla Right |  70925003 |  Bone structure of maxilla (body structure) |  24028007| right(qualifier value)| | |
| Orbit_L| Orbit Left |  363654007 |  Structure of orbit proper (body structure) |  7771000| left(qualifier value)| | |
| Orbit_R| Orbit Right |  363654007 |  Structure of orbit proper (body structure) |  24028007| right(qualifier value)| | |
| Oropharynx| Oral part of pharynx |  31389004 |  Oropharyngeal structure (body structure) | | | | |
| Musc_Constrict_I| Pharynx - Inferior pharyngeal constrictor |  4866005 |  Constrictor muscle of pharynx structure (body structure) |  261089000| inferior(qualifier value)| | |
| Musc_Constrict_M|  Pharynx - Middle pharyngeal constrictor |  4866005 |  Constrictor muscle of pharynx structure (body structure) |  260528009| middle(qualifier value)| | |
| Musc_Constrict_S| Pharynx - Superior pharyngeal constrictor |  4866005 |  Constrictor muscle of pharynx structure (body structure) |  264217000| superior(qualifier value)| | |
| Musc_Digastric_L| Digastric muscle Left |  52410001 |  Digastric muscle structure (body structure) |  7771000| left(qualifier value)| | |
| Musc_Digastric_R| Digastric muscle Right |  52410001 |  Digastric muscle structure (body structure) |  24028007| right(qualifier value)| | |
| Ovaries| Ovary |  15497006 |  Ovarian structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Musc_Masseter_L| Masseter Muscle Left |  79368004 |  Masseter muscle structure (body structure) | | | | |
| Musc_Masseter_R| Masseter Muscle Right |  79368004 |  Masseter muscle structure (body structure) | | | | |
| Musc_Platysma_L| Platysma Left |  18252004 |  Structure of platysma muscle (body structure) |  7771000| left(qualifier value)| | |
| Musc_Platysma_R| Platysma Right |  18252004 |  Structure of platysma muscle (body structure) |  24028007| right(qualifier value)| | |
| Musc_Pterygoid_L| Pterygoid muscles - Left |  76738006 |  Structure of pterygoid muscle (body structure) |  7771000| left(qualifier value)| | |
| Musc_Pterygoid_R| Pterygoid muscles - Right |  76738006 |  Structure of pterygoid muscle (body structure) |  24028007| right(qualifier value)| | |
| Musc_Sclmast_L| Sternocleidomastoid Left |  22823000 |  Structure of sternocleidomastoid muscle (body structure) |  7771000| left(qualifier value)| | |
| Musc_Sclmast_R| Sternocleidomastoid Right |  22823000 |  Structure of sternocleidomastoid muscle (body structure) |  24028007| right(qualifier value)| | |
| Musc_Temporal_L| Temporal muscle - Left |  52927003 |  Structure of temporalis muscle (body structure) |  7771000| left(qualifier value)| | |
| Palate_Soft| Soft palate |  49460000 |  Soft palate structure (body structure) | | | | |
| Nasalconcha_LI| Inferior Nasal Concha Left |  46607005 |  Nasal turbinate structure (body structure) |  7771000| left(qualifier value)|  261089000|  inferior(qualifier value) |
| Nasalconcha_RI| Inferior Nasal Concha Right |  46607005 |  Nasal turbinate structure (body structure) |  24028007| right(qualifier value)|  261089000| inferior(qualifier value) |
| Pancreas| Pancreas |  15776009 |  Pancreatic structure (body structure) | | | | |
| Pancreas_Head| Head of Pancreas |  64163001 |  Structure of head of pancreas (body structure) | | | | |
| Pancreas_Tail| Tail of Pancreas |  73239005 |  Structure of tail of pancreas (body structure) | | | | |
| Parametrium| Parametrium |  45682005 |  Structure of parametrium (body structure) | | | | |
| Parotids| Pair of Parotid Glands |  45289007 |  Parotid gland structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| PenileBulb| Penile Bulb |  52737000 |  Structure of bulb of penis (body structure) | | | | |
| OpticNrv_L| Optic nerve - left |  18234004 |  Optic nerve structure (body structure) |  7771000| left(qualifier value)| | |
| OpticNrv_R| Optic nerve - right |  18234004 |  Optic nerve structure (body structure) |  7771000| left(qualifier value)| | |
| Penis| Penis |  18911002 |  Penile structure (body structure) |  24028007| right(qualifier value)| | |
| Pericardium| Pericardium |  76848001 |  Pericardial structure (body structure) | | | | |
| Perineum| Perineum |  38864007 |  Perineal structure (body structure) | | | | |
| Peritoneum| Peritoneal sac |  118762006 |  Peritoneal sac structure (body structure) | | | | |
| Ovary_L| Ovary Left |  15497006 |  Ovarian structure (body structure) |  7771000| left(qualifier value)| | |
| Ovary_R| Ovary Right |  15497006 |  Ovarian structure (body structure) |  24028007| right(qualifier value)| | |
| Pacemaker| Pacemaker |  14106009 |  Cardiac pacemaker\, device (physical object) | | | | |
| Pharynx| Pharynx |  54066008 |  Pharyngeal structure (body structure) | | | | |
| PancJejuno| The pancreatic jejuno junction - generated by surgical procedure |  110822002 |  Pancreas and jejunum (combined site) (body structure) | | | | |
| Pineal| Pineal gland |  45793000 |  Pineal structure (body structure) | | | | |
| Pituitary| Pituitary gland |  56329008 |  Pituitary structure (body structure) | | | | |
| Pons| Pons |  49557009 |  Pontine structure (body structure) | | | | |
| Prostate| Prostate |  41216001 |  Prostatic structure (body structure) | | | | |
| Parotid_L| Parotid Left |  45289007 |  Parotid gland structure (body structure) |  7771000| left(qualifier value)| | |
| Parotid_R| Parotid Right |  45289007 |  Parotid gland structure (body structure) |  24028007| right(qualifier value)| | |
| ProstateBed| Prostate Bed |  1162492000 |  Tumor bed (morphologic abnormality) | | | | |
| Pterygoid_Lat_L| Pterygoid muscles lateral - Left |  88938001 |  Structure of lateral pterygoid muscle (body structure) |  7771000| left(qualifier value)| | |
| Pterygoid_Lat_R| Pterygoid muscles lateral - Right |  88938001 |  Structure of lateral pterygoid muscle (body structure) |  24028007| right(qualifier value)| | |
| Pterygoid_Med_L| Pterygoid muscles medial - Left |  85002005 |  Structure of medial pterygoid muscle (body structure) |  7771000| left(qualifier value)| | |
| Pterygoid_Med_R| Pterygoid muscles medial - Right |  85002005 |  Structure of medial pterygoid muscle (body structure) |  24028007| right(qualifier value)| | |
| Rectal_Wall| Rectal Wall |  511000202101 |  Rectum wall structure (body structure) | | | | |
| Rectum| Large bowel - Rectum |  34402009 |  Rectum structure (body structure) | | | | |
| SacralPlex| Sacral Plexus |  62397004 |  Sacral plexus structure (body structure) | | | | |
| Scalp|  |  41695006 |  Scalp structure (body structure) | | | | |
| Proc_Condyloid_L| Condyloid process of mandible - Right |  67183008 |  Structure of condyloid process of mandible (body structure) |  24028007| right(qualifier value)| | |
| Proc_Condyloid_R| Condyloid process of mandible - Left |  67183008 |  Structure of condyloid process of mandible (body structure) |  7771000| left(qualifier value)| | |
| Proc_Coronoid_L| Coronoid process of mandible - Left |  124002 |  Structure of coronoid process of mandible (body structure) |  7771000| left(qualifier value)| | |
| Proc_Coronoid_R| Coronoid process of mandible - Right |  124002 |  Structure of coronoid process of mandible (body structure) |  24028007| right(qualifier value)| | |
| Scar| Scar |  12402003 |  Scar (morphologic abnormality) | | | | |
| Scar_Boost|  |  12402003 |  Scar (morphologic abnormality) | | | | |
| Scrotum| Scrotum (skin & cremasteric fascia) |  20233005 |  Scrotal structure (body structure) | | | | |
| SeminalVes| Seminal vesicle |  64739004 |  Seminal vesicle structure (body structure) | | | | |
| SeminalVes_Dist| Distal Seminal Vesicle |  64739004 |  Seminal vesicle structure (body structure) |  46053002| distal(qualifier value)| | |
| SeminalVes_Prox| Proximal Seminal Vesicle |  64739004 |  Seminal vesicle structure (body structure) |  40415009| proximal(qualifier value)| | |
| Sinus_Ethmoid| Ethmoidal Sinus |  54215007 |  Ethmoid sinus structure (body structure) | | | | |
| PubicSymphys| Pubic Symphysis |  82561000 |  Symphysis pubis structure (body structure) | | | | |
| PubicSymphys_L| Pubic bone Left |  82561000 |  Symphysis pubis structure (body structure) |  7771000| left(qualifier value)| | |
| PubicSymphys_R| Pubic bone Right |  82561000 |  Symphysis pubis structure (body structure) |  24028007| right(qualifier value)| | |
| Radius_L| Radius Left |  62413002 |  Bone structure of radius (body structure) |  7771000| left(qualifier value)| | |
| Radius_R| Radius Right |  62413002 |  Bone structure of radius (body structure) |  24028007| right(qualifier value)| | |
| Sinus_Frontal| Frontal Sinus |  55060009 |  Frontal sinus structure (body structure) | | | | |
| Sinus_Maxilry| Maxillary Sinus |  15924003 |  Maxillary sinus structure (body structure) | | | | |
| Retina_L| Retina Left |  5665001 |  Retinal structure (body structure) |  7771000| left(qualifier value)| | |
| Retina_R| Retina Right |  5665001 |  Retinal structure (body structure) |  24028007| right(qualifier value)| | |
| Retinas| Both Retinas |  5665001 |  Retinal structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Rib| Any Rib volume |  113197003 |  Bone structure of rib (body structure) | | | | |
| Rib01_L| First Rib Left |  48535007 |  Bone structure of first rib (body structure) |  7771000| left(qualifier value)| | |
| Rib01_R| First Rib Right |  48535007 |  Bone structure of first rib (body structure) |  24028007| right(qualifier value)| | |
| Rib02_L| Second rib Left |  78247007 |  Bone structure of second rib (body structure) |  7771000| left(qualifier value)| | |
| Rib02_R| Second rib Right |  78247007 |  Bone structure of second rib (body structure) |  24028007| right(qualifier value)| | |
| Rib03_L| Third rib Left |  25888004 |  Bone structure of third rib (body structure) |  7771000| left(qualifier value)| | |
| Rib03_R| Third rib Right |  25888004 |  Bone structure of third rib (body structure) |  24028007| right(qualifier value)| | |
| Rib04_L| Fourth rib Left |  25523003 |  Bone structure of fourth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib04_R| Fourth rib Right |  25523003 |  Bone structure of fourth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib05_L| Fifth rib Left |  15339008 |  Bone structure of fifth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib05_R| Fifth rib Right |  15339008 |  Bone structure of fifth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib06_L| Sixth rib Left |  59558009 |  Bone structure of sixth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib06_R| Sixth rib Right |  59558009 |  Bone structure of sixth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib07_L| Seventh rib Left |  24915002 |  Bone structure of seventh rib (body structure) |  7771000| left(qualifier value)| | |
| Rib07_R| Seventh rib Right |  24915002 |  Bone structure of seventh rib (body structure) |  24028007| right(qualifier value)| | |
| Rib08_L| Eighth rib Left |  5953002 |  Bone structure of eighth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib08_R| Eighth rib Right |  5953002 |  Bone structure of eighth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib09_L| Ninth rib Left |  22565002 |  Bone structure of ninth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib09_R| Ninth rib Right |  22565002 |  Bone structure of ninth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib10_L| Tenth rib Left |  77644006 |  Bone structure of tenth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib10_R| Tenth rib Right |  77644006 |  Bone structure of tenth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib11_L| Eleventh rib Left |  58830002 |  Bone structure of eleventh rib (body structure) |  7771000| left(qualifier value)| | |
| Rib11_R| Eleventh rib Right |  58830002 |  Bone structure of eleventh rib (body structure) |  24028007| right(qualifier value)| | |
| Rib12_L| Twelfth rib Left |  43993008 |  Bone structure of twelfth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib12_R| Twelfth rib Right |  43993008 |  Bone structure of twelfth rib (body structure) |  24028007| right(qualifier value)| | |
| Skin| Skin |  39937001 |  Skin structure (body structure) | | | | |
| Rib13_L| Thirteenth   rib Left |  1193560003 |  Bone structure of thirteenth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib13_R| Thirteenth  rib Right |  1193560003 |  Bone structure of thirteenth rib (body structure) |  24028007| right(qualifier value)| | |
| Skin_Perineum|  |  48014002 |  Skin structure of perineum (body structure) | | | | |
| Scapula_L| Scapula Left |  79601000 |  Bone structure of scapula (body structure) |  7771000| left(qualifier value)| | |
| Scapula_R| Scapula Right |  79601000 |  Bone structure of scapula (body structure) |  24028007| right(qualifier value)| | |
| Skin_Peritoneum|  |  75093004 |  Skin structure of anterior abdominal wall (body structure) | | | | |
| Spc_Bowel | Space occupied by bowel |  USCRS-34356 |  Bowel space (body structure) | | | | |
| Spc_Bowel_Small| Space occupied by small bowel |  USCRS-34358 |  Small bowel space (body structure) | | | | |
| Spc_Retrophars| Retropharyngeal space |  789564000 |  Structure of retropharyngeal space (body structure) | | | | |
| Spc_Retrosty| Retrostyloid space  |  1193554003 |  Retrostyloid space (body structure) | | | | |
| Spc_Supraclav_L| Supraclavicular space - Left |  76838003 |  Structure of supraclavicular lymph node (body structure) |  7771000| left(qualifier value)| | |
| Spc_Supraclav_R| Supraclavicular space - Right |  76838003 |  Structure of supraclavicular lymph node (body structure) |  24028007| right(qualifier value)| | |
| Sinus_Frontal_L| Frontal Sinus Left |  55060009 |  Frontal sinus structure (body structure) |  7771000| left(qualifier value)| | |
| Sinus_Frontal_R| Frontal Sinus Right |  55060009 |  Frontal sinus structure (body structure) |  24028007| right(qualifier value)| | |
| Sphincter_Anal| Internal Anal Sphincter  |  41178004 |  Structure of sphincter ani muscle (body structure) | | | | |
| Sinus_Maxilry_L| Maxillary Sinus |  15924003 |  Maxillary sinus structure (body structure) |  7771000| left(qualifier value)| | |
| Sinus_Maxilry_R| Maxillary Sinus |  15924003 |  Maxillary sinus structure (body structure) |  24028007| right(qualifier value)| | |
| SpinalCanal| Vertebral canal |  61853006 |  Spinal canal structure (body structure) | | | | |
| Sinus_Sphenoid_L| Sphenoidal Sinus Left |  24999009 |  Sphenoid sinus structure (body structure) |  7771000| left (qualifier value)| | |
| Sinus_Sphenoid_R| Sphenoidal Sinus Right |  24999009 |  Sphenoid sinus structure (body structure) |  24028007| right(qualifier value)| | |
| SpinalCord| Spinal Cord |  2748008 |  Spinal cord structure (body structure) | | | | |
| SpinalCord_Cerv| Spinal Cord Cervical |  54785003 |  Cervical spinal cord structure (body structure) | | | | |
| SpinalCord_Lum| Spinal Cord Lumbar |  60051002 |  Lumbar spinal cord structure (body structure) | | | | |
| Skull| Skeletal system of head |  89546000 |  Bone structure of cranium (body structure) | | | | |
| SpinalCord_Sac| Spinal Cord Sacral |  11478001 |  Sacral spinal cord structure (body structure) | | | | |
| SpinalCord_Thor| Spinal Cord Thoracic |  50800009 |  Thoracic spinal cord structure (body structure) | | | | |
| Spongiosum| Penis Corpus Spongiosum |  25270003 |  Corpus spongiosum structure (body structure) | | | | |
| Spc_Retrophar_L| Retropharyngeal space Left |  789564000 |  Structure of retropharyngeal space (body structure) |  7771000| left(qualifier value)| | |
| Spc_Retrophar_R| Retropharyngeal space Right |  789564000 |  Structure of retropharyngeal space (body structure) |  24028007| right (qualifier value)| | |
| Stapes| Stapes |  22718006 |  Stapes structure (body structure) | | | | |
| Stomach| Stomach |  69695003 |  Stomach structure (body structure) | | | | |
| Spc_Retrosty_L| Retrostyloid space -Left |  1193554003 |  Retrostyloid space (body structure) |  7771000| left(qualifier value)| | |
| Spc_Retrosty_R| Retrostyloid space -Left |  1193554003 |  Retrostyloid space (body structure) |  24028007| right(qualifier value)| | |
| Strct_Suprapatel| Suprapatellar Structures |  75415000 |  Structure of suprapatellar bursa (body structure) | | | | |
| Surf_Eye_L|  |  67548002 |  Structure of conjunctiva of left eye (body structure) | | | | |
| Surf_Eye_R|  |  13014005 |  Structure of conjunctiva of right eye (body structure) | | | | |
| Sys_Ventricular| Ventricular System of the Brain |  8997002 |  Space of ventricular system of brain (body structure) | | | | |
| Tendon |  |  13024002 |  Tendon structure (body structure) | | | | |
| Tendon_Quad|  |  70567001 |  Structure of quadriceps tendon (body structure) | | | | |
| Testis| Testis |  40689003 |  Testis structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| ThecalSac|  |  37554007 |  Spinal dura mater structure (body structure) | | | | |
| Thoracic_Duct| Thoracic Duct |  1732005 |  Thoracic duct structure (body structure) | | | | |
| Spleen| Spleen |  78961009 |  Splenic structure (body structure) | | | | |
| Spleen_Hilum| Splenic hilum |  35378004 |  Structure of hilum of spleen (body structure) | | | | |
| Tongue| Tongue |  21974007 |  Tongue structure (body structure) | | | | |
| Tongue_All|  |  181226008 |  Entire tongue (body structure) | | | | |
| Stapes_L| Stapes Left |  22718006 |  Stapes structure (body structure) | | | | |
| Stapes_R| Stapes Right |  22718006 |  Stapes structure (body structure) | | | | |
| Tongue_Base|  |  47975008 |   Structure of root of tongue (body structure) | | | | |
| Tongue_Oral|  |  61344008 |  Structure of body of tongue (body structure) | | | | |
| Tongue_Oral_L|  |  61344008 |  Structure of body of tongue (body structure) | | | | |
| Trachea| Trachea |  44567001 |  Tracheal structure (body structure) | | | | |
| Trachea_NAdj| Trachea non adjacent wall |  44567001 |  Tracheal structure (body structure) |  1217011006| non-adjacent(qualifier value)| | |
| Ureters| Both Ureters |  87953007 |  Ureteric structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Urethra| Urethra |  13648007 |  Urethral structure (body structure) | | | | |
| Urethra_Prostatc| Prostatic Urethra |  71553001 |  Prostatic urethra structure (body structure) | | | | |
| Testis_L| Testis Left |  40689003 |  Testis structure (body structure) |  7771000| left(qualifier value)| | |
| Testis_R| Testis Right |  40689003 |  Testis structure (body structure) |  24028007| right(qualifier value)| | |
| Uterus| Uterus |  35039007 |  Uterine structure (body structure) | | | | |
| V_Azygos| Azygos Vein |  72107004 |  Structure of azygous vein (body structure) | | | | |
| V_Brachioceph_L| Brachiocephalic vein Left |  8887007 |  Structure of brachiocephalic vein (body structure) |  7771000| left(qualifier value)| | |
| V_Brachioceph_R| Brachiocephalic vein Right |  8887007 |  Structure of brachiocephalic vein (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_Ext_L| External iliac vein Left |  63507001 |  Structure of external iliac vein (body structure) |  7771000| left(qualifier value)| | |
| Tongue_Base_L|  |  47975008 |   Structure of root of tongue (body structure) |  7771000| left(qualifier value)| | |
| Tongue_Base_R|  |  47975008 |   Structure of root of tongue (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_Ext_R| External iliac vein Right |  63507001 |  Structure of external iliac vein (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_Int_L| Internal iliac vein Left |  40300007 |  Structure of internal iliac vein (body structure) |  7771000| left(qualifier value)| | |
| Tongue_Oral_R|  |  61344008 |  Structure of body of tongue (body structure) |  24028007| right(qualifier value)| | |
| Tonsil|  |  75573002 |  Tonsillar structure (palatine) (body structure) | | | | |
| V_Iliac_Int_R| Internal iliac vein Right |  40300007 |  Structure of internal iliac vein (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_L| Common iliac vein Right |  46027005 |  Structure of common iliac vein (body structure) |  24028007| right(qualifier value)| | |
| TumorBed| Tumor Bed |  1162492000 |  Tumor bed (morphologic abnormality) | | | | |
| Ureter_L| Ureter Left |  87953007 |  Ureteric structure (body structure) |  7771000| left(qualifier value)| | |
| Ureter_R| Ureter Right |  87953007 |  Ureteric structure (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_R| Common iliac vein Left |  46027005 |  Structure of common iliac vein (body structure) |  7771000| left(qualifier value)| | |
| V_Jugular_Ext_L| external  jugular vein left |  71585003 |  Structure of external jugular vein (body structure) |  7771000| left(qualifier value)| | |
| V_Jugular_Ext_R| external jugular vein right |  71585003 |  Structure of external jugular vein (body structure) |  24028007| right(qualifier value)| | |
| V_Jugular_Int_L| Internal jugular vein left |  12123001 |  Internal jugular vein structure (body structure) |  7771000| left(qualifier value)| | |
| V_Jugular_Int_R| Internal jugular vein right |  12123001 |  Internal jugular vein structure (body structure) |  24028007| right(qualifier value)| | |
| V_Portal| Portal Vein |  32764006 |  Portal vein structure (body structure) | | | | |
| V_Pulmonary| Pulmonary vein |  430757002 |  Structure of pulmonary vein great vessel (body structure) | | | | |
| V_Subclavians| Subclavian Vein |  9454009 |  Structure of subclavian vein (body structure) | | | | |
| V_Venacava_I| Inferior vena cava |  35532006 |  Vena caval structure (body structure) |  261089000| inferior(qualifier value)| | |
| V_Venacava_S| Superior vena cava |  35532006 |  Vena caval structure (body structure) |  264217000| superior(qualifier value)| | |
| Vagina| Vagina |  76784001 |  Vaginal structure (body structure) | | | | |
| Vagina_Surf|  |  279894000 |  Inferior surface of vaginal cervix (body structure) | | | | |
| VaginalCuff| Vaginal Cuff |  438074005 |  438074005 | Vaginal cuff (morphologic abnormality) | | | | |
| Valve| Valve |  17401000 |  Cardiac valve structure (body structure) | | | | |
| V_Jugular| Any Jugular Vein |  63190004 |  Structure of jugular vein (body structure) | | | | |
| Valve_Mitral| Mitral Valve |  91134007 |  Mitral valve structure (body structure) | | | | |
| Valve_Pulmonic| Pulmonic Valve |  39057004 |  Pulmonary valve structure (body structure) | | | | |
| Valve_Tricuspid| Tricuspid Valve |  46030003 |  Tricuspid valve structure (body structure) | | | | |
| Ventricle| Ventricle (cardiac) |  21814001 |  Cardiac ventricular structure (body structure) | | | | |
| Ventricle_L| Ventricle (cardiac) Left |  21814001 |  Cardiac ventricular structure (body structure) |  7771000| left(qualifier value)| | |
| Ventricle_R| Ventricle (cardiac) Right |  21814001 |  Cardiac ventricular structure (body structure) |  24028007| right(qualifier value)| | |
| V_Subclavian_L| Subclavian Vein Left |  9454009 |  Structure of subclavian vein (body structure) |  7771000| left(qualifier value)| | |
| V_Subclavian_R| Subclavian Vein Right |  9454009 |  Structure of subclavian vein (body structure) |  24028007| right(qualifier value)| | |
| VocalCords| Vocal Cords |  46105003 |  Vocal cord structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Vulva| Vulva |  45292006 |  Vulval structure (body structure) | | | | |
| Wall_Vagina| Wall of vagina |  263355003 |  Vaginal wall (body structure) | | | | |
| Body| Only the body |  38266002 |  Entire body as a whole (body structure) | | | | | |
| BoneMarrow_Act| Active Bone Marrow |  75330005 |   Structure of red bone marrow (body structure) | | | | |
| Cartlg_Thyroid| Thyroid cartilage |  52940008 |  Thyroid cartilage structure (body structure) | | | | |
| Cist_Suprasellar| Suprasellar Cistern |  15328005 |  Structure of suprasellar region (body structure) | | | | |
| Valve_Aortic| Aortic Valve |  34202007 |  Aortic valve structure (body structure) | | | | |
| Dens| Cervical vertebrae - Bony part of dens of axis |  1172006 |  Structure of odontoid process of axis (body structure) | | | | |
| External| Contour encompassing body plus other external items  |  123037004 |  Body structure (body structure) |  261074009| external(qualifier value)| | |
| VB| Vertebral Body |  3572006 |  Structure of body of vertebra (body structure) | | | | |
| VB_C| Cervical vertebrae |  3572006 |  Bone structure of cervical vertebra (body structure) | | | | |
| VB_C1| Atlas - C1 |  14806007 |  Bone structure of atlas (body structure) | | | | |
| VB_C2| Axis - C2 |  39976000 |  Bone structure of axis (body structure) | | | | |
| VB_C3| Cervical vertebra - C3 |  91116008 |  Structure of body of third cervical vertebra (body structure) | | | | |
| VB_C4| Cervical vertebra - C4 |  14705001 |  Structure of body of fourth cervical vertebra (body structure) | | | | |
| VB_C5| Cervical vertebra - C5 |  67479001 |  Structure of body of fifth cervical vertebra (body structure) | | | | |
| VB_C6| Cervical vertebra - C6 |  88298007 |  Structure of body of sixth cervical vertebra (body structure) | | | | |
| VB_C7| Cervical vertebra - C7 |  16126006 |  Structure of body of seventh cervical vertebra (body structure) | | | | |
| VB_L| Lumbar Vertebrae |  73903008 |  Bone structure of lumbar vertebra (body structure) | | | | |
| VB_L1| Lumbar Vertebra L1 |  61032001 |  Structure of body of first lumbar vertebra (body structure) | | | | |
| VB_L2| Lumbar Vertebra L2 |  53983007 |  Structure of body of second lumbar vertebra (body structure) | | | | |
| VB_L3| Lumbar Vertebra L3 |  55492004 |  Structure of body of third lumbar vertebra (body structure) | | | | |
| VB_L4| Lumbar Vertebra L4 |  71996003 |  Structure of body of fourth lumbar vertebra (body structure) | | | | |
| VB_L5| Lumbar Vertebra L5 |  21799000 |  Structure of body of fifth lumbar vertebra (body structure) | | | | |
| VB_S| Sacral Vertebra |  87141009 |  Sacral vertebra structure (body structure) | | | | |
| VB_S1| Sacral Vertebra S1 |  65985001 |  Structure of first sacral vertebra (body structure) | | | | |
| VB_S2| Sacral Vertebra S2 |  11808007 |  Structure of second sacral vertebra (body structure) | | | | |
| VB_S3| Sacral Vertebra S3 |  49967005 |  Structure of third sacral vertebra (body structure) | | | | |
| VB_S4| Sacral Vertebra S4 |  69950008 |  Structure of fourth sacral vertebra (body structure) | | | | |
| VB_S5| Sacral Vertebra S5 |  21452006 |  Structure of fifth sacral vertebra (body structure) | | | | |
| VB_T| Thoracic Vertebra |  35769007 |  Bone structure of thoracic vertebra (body structure) | | | | |
| VB_T01| Thoracic Vertebra T1 |  56094003 |  Structure of body of first thoracic vertebra (body structure) | | | | |
| VB_T02| Thoracic Vertebra T2 |  50060007 |  Structure of body of secon thoracic vertebra (body structure) | | | | |
| VB_T03| Thoracic Vertebra T3 |  73138009 |  Structure of body of third thoracic vertebra (body structure) | | | | |
| VB_T04| Thoracic Vertebra T4 |  86197001 |  Structure of body of fourth thoracic vertebra (body structure) | | | | |
| VB_T05| Thoracic Vertebra T5 |  6105006 |  Structure of body of fifth thoracic vertebra (body structure) | | | | |
| VB_T06| Thoracic Vertebra T6 |  32430008 |  Structure of body of sixth thoracic vertebra (body structure) | | | | |
| VB_T07| Thoracic Vertebra T7 |  71737002 |  Structure of body of seventh thoracic vertebra (body structure) | | | | |
| VB_T08| Thoracic Vertebra T8 |  77435000 |  Structure of body of eighth thoracic vertebra (body structure) | | | | |
| VB_T09| Thoracic Vertebra T9 |  33766003 |  Structure of body of ninth thoracic vertebra (body structure) | | | | |
| VB_T10| Thoracic Vertebra T10 |  48405002 |  Structure of body of tenth thoracic vertebra (body structure) | | | | |
| VB_T11| Thoracic Vertebra T11 |  52120002 |  Structure of body of eleventh thoracic vertebra (body structure) | | | | |
| VB_T12| Thoracic Vertebra T12 |  280849005 |  Structure of body of twelfth  thoracic vertebra (body structure) | | | | |
| VB_T12| Thoracic Vertebra T13 |  1186895000 |  Structure of body of thirteenth  thoracic vertebra (body structure) | | | | |
| VBs| Vertebral Bodies |  3572006 |  Structure of body of vertebra (body structure) |  255204007| multiple(qualifier value)| | |
| Fossa_Jugular| Jugular Fossa |  1187337007 |  Jugular Fossa (body structure) | | | | |
| Fossa_Posterior| Posterior Fossa |  35763008 |  Structure of posterior fossa of cranial cavity (body structure) | | | | |
| VocalCord_L|  |  46105003 |  Vocal cord structure (body structure) |  7771000| left(qualifier value)| | |
| VocalCord_R|  |  46105003 |  Vocal cord structure (body structure) |  24028007| right(qualifier value)| | |
| LN_Presacral| Lymph nodes of pelvis - presacral  |  1187336003 |  Presacral lymph node group (body structure) | | | | |
| Vomer| Vomer |  87166008 |  Vomer bone structure (body structure) | | | | |
| Sinus_Sphenoid| Sphenoidal Sinus |  24999009 |  Sphenoid sinus structure (body structure)  | | | | |
| Strct | Structure |  123037004 |  Body structure (body structure) | | | | |

| TG263 Term | Description | Code | Description | SNOMED Code | Description |  Code |  Description |  Code| Description |
| ---- | ----------- | ---- | ----------- | ---- | ----------- | ----- | ------------| ----- | ----------- |
| A_Aorta| Aorta |  15825003 |  Aortic structure (body structure) | | | | |
| A_Aorta_Asc| Ascending Aorta |  54247002 |  Ascending aorta structure (body Structure) | | | | |
| A_Brachiocephls| Brachiocephalic Artery |  425444002 |  Branch of brachiocephalic artery (body structure) | | | | |
| A_Carotid| Common Carotid Artery |  69105007 |  Carotid artery structure (body structure) | | | | |
| A_Carotid_L| Carotid Artery |  69105007 |  Carotid artery structure (body structure) |  7771000| left(qualifier value)| | |
| A_Carotid_R| Carotid Artery |  69105007 |  Carotid artery structure (body structure) |  24028007| right(qualifier value)| | |
| A_Celiac| Celiac Artery |  57850000 |  Structure of celiac artery (body structure) | | | | |
| A_Coronary| Coronary Artery |  41801008 |  Coronary artery structure (body structure) | | | | |
| A_Coronary_L| Coronary Artery Left |  41801008 |  Coronary artery structure (body structure) |  7771000| left(qualifier value)| | |
| A_Coronary_R| Coronary Artery Right |  41801008 |  Coronary artery structure (body structure) |  24028007| right(qualifier value)| | |
| A_Femoral_L| Femoral Artery Left |  7657000 |  Structure of femoral artery (body structure) |  7771000| left(qualifier value)| | |
| A_Femoral_R| Femoral Artery Right |  7657000 |  Structure of femoral artery (body structure) |  24028007| right(qualifier value)| | |
| A_Humeral_Cflx_L| Circumflex Humeral Artery Left |  244314003 |  Circumflex humeral artery (body structure) |  7771000| Left(qualifier value)| | |
| A_Humeral_Cflx_R| Circumflex Humeral Artery Right |  244314003 |  Circumflex humeral artery (body structure) |  24028007| right(qualifier value)| | |
| A_Hypophyseal_I| Hypophyseal Artery Inferior |  74200005 |  Structure of inferior hypophyseal artery (body structure) | | | | |
| A_Hypophyseal_S| Hypophyseal Artery Superior |  55601007 |  Structure of superior hypophyseal artery (body structure) | | | | | |
| A_Iliac_Cflx_L| Circumflex Left Iliac Artery |  244327004 |  Circumflex iliac artery (body structure) |  7771000| Left(qualifier value)| | |
| A_Iliac_Cflx_R| Circumflex Right Iliac Artery |  244327004 |  Circumflex iliac artery (body structure) |  24028007| right(qualifier value)| | |
| A_Iliac_Ext_L| External iliac artery Left |  113269004 |  Structure of external iliac artery (body structure) |  7771000| Left(qualifier value)| | |
| A_Iliac_Ext_R| External iliac artery Right |  113269004 |  Structure of external iliac artery (body structure) |  24028007| right(qualifier value)| | |
| A_Iliac_Int_L| Internal iliac artery Left |  90024005 |  Structure of internal iliac artery (body structure) |  7771000| Left(qualifier value)| | |
| A_Iliac_Int_R| Internal iliac artery Right |  90024005 |  Structure of internal iliac artery (body structure) |  24028007| right(qualifier value)| | |
| A_Iliac_L| Common iliac artery Left |  73634005 |  Common iliac artery structure (body structure) |  7771000| Left(qualifier value)| | |
| A_Iliac_R| Common iliac artery Right |  73634005 |  Common iliac artery structure (body structure) |  24028007| right(qualifier value)| | |
| A_LAD| Anterior interventricular branch of LCA
 (left anterior descending artery) |  33795007 |  Structure of anterior descending branch of left coronary artery (body structure) | | | | |
| A_Mesenteric_I| Inferior mesenteric artery  |  33795007 |  Structure of inferior mesenteric artery (body structure) | | | | |
| A_Mesenteric_S| Superior mesenteric artery  |  42258001 |  Superior mesenteric artery structure (body structure)  | | | | |
| A_Pulmonary| Pulmonary Artery |  81040000 |  Pulmonary artery structure (body structure) | | | | |
| A_Subclavian| Subclavian Artery |  36765005 |  Structure of subclavian artery (body structure) | | | | |
| A_Subclavian_L| Subclavian Artery Left |  36765005 |  Structure of subclavian artery (body structure) |  7771000| left(qualifier value)| | |
| A_Subclavian_R| Subclavian Artery Right |  36765005 |  Structure of subclavian artery (body structure) |  24028007| right(qualifier value)| | |
| A_Vertebral| Vertebral arteries |  85234005 |  Structure of vertebral artery (body structure) | | | | |
| A_Vertebral_L| Vertebral arteries left |  85234005 |  Structure of vertebral artery (body structure) |  7771000| left(qualifier value)| | |
| A_Vertebral_R| Vertebral arteries right |  85234005 |  Structure of vertebral artery (body structure) |  24028007| right(qualifier value)| | |
| Acetabulum_L| Acetabulum |  37783008 |  Bone structure of acetabulum (body structure) |  7771000| Left(qualifier value)| | |
| Acetabulum_R| Acetabulum |  37783008 |  Bone structure of acetabulum (body structure) |  24028007| Right(qualifier value)| | |
| Acetabulums| Acetabulum |  37783008 |  Bone structure of acetabulum (body structure) | | | | |
| AirWay_Dist| Distal Airway |  89187006 |  Airway structure (body structure) |  46053002| distal(qualifier value)| | |
| AirWay_Prox| Proximal Airway |  89187006 |  Airway structure (body structure) |  40415009| proximal(qualifier value)| | |
| Anus| Anus |  123956007 |  Anus part (body structure) | | | | |
| Appendix| Appendix |  66754008 |  Appendix structure (body structure)  | | | | |
| Arytenoid| Arytenoid cartilage |  77578007 |  Arytenoid cartilage structure (body structure) | | | | |
| Arytenoid_L| Arytenoid cartilage Left |  77578007 |  Arytenoid cartilage structure (body structure) |  7771000| left(qualifier value)| | |
| Arytenoid_R| Arytenoid cartilage Right |  77578007 |  Arytenoid cartilage structure (body structure) |  24028007| right(qualifier value)| | |
| Atrium| Atrium of the heart  |  59652004 |  Atrial structure (body structure) | | | | |
| Atrium_L| Atrium of the heart Left |  59652004 |  Atrial structure (body structure) |  7771000| left(qualifier value)| | |
| Atrium_R| Atrium of the heart Right |  59652004 |  Atrial structure (body structure) |  24028007| right(qualifier value)| | |
| BileDuct_Common| Common bile duct |  79741001 |  Common bile duct structure (body structure) | | | | |
| Bladder| Urinary Bladder |  89837001 |  Urinary bladder structure (body structure) | | | | |
| Bladder_Wall| Bladder Wall |  393006 |  Structure of wall of urinary bladder (body structure) | | | | |
| Bone| Bone |  119186007 |  Bone part (body structure) | | | | |
| Bone_Ethmoid| Ethmoid Bone |  52374004 |  Ethmoid bone structure (body structure) | | | | |
| Bone_Frontal| Frontal Bone |  74872008 |  Frontal bone structure (body structure) | | | | |
| Bone_Hyoid| Hyoid Bone |  21387005 |  Hyoid bone structure (body structure) | | | | |
| Bone_Ilium| Ilium |  22356005 |  Bone structure of ilium (body structure) | | | | |
| Bone_Ilium_L| Ilium Left |  22356005 |  Bone structure of ilium (body structure) |  7771000| left(qualifier value)| | |
| Bone_Ilium_R| Ilium Right |  22356005 |  Bone structure of ilium (body structure) |  24028007| right(qualifier value)| | |
| Bone_Incus| Incus |  421793000 |  Bone structure of incus (body structure) | | | | |
| Bone_Incus_L| Incus Left |  421793000 |  Bone structure of incus (body structure) |  7771000| left(qualifier value)| | |
| Bone_Incus_R| Incus Right |  421793000 |  Bone structure of incus (body structure) |  24028007| right(qualifier value)| | |
| Bone_Ischium_L| Ischium Left |  85710004 |  Bone structure of ischium (body structure) |  7771000| left(qualifier value)| | |
| Bone_Ischium_R| Ischium Right |  85710004 |  Bone structure of ischium (body structure) |  24028007| right(qualifier value)| | |
| Bone_Lacrimal| Lacrimal Bone |  6229007 |  Lacrimal bone structure (body structure) | | | | |
| Bone_Lacrimal_L| Lacrimal Bone Left |  6229007 |  Lacrimal bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Lacrimal_R| Lacrimal Bone Right |  6229007 |  Lacrimal bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Mandible| Mandible |  91609006 |  Bone structure of mandible (body structure) | | | | |
| Bone_Mastoid| Both Mastoids |  59066005 |  Mastoid structure (body structure) | | | | |
| Bone_Mastoid_L| Left Mastoid Bone |  59066005 |  Mastoid structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Mastoid_R| Right Mastoid Bone |  59066005 |  Mastoid structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Nasal| Nasal Bone |  74386004 |  Nasal bone structure (body structure) | | | | |
| Bone_Nasal_L| Nasal Bone Left |  74386004 |  Nasal bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Nasal_R| Nasal Bone Right |  74386004 |  Nasal bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Occipital| Occipital Bone |  31640002 |  Occipital bone structure (body structure) | | | | |
| Bone_Palatine| Palatine  bone |  51283005 |  Palatine bone structure (body structure) | | | | |
| Bone_Palatine_L| Palatine bone Left |  51283005 |  Palatine bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Palatine_R| Palatine bone Right |  51283005 |  Palatine bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Parietal| Parietal bone |  24924006 |  Parietal bone structure (body structure) | | | | |
| Bone_Parietal_L| Parietal bone Left |  24924006 |  Parietal bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Parietal_R| Parietal bone Right |  24924006 |  Parietal bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Pelvic| Pelvic Bones (Bony Pelvis) |  118645006 |  Structure of innominate bone and/or sacrum and/or coccyx (body structure) | | | | |
| Bone_Pelvic_L| Bony Pelvis Left |  118645006 |  Structure of innominate bone and/or sacrum and/or coccyx (body structure) |  7771000| left(qualifier value)| | |
| Bone_Pelvic_R| Bony Pelvis Right |  118645006 |  Structure of innominate bone and/or sacrum and/or coccyx (body structure) |  24028007| right(qualifier value)| | |
| Bone_Sphenoid| Sphenoid Bone |  73117003 |  Sphenoid bone structure (body structure) | | | | |
| Bone_Temporal| Temporal Bone |  60911003 |  Temporal bone structure (body structure) | | | | |
| Bone_Temporal_L| Temporal Bone Left |  60911003 |  Temporal bone structure (body structure) |  7771000| Left(qualifier value)| | |
| Bone_Temporal_R| Temporal Bone Right |  60911003 |  Temporal bone structure (body structure) |  24028007| Right(qualifier value)| | |
| Bone_Zygomatic_L| Zygomatic Bone Left |  13881006 |  Zygomatic bone structure (body structure) |  7771000| left(qualifier value)| | |
| Bone_Zygomatic_R| Zygomatic Bone Right |  13881006 |  Zygomatic bone structure (body structure) |  24028007| right(qualifier value)| | |
| Bone_Zygomatics| Zygomatic Bone |  13881006 |  Zygomatic bone structure (body structure) | | | | |
| BoneMarrow| Bone Marrow |  14016003 |   |Bone marrow structure (body structure)| | | | | |
| Diaphragm| Diaphragm |  5798000 |  Diaphragm structure (body structure) | | | | |
| Bowel| Bowel  |  113276009 |  Intestinal structure (body structure) | | | | |
| Bowel_Large| Large Bowel |  14742008 |  Structure of large intestine (body structure) | | | | |
| Bowel_Small| Small Bowel (small intestine) |  30315005 |  Structure of small intestine (body structure) | | | | |
| BrachialPlex_L| Brachial plexus Left |  36582005 |  Brachial plexus structure (body structure) |  7771000| left(qualifier value)| | |
| BrachialPlex_R| Brachial plexus Right |  36582005 |  Brachial plexus structure (body structure) |  24028007| right(qualifier value)| | |
| BrachialPlexs| Brachial plexus |  36582005 |  Brachial plexus structure (body structure) | | | | |
| Brain| Brain |  12738006 |  Brain structure (body structure) | | | | |
| Brainstem| Brain Stem |  15926001 |  Brainstem structure (body structure) | | | | |
| Brainstem_Core| Core of the brainstem |  15926001 |  Brainstem structure (body structure) |  260235002| Core(qualifier value)| | |
| Brainstem_Surf| Surface of the brainstem |  15926001 |  Brainstem structure (body structure) |  410679008| Surface(qualifier value)| | |
| Breast_L| Breast Left |  76752008 |  Breast structure (body structure) |  7771000| left(qualifier value)| | |
| Breast_R| Breast Right |  76752008 |  Breast structure (body structure) |  24028007| right(qualifier value)| | |
| Breasts| Both breasts |  76752008 |  Breast structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Bronchus| Bronchial tree |  955009 |  Bronchial structure (body structure) | | | | |
| Bronchus_L| Bronchial tree Left |  955009 |  Bronchial structure (body structure) |  7771000| left(qualifier value)| | |
| Bronchus_Main| Main Bronchus |  102297006 |  Main bronchus structure (body structure) | | | | |
| Bronchus_Main_L| Main Bronchus Left |  102297006 |  Main bronchus structure (body structure) | | | | |
| Bronchus_Main_R| Main Bronchus Right |  102297006 |  Main bronchus structure (body structure) | | | | |
| Bronchus_R| Bronchial tree Right |  955009 |  Bronchial structure (body structure) |  24028007| right(qualifier value)| | |
| Canal_Anal| Anal Canal |  34381000 |  Anal canal structure (body structure) | | | | | |
| Carina| Carina |  28700002 |  Structure of carina of trachea (body structure) | | | | |
| Duodenum| Small bowel - Duodenum |  38848004 |  Duodenal structure (body structure) | | | | |
| CaudaEquina| Cauda equina |  7173007 |  Cauda equina structure (body structure) | | | | |
| Cavernosum| Penis Corpus Cavernosum |  9284003 |  Corpus cavernosum structure (body structure) | | | | |
| Cavity_Nasal| Nasal Cavity |  279549004 |  Nasal cavity structure (body structure) | | | | |
| Cavity_Oral| Oral cavity |  74262004 |  Oral cavity structure (body structure) | | | | |
| Cecum| Large bowel - Cecum |  32713005 |  Cecum structure (body structure) | | | | |
| Cerebellum| Cerebellum |  113305005 |  Cerebellar structure (body structure) | | | | |
| Cerebrum| Cerebrum |  83678007 |  Structure of cerebrum (body structure) | | | | |
| Cerebrum_L| L Cerebrum |  83678007 |  Structure of cerebrum (body structure) |  7771000| left(qualifier value)| | |
| Cerebrum_R| R Cerebrum |  83678007 |  Structure of cerebrum (body structure) |  24028007| right(qualifier value)| | |
| Cervix| Cervix of uterus |  71252005 |  Cervix uteri structure (body structure) | | | | |
| Chestwall| Chest wall |  78904004 |  Chest wall structure (body structure) | | | | |
| Chestwall_L| Left Chest Wall |  78904004 |  Chest wall structure (body structure) |  7771000| left(qualifier value)| | |
| Chestwall_R| Right Chest Wall |  78904004 |  Chest wall structure (body structure) |  24028007| right(qualifier value)| | |
| Cist_Pontine| Pontine Cistern |  369387006 |  Structure of cisterna pontis (body structure) | | | | |
| Esophagus_S| Upper Esophagus (cervical) |  60075002 |  Cervical esophagus structure (body structure) | | | | |
| Clavicle_L| Clavicle Left |  51299004 |  Bone structure of clavicle (body structure) |  7771000| left(qualifier value)| | |
| Clavicle_R| Clavicle Right |  51299004 |  Bone structure of clavicle (body structure) |  24028007| right(qualifier value)| | |
| CN_III| Third Cranial Nerve (Oculomotor nerve) |  56193007 |  Oculomotor nerve structure (body structure) | | | | |
| CN_III_L| Third Cranial Nerve (Oculomotor nerve) Left |  56193007 |  Oculomotor nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_III_R| Third Cranial Nerve (Oculomotor nerve) Right |  56193007 |  Oculomotor nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_IX| Ninth Cranial Nerve (Glossopharyngeal nerve)  |  21161002 |  Glossopharyngeal nerve structure (body structure) | | | | |
| CN_IX_L| Ninth Cranial Nerve (Glossopharyngeal nerve) Left |  21161002 |  Glossopharyngeal nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_IX_R| Ninth Cranial Nerve (Glossopharyngeal nerve) Right |  21161002 |  Glossopharyngeal nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_V| Fifth Cranial Nerve (Trigeminal nerve) |  27612005 |  Trigeminal nerve structure (body structure) | | | | |
| CN_V_L| Fifth Cranial Nerve (Trigeminal nerve) Left |  27612005 |  Trigeminal nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_V_R| Fifth Cranial Nerve (Trigeminal nerve) Right |  27612005 |  Trigeminal nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_VI| Sixth Cranial Nerve (Abducens nerve) |  80622005 |  Abducens nerve structure (body structure) | | | | |
| CN_VI_L| Sixth Cranial Nerve (Abducens nerve) Left |  80622005 |  Abducens nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_VI_R| Sixth Cranial Nerve (Abducens nerve) Right |  80622005 |  Abducens nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_VII| Seventh Cranial Nerve (Facial) |  56052001 |  Facial nerve structure (body structure) | | | | |
| CN_VII_L| Seventh Cranial Nerve (Facial) Left |  56052001 |  Facial nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_VII_R| Seventh Cranial Nerve (Facial) Right |  56052001 |  Facial nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_VIII| Eighth Cranial (Vestibulocochlear) Nerve |  8598002 |  Vestibulocochlear nerve structure (body structure) | | | | |
| CN_VIII_L| Eighth Cranial (Vestibulocochlear)  Nerve Left |  8598002 |  Vestibulocochlear nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_VIII_R| Eighth Cranial (Vestibulocochlear)  Nerve Right |  8598002 |  Vestibulocochlear nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_XI| Eleventh Cranial Nerve (Spinal accessory nerve) |  15119000 |  Accessory nerve structure (body structure) | | | | |
| CN_XI_L| Eleventh Cranial Nerve (Spinal accessory nerve) Left |  15119000 |  Accessory nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_XI_R| Eleventh Cranial Nerve (Spinal accessory nerve) Right |  15119000 |  Accessory nerve structure (body structure) |  24028007| right(qualifier value)| | |
| CN_XII| Twelfth Cranial Nerve (Hypoglossal nerve) |  37899009 |  Hypoglossal nerve structure (body structure) | | | | |
| CN_XII_L| Twelfth Cranial Nerve (Hypoglossal nerve) Left |  37899009 |  Hypoglossal nerve structure (body structure) |  7771000| left(qualifier value)| | |
| CN_XII_R| Twelfth Cranial Nerve (Hypoglossal nerve) Right |  37899009 |  Hypoglossal nerve structure (body structure) |  24028007| right(qualifier value)| | |
| Cochlea| Cochlea |  80169004 |  Cochlear structure (body structure) | | | | |
| Cochlea_L| Left Cochlea |  80169004 |  Cochlear structure (body structure) | | | | |
| Cochlea_R| Right Cochlea |  80169004 |  Cochlear structure (body structure) | | | | |
| Colon| Colon |  71854001 |  Colon structure (body structure) | | | | |
| Colon_Ascending| Large bowel - Ascending colon |  9040008 |  Ascending colon structure (body structure) | | | | |
| Colon_Decending| Large bowel - Descending colon |  32622004 |  Descending colon structure (body structure) | | | | |
| Eyes| Set of eyes |  81745001 |  Structure of eye proper (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Colon_Sigmoid| Large bowel - Sigmoid colon |  60184004 |  Sigmoid colon structure (body structure) | | | | |
| Colon_Transverse| Large bowel -Transverse colon |  485005 |  Transverse colon structure (body structure) | | | | |
| Cornea| Cornea |  28726007 |  Corneal structure (body structure) | | | | |
| Cornea_L| Cornea Left |  28726007 |  Corneal structure (body structure) |  7771000| left(qualifier value)| | |
| Cornea_R| Cornea Right |  28726007 |  Corneal structure (body structure) |  24028007| right(qualifier value)| | |
| CribriformPlate| Cribriform Plate |  36743005 |  Structure of cribriform plate (body structure) | | | | |
| Cricoid| Cricoid cartilage |  8600008 |  Cricoid cartilage structure (body structure) | | | | |
| Cricopharyngeus| Cricopharyngeal part of inferior pharyngeal constrictor |  28276008 |  Structure of cricopharyngeal part of inferior constrictor pharyngeus muscle (body structure) | | | | |
| Gallbladder| Gall bladder |  28231008 |  Gallbladder structure (body structure) | | | | |
| Genitals| Genitals |  71934003 |  Genital structure (body structure) | | | | |
| Glnd_Lacrimal| Lacrimal Gland |  13561001 |  Lacrimal gland structure (body structure) | | | | |
| Ear_External_L| External Ear Left |  117590005 |  Ear structure (body structure) | | | | |
| Ear_External_R| External Ear Right |  117590005 |  Ear structure (body structure) |  261074009| external(qualifier value)|  7771000|  left(qualifier value) |
| Ear_Externals| External Ear |  117590005 |  Ear structure (body structure) |  261074009| external(qualifier value)| | |
| Ear_Internal_L| Internal Ear Left |  117590005 |  Ear structure (body structure) |  260521003| internal(qualifier value)|  7771000|  left(qualifier value) |
| Ear_Internal_R| Internal Ear Right |  117590005 |  Ear structure (body structure) |  260521003| internal(qualifier value)|  24028007|  right(qualifier value) |
| Ear_Internals| Internal Ear |  117590005 |  Ear structure (body structure) |  260521003| internal(qualifier value)| | |
| Ear_Middle| Middle Ear |  117590005 |  Ear structure (body structure) |  260528009| middle(qualifier value)| | |
| Ear_Middle_L| Middle Ear Left |  117590005 |  Ear structure (body structure) |  260528009| middle(qualifier value)|  7771000|  left(qualifier value) |
| Ear_Middle_R| Middle Ear Right |  117590005 |  Ear structure (body structure) |  260528009| middle(qualifier value)|  24028007|  right(qualifier value) |
| Glnd_Parathyroid| Parathyroid gland |  111002 |  Parathyroid structure (body structure) | | | | |
| Elbow| Elbow |  127949000 |  Elbow region structure (body structure) | | | | |
| Elbow_L| Elbow Left |  127949000 |  Elbow region structure (body structure) |  7771000| Left(qualifier value)| | |
| Elbow_R| Elbow Right |  127949000 |  Elbow region structure (body structure) |  24028007| right(qualifier value)| | |
| Esophagus| Esophagus |  32849002 |  Esophageal structure (body structure) | | | | |
| Esophagus_I| Lower Esophagus (abdominal) |  32849002 |  Esophageal structure (body structure) |  261122009| lower(qualifier value)| | |
| Esophagus_M| Middle Esophagus (thoracic) |  32849002 |  Esophageal structure (body structure) |  260528009| middle(qualifier value)| | |
| Esophagus_NAdj| Non Adjacent Esophagus |  32849002 |  Esophageal structure (body structure) |  1217011006| non-adjacent(qualifier value)| | |
| Glnd_Sublings| Sublingual gland |  88481005 |  Sublingual gland structure (body structure) | | | | |
| Glnd_Submands| Submandibular Gland |  385296007 |  Submandibular salivary gland structure (body structure) | | | | |
| Eye_L| Eyeball Left |  81745001 |  Structure of eye proper (body structure) |  7771000| left(qualifier value)| | |
| Eye_R| Eyeball Right |  81745001 |  Structure of eye proper (body structure) |  24028007| right(qualifier value)| | |
| Glnd_Thymus| Thymus Gland |  9875009 |  Thymus gland structure (body structure) | | | | |
| Glnd_Thyroid| Thyroid Gland |  69748006 |  Thyroid structure (body structure) | | | | |
| Femur_Head_L| Femur Head & Neck Left |  2812003 |  Structure of head of femur (body structure)  |  7771000| left(qualifier value)| | |
| Femur_Head_R| Femur Head & Neck Right |  2812003 |  Structure of head of femur (body structure)  |  24028007| right(qualifier value)| | |
| Femur_Joint_L| Femoral Joint Left |  24136001 |  Hip joint structure (body structure) |  7771000| left(qualifier value)| | |
| Femur_Joint_R| Femoral Joint Right |  24136001 |  Hip joint structure (body structure) |  24028007| right(qualifier value)| | |
| Femur| Femur  Whole  |  71341001 |  Bone structure of femur (body structure) | | | | |
| Femur_L| Femur  Whole  Left |  71341001 |  Bone structure of femur (body structure) |  7771000| left(qualifier value)| | |
| Femur_Neck| Femur Neck |  29627003 |  Structure of neck of femur (body structure) | | | | |
| Femur_Neck_L| Femur Neck Right |  29627003 |  Structure of neck of femur (body structure) |  24028007| right(qualifier value)| | |
| Femur_Neck_R| Femur Neck Left |  29627003 |  Structure of neck of femur (body structure) |  7771000| left(qualifier value)| | |
| Femur_R| Femur Whole Right |  71341001 |  Bone structure of femur (body structure) |  24028007| Right(qualifier value)| | |
| Femur_Shaft_L| Femur Shaft Left |  41111004 |  Bone structure of shaft of femur (body structure) |  7771000| left(qualifier value)| | |
| Femur_Shaft_R| Femur Shaft Right |  41111004 |  Bone structure of shaft of femur (body structure) |  24028007| right(qualifier value)| | |
| Femurs| Both Femurs |  71341001 |  Bone structure of femur (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Fibula| Fibula |  87342007 |  Bone structure of fibula (body structure) | | | | |
| Fibula_L| Fibula Left |  87342007 |  Bone structure of fibula (body structure) |  7771000| left(qualifier value)| | |
| Fibula_R| Fibula Right |  87342007 |  Bone structure of fibula (body structure) |  24028007| right(qualifier value)| | |
| Glottis| Glottis |  1307006 |  Glottis structure (body structure) | | | | |
| GreatVes| Great Vessels of the heart (aorta\, vena cava S&I\, pulmonary A&V) |  3711007 |  Structure of great blood vessel (organ) (body structure) | | | | |
| GreatVes_NAdj| Non Adjacent Great Vessels |  3711007 |  Structure of great blood vessel (organ) (body structure) |  1217011006| non-adjacent(qualifier value)| | |
| Hardpalate| Hard palate |  90228003 |  Hard palate structure (body structure) | | | | |
| Glnd_Adrenal| Adrenal glands  |  23451007 |  Adrenal structure (body structure) | | | | |
| Glnd_Adrenal_L| Adrenal glands left |  23451007 |  Adrenal structure (body structure) |  7771000| left(qualifier value)| | |
| Glnd_Adrenal_R| Adrenal glands right |  23451007 |  Adrenal structure (body structure) |  24028007| right(qualifier value)| | |
| Heart| Heart |  80891009 |  Heart structure (body structure) | | | | |
| Glnd_Lacrimal_L| Lacrimal Gland Left |  13561001 |  Lacrimal gland structure (body structure) |  7771000| left(qualifier value)| | |
| Glnd_Lacrimal_R| Lacrimal Gland Right |  13561001 |  Lacrimal gland structure (body structure) |  24028007| right(qualifier value)| | |
| Hemispheres| Hemisphere |  372073000 |  Cerebral hemisphere structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Glnd_Subling_L| Sublingual gland |  88481005 |  Sublingual gland structure (body structure) |  7771000| left(qualifier value)| | |
| Glnd_Subling_R| Sublingual gland |  88481005 |  Sublingual gland structure (body structure) |  24028007| right(qualifier value)| | |
| Hippocampi| Hippocampus |  5366008 |  Hippocampal structure (body structure) | | | | |
| Glnd_Submand_L| Submandibular Gland Left |  385296007 |  Submandibular salivary gland structure (body structure) |  7771000| left(qualifier value)| | |
| Glnd_Submand_R| Submandibular Gland Right |  385296007 |  Submandibular salivary gland structure (body structure) |  24028007| right(qualifier value)| | |
| Hypothalmus| Hypothalamus |  67923007 |  Hypothalamic structure (body structure) | | | | |
| Ileum| Small bowel - Ileum |  34516001 |  Ileal structure (body structure) | | | | |
| Jejunum| Small bowel - Jejunum |  21306003 |  Jejunal structure (body structure) | | | | |
| Jejunum_Ileum| Both ileum and jejunum |  90228003 |  Jejunum and ileum (combined site) (body structure) | | | | |
| Joint_Elbow| Elbow joint |  16953009 |  Elbow joint structure (body structure) | | | | |
| Joint_Glenohum| Glenohumeral Joint |  85537004 |  Glenohumeral joint structure (body structure) | | | | |
| GrowthPlate_L|  |  711190000 |  Structure of epiphyseal plate (body structure) |  7771000| left(qualifier value)| | |
| GrowthPlate_R|  |  711190000 |  Structure of epiphyseal plate (body structure) |  24028007| right(qualifier value)| | |
| Joint_Surface|  |  39352004 |  Joint structure (body structure)  |  410679008| Surface(qualifier value)| | |
| Joint_TM| Temperomandibular Joint  |  53620006 |  Temporomandibular joint structure (body structure) | | | | |
| Hemisphere_L|  |  6566002 |  Cerebellar hemisphere structure (body structure) |  7771000| left(qualifier value)| | |
| Hemisphere_R|  |  6566002 |  Cerebellar hemisphere structure (body structure) |  24028007| right(qualifier value)| | |
| Kidney_Cortex| Renal cortex for both Kidneys |  50403003 |  Structure of cortex of kidney (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Kidney_Hilums| Renal Hilum for both Kidneys |  74033008 |  Structure of hilum of kidney (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Hippocampus_L| Hippocampus Left |  5366008 |  Hippocampal structure (body structure) |  7771000| left(qualifier value)| | |
| Hippocampus_R| Hippocampus Right |  5366008 |  Hippocampal structure (body structure) |  24028007| right(qualifier value)| | |
| Humerus_L| Humerus Left |  85050009 |  Bone structure of humerus (body structure) |  7771000| left(qualifier value)| | |
| Humerus_R| Humerus Right |  85050009 |  Bone structure of humerus (body structure) |  24028007| right(qualifier value)| | |
| Kidneys| Both Kidneys |  64033007 |  Kidney structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Knee| Knee |  72696002 |  Knee region structure (body structure) | | | | |
| Laryngl_Pharynx| Laryngeal pharynx |  81502006 |  Hypopharyngeal structure (body structure) | | | | |
| Larynx| Larynx |  4596009 |  Laryngeal structure (body structure) | | | | |
| Larynx_SG| Supraglottic Larynx |  86483002 |  Structure of supraglottic space (body structure) | | | | |
| Joint_Elbow_L| Left Elbow joint |  16953009 |  Elbow joint structure (body structure) |  7771000| left(qualifier value)| | |
| Joint_Elbow_R| Right Elbow joint |  16953009 |  Elbow joint structure (body structure) |  24028007| right(qualifier value)| | |
| Lens| Eye Lens |  78076003 |  Structure of lens of eye (body structure) | | | | |
| Joint_Glenohum_L| Glenohumeral Joint Left |  85537004 |  Glenohumeral joint structure (body structure) |  7771000| left(qualifier value)| | |
| Joint_Glenohum_R| Glenohumeral Joint Right |  85537004 |  Glenohumeral joint structure (body structure) |  24028007| right(qualifier value)| | |
| Lig_Hepatogastrc| Hepatogastric ligament |  6544009 |  Structure of gastrohepatic ligament (body structure) | | | | |
| Lips| Lips |  81083006 |  Both lips (body structure) | | | | |
| Joint_TM_L| Temperomandibular Joint Left |  53620006 |  Temporomandibular joint structure (body structure) |  7771000| left(qualifier value)| | |
| Joint_TM_R| Temperomandibular Joint Right |  53620006 |  Temporomandibular joint structure (body structure) |  24028007| right(qualifier value)| | |
| Liver| Liver |  10200004 |  Liver structure (body structure) | | | | |
| Kidney_Cortex_L| Renal cortex left |  50403003 |  Structure of cortex of kidney (body structure) |  7771000| left(qualifier value)| | |
| Kidney_Cortex_R| Renal cortex right |  50403003 |  Structure of cortex of kidney (body structure) |  24028007| right(qualifier value)| | |
| Kidney_Hilum_L| Renal Hilum Left |  74033008 |  Structure of hilum of kidney (body structure) |  7771000| left(qualifier value)| | |
| Kidney_Hilum_R| Renal Hilum Right |  74033008 |  Structure of hilum of kidney (body structure) |  24028007| right(qualifier value)| | |
| Lobe_Frontal| Frontal Lobe |  83251001 |  Frontal lobe structure (body structure) | | | | |
| Kidney_L| Kidney Left |  64033007 |  Kidney structure (body structure) |  7771000| left(qualifier value)| | |
| Kidney_Pelvis_L| Renal pelvis Left |  25990002 |  Renal pelvis structure (body structure) |  7771000| left(qualifier value)| | |
| Kidney_Pelvis_R| Renal pelvis Right |  25990002 |  Renal pelvis structure (body structure) |  24028007| right(qualifier value)| | |
| Kidney_R| Kidney Right |  64033007 |  Kidney structure (body structure) |  24028007| right(qualifier value)| | |
| Lobe_Occipital| Occipital Lobe |  31065004 |  Occipital lobe structure (body structure) | | | | |
| Lobe_Parietal| Parietal Lobe |  16630005 |  Parietal lobe structure (body structure) | | | | |
| Knee_L| Knee Left |  72696002 |  Knee region structure (body structure) |  7771000| left(qualifier value)| | |
| Knee_R| Knee Right |  72696002 |  Knee region structure (body structure) |  24028007| right(qualifier value)| | |
| Lobe_Temporal| Temporal Lobe |  78277001 |  Temporal lobe structure (body structure) | | | | |
| Mediastinum| Mediastinum |  72410000 |  Mediastinal structure (body structure) | | | | |
| Musc| Muscle |  71616004 |  Skeletal and/or smooth muscle structure (body structure) | | | | |
| Musc_Constrict| Constrictor Muscle of Pharynx |  4866005 |  Constrictor muscle of pharynx structure (body structure) | | | | |
| Lens_L| Lens Left |  78076003 |  Structure of lens of eye (body structure) |  7771000| left(qualifier value)| | |
| Lens_R| Lens Right |  78076003 |  Structure of lens of eye (body structure) |  24028007| right(qualifier value)| | |
| Musc_Masseter| Masseter Muscle |  79368004 |  Masseter muscle structure (body structure) | | | | |
| Musc_Temporal_R| Temporal muscle - Right |  52927003 |  Structure of temporalis muscle (body structure) |  24028007| right(qualifier value)| | |
| Nasopharynx| Nasal part of pharynx |  71836000 |  Nasopharyngeal structure (body structure) | | | | |
| LN| Lymph Node |  59441001 |  Structure of lymph node (body structure) | | | | |
| LN_Ax_Apical| Set of apical axillary lymphatic vessels |  16051009 |   Structure of apical axillary lymph node (body structure) | | | | |
| LN_Ax_Apical_L| Axillary lymphatic chain - Apical Left |  16051009 |   Structure of apical axillary lymph node (body structure) |  7771000| Left(qualifier value)| | |
| LN_Ax_Apical_R| Axillary lymphatic chain - Apical Right |  16051009 |   Structure of apical axillary lymph node (body structure) |  24028007| Right(qualifier value)| | |
| LN_Ax_Central_L| Axillary lymphatic chain - Central Left |  16051009 |   Structure of apical axillary lymph node (body structure) |  26216008| central(qualifier value)|  7771000|  left(qualifier value) |
| LN_Ax_Central_R| Axillary lymphatic chain - Central Right |  16051009 |   Structure of apical axillary lymph node (body structure) |  26216008| central(qualifier value)|  24028007|  right(qualifier value) |
| LN_Ax_Centrals| Set of central axillary lymphatic vessels |  283001 |  Structure of central axillary lymph node (body structure) | | | | | |
| LN_Ax_L| Axillary lymphatic chain Left |  68171009 |  Axillary lymph node structure (body structure) |  7771000| Left(qualifier value)| | |
| LN_Ax_L1_L| Level 1 Axillary Lymph Node Left |  68171009 |  Axillary lymph node structure (body structure) |  277733009| Level 1(qualifier value)|  7771000|  Left(qualifier value) |
| LN_Ax_L1_R| Level 1 Axillary Lymph Node Right |  68171009 |  Axillary lymph node structure (body structure) |  277733009| Level 1(qualifier value)|  24028007|  Right(qualifier value) |
| LN_Ax_L2_L| Level 2 Axillary Lymph Node Left |  68171009 |  Axillary lymph node structure (body structure) |  277734003| Level 2(qualifier value)|  7771000|  left(qualifier value) |
| LN_Ax_L2_R| Level 2 Axillary Lymph Node Right |  68171009 |  Axillary lymph node structure (body structure) |  277734003| Level 2(qualifier value)|  24028007|  Right(qualifier value) |
| LN_Ax_L3_L| Level 3 Axillary Lymph Node Left |  68171009 |  Axillary lymph node structure (body structure) |  277735002| Level 3(qualifier value)|  7771000|  Left(qualifier value) |
| LN_Ax_L3_R| Level 3 Axillary Lymph Node Right |  68171009 |  Axillary lymph node structure (body structure) |  277735002| Level 3(qualifier value)|  24028007|  Right(qualifier value) |
| LN_Ax_Lateral_L| Axillary lymphatic chain - Lateral Left |  33770006 |  Structure of lateral axillary lymph node (body structure) |  7771000| Left(qualifier value)| | |
| LN_Ax_Lateral_R| Axillary lymphatic chain - Lateral Right |  33770006 |  Structure of lateral axillary lymph node (body structure) |  24028007| Right(qualifier value)| | |
| LN_Ax_Laterals|  lateral axillary lymph nodes |  33770006 |  Structure of lateral axillary lymph node (body structure) | | | | |
| LN_Ax_Pectoral_L| Axillary lymphatic chain - Pectoral Left |  69691007 |  Structure of pectoral axillary lymph node (body structure) |  7771000| Left(qualifier value)| | |
| LN_Ax_Pectoral_R| Axillary lymphatic chain - Pectoral Right |  69691007 |  Structure of pectoral axillary lymph node (body structure) |  24028007| Right(qualifier value)| | |
| LN_Ax_Pectorals| Set of pectoral axillary lymphatic vessels |  69691007 |  Structure of pectoral axillary lymph node (body structure) | | | | |
| LN_Ax_R| Axillary lymphatic chain Right |  68171009 |  Axillary lymph node structure (body structure) |  24028007| Right(qualifier value)| | |
| LN_Ax_Subscap_L| Axillary lymphatic chain - Subscapular Left |  12196003 |  Structure of subscapular axillary lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Ax_Subscap_R| Axillary lymphatic chain - Subscapular Right |  12196003 |  Structure of subscapular axillary lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Ax_Subscaps| Set of subscapular axillary lymphatic vessels |  12196003 |  Structure of subscapular axillary lymph node (body structure) | | | | |
| LN_Brachioceph_L| Lymph nodes of thorax - Brachiocephalic Left |  196821008 |  Structure of innominate lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Brachioceph_R| Lymph nodes of thorax - Brachiocephalic Right |  196821008 |  Structure of innominate lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Brachiocephs| Lymph nodes of thorax - Brachiocephalic |  196821008 |  Structure of innominate lymph node (body structure) | | | | |
| LN_Bronchpulm_L| Lymph nodes of thorax - Bronchopulmonary Left |  279816002 |  Bronchopulmonary lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Bronchpulm_R| Lymph nodes of thorax - Bronchopulmonary Right |  279816002 |  Bronchopulmonary lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Bronchpulms| Lymph nodes of thorax - Bronchopulmonary |  279816002 |  Bronchopulmonary lymph node group (body structure) | | | | |
| LN_Diaphragmatic| Lymph nodes of thorax - Diaphragmatic |  196751009 |  Structure of diaphragmatic lymph node (body structure) | | | | |
| LN_Iliac_Ext| Lymph nodes of pelvis - External iliac |  65349008 |  Structure of external iliac lymph node (body structure) | | | | |
| LN_Iliac_Int| Lymph nodes of pelvis -  Internal iliac |  245357003 |  Structure of internal iliac lymph node (body structure) | | | | | |
| LN_Iliac| Lymph nodes of pelvis -  common iliac |  84219008 |  Structure of iliac lymph node (body structure) | | | | | |
| LN_Iliac_Ext_L| Lymph nodes of pelvis - external iliac Left |  65349008 |  Structure of external iliac lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Iliac_Ext_R| Lymph nodes of pelvis - external iliac Right |  65349008 |  Structure of external iliac lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Iliac_Int_L| Lymph nodes of pelvis - internal iliac Left |  245299000 |  Internal iliac lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Iliac_L| Lymph nodes of pelvis - common iliac Left |  245295006 |  Common iliac lymph node group (body structure) |  7771000| left (qualifier value)| | |
| LN_Iliac_R| Lymph nodes of pelvis - common iliac Right |  245295006 |  Common iliac lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_IMN_L|  |  245282001 |  Internal mammary lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_IMN_R|  |  245282001 |  Internal mammary lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_IMNs| Lymph nodes IMN |  245282001 |  Internal mammary lymph node group (body structure) | | | | |
| LN_Inguinofem| Lymph nodes of pelvis - inguinofemoral |  279763008 |  Inguinofemoral lymph node group (body structure) | | | | |
| LN_Inguinofem_L| Lymph nodes of pelvis - inguinofemoral left |  279763008 |  Inguinofemoral lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Inguinofem_R| Lymph nodes of pelvis - inguinofemoral right |  279763008 |  Inguinofemoral lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Intercostals| Lymph nodes of thorax - Intercostal |  64038003 |  Intercostal lymph node (body structure) | | | | |
| LN_L| Lymph Node Left |  59441001 |  Structure of lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Ligamentarter| Lymph nodes of thorax - Ligamentum arteriosum |  127938006 |  Lymph node of aortopulmonary window (body structure)  | | | | |
| LN_lliac_Int_R| Lymph nodes of pelvis - internal iliac Right |  245299000 |  Internal iliac lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Mediastinals| Lymph nodes of thorax - Mediastinal |  62683002 |  Mediastinal lymph node structure (body structure) | | | | |
| LN_Neck| Neck Lymph Node |  81105003 |  Cervical lymph node structure (body structure) | | | | |
| LN_Neck_IA_L| Level IA (Submental) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162616006|  Level IA(qualifier value) |
| LN_Neck_IA_R| Level IA (Submental) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162616006|  Level IA(qualifier value) |
| LN_Neck_IB_L| Level IB (Submandibular) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162617002|  Level IB(qualifier value) |
| LN_Neck_IB_R| Level IB (Submandibular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162617002|  Level IB(qualifier value) |
| LN_Neck_II_L| Level IIA & IIB (Upper Jugular) neck nodes Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258401000|  Level II(qualifier value) |
| LN_Neck_II_R| Level IIA & IIB (Upper Jugular) neck nodes Left |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258401000|  Level II(qualifier value) |
| LN_Neck_IIA_L| Level IIA (Upper Jugular) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left (qualifier value)|  USCRS-34777|  Level IIA(qualifier value) |
| LN_Neck_IIA_R| Level IIA (Upper Jugular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  USCRS-34777|  Level IIA(qualifier value) |
| LN_Neck_IIB_L| Level IIB (Upper Jugular) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  USCRS-34775|  Level IIB(qualifier value) |
| LN_Neck_IIB_R| Level IIB (Upper Jugular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  USCRS-34775|  Level IIB(qualifier value) |
| LN_Neck_III_L| Level III (Middle Jugular) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258402007|  Level III(qualifier value) |
| LN_Neck_III_R| Level III (Middle Jugular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258402007|  Level III(qualifier value) |
| LN_Neck_IV_L| Level IV neck (Lower Jugular) node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258403002|  Level IV(qualifier value) |
| LN_Neck_IV_R| Level IV (Lower Jugular) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258403002|  Level IV(qualifier value) |
| LN_Neck_V_L| Level VA\, VB and VC (Posterior Triangle) neck nodes Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258404008|  Level V(qualifier value) |
| LN_Neck_V_R| Level VA\, VB and VC (Posterior Triangle) neck nodes Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258404008|  Level V(qualifier value) |
| LN_Neck_VA_L| Level VA (Posterior Triangle) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162622002|  Level VA(qualifier value) |
| LN_Neck_VA_R| Level VA (Posterior Triangle) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162622002|  Level VA(qualifier value) |
| LN_Neck_VB_L| Level VB (Posterior Triangle) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162623007|  Level VB(qualifier value) |
| LN_Neck_VB_R| Level VB (Posterior Triangle) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162623007|  Level VB(qualifier value) |
| LN_Neck_VC_L| Level VC (Posterior Triangle) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162624001|  Level VC(qualifier value) |
| LN_Neck_VC_R| Level VC (Posterior Triangle) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162624001|  Level VC(qualifier value) |
| LN_Neck_VI_L| Level VI (Anterior Triangle) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  258405009|  Level VI(qualifier value) |
| LN_Neck_VI_R| Level VI (Anterior Triangle) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  258405009|  Level VI(qualifier value) |
| LN_Neck_VII_L| Level VII (Upper Mediastinal) neck node Left |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  395168005|  Level VII(qualifier value) |
| LN_Neck_VII_R| Level VII (Upper Mediastinal) neck node Right |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162628003|  Level VIIA(qualifier value) |
| LN_Neck_VIIA_L| LN_Neck_VIIA_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162628003|  Level VIIA(qualifier value) |
| LN_Neck_VIIA_R| LN_Neck_VIIA_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  395168005|  Level VII(qualifier value) |
| LN_Neck_VIII_R| LN_Neck_VIII_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162618007|  Level VIII(qualifier value) |
| LN_Neck_VIII_L| LN_Neck_VIII_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162618007|  Level VIII(qualifier value) |
| LN_Neck_IX_R| LN_Neck_IX_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162619004|  Level IX(qualifier value) |
| LN_Neck_IX_L| LN_Neck_IX_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162619004|  Level IX(qualifier value) |
| LN_Neck_X_R| LN_Neck_X_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162614009|  Level X(qualifier value) |
| LN_Neck_X_L| LN_Neck_X_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162614009|  Level X(qualifier value) |
| LN_Neck_XA_R| LN_Neck_XA_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162615005|  Level XA(qualifier value) |
| LN_Neck_XA_L| LN_Neck_XA_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162615005|  Level XA(qualifier value) |
| LN_Neck_XB_R| LN_Neck_XB_R |  81105003 |  Cervical lymph node structure (body structure) |  24028007| Right(qualifier value)|  1162613003|  Level XB(qualifier value) |
| LN_Neck_XB_L| LN_Neck_XB_L |  81105003 |  Cervical lymph node structure (body structure) |  7771000| Left(qualifier value)|  1162613003|  Level XB(qualifier value) |
| LN_Obturator_L| Lymph nodes of pelvis - obturator Left |  36086000 |  Structure of obturator lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Obturator_R| Lymph nodes of pelvis - obturator Right |  36086000 |  Structure of obturator lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Paraaortic| Lymph nodes of abdomen- para-aortic |  35783009 |  Structure of aortic lymph node (body structure) | | | | |
| LN_Paramammary_L| Lymph nodes of thorax - Paramammary Left |  368550005 |  Structure of paramammary lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Paramammary_R| Lymph nodes of thorax - Paramammary Right |  368550005 |  Structure of paramammary lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Paramammarys| Lymph nodes of thorax - Paramammary |  368550005 |  Structure of paramammary lymph node (body structure) | | | | |
| LN_Parasternal_L| Lymph nodes of thorax - Parasternal Left |  82365008 |  Structure of parasternal lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Parasternal_R| Lymph nodes of thorax - Parasternal Right |  82365008 |  Structure of parasternal lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Parasternals| Lymph nodes of thorax - Parasternal |  82365008 |  Structure of parasternal lymph node (body structure) | | | | |
| LN_Pelvic_L| Pelvic Lymph Nodes Left |  245294005 |  Pelvic lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Pelvic_R| Pelvic Lymph Nodes Right |  245294005 |  Pelvic lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Pelvics| Pelvic Lymph Nodes |  245294005 |  Pelvic lymph node group (body structure) | | | | |
| LN_Portahepatis| Porta hepatis |  245288002 |  Portahepatis lymph node group (body structure) | | | | |
| Nose| Nose |  45206002 |  Nasal structure (body structure) | | | | |
| LN_Presacral_L| Lymph nodes of pelvis - presacral Left |  1187336003 |  Presacral lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Presacral_R| Lymph nodes of pelvis - presacral Right |  1187336003 |  Presacral lymph node group (body structure) |  24028007| right(qualifier value)| | |
| LN_Pulmonary_L| Lymph nodes of thorax - Pulmonary Left |  196662004 |  Structure of intrapulmonary lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Pulmonary_R| Lymph nodes of thorax - Pulmonary Right |  196662004 |  Structure of intrapulmonary lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Pulmonarys| Lymph nodes of thorax - Pulmonary |  196662004 |  Structure of intrapulmonary lymph node (body structure) | | | | |
| LN_R| Lymph Node Right |  59441001 |  Structure of lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Sclav_L| Supraclavicular Lymph Node Left |  76838003 |  Structure of supraclavicular lymph node (body structure) |  7771000| left(qualifier value)| | |
| LN_Sclav_R| Supraclavicular Lymph Node Right |  76838003 |  Structure of supraclavicular lymph node (body structure) |  24028007| right(qualifier value)| | |
| LN_Trachbrnchs| Lymph nodes of thorax - Tracheobronchial |  245283006 |  Tracheobronchial lymph node group (body structure) | | | | |
| LN_Trachbrnchs_L| Lymph nodes of thorax - Tracheobronchial Left |  245283006 |  Tracheobronchial lymph node group (body structure) |  7771000| left(qualifier value)| | |
| LN_Trachbrnchs_R| Lymph nodes of thorax - Tracheobronchial Right |  245283006 |  Tracheobronchial lymph node group (body structure) |  24028007| right(qualifier value)| | |
| Nrv_Peripheral| Peripheral Nerve |  84782009 |  Peripheral nerve structure (body structure) | | | | |
| Lobe_Frontal_L| Frontal Lobe Left |  83251001 |  Frontal lobe structure (body structure) |  7771000| left(qualifier value)| | |
| Lobe_Frontal_R| Frontal Lobe Right |  83251001 |  Frontal lobe structure (body structure) |  24028007| right(qualifier value)| | |
| Nrv_Root| Nerve Root |  40958000 |  Nerve root structure (body structure) | | | | |
| Lobe_Occipital_L| Occipital Lobe Left |  31065004 |  Occipital lobe structure (body structure) |  7771000| left(qualifier value)| | |
| Lobe_Occipital_R| Occipital Lobe Right |  31065004 |  Occipital lobe structure (body structure) |  24028007| right(qualifier value)| | |
| OpticChiasm| Optic chiasm |  244453006 |  Structure of optic chiasma (body structure) | | | | |
| Lobe_Parietal_L| Parietal Lobe Left |  16630005 |  Parietal lobe structure (body structure) |  7771000| left(qualifier value)| | |
| Lobe_Parietal_R| Parietal Lobe Right |  16630005 |  Parietal lobe structure (body structure) |  24028007| right(qualifier value)| | |
| OpticNrv| Optic nerve |  18234004 |  Optic nerve structure (body structure) | | | | |
| Lobe_Temporal_L| Temporal Lobe Left |  78277001 |  Temporal lobe structure (body structure) |  7771000| left(qualifier value)| | |
| Lobe_Temporal_R| Temporal Lobe Right |  78277001 |  Temporal lobe structure (body structure) |  24028007| right(qualifier value)| | |
| Lung_L| Lung Left |  39607008 |  Lung structure (body structure) |  7771000| left(qualifier value)| | |
| Lung_LLL| Lung - lower lobe of left |  31094006 |  Structure of lobe of lung (body structure) |  7771000| left(qualifier value)|  261122009|  lower(qualifier value) |
| Lung_LUL| Lung - upper lobe of left |  31094006 |  Structure of lobe of lung (body structure) |  7771000| left(qualifier value)|  261183002|  upper(qualifier value) |
| Lung_R| Lung Right |  31094006 |  Structure of lobe of lung (body structure) |  24028007| right(qualifier value)| | |
| Lung_RLL| Lung - lower lobe of right |  31094006 |  Structure of lobe of lung (body structure) |  24028007| right(qualifier value)|  261122009|  lower(qualifier value) |
| Lung_RML| Lung - middle lobe of right |  31094006 |  Structure of lobe of lung (body structure) |  24028007| right(qualifier value)|  260528009|  middle(qualifier value) |
| Lung_RUL| Lung - upper lobe of right |  31094006 |  Structure of lobe of lung (body structure) |  24028007| right(qualifier value)|  261183002|  upper(qualifier value) |
| Lungs| Pair of Lungs |  39607008 |  Lung structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Malleus| Malleus |  34080009 |  Malleus structure (body structure) | | | | |
| Malleus_L| Malleus Left |  34080009 |  Malleus structure (body structure) | | | | |
| Malleus_R| Malleus Right |  34080009 |  Malleus structure (body structure) | | | | |
| Maxilla| Maxilla |  70925003 |  Bone structure of maxilla (body structure) | | | | |
| Maxilla_L| Maxilla Left |  70925003 |  Bone structure of maxilla (body structure) | | | | |
| Maxilla_R| Maxilla Right |  70925003 |  Bone structure of maxilla (body structure) |  24028007| right(qualifier value)| | |
| Orbit_L| Orbit Left |  363654007 |  Structure of orbit proper (body structure) |  7771000| left(qualifier value)| | |
| Orbit_R| Orbit Right |  363654007 |  Structure of orbit proper (body structure) |  24028007| right(qualifier value)| | |
| Oropharynx| Oral part of pharynx |  31389004 |  Oropharyngeal structure (body structure) | | | | |
| Musc_Constrict_I| Pharynx - Inferior pharyngeal constrictor |  4866005 |  Constrictor muscle of pharynx structure (body structure) |  261089000| inferior(qualifier value)| | |
| Musc_Constrict_M|  Pharynx - Middle pharyngeal constrictor |  4866005 |  Constrictor muscle of pharynx structure (body structure) |  260528009| middle(qualifier value)| | |
| Musc_Constrict_S| Pharynx - Superior pharyngeal constrictor |  4866005 |  Constrictor muscle of pharynx structure (body structure) |  264217000| superior(qualifier value)| | |
| Musc_Digastric_L| Digastric muscle Left |  52410001 |  Digastric muscle structure (body structure) |  7771000| left(qualifier value)| | |
| Musc_Digastric_R| Digastric muscle Right |  52410001 |  Digastric muscle structure (body structure) |  24028007| right(qualifier value)| | |
| Ovaries| Ovary |  15497006 |  Ovarian structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Musc_Masseter_L| Masseter Muscle Left |  79368004 |  Masseter muscle structure (body structure) | | | | |
| Musc_Masseter_R| Masseter Muscle Right |  79368004 |  Masseter muscle structure (body structure) | | | | |
| Musc_Platysma_L| Platysma Left |  18252004 |  Structure of platysma muscle (body structure) |  7771000| left(qualifier value)| | |
| Musc_Platysma_R| Platysma Right |  18252004 |  Structure of platysma muscle (body structure) |  24028007| right(qualifier value)| | |
| Musc_Pterygoid_L| Pterygoid muscles - Left |  76738006 |  Structure of pterygoid muscle (body structure) |  7771000| left(qualifier value)| | |
| Musc_Pterygoid_R| Pterygoid muscles - Right |  76738006 |  Structure of pterygoid muscle (body structure) |  24028007| right(qualifier value)| | |
| Musc_Sclmast_L| Sternocleidomastoid Left |  22823000 |  Structure of sternocleidomastoid muscle (body structure) |  7771000| left(qualifier value)| | |
| Musc_Sclmast_R| Sternocleidomastoid Right |  22823000 |  Structure of sternocleidomastoid muscle (body structure) |  24028007| right(qualifier value)| | |
| Musc_Temporal_L| Temporal muscle - Left |  52927003 |  Structure of temporalis muscle (body structure) |  7771000| left(qualifier value)| | |
| Palate_Soft| Soft palate |  49460000 |  Soft palate structure (body structure) | | | | |
| Nasalconcha_LI| Inferior Nasal Concha Left |  46607005 |  Nasal turbinate structure (body structure) |  7771000| left(qualifier value)|  261089000|  inferior(qualifier value) |
| Nasalconcha_RI| Inferior Nasal Concha Right |  46607005 |  Nasal turbinate structure (body structure) |  24028007| right(qualifier value)|  261089000| inferior(qualifier value) |
| Pancreas| Pancreas |  15776009 |  Pancreatic structure (body structure) | | | | |
| Pancreas_Head| Head of Pancreas |  64163001 |  Structure of head of pancreas (body structure) | | | | |
| Pancreas_Tail| Tail of Pancreas |  73239005 |  Structure of tail of pancreas (body structure) | | | | |
| Parametrium| Parametrium |  45682005 |  Structure of parametrium (body structure) | | | | |
| Parotids| Pair of Parotid Glands |  45289007 |  Parotid gland structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| PenileBulb| Penile Bulb |  52737000 |  Structure of bulb of penis (body structure) | | | | |
| OpticNrv_L| Optic nerve - left |  18234004 |  Optic nerve structure (body structure) |  7771000| left(qualifier value)| | |
| OpticNrv_R| Optic nerve - right |  18234004 |  Optic nerve structure (body structure) |  7771000| left(qualifier value)| | |
| Penis| Penis |  18911002 |  Penile structure (body structure) |  24028007| right(qualifier value)| | |
| Pericardium| Pericardium |  76848001 |  Pericardial structure (body structure) | | | | |
| Perineum| Perineum |  38864007 |  Perineal structure (body structure) | | | | |
| Peritoneum| Peritoneal sac |  118762006 |  Peritoneal sac structure (body structure) | | | | |
| Ovary_L| Ovary Left |  15497006 |  Ovarian structure (body structure) |  7771000| left(qualifier value)| | |
| Ovary_R| Ovary Right |  15497006 |  Ovarian structure (body structure) |  24028007| right(qualifier value)| | |
| Pacemaker| Pacemaker |  14106009 |  Cardiac pacemaker\, device (physical object) | | | | |
| Pharynx| Pharynx |  54066008 |  Pharyngeal structure (body structure) | | | | |
| PancJejuno| The pancreatic jejuno junction - generated by surgical procedure |  110822002 |  Pancreas and jejunum (combined site) (body structure) | | | | |
| Pineal| Pineal gland |  45793000 |  Pineal structure (body structure) | | | | |
| Pituitary| Pituitary gland |  56329008 |  Pituitary structure (body structure) | | | | |
| Pons| Pons |  49557009 |  Pontine structure (body structure) | | | | |
| Prostate| Prostate |  41216001 |  Prostatic structure (body structure) | | | | |
| Parotid_L| Parotid Left |  45289007 |  Parotid gland structure (body structure) |  7771000| left(qualifier value)| | |
| Parotid_R| Parotid Right |  45289007 |  Parotid gland structure (body structure) |  24028007| right(qualifier value)| | |
| ProstateBed| Prostate Bed |  1162492000 |  Tumor bed (morphologic abnormality) | | | | |
| Pterygoid_Lat_L| Pterygoid muscles lateral - Left |  88938001 |  Structure of lateral pterygoid muscle (body structure) |  7771000| left(qualifier value)| | |
| Pterygoid_Lat_R| Pterygoid muscles lateral - Right |  88938001 |  Structure of lateral pterygoid muscle (body structure) |  24028007| right(qualifier value)| | |
| Pterygoid_Med_L| Pterygoid muscles medial - Left |  85002005 |  Structure of medial pterygoid muscle (body structure) |  7771000| left(qualifier value)| | |
| Pterygoid_Med_R| Pterygoid muscles medial - Right |  85002005 |  Structure of medial pterygoid muscle (body structure) |  24028007| right(qualifier value)| | |
| Rectal_Wall| Rectal Wall |  511000202101 |  Rectum wall structure (body structure) | | | | |
| Rectum| Large bowel - Rectum |  34402009 |  Rectum structure (body structure) | | | | |
| SacralPlex| Sacral Plexus |  62397004 |  Sacral plexus structure (body structure) | | | | |
| Scalp|  |  41695006 |  Scalp structure (body structure) | | | | |
| Proc_Condyloid_L| Condyloid process of mandible - Right |  67183008 |  Structure of condyloid process of mandible (body structure) |  24028007| right(qualifier value)| | |
| Proc_Condyloid_R| Condyloid process of mandible - Left |  67183008 |  Structure of condyloid process of mandible (body structure) |  7771000| left(qualifier value)| | |
| Proc_Coronoid_L| Coronoid process of mandible - Left |  124002 |  Structure of coronoid process of mandible (body structure) |  7771000| left(qualifier value)| | |
| Proc_Coronoid_R| Coronoid process of mandible - Right |  124002 |  Structure of coronoid process of mandible (body structure) |  24028007| right(qualifier value)| | |
| Scar| Scar |  12402003 |  Scar (morphologic abnormality) | | | | |
| Scar_Boost|  |  12402003 |  Scar (morphologic abnormality) | | | | |
| Scrotum| Scrotum (skin & cremasteric fascia) |  20233005 |  Scrotal structure (body structure) | | | | |
| SeminalVes| Seminal vesicle |  64739004 |  Seminal vesicle structure (body structure) | | | | |
| SeminalVes_Dist| Distal Seminal Vesicle |  64739004 |  Seminal vesicle structure (body structure) |  46053002| distal(qualifier value)| | |
| SeminalVes_Prox| Proximal Seminal Vesicle |  64739004 |  Seminal vesicle structure (body structure) |  40415009| proximal(qualifier value)| | |
| Sinus_Ethmoid| Ethmoidal Sinus |  54215007 |  Ethmoid sinus structure (body structure) | | | | |
| PubicSymphys| Pubic Symphysis |  82561000 |  Symphysis pubis structure (body structure) | | | | |
| PubicSymphys_L| Pubic bone Left |  82561000 |  Symphysis pubis structure (body structure) |  7771000| left(qualifier value)| | |
| PubicSymphys_R| Pubic bone Right |  82561000 |  Symphysis pubis structure (body structure) |  24028007| right(qualifier value)| | |
| Radius_L| Radius Left |  62413002 |  Bone structure of radius (body structure) |  7771000| left(qualifier value)| | |
| Radius_R| Radius Right |  62413002 |  Bone structure of radius (body structure) |  24028007| right(qualifier value)| | |
| Sinus_Frontal| Frontal Sinus |  55060009 |  Frontal sinus structure (body structure) | | | | |
| Sinus_Maxilry| Maxillary Sinus |  15924003 |  Maxillary sinus structure (body structure) | | | | |
| Retina_L| Retina Left |  5665001 |  Retinal structure (body structure) |  7771000| left(qualifier value)| | |
| Retina_R| Retina Right |  5665001 |  Retinal structure (body structure) |  24028007| right(qualifier value)| | |
| Retinas| Both Retinas |  5665001 |  Retinal structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Rib| Any Rib volume |  113197003 |  Bone structure of rib (body structure) | | | | |
| Rib01_L| First Rib Left |  48535007 |  Bone structure of first rib (body structure) |  7771000| left(qualifier value)| | |
| Rib01_R| First Rib Right |  48535007 |  Bone structure of first rib (body structure) |  24028007| right(qualifier value)| | |
| Rib02_L| Second rib Left |  78247007 |  Bone structure of second rib (body structure) |  7771000| left(qualifier value)| | |
| Rib02_R| Second rib Right |  78247007 |  Bone structure of second rib (body structure) |  24028007| right(qualifier value)| | |
| Rib03_L| Third rib Left |  25888004 |  Bone structure of third rib (body structure) |  7771000| left(qualifier value)| | |
| Rib03_R| Third rib Right |  25888004 |  Bone structure of third rib (body structure) |  24028007| right(qualifier value)| | |
| Rib04_L| Fourth rib Left |  25523003 |  Bone structure of fourth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib04_R| Fourth rib Right |  25523003 |  Bone structure of fourth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib05_L| Fifth rib Left |  15339008 |  Bone structure of fifth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib05_R| Fifth rib Right |  15339008 |  Bone structure of fifth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib06_L| Sixth rib Left |  59558009 |  Bone structure of sixth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib06_R| Sixth rib Right |  59558009 |  Bone structure of sixth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib07_L| Seventh rib Left |  24915002 |  Bone structure of seventh rib (body structure) |  7771000| left(qualifier value)| | |
| Rib07_R| Seventh rib Right |  24915002 |  Bone structure of seventh rib (body structure) |  24028007| right(qualifier value)| | |
| Rib08_L| Eighth rib Left |  5953002 |  Bone structure of eighth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib08_R| Eighth rib Right |  5953002 |  Bone structure of eighth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib09_L| Ninth rib Left |  22565002 |  Bone structure of ninth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib09_R| Ninth rib Right |  22565002 |  Bone structure of ninth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib10_L| Tenth rib Left |  77644006 |  Bone structure of tenth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib10_R| Tenth rib Right |  77644006 |  Bone structure of tenth rib (body structure) |  24028007| right(qualifier value)| | |
| Rib11_L| Eleventh rib Left |  58830002 |  Bone structure of eleventh rib (body structure) |  7771000| left(qualifier value)| | |
| Rib11_R| Eleventh rib Right |  58830002 |  Bone structure of eleventh rib (body structure) |  24028007| right(qualifier value)| | |
| Rib12_L| Twelfth rib Left |  43993008 |  Bone structure of twelfth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib12_R| Twelfth rib Right |  43993008 |  Bone structure of twelfth rib (body structure) |  24028007| right(qualifier value)| | |
| Skin| Skin |  39937001 |  Skin structure (body structure) | | | | |
| Rib13_L| Thirteenth   rib Left |  1193560003 |  Bone structure of thirteenth rib (body structure) |  7771000| left(qualifier value)| | |
| Rib13_R| Thirteenth  rib Right |  1193560003 |  Bone structure of thirteenth rib (body structure) |  24028007| right(qualifier value)| | |
| Skin_Perineum|  |  48014002 |  Skin structure of perineum (body structure) | | | | |
| Scapula_L| Scapula Left |  79601000 |  Bone structure of scapula (body structure) |  7771000| left(qualifier value)| | |
| Scapula_R| Scapula Right |  79601000 |  Bone structure of scapula (body structure) |  24028007| right(qualifier value)| | |
| Skin_Peritoneum|  |  75093004 |  Skin structure of anterior abdominal wall (body structure) | | | | |
| Spc_Bowel | Space occupied by bowel |  USCRS-34356 |  Bowel space (body structure) | | | | |
| Spc_Bowel_Small| Space occupied by small bowel |  USCRS-34358 |  Small bowel space (body structure) | | | | |
| Spc_Retrophars| Retropharyngeal space |  789564000 |  Structure of retropharyngeal space (body structure) | | | | |
| Spc_Retrosty| Retrostyloid space  |  1193554003 |  Retrostyloid space (body structure) | | | | |
| Spc_Supraclav_L| Supraclavicular space - Left |  76838003 |  Structure of supraclavicular lymph node (body structure) |  7771000| left(qualifier value)| | |
| Spc_Supraclav_R| Supraclavicular space - Right |  76838003 |  Structure of supraclavicular lymph node (body structure) |  24028007| right(qualifier value)| | |
| Sinus_Frontal_L| Frontal Sinus Left |  55060009 |  Frontal sinus structure (body structure) |  7771000| left(qualifier value)| | |
| Sinus_Frontal_R| Frontal Sinus Right |  55060009 |  Frontal sinus structure (body structure) |  24028007| right(qualifier value)| | |
| Sphincter_Anal| Internal Anal Sphincter  |  41178004 |  Structure of sphincter ani muscle (body structure) | | | | |
| Sinus_Maxilry_L| Maxillary Sinus |  15924003 |  Maxillary sinus structure (body structure) |  7771000| left(qualifier value)| | |
| Sinus_Maxilry_R| Maxillary Sinus |  15924003 |  Maxillary sinus structure (body structure) |  24028007| right(qualifier value)| | |
| SpinalCanal| Vertebral canal |  61853006 |  Spinal canal structure (body structure) | | | | |
| Sinus_Sphenoid_L| Sphenoidal Sinus Left |  24999009 |  Sphenoid sinus structure (body structure) |  7771000| left (qualifier value)| | |
| Sinus_Sphenoid_R| Sphenoidal Sinus Right |  24999009 |  Sphenoid sinus structure (body structure) |  24028007| right(qualifier value)| | |
| SpinalCord| Spinal Cord |  2748008 |  Spinal cord structure (body structure) | | | | |
| SpinalCord_Cerv| Spinal Cord Cervical |  54785003 |  Cervical spinal cord structure (body structure) | | | | |
| SpinalCord_Lum| Spinal Cord Lumbar |  60051002 |  Lumbar spinal cord structure (body structure) | | | | |
| Skull| Skeletal system of head |  89546000 |  Bone structure of cranium (body structure) | | | | |
| SpinalCord_Sac| Spinal Cord Sacral |  11478001 |  Sacral spinal cord structure (body structure) | | | | |
| SpinalCord_Thor| Spinal Cord Thoracic |  50800009 |  Thoracic spinal cord structure (body structure) | | | | |
| Spongiosum| Penis Corpus Spongiosum |  25270003 |  Corpus spongiosum structure (body structure) | | | | |
| Spc_Retrophar_L| Retropharyngeal space Left |  789564000 |  Structure of retropharyngeal space (body structure) |  7771000| left(qualifier value)| | |
| Spc_Retrophar_R| Retropharyngeal space Right |  789564000 |  Structure of retropharyngeal space (body structure) |  24028007| right (qualifier value)| | |
| Stapes| Stapes |  22718006 |  Stapes structure (body structure) | | | | |
| Stomach| Stomach |  69695003 |  Stomach structure (body structure) | | | | |
| Spc_Retrosty_L| Retrostyloid space -Left |  1193554003 |  Retrostyloid space (body structure) |  7771000| left(qualifier value)| | |
| Spc_Retrosty_R| Retrostyloid space -Left |  1193554003 |  Retrostyloid space (body structure) |  24028007| right(qualifier value)| | |
| Strct_Suprapatel| Suprapatellar Structures |  75415000 |  Structure of suprapatellar bursa (body structure) | | | | |
| Surf_Eye_L|  |  67548002 |  Structure of conjunctiva of left eye (body structure) | | | | |
| Surf_Eye_R|  |  13014005 |  Structure of conjunctiva of right eye (body structure) | | | | |
| Sys_Ventricular| Ventricular System of the Brain |  8997002 |  Space of ventricular system of brain (body structure) | | | | |
| Tendon |  |  13024002 |  Tendon structure (body structure) | | | | |
| Tendon_Quad|  |  70567001 |  Structure of quadriceps tendon (body structure) | | | | |
| Testis| Testis |  40689003 |  Testis structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| ThecalSac|  |  37554007 |  Spinal dura mater structure (body structure) | | | | |
| Thoracic_Duct| Thoracic Duct |  1732005 |  Thoracic duct structure (body structure) | | | | |
| Spleen| Spleen |  78961009 |  Splenic structure (body structure) | | | | |
| Spleen_Hilum| Splenic hilum |  35378004 |  Structure of hilum of spleen (body structure) | | | | |
| Tongue| Tongue |  21974007 |  Tongue structure (body structure) | | | | |
| Tongue_All|  |  181226008 |  Entire tongue (body structure) | | | | |
| Stapes_L| Stapes Left |  22718006 |  Stapes structure (body structure) | | | | |
| Stapes_R| Stapes Right |  22718006 |  Stapes structure (body structure) | | | | |
| Tongue_Base|  |  47975008 |   Structure of root of tongue (body structure) | | | | |
| Tongue_Oral|  |  61344008 |  Structure of body of tongue (body structure) | | | | |
| Tongue_Oral_L|  |  61344008 |  Structure of body of tongue (body structure) | | | | |
| Trachea| Trachea |  44567001 |  Tracheal structure (body structure) | | | | |
| Trachea_NAdj| Trachea non adjacent wall |  44567001 |  Tracheal structure (body structure) |  1217011006| non-adjacent(qualifier value)| | |
| Ureters| Both Ureters |  87953007 |  Ureteric structure (body structure) |  7771000| left(qualifier value)|  24028007|  right(qualifier value) |
| Urethra| Urethra |  13648007 |  Urethral structure (body structure) | | | | |
| Urethra_Prostatc| Prostatic Urethra |  71553001 |  Prostatic urethra structure (body structure) | | | | |
| Testis_L| Testis Left |  40689003 |  Testis structure (body structure) |  7771000| left(qualifier value)| | |
| Testis_R| Testis Right |  40689003 |  Testis structure (body structure) |  24028007| right(qualifier value)| | |
| Uterus| Uterus |  35039007 |  Uterine structure (body structure) | | | | |
| V_Azygos| Azygos Vein |  72107004 |  Structure of azygous vein (body structure) | | | | |
| V_Brachioceph_L| Brachiocephalic vein Left |  8887007 |  Structure of brachiocephalic vein (body structure) |  7771000| left(qualifier value)| | |
| V_Brachioceph_R| Brachiocephalic vein Right |  8887007 |  Structure of brachiocephalic vein (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_Ext_L| External iliac vein Left |  63507001 |  Structure of external iliac vein (body structure) |  7771000| left(qualifier value)| | |
| Tongue_Base_L|  |  47975008 |   Structure of root of tongue (body structure) |  7771000| left(qualifier value)| | |
| Tongue_Base_R|  |  47975008 |   Structure of root of tongue (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_Ext_R| External iliac vein Right |  63507001 |  Structure of external iliac vein (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_Int_L| Internal iliac vein Left |  40300007 |  Structure of internal iliac vein (body structure) |  7771000| left(qualifier value)| | |
| Tongue_Oral_R|  |  61344008 |  Structure of body of tongue (body structure) |  24028007| right(qualifier value)| | |
| Tonsil|  |  75573002 |  Tonsillar structure (palatine) (body structure) | | | | |
| V_Iliac_Int_R| Internal iliac vein Right |  40300007 |  Structure of internal iliac vein (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_L| Common iliac vein Right |  46027005 |  Structure of common iliac vein (body structure) |  24028007| right(qualifier value)| | |
| TumorBed| Tumor Bed |  1162492000 |  Tumor bed (morphologic abnormality) | | | | |
| Ureter_L| Ureter Left |  87953007 |  Ureteric structure (body structure) |  7771000| left(qualifier value)| | |
| Ureter_R| Ureter Right |  87953007 |  Ureteric structure (body structure) |  24028007| right(qualifier value)| | |
| V_Iliac_R| Common iliac vein Left |  46027005 |  Structure of common iliac vein (body structure) |  7771000| left(qualifier value)| | |
| V_Jugular_Ext_L| external  jugular vein left |  71585003 |  Structure of external jugular vein (body structure) |  7771000| left(qualifier value)| | |
| V_Jugular_Ext_R| external jugular vein right |  71585003 |  Structure of external jugular vein (body structure) |  24028007| right(qualifier value)| | |
| V_Jugular_Int_L| Internal jugular vein left |  12123001 |  Internal jugular vein structure (body structure) |  7771000| left(qualifier value)| | |
| V_Jugular_Int_R| Internal jugular vein right |  12123001 |  Internal jugular vein structure (body structure) |  24028007| right(qualifier value)| | |
| V_Portal| Portal Vein |  32764006 |  Portal vein structure (body structure) | | | | |
| V_Pulmonary| Pulmonary vein |  430757002 |  Structure of pulmonary vein great vessel (body structure) | | | | |
| V_Subclavians| Subclavian Vein |  9454009 |  Structure of subclavian vein (body structure) | | | | |
| V_Venacava_I| Inferior vena cava |  35532006 |  Vena caval structure (body structure) |  261089000| inferior(qualifier value)| | |
| V_Venacava_S| Superior vena cava |  35532006 |  Vena caval structure (body structure) |  264217000| superior(qualifier value)| | |
| Vagina| Vagina |  76784001 |  Vaginal structure (body structure) | | | | |
| Vagina_Surf|  |  279894000 |  Inferior surface of vaginal cervix (body structure) | | | | |
| VaginalCuff| Vaginal Cuff |  438074005 |  438074005 | Vaginal cuff (morphologic abnormality) | | | | |
| Valve| Valve |  17401000 |  Cardiac valve structure (body structure) | | | | |
| V_Jugular| Any Jugular Vein |  63190004 |  Structure of jugular vein (body structure) | | | | |
| Valve_Mitral| Mitral Valve |  91134007 |  Mitral valve structure (body structure) | | | | |
| Valve_Pulmonic| Pulmonic Valve |  39057004 |  Pulmonary valve structure (body structure) | | | | |
| Valve_Tricuspid| Tricuspid Valve |  46030003 |  Tricuspid valve structure (body structure) | | | | |
| Ventricle| Ventricle (cardiac) |  21814001 |  Cardiac ventricular structure (body structure) | | | | |
| Ventricle_L| Ventricle (cardiac) Left |  21814001 |  Cardiac ventricular structure (body structure) |  7771000| left(qualifier value)| | |
| Ventricle_R| Ventricle (cardiac) Right |  21814001 |  Cardiac ventricular structure (body structure) |  24028007| right(qualifier value)| | |
| V_Subclavian_L| Subclavian Vein Left |  9454009 |  Structure of subclavian vein (body structure) |  7771000| left(qualifier value)| | |
| V_Subclavian_R| Subclavian Vein Right |  9454009 |  Structure of subclavian vein (body structure) |  24028007| right(qualifier value)| | |
| VocalCords| Vocal Cords |  46105003 |  Vocal cord structure (body structure) |  7771000| left(qualifier value)|  24028007| right(qualifier value) |
| Vulva| Vulva |  45292006 |  Vulval structure (body structure) | | | | |
| Wall_Vagina| Wall of vagina |  263355003 |  Vaginal wall (body structure) | | | | |
| Body| Only the body |  38266002 |  Entire body as a whole (body structure) | | | | | |
| BoneMarrow_Act| Active Bone Marrow |  75330005 |   Structure of red bone marrow (body structure) | | | | |
| Cartlg_Thyroid| Thyroid cartilage |  52940008 |  Thyroid cartilage structure (body structure) | | | | |
| Cist_Suprasellar| Suprasellar Cistern |  15328005 |  Structure of suprasellar region (body structure) | | | | |
| Valve_Aortic| Aortic Valve |  34202007 |  Aortic valve structure (body structure) | | | | |
| Dens| Cervical vertebrae - Bony part of dens of axis |  1172006 |  Structure of odontoid process of axis (body structure) | | | | |
| External| Contour encompassing body plus other external items  |  123037004 |  Body structure (body structure) |  261074009| external(qualifier value)| | |
| VB| Vertebral Body |  3572006 |  Structure of body of vertebra (body structure) | | | | |
| VB_C| Cervical vertebrae |  3572006 |  Bone structure of cervical vertebra (body structure) | | | | |
| VB_C1| Atlas - C1 |  14806007 |  Bone structure of atlas (body structure) | | | | |
| VB_C2| Axis - C2 |  39976000 |  Bone structure of axis (body structure) | | | | |
| VB_C3| Cervical vertebra - C3 |  91116008 |  Structure of body of third cervical vertebra (body structure) | | | | |
| VB_C4| Cervical vertebra - C4 |  14705001 |  Structure of body of fourth cervical vertebra (body structure) | | | | |
| VB_C5| Cervical vertebra - C5 |  67479001 |  Structure of body of fifth cervical vertebra (body structure) | | | | |
| VB_C6| Cervical vertebra - C6 |  88298007 |  Structure of body of sixth cervical vertebra (body structure) | | | | |
| VB_C7| Cervical vertebra - C7 |  16126006 |  Structure of body of seventh cervical vertebra (body structure) | | | | |
| VB_L| Lumbar Vertebrae |  73903008 |  Bone structure of lumbar vertebra (body structure) | | | | |
| VB_L1| Lumbar Vertebra L1 |  61032001 |  Structure of body of first lumbar vertebra (body structure) | | | | |
| VB_L2| Lumbar Vertebra L2 |  53983007 |  Structure of body of second lumbar vertebra (body structure) | | | | |
| VB_L3| Lumbar Vertebra L3 |  55492004 |  Structure of body of third lumbar vertebra (body structure) | | | | |
| VB_L4| Lumbar Vertebra L4 |  71996003 |  Structure of body of fourth lumbar vertebra (body structure) | | | | |
| VB_L5| Lumbar Vertebra L5 |  21799000 |  Structure of body of fifth lumbar vertebra (body structure) | | | | |
| VB_S| Sacral Vertebra |  87141009 |  Sacral vertebra structure (body structure) | | | | |
| VB_S1| Sacral Vertebra S1 |  65985001 |  Structure of first sacral vertebra (body structure) | | | | |
| VB_S2| Sacral Vertebra S2 |  11808007 |  Structure of second sacral vertebra (body structure) | | | | |
| VB_S3| Sacral Vertebra S3 |  49967005 |  Structure of third sacral vertebra (body structure) | | | | |
| VB_S4| Sacral Vertebra S4 |  69950008 |  Structure of fourth sacral vertebra (body structure) | | | | |
| VB_S5| Sacral Vertebra S5 |  21452006 |  Structure of fifth sacral vertebra (body structure) | | | | |
| VB_T| Thoracic Vertebra |  35769007 |  Bone structure of thoracic vertebra (body structure) | | | | |
| VB_T01| Thoracic Vertebra T1 |  56094003 |  Structure of body of first thoracic vertebra (body structure) | | | | |
| VB_T02| Thoracic Vertebra T2 |  50060007 |  Structure of body of secon thoracic vertebra (body structure) | | | | |
| VB_T03| Thoracic Vertebra T3 |  73138009 |  Structure of body of third thoracic vertebra (body structure) | | | | |
| VB_T04| Thoracic Vertebra T4 |  86197001 |  Structure of body of fourth thoracic vertebra (body structure) | | | | |
| VB_T05| Thoracic Vertebra T5 |  6105006 |  Structure of body of fifth thoracic vertebra (body structure) | | | | |
| VB_T06| Thoracic Vertebra T6 |  32430008 |  Structure of body of sixth thoracic vertebra (body structure) | | | | |
| VB_T07| Thoracic Vertebra T7 |  71737002 |  Structure of body of seventh thoracic vertebra (body structure) | | | | |
| VB_T08| Thoracic Vertebra T8 |  77435000 |  Structure of body of eighth thoracic vertebra (body structure) | | | | |
| VB_T09| Thoracic Vertebra T9 |  33766003 |  Structure of body of ninth thoracic vertebra (body structure) | | | | |
| VB_T10| Thoracic Vertebra T10 |  48405002 |  Structure of body of tenth thoracic vertebra (body structure) | | | | |
| VB_T11| Thoracic Vertebra T11 |  52120002 |  Structure of body of eleventh thoracic vertebra (body structure) | | | | |
| VB_T12| Thoracic Vertebra T12 |  280849005 |  Structure of body of twelfth  thoracic vertebra (body structure) | | | | |
| VB_T12| Thoracic Vertebra T13 |  1186895000 |  Structure of body of thirteenth  thoracic vertebra (body structure) | | | | |
| VBs| Vertebral Bodies |  3572006 |  Structure of body of vertebra (body structure) |  255204007| multiple(qualifier value)| | |
| Fossa_Jugular| Jugular Fossa |  1187337007 |  Jugular Fossa (body structure) | | | | |
| Fossa_Posterior| Posterior Fossa |  35763008 |  Structure of posterior fossa of cranial cavity (body structure) | | | | |
| VocalCord_L|  |  46105003 |  Vocal cord structure (body structure) |  7771000| left(qualifier value)| | |
| VocalCord_R|  |  46105003 |  Vocal cord structure (body structure) |  24028007| right(qualifier value)| | |
| LN_Presacral| Lymph nodes of pelvis - presacral  |  1187336003 |  Presacral lymph node group (body structure) | | | | |
| Vomer| Vomer |  87166008 |  Vomer bone structure (body structure) | | | | |
| Sinus_Sphenoid| Sphenoidal Sinus |  24999009 |  Sphenoid sinus structure (body structure)  | | | | |
| Strct | Structure |  123037004 |  Body structure (body structure) | | | | |

{% include markdown-link-references.md %}