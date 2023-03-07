###  Structure of this Concept Map

[TG263](https://www.aapm.org/pubs/reports/RPT_263.pdf) is a source for standards in radiotherapy, proposed in 2018 by the American Association of Physicists in Medicine (AAPM). It is focused on describing body structures and location. mCODE uses SNOMED CT codes and qualifiers for treatment locations. See the brief discussion in [RadiotherapyTreatmentLocationVS]. This concept map shows how each term in TG263 maps to SNOMED CT.

Some of the TG263 terms are pre-coordinated, incorporating laterality and other qualifiers directly in the term. For the mapping to SNOMED CT, a code + laterality + additional qualifier(s) approach is used to uniquely map each TG263 concept. The mapping uses the 'product' field of each mapped element to enumerate the qualifiers needed in combination with the SNOMED CT code to express the same treatment location as the TG263 concept.

The mapping was initially documented by [spreadsheet](TG263_Nomenclature_to_SNOMEDCT_Codes_and_Qualifiers.xlsx) in the STU2 version of the IG, and this ConceptMap, derived directly from the spreadsheet using a [script](https://github.com/HL7/fhir-mCODE-ig/blob/master/tools/tg263ConceptMap.rb), has now been added to better support implementers.

Efforts to define SNOMED CT are ongoing for two of the TG263 concepts (Spc_Bowel and Spc_Bowel_Small) and two of the qualifiers (Level IIA and Level IIB).

### TG263 to SNOMEDCT Codes and Qualifiers Mapping

| TG263 Code | Description |  &#8594; | SNOMEDCT code | Description | Location Qualifier | Description | Laterality Qualifier | Description |
| ---------- | ----------- | -------- | ------------- | ----------- | ------------------ | ----------- | -------------------- | ----------- |
|A_Aorta| Aorta | &#8594; | 15825003 |  Aortic structure (body structure) | | | | |
|A_Aorta_Asc| Ascending Aorta | &#8594; | 54247002 |  Ascending aorta structure (body Structure) | | | | |
|A_Brachiocephls| Brachiocephalic Artery | &#8594; | 425444002 |  Branch of brachiocephalic artery (body structure) | | | | |
|A_Carotid| Common Carotid Artery | &#8594; | 69105007 |  Carotid artery structure (body structure) | | | | |
|A_Carotid_L| Carotid Artery | &#8594; | 69105007 |  Carotid artery structure (body structure) | 7771000| left (qualifier value)| | |
|A_Carotid_R| Carotid Artery | &#8594; | 69105007 |  Carotid artery structure (body structure) | 24028007| right (qualifier value)| | |
|A_Celiac| Celiac Artery | &#8594; | 57850000 |  Structure of celiac artery (body structure) | | | | |
|A_Coronary| Coronary Artery | &#8594; | 41801008 |  Coronary artery structure (body structure) | | | | |
|A_Coronary_L| Coronary Artery Left | &#8594; | 41801008 |  Coronary artery structure (body structure) | 7771000| left (qualifier value)| | |
|A_Coronary_R| Coronary Artery Right | &#8594; | 41801008 |  Coronary artery structure (body structure) | 24028007| right (qualifier value)| | |
|A_Femoral_L| Femoral Artery Left | &#8594; | 7657000 |  Structure of femoral artery (body structure) | 7771000| left (qualifier value)| | |
|A_Femoral_R| Femoral Artery Right | &#8594; | 7657000 |  Structure of femoral artery (body structure) | 24028007| right (qualifier value)| | |
|A_Humeral_Cflx_L| Circumflex Humeral Artery Left | &#8594; | 244314003 |  Circumflex humeral artery (body structure) | 7771000| Left (qualifier value)| | |
|A_Humeral_Cflx_R| Circumflex Humeral Artery Right | &#8594; | 244314003 |  Circumflex humeral artery (body structure) | 24028007| right (qualifier value)| | |
|A_Hypophyseal_I| Hypophyseal Artery Inferior | &#8594; | 74200005 |  Structure of inferior hypophyseal artery (body structure) | | | | |
|A_Hypophyseal_S| Hypophyseal Artery Superior | &#8594; | 55601007 |  Structure of superior hypophyseal artery (body structure) | | | | |
|A_Iliac_Cflx_L| Circumflex Left Iliac Artery | &#8594; | 244327004 |  Circumflex iliac artery (body structure) | 7771000| Left (qualifier value)| | |
|A_Iliac_Cflx_R| Circumflex Right Iliac Artery | &#8594; | 244327004 |  Circumflex iliac artery (body structure) | 24028007| right (qualifier value)| | |
|A_Iliac_Ext_L| External iliac artery Left | &#8594; | 113269004 |  Structure of external iliac artery (body structure) | 7771000| Left (qualifier value)| | |
|A_Iliac_Ext_R| External iliac artery Right | &#8594; | 113269004 |  Structure of external iliac artery (body structure) | 24028007| right (qualifier value)| | |
|A_Iliac_Int_L| Internal iliac artery Left | &#8594; | 90024005 |  Structure of internal iliac artery (body structure) | 7771000| Left (qualifier value)| | |
|A_Iliac_Int_R| Internal iliac artery Right | &#8594; | 90024005 |  Structure of internal iliac artery (body structure) | 24028007| right (qualifier value)| | |
|A_Iliac_L| Common iliac artery Left | &#8594; | 73634005 |  Common iliac artery structure (body structure) | 7771000| Left (qualifier value)| | |
|A_Iliac_R| Common iliac artery Right | &#8594; | 73634005 |  Common iliac artery structure (body structure) | 24028007| right (qualifier value)| | |
|A_LAD| Anterior interventricular branch of LCA (left anterior descending artery) | &#8594; | 33795007 |  Structure of anterior descending branch of left coronary artery (body structure) | | | | |
|A_Mesenteric_I| Inferior mesenteric artery  | &#8594; | 33795007 |  Structure of inferior mesenteric artery (body structure) | | | | |
|A_Mesenteric_S| Superior mesenteric artery  | &#8594; | 42258001 |  Superior mesenteric artery structure (body structure) | | | | |
|A_Pulmonary| Pulmonary Artery | &#8594; | 81040000 |  Pulmonary artery structure (body structure) | | | | |
|A_Subclavian| Subclavian Artery | &#8594; | 36765005 |  Structure of subclavian artery (body structure) | | | | |
|A_Subclavian_L| Subclavian Artery Left | &#8594; | 36765005 |  Structure of subclavian artery (body structure) | 7771000| left (qualifier value)| | |
|A_Subclavian_R| Subclavian Artery Right | &#8594; | 36765005 |  Structure of subclavian artery (body structure) | 24028007| right (qualifier value)| | |
|A_Vertebral| Vertebral arteries | &#8594; | 85234005 |  Structure of vertebral artery (body structure) | | | | |
|A_Vertebral_L| Vertebral arteries left | &#8594; | 85234005 |  Structure of vertebral artery (body structure) | 7771000| left (qualifier value)| | |
|A_Vertebral_R| Vertebral arteries right | &#8594; | 85234005 |  Structure of vertebral artery (body structure) | 24028007| right (qualifier value)| | |
|Acetabulum_L| Acetabulum | &#8594; | 37783008 |  Bone structure of acetabulum (body structure) | 7771000| Left (qualifier value)| | |
|Acetabulum_R| Acetabulum | &#8594; | 37783008 |  Bone structure of acetabulum (body structure) | 24028007| Right (qualifier value)| | |
|Acetabulums| Acetabulum | &#8594; | 37783008 |  Bone structure of acetabulum (body structure) | | | | |
|AirWay_Dist| Distal Airway | &#8594; | 89187006 |  Airway structure (body structure) | | |46053002| distal (qualifier value)|
|AirWay_Prox| Proximal Airway | &#8594; | 89187006 |  Airway structure (body structure) | | |40415009| proximal (qualifier value)|
|Anus| Anus | &#8594; | 123956007 |  Anus part (body structure) | | | | |
|Appendix| Appendix | &#8594; | 66754008 |  Appendix structure (body structure)  | | | | |
|Arytenoid| Arytenoid cartilage | &#8594; | 77578007 |  Arytenoid cartilage structure (body structure) | | | | |
|Arytenoid_L| Arytenoid cartilage Left | &#8594; | 77578007 |  Arytenoid cartilage structure (body structure) | 7771000| left (qualifier value)| | |
|Arytenoid_R| Arytenoid cartilage Right | &#8594; | 77578007 |  Arytenoid cartilage structure (body structure) | 24028007| right (qualifier value)| | |
|Atrium| Atrium of the heart  | &#8594; | 59652004 |  Atrial structure (body structure) | | | | |
|Atrium_L| Atrium of the heart Left | &#8594; | 59652004 |  Atrial structure (body structure) | 7771000| left (qualifier value)| | |
|Atrium_R| Atrium of the heart Right | &#8594; | 59652004 |  Atrial structure (body structure) | 24028007| right (qualifier value)| | |
|BileDuct_Common| Common bile duct | &#8594; | 79741001 |  Common bile duct structure (body structure) | | | | |
|Bladder| Urinary Bladder | &#8594; | 89837001 |  Urinary bladder structure (body structure) | | | | |
|Bladder_Wall| Bladder Wall | &#8594; | 393006 |  Structure of wall of urinary bladder (body structure) | | | | |
|Bone| Bone | &#8594; | 119186007 |  Bone part (body structure) | | | | |
|Bone_Ethmoid| Ethmoid Bone | &#8594; | 52374004 |  Ethmoid bone structure (body structure) | | | | |
|Bone_Frontal| Frontal Bone | &#8594; | 74872008 |  Frontal bone structure (body structure) | | | | |
|Bone_Hyoid| Hyoid Bone | &#8594; | 21387005 |  Hyoid bone structure (body structure) | | | | |
|Bone_Ilium| Ilium | &#8594; | 22356005 |  Bone structure of ilium (body structure) | | | | |
|Bone_Ilium_L| Ilium Left | &#8594; | 22356005 |  Bone structure of ilium (body structure) | 7771000| left (qualifier value)| | |
|Bone_Ilium_R| Ilium Right | &#8594; | 22356005 |  Bone structure of ilium (body structure) | 24028007| right (qualifier value)| | |
|Bone_Incus| Incus | &#8594; | 421793000 |  Bone structure of incus (body structure) | | | | |
|Bone_Incus_L| Incus Left | &#8594; | 421793000 |  Bone structure of incus (body structure) | 7771000| left (qualifier value)| | |
|Bone_Incus_R| Incus Right | &#8594; | 421793000 |  Bone structure of incus (body structure) | 24028007| right (qualifier value)| | |
|Bone_Ischium_L| Ischium Left | &#8594; | 85710004 |  Bone structure of ischium (body structure) | 7771000| left (qualifier value)| | |
|Bone_Ischium_R| Ischium Right | &#8594; | 85710004 |  Bone structure of ischium (body structure) | 24028007| right (qualifier value)| | |
|Bone_Lacrimal| Lacrimal Bone | &#8594; | 6229007 |  Lacrimal bone structure (body structure) | | | | |
|Bone_Lacrimal_L| Lacrimal Bone Left | &#8594; | 6229007 |  Lacrimal bone structure (body structure) | 7771000| left (qualifier value)| | |
|Bone_Lacrimal_R| Lacrimal Bone Right | &#8594; | 6229007 |  Lacrimal bone structure (body structure) | 24028007| right (qualifier value)| | |
|Bone_Mandible| Mandible | &#8594; | 91609006 |  Bone structure of mandible (body structure) | | | | |
|Bone_Mastoid| Both Mastoids | &#8594; | 59066005 |  Mastoid structure (body structure) | | | | |
|Bone_Mastoid_L| Left Mastoid Bone | &#8594; | 59066005 |  Mastoid structure (body structure) | 7771000| left (qualifier value)| | |
|Bone_Mastoid_R| Right Mastoid Bone | &#8594; | 59066005 |  Mastoid structure (body structure) | 24028007| right (qualifier value)| | |
|Bone_Nasal| Nasal Bone | &#8594; | 74386004 |  Nasal bone structure (body structure) | | | | |
|Bone_Nasal_L| Nasal Bone Left | &#8594; | 74386004 |  Nasal bone structure (body structure) | 7771000| left (qualifier value)| | |
|Bone_Nasal_R| Nasal Bone Right | &#8594; | 74386004 |  Nasal bone structure (body structure) | 24028007| right (qualifier value)| | |
|Bone_Occipital| Occipital Bone | &#8594; | 31640002 |  Occipital bone structure (body structure) | | | | |
|Bone_Palatine| Palatine  bone | &#8594; | 51283005 |  Palatine bone structure (body structure) | | | | |
|Bone_Palatine_L| Palatine bone Left | &#8594; | 51283005 |  Palatine bone structure (body structure) | 7771000| left (qualifier value)| | |
|Bone_Palatine_R| Palatine bone Right | &#8594; | 51283005 |  Palatine bone structure (body structure) | 24028007| right (qualifier value)| | |
|Bone_Parietal| Parietal bone | &#8594; | 24924006 |  Parietal bone structure (body structure) | | | | |
|Bone_Parietal_L| Parietal bone Left | &#8594; | 24924006 |  Parietal bone structure (body structure) | 7771000| left (qualifier value)| | |
|Bone_Parietal_R| Parietal bone Right | &#8594; | 24924006 |  Parietal bone structure (body structure) | 24028007| right (qualifier value)| | |
|Bone_Pelvic| Pelvic Bones (Bony Pelvis) | &#8594; | 118645006 |  Structure of innominate bone and/or sacrum and/or coccyx (body structure) | | | | |
|Bone_Pelvic_L| Bony Pelvis Left | &#8594; | 118645006 |  Structure of innominate bone and/or sacrum and/or coccyx (body structure) | 7771000| left (qualifier value)| | |
|Bone_Pelvic_R| Bony Pelvis Right | &#8594; | 118645006 |  Structure of innominate bone and/or sacrum and/or coccyx (body structure) | 24028007| right (qualifier value)| | |
|Bone_Sphenoid| Sphenoid Bone | &#8594; | 73117003 |  Sphenoid bone structure (body structure) | | | | |
|Bone_Temporal| Temporal Bone | &#8594; | 60911003 |  Temporal bone structure (body structure) | | | | |
|Bone_Temporal_L| Temporal Bone Left | &#8594; | 60911003 |  Temporal bone structure (body structure) | 7771000| Left (qualifier value)| | |
|Bone_Temporal_R| Temporal Bone Right | &#8594; | 60911003 |  Temporal bone structure (body structure) | 24028007| Right (qualifier value)| | |
|Bone_Zygomatic_L| Zygomatic Bone Left | &#8594; | 13881006 |  Zygomatic bone structure (body structure) | 7771000| left (qualifier value)| | |
|Bone_Zygomatic_R| Zygomatic Bone Right | &#8594; | 13881006 |  Zygomatic bone structure (body structure) | 24028007| right (qualifier value)| | |
|Bone_Zygomatics| Zygomatic Bone | &#8594; | 13881006 |  Zygomatic bone structure (body structure) | | | | |
|BoneMarrow| Bone Marrow | &#8594; | 14016003 |  Bone marrow structure (body structure) | | | | |
|Diaphragm| Diaphragm | &#8594; | 5798000 |  Diaphragm structure (body structure) | | | | |
|Bowel| Bowel  | &#8594; | 113276009 |  Intestinal structure (body structure) | | | | |
|Bowel_Large| Large Bowel | &#8594; | 14742008 |  Structure of large intestine (body structure) | | | | |
|Bowel_Small| Small Bowel (small intestine) | &#8594; | 30315005 |  Structure of small intestine (body structure) | | | | |
|BrachialPlex_L| Brachial plexus Left | &#8594; | 36582005 |  Brachial plexus structure (body structure) | 7771000| left (qualifier value)| | |
|BrachialPlex_R| Brachial plexus Right | &#8594; | 36582005 |  Brachial plexus structure (body structure) | 24028007| right (qualifier value)| | |
|BrachialPlexs| Brachial plexus | &#8594; | 36582005 |  Brachial plexus structure (body structure) | | | | |
|Brain| Brain | &#8594; | 12738006 |  Brain structure (body structure) | | | | |
|Brainstem| Brain Stem | &#8594; | 15926001 |  Brainstem structure (body structure) | | | | |
|Brainstem_Core| Core of the brainstem | &#8594; | 15926001 |  Brainstem structure (body structure) | | |260235002| Core (qualifier value)|
|Brainstem_Surf| Surface of the brainstem | &#8594; | 15926001 |  Brainstem structure (body structure) | | |410679008| Surface (qualifier value)|
|Breast_L| Breast Left | &#8594; | 76752008 |  Breast structure (body structure) | 7771000| left (qualifier value)| | |
|Breast_R| Breast Right | &#8594; | 76752008 |  Breast structure (body structure) | 24028007| right (qualifier value)| | |
|Breasts| Both breasts | &#8594; | 76752008 |  Breast structure (body structure) | 51440002| right+left (qualifier value)| | |
|Bronchus| Bronchial tree | &#8594; | 955009 |  Bronchial structure (body structure) | | | | |
|Bronchus_L| Bronchial tree Left | &#8594; | 955009 |  Bronchial structure (body structure) | 7771000| left (qualifier value)| | |
|Bronchus_Main| Main Bronchus | &#8594; | 102297006 |  Main bronchus structure (body structure) | | | | |
|Bronchus_Main_L| Main Bronchus Left | &#8594; | 102297006 |  Main bronchus structure (body structure) | | | | |
|Bronchus_Main_R| Main Bronchus Right | &#8594; | 102297006 |  Main bronchus structure (body structure) | | | | |
|Bronchus_R| Bronchial tree Right | &#8594; | 955009 |  Bronchial structure (body structure) | 24028007| right (qualifier value)| | |
|Canal_Anal| Anal Canal | &#8594; | 34381000 |  Anal canal structure (body structure) | | | | |
|Carina| Carina | &#8594; | 28700002 |  Structure of carina of trachea (body structure) | | | | |
|Duodenum| Small bowel - Duodenum | &#8594; | 38848004 |  Duodenal structure (body structure) | | | | |
|CaudaEquina| Cauda equina | &#8594; | 7173007 |  Cauda equina structure (body structure) | | | | |
|Cavernosum| Penis Corpus Cavernosum | &#8594; | 9284003 |  Corpus cavernosum structure (body structure) | | | | |
|Cavity_Nasal| Nasal Cavity | &#8594; | 279549004 |  Nasal cavity structure (body structure) | | | | |
|Cavity_Oral| Oral cavity | &#8594; | 74262004 |  Oral cavity structure (body structure) | | | | |
|Cecum| Large bowel - Cecum | &#8594; | 32713005 |  Cecum structure (body structure) | | | | |
|Cerebellum| Cerebellum | &#8594; | 113305005 |  Cerebellar structure (body structure) | | | | |
|Cerebrum| Cerebrum | &#8594; | 83678007 |  Structure of cerebrum (body structure) | | | | |
|Cerebrum_L| L Cerebrum | &#8594; | 83678007 |  Structure of cerebrum (body structure) | 7771000| left (qualifier value)| | |
|Cerebrum_R| R Cerebrum | &#8594; | 83678007 |  Structure of cerebrum (body structure) | 24028007| right (qualifier value)| | |
|Cervix| Cervix of uterus | &#8594; | 71252005 |  Cervix uteri structure (body structure) | | | | |
|Chestwall| Chest wall | &#8594; | 78904004 |  Chest wall structure (body structure) | | | | |
|Chestwall_L| Left Chest Wall | &#8594; | 78904004 |  Chest wall structure (body structure) | 7771000| left (qualifier value)| | |
|Chestwall_R| Right Chest Wall | &#8594; | 78904004 |  Chest wall structure (body structure) | 24028007| right (qualifier value)| | |
|Cist_Pontine| Pontine Cistern | &#8594; | 369387006 |  Structure of cisterna pontis (body structure) | | | | |
|Esophagus_S| Upper Esophagus (cervical) | &#8594; | 60075002 |  Cervical esophagus structure (body structure) | | | | |
|Clavicle_L| Clavicle Left | &#8594; | 51299004 |  Bone structure of clavicle (body structure) | 7771000| left (qualifier value)| | |
|Clavicle_R| Clavicle Right | &#8594; | 51299004 |  Bone structure of clavicle (body structure) | 24028007| right (qualifier value)| | |
|CN_III| Third Cranial Nerve (Oculomotor nerve) | &#8594; | 56193007 |  Oculomotor nerve structure (body structure) | | | | |
|CN_III_L| Third Cranial Nerve (Oculomotor nerve) Left | &#8594; | 56193007 |  Oculomotor nerve structure (body structure) | 7771000| left (qualifier value)| | |
|CN_III_R| Third Cranial Nerve (Oculomotor nerve) Right | &#8594; | 56193007 |  Oculomotor nerve structure (body structure) | 24028007| right (qualifier value)| | |
|CN_IX| Ninth Cranial Nerve (Glossopharyngeal nerve)  | &#8594; | 21161002 |  Glossopharyngeal nerve structure (body structure) | | | | |
|CN_IX_L| Ninth Cranial Nerve (Glossopharyngeal nerve) Left | &#8594; | 21161002 |  Glossopharyngeal nerve structure (body structure) | 7771000| left (qualifier value)| | |
|CN_IX_R| Ninth Cranial Nerve (Glossopharyngeal nerve) Right | &#8594; | 21161002 |  Glossopharyngeal nerve structure (body structure) | 24028007| right (qualifier value)| | |
|CN_V| Fifth Cranial Nerve (Trigeminal nerve) | &#8594; | 27612005 |  Trigeminal nerve structure (body structure) | | | | |
|CN_V_L| Fifth Cranial Nerve (Trigeminal nerve) Left | &#8594; | 27612005 |  Trigeminal nerve structure (body structure) | 7771000| left (qualifier value)| | |
|CN_V_R| Fifth Cranial Nerve (Trigeminal nerve) Right | &#8594; | 27612005 |  Trigeminal nerve structure (body structure) | 24028007| right (qualifier value)| | |
|CN_VI| Sixth Cranial Nerve (Abducens nerve) | &#8594; | 80622005 |  Abducens nerve structure (body structure) | | | | |
|CN_VI_L| Sixth Cranial Nerve (Abducens nerve) Left | &#8594; | 80622005 |  Abducens nerve structure (body structure) | 7771000| left (qualifier value)| | |
|CN_VI_R| Sixth Cranial Nerve (Abducens nerve) Right | &#8594; | 80622005 |  Abducens nerve structure (body structure) | 24028007| right (qualifier value)| | |
|CN_VII| Seventh Cranial Nerve (Facial) | &#8594; | 56052001 |  Facial nerve structure (body structure) | | | | |
|CN_VII_L| Seventh Cranial Nerve (Facial) Left | &#8594; | 56052001 |  Facial nerve structure (body structure) | 7771000| left (qualifier value)| | |
|CN_VII_R| Seventh Cranial Nerve (Facial) Right | &#8594; | 56052001 |  Facial nerve structure (body structure) | 24028007| right (qualifier value)| | |
|CN_VIII| Eighth Cranial (Vestibulocochlear) Nerve | &#8594; | 8598002 |  Vestibulocochlear nerve structure (body structure) | | | | |
|CN_VIII_L| Eighth Cranial (Vestibulocochlear)  Nerve Left | &#8594; | 8598002 |  Vestibulocochlear nerve structure (body structure) | 7771000| left (qualifier value)| | |
|CN_VIII_R| Eighth Cranial (Vestibulocochlear)  Nerve Right | &#8594; | 8598002 |  Vestibulocochlear nerve structure (body structure) | 24028007| right (qualifier value)| | |
|CN_XI| Eleventh Cranial Nerve (Spinal accessory nerve) | &#8594; | 15119000 |  Accessory nerve structure (body structure) | | | | |
|CN_XI_L| Eleventh Cranial Nerve (Spinal accessory nerve) Left | &#8594; | 15119000 |  Accessory nerve structure (body structure) | 7771000| left (qualifier value)| | |
|CN_XI_R| Eleventh Cranial Nerve (Spinal accessory nerve) Right | &#8594; | 15119000 |  Accessory nerve structure (body structure) | 24028007| right (qualifier value)| | |
|CN_XII| Twelfth Cranial Nerve (Hypoglossal nerve) | &#8594; | 37899009 |  Hypoglossal nerve structure (body structure) | | | | |
|CN_XII_L| Twelfth Cranial Nerve (Hypoglossal nerve) Left | &#8594; | 37899009 |  Hypoglossal nerve structure (body structure) | 7771000| left (qualifier value)| | |
|CN_XII_R| Twelfth Cranial Nerve (Hypoglossal nerve) Right | &#8594; | 37899009 |  Hypoglossal nerve structure (body structure) | 24028007| right (qualifier value)| | |
|Cochlea| Cochlea | &#8594; | 80169004 |  Cochlear structure (body structure) | | | | |
|Cochlea_L| Left Cochlea | &#8594; | 80169004 |  Cochlear structure (body structure) | | | | |
|Cochlea_R| Right Cochlea | &#8594; | 80169004 |  Cochlear structure (body structure) | | | | |
|Colon| Colon | &#8594; | 71854001 |  Colon structure (body structure) | | | | |
|Colon_Ascending| Large bowel - Ascending colon | &#8594; | 9040008 |  Ascending colon structure (body structure) | | | | |
|Colon_Decending| Large bowel - Descending colon | &#8594; | 32622004 |  Descending colon structure (body structure) | | | | |
|Eyes| Set of eyes | &#8594; | 81745001 |  Structure of eye proper (body structure) | 51440002| right+left (qualifier value)| | |
|Colon_Sigmoid| Large bowel - Sigmoid colon | &#8594; | 60184004 |  Sigmoid colon structure (body structure) | | | | |
|Colon_Transverse| Large bowel -Transverse colon | &#8594; | 485005 |  Transverse colon structure (body structure) | | | | |
|Cornea| Cornea | &#8594; | 28726007 |  Corneal structure (body structure) | | | | |
|Cornea_L| Cornea Left | &#8594; | 28726007 |  Corneal structure (body structure) | 7771000| left (qualifier value)| | |
|Cornea_R| Cornea Right | &#8594; | 28726007 |  Corneal structure (body structure) | 24028007| right (qualifier value)| | |
|CribriformPlate| Cribriform Plate | &#8594; | 36743005 |  Structure of cribriform plate (body structure) | | | | |
|Cricoid| Cricoid cartilage | &#8594; | 8600008 |  Cricoid cartilage structure (body structure) | | | | |
|Cricopharyngeus| Cricopharyngeal part of inferior pharyngeal constrictor | &#8594; | 28276008 |  Structure of cricopharyngeal part of inferior constrictor pharyngeus muscle (body structure) | | | | |
|Gallbladder| Gall bladder | &#8594; | 28231008 |  Gallbladder structure (body structure) | | | | |
|Genitals| Genitals | &#8594; | 71934003 |  Genital structure (body structure) | | | | |
|Glnd_Lacrimal| Lacrimal Gland | &#8594; | 13561001 |  Lacrimal gland structure (body structure) | | | | |
|Ear_External_L| External Ear Left | &#8594; | 117590005 |  Ear structure (body structure) | | | | |
|Ear_External_R| External Ear Right | &#8594; |  117590005 |  Ear structure (body structure) | 7771000| left (qualifier value)| 261074009| external (qualifier value) |
|Ear_Externals| External Ear | &#8594; | 117590005 |  Ear structure (body structure) | | |261074009| external (qualifier value)|
|Ear_Internal_L| Internal Ear Left | &#8594; |  117590005 |  Ear structure (body structure) | 7771000| left (qualifier value)| 260521003| internal (qualifier value) |
|Ear_Internal_R| Internal Ear Right | &#8594; |  117590005 |  Ear structure (body structure) | 24028007| right (qualifier value)| 260521003| internal (qualifier value) |
|Ear_Internals| Internal Ear | &#8594; | 117590005 |  Ear structure (body structure) | | |260521003| internal (qualifier value)|
|Ear_Middle| Middle Ear | &#8594; | 117590005 |  Ear structure (body structure) | | |260528009| middle (qualifier value)|
|Ear_Middle_L| Middle Ear Left | &#8594; |  117590005 |  Ear structure (body structure) | 7771000| left (qualifier value)| 260528009| middle (qualifier value) |
|Ear_Middle_R| Middle Ear Right | &#8594; |  117590005 |  Ear structure (body structure) | 24028007| right (qualifier value)| 260528009| middle (qualifier value) |
|Glnd_Parathyroid| Parathyroid gland | &#8594; | 111002 |  Parathyroid structure (body structure) | | | | |
|Elbow| Elbow | &#8594; | 127949000 |  Elbow region structure (body structure) | | | | |
|Elbow_L| Elbow Left | &#8594; | 127949000 |  Elbow region structure (body structure) | 7771000| Left (qualifier value)| | |
|Elbow_R| Elbow Right | &#8594; | 127949000 |  Elbow region structure (body structure) | 24028007| right (qualifier value)| | |
|Esophagus| Esophagus | &#8594; | 32849002 |  Esophageal structure (body structure) | | | | |
|Esophagus_I| Lower Esophagus (abdominal) | &#8594; | 32849002 |  Esophageal structure (body structure) | | |261122009| lower (qualifier value)|
|Esophagus_M| Middle Esophagus (thoracic) | &#8594; | 32849002 |  Esophageal structure (body structure) | | |260528009| middle (qualifier value)|
|Esophagus_NAdj| Non Adjacent Esophagus | &#8594; | 32849002 |  Esophageal structure (body structure) | | |1217011006| non-adjacent (qualifier value)|
|Glnd_Sublings| Sublingual gland | &#8594; | 88481005 |  Sublingual gland structure (body structure) | | | | |
|Glnd_Submands| Submandibular Gland | &#8594; | 385296007 |  Submandibular salivary gland structure (body structure) | | | | |
|Eye_L| Eyeball Left | &#8594; | 81745001 |  Structure of eye proper (body structure) | 7771000| left (qualifier value)| | |
|Eye_R| Eyeball Right | &#8594; | 81745001 |  Structure of eye proper (body structure) | 24028007| right (qualifier value)| | |
|Glnd_Thymus| Thymus Gland | &#8594; | 9875009 |  Thymus gland structure (body structure) | | | | |
|Glnd_Thyroid| Thyroid Gland | &#8594; | 69748006 |  Thyroid structure (body structure) | | | | |
|Femur_Head_L| Femur Head & Neck Left | &#8594; | 2812003 |  Structure of head of femur (body structure) | 7771000| left (qualifier value)| | |
|Femur_Head_R| Femur Head & Neck Right | &#8594; | 2812003 |  Structure of head of femur (body structure) | 24028007| right (qualifier value)| | |
|Femur_Joint_L| Femoral Joint Left | &#8594; | 24136001 |  Hip joint structure (body structure) | 7771000| left (qualifier value)| | |
|Femur_Joint_R| Femoral Joint Right | &#8594; | 24136001 |  Hip joint structure (body structure) | 24028007| right (qualifier value)| | |
|Femur| Femur  Whole  | &#8594; | 71341001 |  Bone structure of femur (body structure) | | | | |
|Femur_L| Femur  Whole  Left | &#8594; | 71341001 |  Bone structure of femur (body structure) | 7771000| left (qualifier value)| | |
|Femur_Neck| Femur Neck | &#8594; | 29627003 |  Structure of neck of femur (body structure) | | | | |
|Femur_Neck_L| Femur Neck Right | &#8594; | 29627003 |  Structure of neck of femur (body structure) | 24028007| right (qualifier value)| | |
|Femur_Neck_R| Femur Neck Left | &#8594; | 29627003 |  Structure of neck of femur (body structure) | 7771000| left (qualifier value)| | |
|Femur_R| Femur Whole Right | &#8594; | 71341001 |  Bone structure of femur (body structure) | 24028007| Right (qualifier value)| | |
|Femur_Shaft_L| Femur Shaft Left | &#8594; | 41111004 |  Bone structure of shaft of femur (body structure) | 7771000| left (qualifier value)| | |
|Femur_Shaft_R| Femur Shaft Right | &#8594; | 41111004 |  Bone structure of shaft of femur (body structure) | 24028007| right (qualifier value)| | |
|Femurs| Both Femurs | &#8594; | 71341001 |  Bone structure of femur (body structure) | 51440002| right+left (qualifier value)| | |
|Fibula| Fibula | &#8594; | 87342007 |  Bone structure of fibula (body structure) | | | | |
|Fibula_L| Fibula Left | &#8594; | 87342007 |  Bone structure of fibula (body structure) | 7771000| left (qualifier value)| | |
|Fibula_R| Fibula Right | &#8594; | 87342007 |  Bone structure of fibula (body structure) | 24028007| right (qualifier value)| | |
|Glottis| Glottis | &#8594; | 1307006 |  Glottis structure (body structure) | | | | |
|GreatVes| Great Vessels of the heart (aorta, vena cava S&I, pulmonary A&V) | &#8594; | 3711007 |  Structure of great blood vessel (organ) (body structure) | | | | |
|GreatVes_NAdj| Non Adjacent Great Vessels | &#8594; | 3711007 |  Structure of great blood vessel (organ) (body structure) | | |1217011006| non-adjacent (qualifier value)|
|Hardpalate| Hard palate | &#8594; | 90228003 |  Hard palate structure (body structure) | | | | |
|Glnd_Adrenal| Adrenal glands  | &#8594; | 23451007 |  Adrenal structure (body structure) | | | | |
|Glnd_Adrenal_L| Adrenal glands left | &#8594; | 23451007 |  Adrenal structure (body structure) | 7771000| left (qualifier value)| | |
|Glnd_Adrenal_R| Adrenal glands right | &#8594; | 23451007 |  Adrenal structure (body structure) | 24028007| right (qualifier value)| | |
|Heart| Heart | &#8594; | 80891009 |  Heart structure (body structure) | | | | |
|Glnd_Lacrimal_L| Lacrimal Gland Left | &#8594; | 13561001 |  Lacrimal gland structure (body structure) | 7771000| left (qualifier value)| | |
|Glnd_Lacrimal_R| Lacrimal Gland Right | &#8594; | 13561001 |  Lacrimal gland structure (body structure) | 24028007| right (qualifier value)| | |
|Hemispheres| Hemisphere | &#8594; | 372073000 |  Cerebral hemisphere structure (body structure) | 51440002| right+left (qualifier value)| | |
|Glnd_Subling_L| Sublingual gland | &#8594; | 88481005 |  Sublingual gland structure (body structure) | 7771000| left (qualifier value)| | |
|Glnd_Subling_R| Sublingual gland | &#8594; | 88481005 |  Sublingual gland structure (body structure) | 24028007| right (qualifier value)| | |
|Hippocampi| Hippocampus | &#8594; | 5366008 |  Hippocampal structure (body structure) | | | | |
|Glnd_Submand_L| Submandibular Gland Left | &#8594; | 385296007 |  Submandibular salivary gland structure (body structure) | 7771000| left (qualifier value)| | |
|Glnd_Submand_R| Submandibular Gland Right | &#8594; | 385296007 |  Submandibular salivary gland structure (body structure) | 24028007| right (qualifier value)| | |
|Hypothalmus| Hypothalamus | &#8594; | 67923007 |  Hypothalamic structure (body structure) | | | | |
|Ileum| Small bowel - Ileum | &#8594; | 34516001 |  Ileal structure (body structure) | | | | |
|Jejunum| Small bowel - Jejunum | &#8594; | 21306003 |  Jejunal structure (body structure) | | | | |
|Jejunum_Ileum| Both ileum and jejunum | &#8594; | 90228003 |  Jejunum and ileum (combined site) (body structure) | | | | |
|Joint_Elbow| Elbow joint | &#8594; | 16953009 |  Elbow joint structure (body structure) | | | | |
|Joint_Glenohum| Glenohumeral Joint | &#8594; | 85537004 |  Glenohumeral joint structure (body structure) | | | | |
|GrowthPlate_L| Left Growth Plate | &#8594; | 711190000 |  Structure of epiphyseal plate (body structure) | 7771000| left (qualifier value)| | |
|GrowthPlate_R| Right Growth Plate | &#8594; | 711190000 |  Structure of epiphyseal plate (body structure) | 24028007| right (qualifier value)| | |
|Joint_Surface| Joint Surface | &#8594; | 39352004 |  Joint structure (body structure) | | |410679008| Surface (qualifier value)|
|Joint_TM| Temperomandibular Joint  | &#8594; | 53620006 |  Temporomandibular joint structure (body structure) | | | | |
|Hemisphere_L| Left Hemisphere | &#8594; | 6566002 |  Cerebellar hemisphere structure (body structure) | 7771000| left (qualifier value)| | |
|Hemisphere_R| Right Hemisphere | &#8594; | 6566002 |  Cerebellar hemisphere structure (body structure) | 24028007| right (qualifier value)| | |
|Kidney_Cortex| Renal cortex for both Kidneys | &#8594; | 50403003 |  Structure of cortex of kidney (body structure) | 51440002| right+left (qualifier value)| | |
|Kidney_Hilums| Renal Hilum for both Kidneys | &#8594; | 74033008 |  Structure of hilum of kidney (body structure) | 51440002| right+left (qualifier value)| | |
|Hippocampus_L| Hippocampus Left | &#8594; | 5366008 |  Hippocampal structure (body structure) | 7771000| left (qualifier value)| | |
|Hippocampus_R| Hippocampus Right | &#8594; | 5366008 |  Hippocampal structure (body structure) | 24028007| right (qualifier value)| | |
|Humerus_L| Humerus Left | &#8594; | 85050009 |  Bone structure of humerus (body structure) | 7771000| left (qualifier value)| | |
|Humerus_R| Humerus Right | &#8594; | 85050009 |  Bone structure of humerus (body structure) | 24028007| right (qualifier value)| | |
|Kidneys| Both Kidneys | &#8594; | 64033007 |  Kidney structure (body structure) | 51440002| right+left (qualifier value)| | |
|Knee| Knee | &#8594; | 72696002 |  Knee region structure (body structure) | | | | |
|Laryngl_Pharynx| Laryngeal pharynx | &#8594; | 81502006 |  Hypopharyngeal structure (body structure) | | | | |
|Larynx| Larynx | &#8594; | 4596009 |  Laryngeal structure (body structure) | | | | |
|Larynx_SG| Supraglottic Larynx | &#8594; | 86483002 |  Structure of supraglottic space (body structure) | | | | |
|Joint_Elbow_L| Left Elbow joint | &#8594; | 16953009 |  Elbow joint structure (body structure) | 7771000| left (qualifier value)| | |
|Joint_Elbow_R| Right Elbow joint | &#8594; | 16953009 |  Elbow joint structure (body structure) | 24028007| right (qualifier value)| | |
|Lens| Eye Lens | &#8594; | 78076003 |  Structure of lens of eye (body structure) | | | | |
|Joint_Glenohum_L| Glenohumeral Joint Left | &#8594; | 85537004 |  Glenohumeral joint structure (body structure) | 7771000| left (qualifier value)| | |
|Joint_Glenohum_R| Glenohumeral Joint Right | &#8594; | 85537004 |  Glenohumeral joint structure (body structure) | 24028007| right (qualifier value)| | |
|Lig_Hepatogastrc| Hepatogastric ligament | &#8594; | 6544009 |  Structure of gastrohepatic ligament (body structure) | | | | |
|Lips| Lips | &#8594; | 81083006 |  Both lips (body structure) | | | | |
|Joint_TM_L| Temperomandibular Joint Left | &#8594; | 53620006 |  Temporomandibular joint structure (body structure) | 7771000| left (qualifier value)| | |
|Joint_TM_R| Temperomandibular Joint Right | &#8594; | 53620006 |  Temporomandibular joint structure (body structure) | 24028007| right (qualifier value)| | |
|Liver| Liver | &#8594; | 10200004 |  Liver structure (body structure) | | | | |
|Kidney_Cortex_L| Renal cortex left | &#8594; | 50403003 |  Structure of cortex of kidney (body structure) | 7771000| left (qualifier value)| | |
|Kidney_Cortex_R| Renal cortex right | &#8594; | 50403003 |  Structure of cortex of kidney (body structure) | 24028007| right (qualifier value)| | |
|Kidney_Hilum_L| Renal Hilum Left | &#8594; | 74033008 |  Structure of hilum of kidney (body structure) | 7771000| left (qualifier value)| | |
|Kidney_Hilum_R| Renal Hilum Right | &#8594; | 74033008 |  Structure of hilum of kidney (body structure) | 24028007| right (qualifier value)| | |
|Lobe_Frontal| Frontal Lobe | &#8594; | 83251001 |  Frontal lobe structure (body structure) | | | | |
|Kidney_L| Kidney Left | &#8594; | 64033007 |  Kidney structure (body structure) | 7771000| left (qualifier value)| | |
|Kidney_Pelvis_L| Renal pelvis Left | &#8594; | 25990002 |  Renal pelvis structure (body structure) | 7771000| left (qualifier value)| | |
|Kidney_Pelvis_R| Renal pelvis Right | &#8594; | 25990002 |  Renal pelvis structure (body structure) | 24028007| right (qualifier value)| | |
|Kidney_R| Kidney Right | &#8594; | 64033007 |  Kidney structure (body structure) | 24028007| right (qualifier value)| | |
|Lobe_Occipital| Occipital Lobe | &#8594; | 31065004 |  Occipital lobe structure (body structure) | | | | |
|Lobe_Parietal| Parietal Lobe | &#8594; | 16630005 |  Parietal lobe structure (body structure) | | | | |
|Knee_L| Knee Left | &#8594; | 72696002 |  Knee region structure (body structure) | 7771000| left (qualifier value)| | |
|Knee_R| Knee Right | &#8594; | 72696002 |  Knee region structure (body structure) | 24028007| right (qualifier value)| | |
|Lobe_Temporal| Temporal Lobe | &#8594; | 78277001 |  Temporal lobe structure (body structure) | | | | |
|Mediastinum| Mediastinum | &#8594; | 72410000 |  Mediastinal structure (body structure) | | | | |
|Musc| Muscle | &#8594; | 71616004 |  Skeletal and/or smooth muscle structure (body structure) | | | | |
|Musc_Constrict| Constrictor Muscle of Pharynx | &#8594; | 4866005 |  Constrictor muscle of pharynx structure (body structure) | | | | |
|Lens_L| Lens Left | &#8594; | 78076003 |  Structure of lens of eye (body structure) | 7771000| left (qualifier value)| | |
|Lens_R| Lens Right | &#8594; | 78076003 |  Structure of lens of eye (body structure) | 24028007| right (qualifier value)| | |
|Musc_Masseter| Masseter Muscle | &#8594; | 79368004 |  Masseter muscle structure (body structure) | | | | |
|Musc_Temporal_R| Temporal muscle - Right | &#8594; | 52927003 |  Structure of temporalis muscle (body structure) | 24028007| right (qualifier value)| | |
|Nasopharynx| Nasal part of pharynx | &#8594; | 71836000 |  Nasopharyngeal structure (body structure) | | | | |
|LN| Lymph Node | &#8594; | 59441001 |  Structure of lymph node (body structure) | | | | |
|LN_Ax_Apical| Set of apical axillary lymphatic vessels | &#8594; | 16051009 |   Structure of apical axillary lymph node (body structure) | | | | |
|LN_Ax_Apical_L| Axillary lymphatic chain - Apical Left | &#8594; | 16051009 |   Structure of apical axillary lymph node (body structure) | 7771000| Left (qualifier value)| | |
|LN_Ax_Apical_R| Axillary lymphatic chain - Apical Right | &#8594; | 16051009 |   Structure of apical axillary lymph node (body structure) | 24028007| Right (qualifier value)| | |
|LN_Ax_Central_L| Axillary lymphatic chain - Central Left | &#8594; |  16051009 |   Structure of apical axillary lymph node (body structure) | 7771000| left (qualifier value)| 26216008| central (qualifier value) |
|LN_Ax_Central_R| Axillary lymphatic chain - Central Right | &#8594; |  16051009 |   Structure of apical axillary lymph node (body structure) | 24028007| right (qualifier value)| 26216008| central (qualifier value) |
|LN_Ax_Centrals| Set of central axillary lymphatic vessels | &#8594; | 283001 |  Structure of central axillary lymph node (body structure) | | | | |
|LN_Ax_L| Axillary lymphatic chain Left | &#8594; | 68171009 |  Axillary lymph node structure (body structure) | 7771000| Left (qualifier value)| | |
|LN_Ax_L1_L| Level 1 Axillary Lymph Node Left | &#8594; |  68171009 |  Axillary lymph node structure (body structure) | 7771000| left (qualifier value)| 277733009| level 1 (qualifier value) |
|LN_Ax_L1_R| Level 1 Axillary Lymph Node Right | &#8594; |  68171009 |  Axillary lymph node structure (body structure) | 24028007| right (qualifier value)| 277733009| level 1 (qualifier value) |
|LN_Ax_L2_L| Level 2 Axillary Lymph Node Left | &#8594; |  68171009 |  Axillary lymph node structure (body structure) | 7771000| left (qualifier value)| 277734003| level 2 (qualifier value) |
|LN_Ax_L2_R| Level 2 Axillary Lymph Node Right | &#8594; |  68171009 |  Axillary lymph node structure (body structure) | 24028007| right (qualifier value)| 277734003| level 2 (qualifier value) |
|LN_Ax_L3_L| Level 3 Axillary Lymph Node Left | &#8594; |  68171009 |  Axillary lymph node structure (body structure) | 7771000| left (qualifier value)| 277735002| level 3 (qualifier value) |
|LN_Ax_L3_R| Level 3 Axillary Lymph Node Right | &#8594; |  68171009 |  Axillary lymph node structure (body structure) | 24028007| right (qualifier value)| 277735002| level 3 (qualifier value) |
|LN_Ax_Lateral_L| Axillary lymphatic chain - Lateral Left | &#8594; | 33770006 |  Structure of lateral axillary lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Ax_Lateral_R| Axillary lymphatic chain - Lateral Right | &#8594; | 33770006 |  Structure of lateral axillary lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Ax_Laterals|  lateral axillary lymph nodes | &#8594; | 33770006 |  Structure of lateral axillary lymph node (body structure) | | | | |
|LN_Ax_Pectoral_L| Axillary lymphatic chain - Pectoral Left | &#8594; | 69691007 |  Structure of pectoral axillary lymph node (body structure) | 7771000| Left (qualifier value)| | |
|LN_Ax_Pectoral_R| Axillary lymphatic chain - Pectoral Right | &#8594; | 69691007 |  Structure of pectoral axillary lymph node (body structure) | 24028007| Right (qualifier value)| | |
|LN_Ax_Pectorals| Set of pectoral axillary lymphatic vessels | &#8594; | 69691007 |  Structure of pectoral axillary lymph node (body structure) | | | | |
|LN_Ax_R| Axillary lymphatic chain Right | &#8594; | 68171009 |  Axillary lymph node structure (body structure) | 24028007| Right (qualifier value)| | |
|LN_Ax_Subscap_L| Axillary lymphatic chain - Subscapular Left | &#8594; | 12196003 |  Structure of subscapular axillary lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Ax_Subscap_R| Axillary lymphatic chain - Subscapular Right | &#8594; | 12196003 |  Structure of subscapular axillary lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Ax_Subscaps| Set of subscapular axillary lymphatic vessels | &#8594; | 12196003 |  Structure of subscapular axillary lymph node (body structure) | | | | |
|LN_Brachioceph_L| Lymph nodes of thorax - Brachiocephalic Left | &#8594; | 196821008 |  Structure of innominate lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Brachioceph_R| Lymph nodes of thorax - Brachiocephalic Right | &#8594; | 196821008 |  Structure of innominate lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Brachiocephs| Lymph nodes of thorax - Brachiocephalic | &#8594; | 196821008 |  Structure of innominate lymph node (body structure) | | | | |
|LN_Bronchpulm_L| Lymph nodes of thorax - Bronchopulmonary Left | &#8594; | 279816002 |  Bronchopulmonary lymph node group (body structure) | 7771000| left (qualifier value)| | |
|LN_Bronchpulm_R| Lymph nodes of thorax - Bronchopulmonary Right | &#8594; | 279816002 |  Bronchopulmonary lymph node group (body structure) | 24028007| right (qualifier value)| | |
|LN_Bronchpulms| Lymph nodes of thorax - Bronchopulmonary | &#8594; | 279816002 |  Bronchopulmonary lymph node group (body structure) | | | | |
|LN_Diaphragmatic| Lymph nodes of thorax - Diaphragmatic | &#8594; | 196751009 |  Structure of diaphragmatic lymph node (body structure) | | | | |
|LN_Iliac_Ext| Lymph nodes of pelvis - External iliac | &#8594; | 65349008 |  Structure of external iliac lymph node (body structure) | | | | |
|LN_Iliac_Int| Lymph nodes of pelvis -  Internal iliac | &#8594; | 245357003 |  Structure of internal iliac lymph node (body structure) | | | | |
|LN_Iliac| Lymph nodes of pelvis -  common iliac | &#8594; | 84219008 |  Structure of iliac lymph node (body structure) | | | | |
|LN_Iliac_Ext_L| Lymph nodes of pelvis - external iliac Left | &#8594; | 65349008 |  Structure of external iliac lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Iliac_Ext_R| Lymph nodes of pelvis - external iliac Right | &#8594; | 65349008 |  Structure of external iliac lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Iliac_Int_L| Lymph nodes of pelvis - internal iliac Left | &#8594; | 245299000 |  Internal iliac lymph node group (body structure) | 7771000| left (qualifier value)| | |
|LN_Iliac_L| Lymph nodes of pelvis - common iliac Left | &#8594; | 245295006 |  Common iliac lymph node group (body structure) | 7771000| left (qualifier value)| | |
|LN_Iliac_R| Lymph nodes of pelvis - common iliac Right | &#8594; | 245295006 |  Common iliac lymph node group (body structure) | 24028007| right (qualifier value)| | |
|LN_IMN_L| Left Internal Mammary Lynph Node | &#8594; | 245282001 |  Internal mammary lymph node group (body structure) | 7771000| left (qualifier value)| | |
|LN_IMN_R| Right Internal Mammary Lynph Node | &#8594; | 245282001 |  Internal mammary lymph node group (body structure) | 24028007| right (qualifier value)| | |
|LN_IMNs| Lymph nodes IMN | &#8594; | 245282001 |  Internal mammary lymph node group (body structure) | | | | |
|LN_Inguinofem| Lymph nodes of pelvis - inguinofemoral | &#8594; | 279763008 |  Inguinofemoral lymph node group (body structure) | | | | |
|LN_Inguinofem_L| Lymph nodes of pelvis - inguinofemoral left | &#8594; | 279763008 |  Inguinofemoral lymph node group (body structure) | 7771000| left (qualifier value)| | |
|LN_Inguinofem_R| Lymph nodes of pelvis - inguinofemoral right | &#8594; | 279763008 |  Inguinofemoral lymph node group (body structure) | 24028007| right (qualifier value)| | |
|LN_Intercostals| Lymph nodes of thorax - Intercostal | &#8594; | 64038003 |  Intercostal lymph node (body structure) | | | | |
|LN_L| Lymph Node Left | &#8594; | 59441001 |  Structure of lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Ligamentarter| Lymph nodes of thorax - Ligamentum arteriosum | &#8594; | 127938006 |  Lymph node of aortopulmonary window (body structure) | | | | |
|LN_lliac_Int_R| Lymph nodes of pelvis - internal iliac Right | &#8594; | 245299000 |  Internal iliac lymph node group (body structure) | 24028007| right (qualifier value)| | |
|LN_Mediastinals| Lymph nodes of thorax - Mediastinal | &#8594; | 62683002 |  Mediastinal lymph node structure (body structure) | | | | |
|LN_Neck| Neck Lymph Node | &#8594; | 81105003 |  Cervical lymph node structure (body structure) | | | | |
|LN_Neck_IA_L| Level IA (Submental) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162616006| Level IA (qualifier value) |
|LN_Neck_IA_R| Level IA (Submental) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162616006| Level IA (qualifier value) |
|LN_Neck_IB_L| Level IB (Submandibular) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162617002| Level IB (qualifier value) |
|LN_Neck_IB_R| Level IB (Submandibular) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162617002| Level IB (qualifier value) |
|LN_Neck_II_L| Level IIA & IIB (Upper Jugular) neck nodes Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 258401000| Level II (qualifier value) |
|LN_Neck_II_R| Level IIA & IIB (Upper Jugular) neck nodes Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 258401000| Level II (qualifier value) |
|LN_Neck_IIA_L| Level IIA (Upper Jugular) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| USCRS-34777| Level IIA (qualifier value) |
|LN_Neck_IIA_R| Level IIA (Upper Jugular) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| USCRS-34777| Level IIA (qualifier value) |
|LN_Neck_IIB_L| Level IIB (Upper Jugular) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| USCRS-34775| Level IIB (qualifier value) |
|LN_Neck_IIB_R| Level IIB (Upper Jugular) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| USCRS-34775| Level IIB (qualifier value) |
|LN_Neck_III_L| Level III (Middle Jugular) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 258402007| Level III (qualifier value) |
|LN_Neck_III_R| Level III (Middle Jugular) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 258402007| Level III (qualifier value) |
|LN_Neck_IV_L| Level IV neck (Lower Jugular) node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 258403002| Level IV (qualifier value) |
|LN_Neck_IV_R| Level IV (Lower Jugular) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 258403002| Level IV (qualifier value) |
|LN_Neck_V_L| Level VA, VB and VC (Posterior Triangle) neck nodes Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 258404008| Level V (qualifier value) |
|LN_Neck_V_R| Level VA, VB and VC (Posterior Triangle) neck nodes Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 258404008| Level V (qualifier value) |
|LN_Neck_VA_L| Level VA (Posterior Triangle) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162622002| Level VA (qualifier value) |
|LN_Neck_VA_R| Level VA (Posterior Triangle) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162622002| Level VA (qualifier value) |
|LN_Neck_VB_L| Level VB (Posterior Triangle) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162623007| Level VB (qualifier value) |
|LN_Neck_VB_R| Level VB (Posterior Triangle) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162623007| Level VB (qualifier value) |
|LN_Neck_VC_L| Level VC (Posterior Triangle) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162624001| Level VC (qualifier value) |
|LN_Neck_VC_R| Level VC (Posterior Triangle) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162624001| Level VC (qualifier value) |
|LN_Neck_VI_L| Level VI (Anterior Triangle) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 258405009| Level VI (qualifier value) |
|LN_Neck_VI_R| Level VI (Anterior Triangle) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 258405009| Level VI (qualifier value) |
|LN_Neck_VII_L| Level VII (Upper Mediastinal) neck node Left | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 395168005| Level VII (qualifier value) |
|LN_Neck_VII_R| Level VII (Upper Mediastinal) neck node Right | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162628003| Level VIIA (qualifier value) |
|LN_Neck_VIIA_L| LN_Neck_VIIA_L | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162628003| Level VIIA (qualifier value) |
|LN_Neck_VIIA_R| LN_Neck_VIIA_R | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 395168005| Level VII (qualifier value) |
|LN_Neck_VIII_R| LN_Neck_VIII_R | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162618007| Level VIII (qualifier value) |
|LN_Neck_VIII_L| LN_Neck_VIII_L | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162618007| Level VIII (qualifier value) |
|LN_Neck_IX_R| LN_Neck_IX_R | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162619004| Level IX (qualifier value) |
|LN_Neck_IX_L| LN_Neck_IX_L | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162619004| Level IX (qualifier value) |
|LN_Neck_X_R| LN_Neck_X_R | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162614009| Level X (qualifier value) |
|LN_Neck_X_L| LN_Neck_X_L | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162614009| Level X (qualifier value) |
|LN_Neck_XA_R| LN_Neck_XA_R | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162615005| Level XA (qualifier value) |
|LN_Neck_XA_L| LN_Neck_XA_L | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162615005| Level XA (qualifier value) |
|LN_Neck_XB_R| LN_Neck_XB_R | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 24028007| Right (qualifier value)| 1162613003| Level XB (qualifier value) |
|LN_Neck_XB_L| LN_Neck_XB_L | &#8594; |  81105003 |  Cervical lymph node structure (body structure) | 7771000| Left (qualifier value)| 1162613003| Level XB (qualifier value) |
|LN_Obturator_L| Lymph nodes of pelvis - obturator Left | &#8594; | 36086000 |  Structure of obturator lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Obturator_R| Lymph nodes of pelvis - obturator Right | &#8594; | 36086000 |  Structure of obturator lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Paraaortic| Lymph nodes of abdomen- para-aortic | &#8594; | 35783009 |  Structure of aortic lymph node (body structure) | | | | |
|LN_Paramammary_L| Lymph nodes of thorax - Paramammary Left | &#8594; | 368550005 |  Structure of paramammary lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Paramammary_R| Lymph nodes of thorax - Paramammary Right | &#8594; | 368550005 |  Structure of paramammary lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Paramammarys| Lymph nodes of thorax - Paramammary | &#8594; | 368550005 |  Structure of paramammary lymph node (body structure) | | | | |
|LN_Parasternal_L| Lymph nodes of thorax - Parasternal Left | &#8594; | 82365008 |  Structure of parasternal lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Parasternal_R| Lymph nodes of thorax - Parasternal Right | &#8594; | 82365008 |  Structure of parasternal lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Parasternals| Lymph nodes of thorax - Parasternal | &#8594; | 82365008 |  Structure of parasternal lymph node (body structure) | | | | |
|LN_Pelvic_L| Pelvic Lymph Nodes Left | &#8594; | 245294005 |  Pelvic lymph node group (body structure) | 7771000| left (qualifier value)| | |
|LN_Pelvic_R| Pelvic Lymph Nodes Right | &#8594; | 245294005 |  Pelvic lymph node group (body structure) | 24028007| right (qualifier value)| | |
|LN_Pelvics| Pelvic Lymph Nodes | &#8594; | 245294005 |  Pelvic lymph node group (body structure) | | | | |
|LN_Portahepatis| Porta hepatis | &#8594; | 245288002 |  Portahepatis lymph node group (body structure) | | | | |
|Nose| Nose | &#8594; | 45206002 |  Nasal structure (body structure) | | | | |
|LN_Presacral_L| Lymph nodes of pelvis - presacral Left | &#8594; | 1187336003 |  Presacral lymph node group (body structure) | 7771000| left (qualifier value)| | |
|LN_Presacral_R| Lymph nodes of pelvis - presacral Right | &#8594; | 1187336003 |  Presacral lymph node group (body structure) | 24028007| right (qualifier value)| | |
|LN_Pulmonary_L| Lymph nodes of thorax - Pulmonary Left | &#8594; | 196662004 |  Structure of intrapulmonary lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Pulmonary_R| Lymph nodes of thorax - Pulmonary Right | &#8594; | 196662004 |  Structure of intrapulmonary lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Pulmonarys| Lymph nodes of thorax - Pulmonary | &#8594; | 196662004 |  Structure of intrapulmonary lymph node (body structure) | | | | |
|LN_R| Lymph Node Right | &#8594; | 59441001 |  Structure of lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Sclav_L| Supraclavicular Lymph Node Left | &#8594; | 76838003 |  Structure of supraclavicular lymph node (body structure) | 7771000| left (qualifier value)| | |
|LN_Sclav_R| Supraclavicular Lymph Node Right | &#8594; | 76838003 |  Structure of supraclavicular lymph node (body structure) | 24028007| right (qualifier value)| | |
|LN_Trachbrnchs| Lymph nodes of thorax - Tracheobronchial | &#8594; | 245283006 |  Tracheobronchial lymph node group (body structure) | | | | |
|LN_Trachbrnchs_L| Lymph nodes of thorax - Tracheobronchial Left | &#8594; | 245283006 |  Tracheobronchial lymph node group (body structure) | 7771000| left (qualifier value)| | |
|LN_Trachbrnchs_R| Lymph nodes of thorax - Tracheobronchial Right | &#8594; | 245283006 |  Tracheobronchial lymph node group (body structure) | 24028007| right (qualifier value)| | |
|Nrv_Peripheral| Peripheral Nerve | &#8594; | 84782009 |  Peripheral nerve structure (body structure) | | | | |
|Lobe_Frontal_L| Frontal Lobe Left | &#8594; | 83251001 |  Frontal lobe structure (body structure) | 7771000| left (qualifier value)| | |
|Lobe_Frontal_R| Frontal Lobe Right | &#8594; | 83251001 |  Frontal lobe structure (body structure) | 24028007| right (qualifier value)| | |
|Nrv_Root| Nerve Root | &#8594; | 40958000 |  Nerve root structure (body structure) | | | | |
|Lobe_Occipital_L| Occipital Lobe Left | &#8594; | 31065004 |  Occipital lobe structure (body structure) | 7771000| left (qualifier value)| | |
|Lobe_Occipital_R| Occipital Lobe Right | &#8594; | 31065004 |  Occipital lobe structure (body structure) | 24028007| right (qualifier value)| | |
|OpticChiasm| Optic chiasm | &#8594; | 244453006 |  Structure of optic chiasma (body structure) | | | | |
|Lobe_Parietal_L| Parietal Lobe Left | &#8594; | 16630005 |  Parietal lobe structure (body structure) | 7771000| left (qualifier value)| | |
|Lobe_Parietal_R| Parietal Lobe Right | &#8594; | 16630005 |  Parietal lobe structure (body structure) | 24028007| right (qualifier value)| | |
|OpticNrv| Optic nerve | &#8594; | 18234004 |  Optic nerve structure (body structure) | | | | |
|Lobe_Temporal_L| Temporal Lobe Left | &#8594; | 78277001 |  Temporal lobe structure (body structure) | 7771000| left (qualifier value)| | |
|Lobe_Temporal_R| Temporal Lobe Right | &#8594; | 78277001 |  Temporal lobe structure (body structure) | 24028007| right (qualifier value)| | |
|Lung_L| Lung Left | &#8594; | 39607008 |  Lung structure (body structure) | 7771000| left (qualifier value)| | |
|Lung_LLL| Lung - lower lobe of left | &#8594; |  31094006 |  Structure of lobe of lung (body structure) | 7771000| left (qualifier value)| 261122009| lower (qualifier value) |
|Lung_LUL| Lung - upper lobe of left | &#8594; |  31094006 |  Structure of lobe of lung (body structure) | 7771000| left (qualifier value)| 261183002| upper (qualifier value) |
|Lung_R| Lung Right | &#8594; | 31094006 |  Structure of lobe of lung (body structure) | 24028007| right (qualifier value)| | |
|Lung_RLL| Lung - lower lobe of right | &#8594; |  31094006 |  Structure of lobe of lung (body structure) | 24028007| right (qualifier value)| 261122009| lower (qualifier value) |
|Lung_RML| Lung - middle lobe of right | &#8594; |  31094006 |  Structure of lobe of lung (body structure) | 24028007| right (qualifier value)| 260528009| middle (qualifier value) |
|Lung_RUL| Lung - upper lobe of right | &#8594; |  31094006 |  Structure of lobe of lung (body structure) | 24028007| right (qualifier value)| 261183002| upper (qualifier value) |
|Lungs| Pair of Lungs | &#8594; | 39607008 |  Lung structure (body structure) | 51440002| right+left (qualifier value)| | |
|Malleus| Malleus | &#8594; | 34080009 |  Malleus structure (body structure) | | | | |
|Malleus_L| Malleus Left | &#8594; | 34080009 |  Malleus structure (body structure) | | | | |
|Malleus_R| Malleus Right | &#8594; | 34080009 |  Malleus structure (body structure) | | | | |
|Maxilla| Maxilla | &#8594; | 70925003 |  Bone structure of maxilla (body structure) | | | | |
|Maxilla_L| Maxilla Left | &#8594; | 70925003 |  Bone structure of maxilla (body structure) | | | | |
|Maxilla_R| Maxilla Right | &#8594; | 70925003 |  Bone structure of maxilla (body structure) | 24028007| right (qualifier value)| | |
|Orbit_L| Orbit Left | &#8594; | 363654007 |  Structure of orbit proper (body structure) | 7771000| left (qualifier value)| | |
|Orbit_R| Orbit Right | &#8594; | 363654007 |  Structure of orbit proper (body structure) | 24028007| right (qualifier value)| | |
|Oropharynx| Oral part of pharynx | &#8594; | 31389004 |  Oropharyngeal structure (body structure) | | | | |
|Musc_Constrict_I| Pharynx - Inferior pharyngeal constrictor | &#8594; | 4866005 |  Constrictor muscle of pharynx structure (body structure) | | |261089000| inferior (qualifier value)|
|Musc_Constrict_M|  Pharynx - Middle pharyngeal constrictor | &#8594; | 4866005 |  Constrictor muscle of pharynx structure (body structure) | | |260528009| middle (qualifier value)|
|Musc_Constrict_S| Pharynx - Superior pharyngeal constrictor | &#8594; | 4866005 |  Constrictor muscle of pharynx structure (body structure) | | |264217000| superior (qualifier value)|
|Musc_Digastric_L| Digastric muscle Left | &#8594; | 52410001 |  Digastric muscle structure (body structure) | 7771000| left (qualifier value)| | |
|Musc_Digastric_R| Digastric muscle Right | &#8594; | 52410001 |  Digastric muscle structure (body structure) | 24028007| right (qualifier value)| | |
|Ovaries| Ovary | &#8594; | 15497006 |  Ovarian structure (body structure) | 51440002| right+left (qualifier value)| | |
|Musc_Masseter_L| Masseter Muscle Left | &#8594; | 79368004 |  Masseter muscle structure (body structure) | | | | |
|Musc_Masseter_R| Masseter Muscle Right | &#8594; | 79368004 |  Masseter muscle structure (body structure) | | | | |
|Musc_Platysma_L| Platysma Left | &#8594; | 18252004 |  Structure of platysma muscle (body structure) | 7771000| left (qualifier value)| | |
|Musc_Platysma_R| Platysma Right | &#8594; | 18252004 |  Structure of platysma muscle (body structure) | 24028007| right (qualifier value)| | |
|Musc_Pterygoid_L| Pterygoid muscles - Left | &#8594; | 76738006 |  Structure of pterygoid muscle (body structure) | 7771000| left (qualifier value)| | |
|Musc_Pterygoid_R| Pterygoid muscles - Right | &#8594; | 76738006 |  Structure of pterygoid muscle (body structure) | 24028007| right (qualifier value)| | |
|Musc_Sclmast_L| Sternocleidomastoid Left | &#8594; | 22823000 |  Structure of sternocleidomastoid muscle (body structure) | 7771000| left (qualifier value)| | |
|Musc_Sclmast_R| Sternocleidomastoid Right | &#8594; | 22823000 |  Structure of sternocleidomastoid muscle (body structure) | 24028007| right (qualifier value)| | |
|Musc_Temporal_L| Temporal muscle - Left | &#8594; | 52927003 |  Structure of temporalis muscle (body structure) | 7771000| left (qualifier value)| | |
|Palate_Soft| Soft palate | &#8594; | 49460000 |  Soft palate structure (body structure) | | | | |
|Nasalconcha_LI| Inferior Nasal Concha Left | &#8594; |  46607005 |  Nasal turbinate structure (body structure) | 7771000| left (qualifier value)| 261089000| inferior (qualifier value) |
|Nasalconcha_RI| Inferior Nasal Concha Right | &#8594; |  46607005 |  Nasal turbinate structure (body structure) | 24028007| right (qualifier value)| 261089000| inferior (qualifier value) |
|Pancreas| Pancreas | &#8594; | 15776009 |  Pancreatic structure (body structure) | | | | |
|Pancreas_Head| Head of Pancreas | &#8594; | 64163001 |  Structure of head of pancreas (body structure) | | | | |
|Pancreas_Tail| Tail of Pancreas | &#8594; | 73239005 |  Structure of tail of pancreas (body structure) | | | | |
|Parametrium| Parametrium | &#8594; | 45682005 |  Structure of parametrium (body structure) | | | | |
|Parotids| Pair of Parotid Glands | &#8594; | 45289007 |  Parotid gland structure (body structure) | 51440002| right+left (qualifier value)| | |
|PenileBulb| Penile Bulb | &#8594; | 52737000 |  Structure of bulb of penis (body structure) | | | | |
|OpticNrv_L| Optic nerve - left | &#8594; | 18234004 |  Optic nerve structure (body structure) | 7771000| left (qualifier value)| | |
|OpticNrv_R| Optic nerve - right | &#8594; | 18234004 |  Optic nerve structure (body structure) | 7771000| left (qualifier value)| | |
|Penis| Penis | &#8594; | 18911002 |  Penile structure (body structure) | 24028007| right (qualifier value)| | |
|Pericardium| Pericardium | &#8594; | 76848001 |  Pericardial structure (body structure) | | | | |
|Perineum| Perineum | &#8594; | 38864007 |  Perineal structure (body structure) | | | | |
|Peritoneum| Peritoneal sac | &#8594; | 118762006 |  Peritoneal sac structure (body structure) | | | | |
|Ovary_L| Ovary Left | &#8594; | 15497006 |  Ovarian structure (body structure) | 7771000| left (qualifier value)| | |
|Ovary_R| Ovary Right | &#8594; | 15497006 |  Ovarian structure (body structure) | 24028007| right (qualifier value)| | |
|Pacemaker| Pacemaker | &#8594; | 14106009 |  Cardiac pacemaker, device (physical object) | | | | |
|Pharynx| Pharynx | &#8594; | 54066008 |  Pharyngeal structure (body structure) | | | | |
|PancJejuno| The pancreatic jejuno junction - generated by surgical procedure | &#8594; | 110822002 |  Pancreas and jejunum (combined site) (body structure) | | | | |
|Pineal| Pineal gland | &#8594; | 45793000 |  Pineal structure (body structure) | | | | |
|Pituitary| Pituitary gland | &#8594; | 56329008 |  Pituitary structure (body structure) | | | | |
|Pons| Pons | &#8594; | 49557009 |  Pontine structure (body structure) | | | | |
|Prostate| Prostate | &#8594; | 41216001 |  Prostatic structure (body structure) | | | | |
|Parotid_L| Parotid Left | &#8594; | 45289007 |  Parotid gland structure (body structure) | 7771000| left (qualifier value)| | |
|Parotid_R| Parotid Right | &#8594; | 45289007 |  Parotid gland structure (body structure) | 24028007| right (qualifier value)| | |
|ProstateBed| Prostate Bed | &#8594; | 1162492000 |  Tumor bed (morphologic abnormality) | | | | |
|Pterygoid_Lat_L| Pterygoid muscles lateral - Left | &#8594; | 88938001 |  Structure of lateral pterygoid muscle (body structure) | 7771000| left (qualifier value)| | |
|Pterygoid_Lat_R| Pterygoid muscles lateral - Right | &#8594; | 88938001 |  Structure of lateral pterygoid muscle (body structure) | 24028007| right (qualifier value)| | |
|Pterygoid_Med_L| Pterygoid muscles medial - Left | &#8594; | 85002005 |  Structure of medial pterygoid muscle (body structure) | 7771000| left (qualifier value)| | |
|Pterygoid_Med_R| Pterygoid muscles medial - Right | &#8594; | 85002005 |  Structure of medial pterygoid muscle (body structure) | 24028007| right (qualifier value)| | |
|Rectal_Wall| Rectal Wall | &#8594; | 511000202101 |  Rectum wall structure (body structure) | | | | |
|Rectum| Large bowel - Rectum | &#8594; | 34402009 |  Rectum structure (body structure) | | | | |
|SacralPlex| Sacral Plexus | &#8594; | 62397004 |  Sacral plexus structure (body structure) | | | | |
|Scalp| Scalp | &#8594; | 41695006 |  Scalp structure (body structure) | | | | |
|Proc_Condyloid_L| Condyloid process of mandible - Right | &#8594; | 67183008 |  Structure of condyloid process of mandible (body structure) | 24028007| right (qualifier value)| | |
|Proc_Condyloid_R| Condyloid process of mandible - Left | &#8594; | 67183008 |  Structure of condyloid process of mandible (body structure) | 7771000| left (qualifier value)| | |
|Proc_Coronoid_L| Coronoid process of mandible - Left | &#8594; | 124002 |  Structure of coronoid process of mandible (body structure) | 7771000| left (qualifier value)| | |
|Proc_Coronoid_R| Coronoid process of mandible - Right | &#8594; | 124002 |  Structure of coronoid process of mandible (body structure) | 24028007| right (qualifier value)| | |
|Scar| Scar | &#8594; | 12402003 |  Scar (morphologic abnormality) | | | | |
|Scar_Boost| Scar Boost | &#8594; | 12402003 |  Scar (morphologic abnormality) | | | | |
|Scrotum| Scrotum (skin & cremasteric fascia) | &#8594; | 20233005 |  Scrotal structure (body structure) | | | | |
|SeminalVes| Seminal vesicle | &#8594; | 64739004 |  Seminal vesicle structure (body structure) | | | | |
|SeminalVes_Dist| Distal Seminal Vesicle | &#8594; | 64739004 |  Seminal vesicle structure (body structure) | | |46053002| distal (qualifier value)|
|SeminalVes_Prox| Proximal Seminal Vesicle | &#8594; | 64739004 |  Seminal vesicle structure (body structure) | | |40415009| proximal (qualifier value)|
|Sinus_Ethmoid| Ethmoidal Sinus | &#8594; | 54215007 |  Ethmoid sinus structure (body structure) | | | | |
|PubicSymphys| Pubic Symphysis | &#8594; | 82561000 |  Symphysis pubis structure (body structure) | | | | |
|PubicSymphys_L| Pubic bone Left | &#8594; | 82561000 |  Symphysis pubis structure (body structure) | 7771000| left (qualifier value)| | |
|PubicSymphys_R| Pubic bone Right | &#8594; | 82561000 |  Symphysis pubis structure (body structure) | 24028007| right (qualifier value)| | |
|Radius_L| Radius Left | &#8594; | 62413002 |  Bone structure of radius (body structure) | 7771000| left (qualifier value)| | |
|Radius_R| Radius Right | &#8594; | 62413002 |  Bone structure of radius (body structure) | 24028007| right (qualifier value)| | |
|Sinus_Frontal| Frontal Sinus | &#8594; | 55060009 |  Frontal sinus structure (body structure) | | | | |
|Sinus_Maxilry| Maxillary Sinus | &#8594; | 15924003 |  Maxillary sinus structure (body structure) | | | | |
|Retina_L| Retina Left | &#8594; | 5665001 |  Retinal structure (body structure) | 7771000| left (qualifier value)| | |
|Retina_R| Retina Right | &#8594; | 5665001 |  Retinal structure (body structure) | 24028007| right (qualifier value)| | |
|Retinas| Both Retinas | &#8594; | 5665001 |  Retinal structure (body structure) | 51440002| right+left (qualifier value)| | |
|Rib| Any Rib volume | &#8594; | 113197003 |  Bone structure of rib (body structure) | | | | |
|Rib01_L| First Rib Left | &#8594; | 48535007 |  Bone structure of first rib (body structure) | 7771000| left (qualifier value)| | |
|Rib01_R| First Rib Right | &#8594; | 48535007 |  Bone structure of first rib (body structure) | 24028007| right (qualifier value)| | |
|Rib02_L| Second rib Left | &#8594; | 78247007 |  Bone structure of second rib (body structure) | 7771000| left (qualifier value)| | |
|Rib02_R| Second rib Right | &#8594; | 78247007 |  Bone structure of second rib (body structure) | 24028007| right (qualifier value)| | |
|Rib03_L| Third rib Left | &#8594; | 25888004 |  Bone structure of third rib (body structure) | 7771000| left (qualifier value)| | |
|Rib03_R| Third rib Right | &#8594; | 25888004 |  Bone structure of third rib (body structure) | 24028007| right (qualifier value)| | |
|Rib04_L| Fourth rib Left | &#8594; | 25523003 |  Bone structure of fourth rib (body structure) | 7771000| left (qualifier value)| | |
|Rib04_R| Fourth rib Right | &#8594; | 25523003 |  Bone structure of fourth rib (body structure) | 24028007| right (qualifier value)| | |
|Rib05_L| Fifth rib Left | &#8594; | 15339008 |  Bone structure of fifth rib (body structure) | 7771000| left (qualifier value)| | |
|Rib05_R| Fifth rib Right | &#8594; | 15339008 |  Bone structure of fifth rib (body structure) | 24028007| right (qualifier value)| | |
|Rib06_L| Sixth rib Left | &#8594; | 59558009 |  Bone structure of sixth rib (body structure) | 7771000| left (qualifier value)| | |
|Rib06_R| Sixth rib Right | &#8594; | 59558009 |  Bone structure of sixth rib (body structure) | 24028007| right (qualifier value)| | |
|Rib07_L| Seventh rib Left | &#8594; | 24915002 |  Bone structure of seventh rib (body structure) | 7771000| left (qualifier value)| | |
|Rib07_R| Seventh rib Right | &#8594; | 24915002 |  Bone structure of seventh rib (body structure) | 24028007| right (qualifier value)| | |
|Rib08_L| Eighth rib Left | &#8594; | 5953002 |  Bone structure of eighth rib (body structure) | 7771000| left (qualifier value)| | |
|Rib08_R| Eighth rib Right | &#8594; | 5953002 |  Bone structure of eighth rib (body structure) | 24028007| right (qualifier value)| | |
|Rib09_L| Ninth rib Left | &#8594; | 22565002 |  Bone structure of ninth rib (body structure) | 7771000| left (qualifier value)| | |
|Rib09_R| Ninth rib Right | &#8594; | 22565002 |  Bone structure of ninth rib (body structure) | 24028007| right (qualifier value)| | |
|Rib10_L| Tenth rib Left | &#8594; | 77644006 |  Bone structure of tenth rib (body structure) | 7771000| left (qualifier value)| | |
|Rib10_R| Tenth rib Right | &#8594; | 77644006 |  Bone structure of tenth rib (body structure) | 24028007| right (qualifier value)| | |
|Rib11_L| Eleventh rib Left | &#8594; | 58830002 |  Bone structure of eleventh rib (body structure) | 7771000| left (qualifier value)| | |
|Rib11_R| Eleventh rib Right | &#8594; | 58830002 |  Bone structure of eleventh rib (body structure) | 24028007| right (qualifier value)| | |
|Rib12_L| Twelfth rib Left | &#8594; | 43993008 |  Bone structure of twelfth rib (body structure) | 7771000| left (qualifier value)| | |
|Rib12_R| Twelfth rib Right | &#8594; | 43993008 |  Bone structure of twelfth rib (body structure) | 24028007| right (qualifier value)| | |
|Skin| Skin | &#8594; | 39937001 |  Skin structure (body structure) | | | | |
|Rib13_L| Thirteenth   rib Left | &#8594; | 1193560003 |  Bone structure of thirteenth rib (body structure) | 7771000| left (qualifier value)| | |
|Rib13_R| Thirteenth  rib Right | &#8594; | 1193560003 |  Bone structure of thirteenth rib (body structure) | 24028007| right (qualifier value)| | |
|Skin_Perineum| Skin of Perineum | &#8594; | 48014002 |  Skin structure of perineum (body structure) | | | | |
|Scapula_L| Scapula Left | &#8594; | 79601000 |  Bone structure of scapula (body structure) | 7771000| left (qualifier value)| | |
|Scapula_R| Scapula Right | &#8594; | 79601000 |  Bone structure of scapula (body structure) | 24028007| right (qualifier value)| | |
|Skin_Peritoneum| Skin of Peritoneum | &#8594; | 75093004 |  Skin structure of anterior abdominal wall (body structure) | | | | |
|Spc_Bowel | Space occupied by bowel | &#8594; | USCRS-34356 |  Bowel space (body structure) | | | | |
|Spc_Bowel_Small| Space occupied by small bowel | &#8594; | USCRS-34358 |  Small bowel space (body structure) | | | | |
|Spc_Retrophars| Retropharyngeal space | &#8594; | 789564000 |  Structure of retropharyngeal space (body structure) | | | | |
|Spc_Retrosty| Retrostyloid space  | &#8594; | 1193554003 |  Retrostyloid space (body structure) | | | | |
|Spc_Supraclav_L| Supraclavicular space - Left | &#8594; | 76838003 |  Structure of supraclavicular lymph node (body structure) | 7771000| left (qualifier value)| | |
|Spc_Supraclav_R| Supraclavicular space - Right | &#8594; | 76838003 |  Structure of supraclavicular lymph node (body structure) | 24028007| right (qualifier value)| | |
|Sinus_Frontal_L| Frontal Sinus Left | &#8594; | 55060009 |  Frontal sinus structure (body structure) | 7771000| left (qualifier value)| | |
|Sinus_Frontal_R| Frontal Sinus Right | &#8594; | 55060009 |  Frontal sinus structure (body structure) | 24028007| right (qualifier value)| | |
|Sphincter_Anal| Internal Anal Sphincter  | &#8594; | 41178004 |  Structure of sphincter ani muscle (body structure) | | | | |
|Sinus_Maxilry_L| Maxillary Sinus | &#8594; | 15924003 |  Maxillary sinus structure (body structure) | 7771000| left (qualifier value)| | |
|Sinus_Maxilry_R| Maxillary Sinus | &#8594; | 15924003 |  Maxillary sinus structure (body structure) | 24028007| right (qualifier value)| | |
|SpinalCanal| Vertebral canal | &#8594; | 61853006 |  Spinal canal structure (body structure) | | | | |
|Sinus_Sphenoid_L| Sphenoidal Sinus Left | &#8594; | 24999009 |  Sphenoid sinus structure (body structure) | 7771000| left (qualifier value)| | |
|Sinus_Sphenoid_R| Sphenoidal Sinus Right | &#8594; | 24999009 |  Sphenoid sinus structure (body structure) | 24028007| right (qualifier value)| | |
|SpinalCord| Spinal Cord | &#8594; | 2748008 |  Spinal cord structure (body structure) | | | | |
|SpinalCord_Cerv| Spinal Cord Cervical | &#8594; | 54785003 |  Cervical spinal cord structure (body structure) | | | | |
|SpinalCord_Lum| Spinal Cord Lumbar | &#8594; | 60051002 |  Lumbar spinal cord structure (body structure) | | | | |
|Skull| Skeletal system of head | &#8594; | 89546000 |  Bone structure of cranium (body structure) | | | | |
|SpinalCord_Sac| Spinal Cord Sacral | &#8594; | 11478001 |  Sacral spinal cord structure (body structure) | | | | |
|SpinalCord_Thor| Spinal Cord Thoracic | &#8594; | 50800009 |  Thoracic spinal cord structure (body structure) | | | | |
|Spongiosum| Penis Corpus Spongiosum | &#8594; | 25270003 |  Corpus spongiosum structure (body structure) | | | | |
|Spc_Retrophar_L| Retropharyngeal space Left | &#8594; | 789564000 |  Structure of retropharyngeal space (body structure) | 7771000| left (qualifier value)| | |
|Spc_Retrophar_R| Retropharyngeal space Right | &#8594; | 789564000 |  Structure of retropharyngeal space (body structure) | 24028007| right (qualifier value)| | |
|Stapes| Stapes | &#8594; | 22718006 |  Stapes structure (body structure) | | | | |
|Stomach| Stomach | &#8594; | 69695003 |  Stomach structure (body structure) | | | | |
|Spc_Retrosty_L| Retrostyloid space -Left | &#8594; | 1193554003 |  Retrostyloid space (body structure) | 7771000| left (qualifier value)| | |
|Spc_Retrosty_R| Retrostyloid space -Left | &#8594; | 1193554003 |  Retrostyloid space (body structure) | 24028007| right (qualifier value)| | |
|Strct_Suprapatel| Suprapatellar Structures | &#8594; | 75415000 |  Structure of suprapatellar bursa (body structure) | | | | |
|Surf_Eye_L| Surface of Left Eye | &#8594; | 67548002 |  Structure of conjunctiva of left eye (body structure) | | | | |
|Surf_Eye_R| Surface of Right Eye | &#8594; | 13014005 |  Structure of conjunctiva of right eye (body structure) | | | | |
|Sys_Ventricular| Ventricular System of the Brain | &#8594; | 8997002 |  Space of ventricular system of brain (body structure) | | | | |
|Tendon | Tendon | &#8594; | 13024002 |  Tendon structure (body structure) | | | | |
|Tendon_Quad| Quadriceps Tendon | &#8594; | 70567001 |  Structure of quadriceps tendon (body structure) | | | | |
|Testis| Testis | &#8594; | 40689003 |  Testis structure (body structure) | 51440002| right+left (qualifier value)| | |
|ThecalSac| Thecal Sac | &#8594; | 37554007 |  Spinal dura mater structure (body structure) | | | | |
|Thoracic_Duct| Thoracic Duct | &#8594; | 1732005 |  Thoracic duct structure (body structure) | | | | |
|Spleen| Spleen | &#8594; | 78961009 |  Splenic structure (body structure) | | | | |
|Spleen_Hilum| Splenic hilum | &#8594; | 35378004 |  Structure of hilum of spleen (body structure) | | | | |
|Tongue| Tongue | &#8594; | 21974007 |  Tongue structure (body structure) | | | | |
|Tongue_All| Entire Tongue | &#8594; | 181226008 |  Entire tongue (body structure) | | | | |
|Stapes_L| Stapes Left | &#8594; | 22718006 |  Stapes structure (body structure) | | | | |
|Stapes_R| Stapes Right | &#8594; | 22718006 |  Stapes structure (body structure) | | | | |
|Tongue_Base| Base of Tongue | &#8594; | 47975008 |  Structure of root of tongue (body structure) | | | | |
|Tongue_Oral| Oral Tongue | &#8594; | 61344008 |  Structure of body of tongue (body structure) | | | | |
|Tongue_Oral_L| Left Oral Tonque | &#8594; | 61344008 |  Structure of body of tongue (body structure) | 7771000| left (qualifier value)| | |
|Trachea| Trachea | &#8594; | 44567001 |  Tracheal structure (body structure) | | | | |
|Trachea_NAdj| Trachea non adjacent wall | &#8594; | 44567001 |  Tracheal structure (body structure) | | |1217011006| non-adjacent (qualifier value)|
|Ureters| Both Ureters | &#8594; | 87953007 |  Ureteric structure (body structure) | 51440002| right+left (qualifier value)| | |
|Urethra| Urethra | &#8594; | 13648007 |  Urethral structure (body structure) | | | | |
|Urethra_Prostatc| Prostatic Urethra | &#8594; | 71553001 |  Prostatic urethra structure (body structure) | | | | |
|Testis_L| Testis Left | &#8594; | 40689003 |  Testis structure (body structure) | 7771000| left (qualifier value)| | |
|Testis_R| Testis Right | &#8594; | 40689003 |  Testis structure (body structure) | 24028007| right (qualifier value)| | |
|Uterus| Uterus | &#8594; | 35039007 |  Uterine structure (body structure) | | | | |
|V_Azygos| Azygos Vein | &#8594; | 72107004 |  Structure of azygous vein (body structure) | | | | |
|V_Brachioceph_L| Brachiocephalic vein Left | &#8594; | 8887007 |  Structure of brachiocephalic vein (body structure) | 7771000| left (qualifier value)| | |
|V_Brachioceph_R| Brachiocephalic vein Right | &#8594; | 8887007 |  Structure of brachiocephalic vein (body structure) | 24028007| right (qualifier value)| | |
|V_Iliac_Ext_L| External iliac vein Left | &#8594; | 63507001 |  Structure of external iliac vein (body structure) | 7771000| left (qualifier value)| | |
|Tongue_Base_L| Base of Tongue | &#8594; | 47975008 |  Structure of root of tongue (body structure) | 7771000| left (qualifier value)| | |
|Tongue_Base_R| Base of Tongue | &#8594; | 47975008 |  Structure of root of tongue (body structure) | 24028007| right (qualifier value)| | |
|V_Iliac_Ext_R| External iliac vein Right | &#8594; | 63507001 |  Structure of external iliac vein (body structure) | 24028007| right (qualifier value)| | |
|V_Iliac_Int_L| Internal iliac vein Left | &#8594; | 40300007 |  Structure of internal iliac vein (body structure) | 7771000| left (qualifier value)| | |
|Tongue_Oral_R| Right Oral Tongue | &#8594; | 61344008 |  Structure of body of tongue (body structure) | 24028007| right (qualifier value)| | |
|Tonsil| Tonsil | &#8594; | 75573002 |  Tonsillar structure (palatine) (body structure) | | | | |
|V_Iliac_Int_R| Internal iliac vein Right | &#8594; | 40300007 |  Structure of internal iliac vein (body structure) | 24028007| right (qualifier value)| | |
|V_Iliac_L| Common iliac vein Right | &#8594; | 46027005 |  Structure of common iliac vein (body structure) | 24028007| right (qualifier value)| | |
|TumorBed| Tumor Bed | &#8594; | 1162492000 |  Tumor bed (morphologic abnormality) | | | | |
|Ureter_L| Ureter Left | &#8594; | 87953007 |  Ureteric structure (body structure) | 7771000| left (qualifier value)| | |
|Ureter_R| Ureter Right | &#8594; | 87953007 |  Ureteric structure (body structure) | 24028007| right (qualifier value)| | |
|V_Iliac_R| Common iliac vein Left | &#8594; | 46027005 |  Structure of common iliac vein (body structure) | 7771000| left (qualifier value)| | |
|V_Jugular_Ext_L| external  jugular vein left | &#8594; | 71585003 |  Structure of external jugular vein (body structure) | 7771000| left (qualifier value)| | |
|V_Jugular_Ext_R| external jugular vein right | &#8594; | 71585003 |  Structure of external jugular vein (body structure) | 24028007| right (qualifier value)| | |
|V_Jugular_Int_L| Internal jugular vein left | &#8594; | 12123001 |  Internal jugular vein structure (body structure) | 7771000| left (qualifier value)| | |
|V_Jugular_Int_R| Internal jugular vein right | &#8594; | 12123001 |  Internal jugular vein structure (body structure) | 24028007| right (qualifier value)| | |
|V_Portal| Portal Vein | &#8594; | 32764006 |  Portal vein structure (body structure) | | | | |
|V_Pulmonary| Pulmonary vein | &#8594; | 430757002 |  Structure of pulmonary vein great vessel (body structure) | | | | |
|V_Subclavians| Subclavian Vein | &#8594; | 9454009 |  Structure of subclavian vein (body structure) | | | | |
|V_Venacava_I| Inferior vena cava | &#8594; | 35532006 |  Vena caval structure (body structure) | | |261089000| inferior (qualifier value)|
|V_Venacava_S| Superior vena cava | &#8594; | 35532006 |  Vena caval structure (body structure) | | |264217000| superior (qualifier value)|
|Vagina| Vagina | &#8594; | 76784001 |  Vaginal structure (body structure) | | | | |
|Vagina_Surf| Surface of Vagina | &#8594; | 279894000 |  Inferior surface of vaginal cervix (body structure) | | | | |
|VaginalCuff| Vaginal Cuff | &#8594; | 438074005 |  Vaginal cuff (morphologic abnormality) | | | | |
|Valve| Valve | &#8594; | 17401000 |  Cardiac valve structure (body structure) | | | | |
|V_Jugular| Any Jugular Vein | &#8594; | 63190004 |  Structure of jugular vein (body structure) | | | | |
|Valve_Mitral| Mitral Valve | &#8594; | 91134007 |  Mitral valve structure (body structure) | | | | |
|Valve_Pulmonic| Pulmonic Valve | &#8594; | 39057004 |  Pulmonary valve structure (body structure) | | | | |
|Valve_Tricuspid| Tricuspid Valve | &#8594; | 46030003 |  Tricuspid valve structure (body structure) | | | | |
|Ventricle| Ventricle (cardiac) | &#8594; | 21814001 |  Cardiac ventricular structure (body structure) | | | | |
|Ventricle_L| Ventricle (cardiac) Left | &#8594; | 21814001 |  Cardiac ventricular structure (body structure) | 7771000| left (qualifier value)| | |
|Ventricle_R| Ventricle (cardiac) Right | &#8594; | 21814001 |  Cardiac ventricular structure (body structure) | 24028007| right (qualifier value)| | |
|V_Subclavian_L| Subclavian Vein Left | &#8594; | 9454009 |  Structure of subclavian vein (body structure) | 7771000| left (qualifier value)| | |
|V_Subclavian_R| Subclavian Vein Right | &#8594; | 9454009 |  Structure of subclavian vein (body structure) | 24028007| right (qualifier value)| | |
|VocalCords| Vocal Cords | &#8594; | 46105003 |  Vocal cord structure (body structure) | 51440002| right+left (qualifier value)| | |
|Vulva| Vulva | &#8594; | 45292006 |  Vulval structure (body structure) | | | | |
|Wall_Vagina| Wall of vagina | &#8594; | 263355003 |  Vaginal wall (body structure) | | | | |
|Body| Only the body | &#8594; | 38266002 |  Entire body as a whole (body structure) | | | | |
|BoneMarrow_Act| Active Bone Marrow | &#8594; | 75330005 |  Structure of red bone marrow (body structure) | | | | |
|Cartlg_Thyroid| Thyroid cartilage | &#8594; | 52940008 |  Thyroid cartilage structure (body structure) | | | | |
|Cist_Suprasellar| Suprasellar Cistern | &#8594; | 15328005 |  Structure of suprasellar region (body structure) | | | | |
|Valve_Aortic| Aortic Valve | &#8594; | 34202007 |  Aortic valve structure (body structure) | | | | |
|Dens| Cervical vertebrae - Bony part of dens of axis | &#8594; | 1172006 |  Structure of odontoid process of axis (body structure) | | | | |
|External| Contour encompassing body plus other external items  | &#8594; | 123037004 |  Body structure (body structure) | | |261074009| external (qualifier value)|
|VB| Vertebral Body | &#8594; | 3572006 |  Structure of body of vertebra (body structure) | | | | |
|VB_C| Cervical vertebrae | &#8594; | 3572006 |  Bone structure of cervical vertebra (body structure) | | | | |
|VB_C1| Atlas - C1 | &#8594; | 14806007 |  Bone structure of atlas (body structure) | | | | |
|VB_C2| Axis - C2 | &#8594; | 39976000 |  Bone structure of axis (body structure) | | | | |
|VB_C3| Cervical vertebra - C3 | &#8594; | 91116008 |  Structure of body of third cervical vertebra (body structure) | | | | |
|VB_C4| Cervical vertebra - C4 | &#8594; | 14705001 |  Structure of body of fourth cervical vertebra (body structure) | | | | |
|VB_C5| Cervical vertebra - C5 | &#8594; | 67479001 |  Structure of body of fifth cervical vertebra (body structure) | | | | |
|VB_C6| Cervical vertebra - C6 | &#8594; | 88298007 |  Structure of body of sixth cervical vertebra (body structure) | | | | |
|VB_C7| Cervical vertebra - C7 | &#8594; | 16126006 |  Structure of body of seventh cervical vertebra (body structure) | | | | |
|VB_L| Lumbar Vertebrae | &#8594; | 73903008 |  Bone structure of lumbar vertebra (body structure) | | | | |
|VB_L1| Lumbar Vertebra L1 | &#8594; | 61032001 |  Structure of body of first lumbar vertebra (body structure) | | | | |
|VB_L2| Lumbar Vertebra L2 | &#8594; | 53983007 |  Structure of body of second lumbar vertebra (body structure) | | | | |
|VB_L3| Lumbar Vertebra L3 | &#8594; | 55492004 |  Structure of body of third lumbar vertebra (body structure) | | | | |
|VB_L4| Lumbar Vertebra L4 | &#8594; | 71996003 |  Structure of body of fourth lumbar vertebra (body structure) | | | | |
|VB_L5| Lumbar Vertebra L5 | &#8594; | 21799000 |  Structure of body of fifth lumbar vertebra (body structure) | | | | |
|VB_S| Sacral Vertebra | &#8594; | 87141009 |  Sacral vertebra structure (body structure) | | | | |
|VB_S1| Sacral Vertebra S1 | &#8594; | 65985001 |  Structure of first sacral vertebra (body structure) | | | | |
|VB_S2| Sacral Vertebra S2 | &#8594; | 11808007 |  Structure of second sacral vertebra (body structure) | | | | |
|VB_S3| Sacral Vertebra S3 | &#8594; | 49967005 |  Structure of third sacral vertebra (body structure) | | | | |
|VB_S4| Sacral Vertebra S4 | &#8594; | 69950008 |  Structure of fourth sacral vertebra (body structure) | | | | |
|VB_S5| Sacral Vertebra S5 | &#8594; | 21452006 |  Structure of fifth sacral vertebra (body structure) | | | | |
|VB_T| Thoracic Vertebra | &#8594; | 35769007 |  Bone structure of thoracic vertebra (body structure) | | | | |
|VB_T01| Thoracic Vertebra T1 | &#8594; | 56094003 |  Structure of body of first thoracic vertebra (body structure) | | | | |
|VB_T02| Thoracic Vertebra T2 | &#8594; | 50060007 |  Structure of body of secon thoracic vertebra (body structure) | | | | |
|VB_T03| Thoracic Vertebra T3 | &#8594; | 73138009 |  Structure of body of third thoracic vertebra (body structure) | | | | |
|VB_T04| Thoracic Vertebra T4 | &#8594; | 86197001 |  Structure of body of fourth thoracic vertebra (body structure) | | | | |
|VB_T05| Thoracic Vertebra T5 | &#8594; | 6105006 |  Structure of body of fifth thoracic vertebra (body structure) | | | | |
|VB_T06| Thoracic Vertebra T6 | &#8594; | 32430008 |  Structure of body of sixth thoracic vertebra (body structure) | | | | |
|VB_T07| Thoracic Vertebra T7 | &#8594; | 71737002 |  Structure of body of seventh thoracic vertebra (body structure) | | | | |
|VB_T08| Thoracic Vertebra T8 | &#8594; | 77435000 |  Structure of body of eighth thoracic vertebra (body structure) | | | | |
|VB_T09| Thoracic Vertebra T9 | &#8594; | 33766003 |  Structure of body of ninth thoracic vertebra (body structure) | | | | |
|VB_T10| Thoracic Vertebra T10 | &#8594; | 48405002 |  Structure of body of tenth thoracic vertebra (body structure) | | | | |
|VB_T11| Thoracic Vertebra T11 | &#8594; | 52120002 |  Structure of body of eleventh thoracic vertebra (body structure) | | | | |
|VB_T12| Thoracic Vertebra T12 | &#8594; | 280849005 |  Structure of body of twelfth  thoracic vertebra (body structure) | | | | |
|VB_T12| Thoracic Vertebra T13 | &#8594; | 1186895000 |  Structure of body of thirteenth  thoracic vertebra (body structure) | | | | |
|VBs| Vertebral Bodies | &#8594; | 3572006 |  Structure of body of vertebra (body structure) | | |255204007| multiple (qualifier value)|
|Fossa_Jugular| Jugular Fossa | &#8594; | 1187337007 |  Jugular Fossa (body structure) | | | | |
|Fossa_Posterior| Posterior Fossa | &#8594; | 35763008 |  Structure of posterior fossa of cranial cavity (body structure) | | | | |
|VocalCord_L| Left Vocal Cord | &#8594; | 46105003 |  Vocal cord structure (body structure) | 7771000| left (qualifier value)| | |
|VocalCord_R| Right Vocal Cord | &#8594; | 46105003 |  Vocal cord structure (body structure) | 24028007| right (qualifier value)| | |
|LN_Presacral| Lymph nodes of pelvis - presacral  | &#8594; | 1187336003 |  Presacral lymph node group (body structure) | | | | |
|Vomer| Vomer | &#8594; | 87166008 |  Vomer bone structure (body structure) | | | | |
|Sinus_Sphenoid| Sphenoidal Sinus | &#8594; | 24999009 |  Sphenoid sinus structure (body structure) | | | | |
|Strct | Structure | &#8594; | 123037004 |  Body structure (body structure) | | | | |
{:.grid}


{% include markdown-link-references.md %}