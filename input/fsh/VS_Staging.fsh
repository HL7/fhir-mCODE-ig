//******************** General Staging Value Sets (TNM and non-TNM) **************************/

// Observation.code
ValueSet: CancerStageTypeVS
Id: mcode-cancer-stage-type-vs
Title: "Cancer Stage Type Value Set"
Description: "Codes that identify the kind of stage reported in an Observation, necessary to correctly interpret the value associated with a staging Observation. In terms of the SNOMED CT hierarchy, these codes represent observable entities. If the staging system used to determine the stage is not implicit in this code, the staging system must be separately recorded in Observation.method. More specific staging profiles, if available, should be consulted before determining the correct code."
* insert SNOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
// LOINC Codes
* LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* LNC#21913-9 "Distant metastases.other [Class] Cancer"
* LNC#21901-4 "Distant metastases.pathology [Class] Cancer"
* LNC#21891-7 "Extent of disease Prostate cancer"
* LNC#21895-8 "Extent of disease.NAACCR.old 13 digit"
* LNC#21896-6 "Extent of disease.NAACCR.old 2 digit"
* LNC#21897-4 "Extent of disease.NAACCR.old 4 digit"
* LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* LNC#21911-3 "Primary tumor.other [Class] Cancer"
* LNC#21899-0 "Primary tumor.pathology Cancer"
* LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* LNC#21912-1 "Regional lymph nodes.other [Class] Cancer"
* LNC#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* LNC#21887-5 "SEER summary stage 1977 Cancer"
* LNC#21908-9 "Stage group.clinical Cancer"
* LNC#21914-7 "Stage group.other Cancer"
* LNC#21902-2 "Stage group.pathology Cancer"
* LNC#21888-3 "Summary stage abbreviated at Dx Cancer"
* LNC#39806-5 "Summary stage at Dx 2000 revised Cancer"
* LNC#42101-6 "Derived SEER summary stage 1977 Cancer"
* LNC#42102-4 "Derived SEER summary stage 2000 Cancer"
* LNC#LA4292-4 "SEER Extent of Disease"

// SNOMED CT Codes
//* include codes from system SCT where concept is-a #399566009 "Tumor-node-metastasis (TNM) category (observable entity)"
* SCT#399566009 "TNM category"
* SCT#78873005 "T category"
* SCT#277206009 "N category"
* SCT#277208005 "M category"
* SCT#399703000 "Integrated TNM category"
* SCT#399437009 "Integrated M category"
* SCT#399458003 "Integrated N category"
* SCT#399556001 "Integrated T category"
* SCT#106248000 "TNM classification of malignant tumor before any treatment"
* SCT#399387003 "cM category"
* SCT#399534004 "cN category"
* SCT#399504009 "cT category"
* SCT#106249008 "TNM classification of malignant tumor after operation"
* SCT#371497001 "pM category"
* SCT#371494008 "pN category"
* SCT#384625004 "pT category"
//* include codes from system SCT where concept is-a #399390009 "Tumor-node-metastasis (TNM) stage grouping (observable entity)"
* SCT#399390009 "TNM stage grouping"
* SCT#399537006 "Clinical TNM stage grouping"
* SCT#399588009 "Pathologic TNM stage grouping"
//* include codes from system SCT where concept is-a #385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* SCT#385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* SCT#385363007 "FIGO ovarian tumor stage"
* SCT#385365000 "FIGO stage for epithelial tumor of ovary"
* SCT#385367008 "FIGO stage for cervical carcinoma"
* SCT#385375002 "FIGO stage for endometrial carcinoma"
* SCT#385369006 "FIGO stage for vulvar carcinoma"
* SCT#385373009 "FIGO uterine tumor stage"
//* include codes from system SCT where concept is-a #371508000 "Tumor stage (observable entity)"
* SCT#371508000 "Tumor stage (observable entity)"
* SCT#409720004 "International neuroblastoma staging system stage (observable entity)"
* SCT#385388004 "Lymphoma stage (observable entity)"
//* include codes from system SCT where concept is-a #405978005 "Pathologic stage (observable entity)"
* SCT#405978005 "Pathologic stage"
* SCT#405979002 "Pathologic TNM stage"
//* include codes from system SCT where concept is-a #405931009 "National Wilms Tumor Study Group Stage (observable entity)"
* SCT#405931009 "National Wilms Tumor Study Group Stage"
* SCT#405977000 "National Wilms Tumor Study Group Stage for left kidney"
* SCT#405976009 "National Wilms Tumor Study Group Stage for right kidney"
// singletons
* SCT#385349001 "Clinical stage (observable entity)"
* SCT#103420007 "Modified Dukes stage (observable entity)"
* SCT#385357003 "Dukes stage (observable entity)"
* SCT#405916000 "Intergroup rhabdomyosarcoma study post-surgical clinical group (observable entity)"
* SCT#17964000 "Residual tumor stage (observable entity)"
* SCT#371495009 "Stage of tumor involvement of non-regional lymph nodes (observable entity)"
// unapproved attribute, do not include! * include codes from system SCT where concept is-a #260760003 "Staging of disease (attribute)"
// NCI Thesaurus terms
* NCIT#C134969 "AIDS-Related Kaposi Sarcoma Stage"
* NCIT#C90529 "AJCC v6 Stage"
* NCIT#C90530 "AJCC v7 Stage"
* NCIT#C177555 "AJCC v8 Clinical Stage"
* NCIT#C177556 "AJCC v8 Pathologic Stage"
* NCIT#C132248 "AJCC v8 Stage"
* NCIT#C180901 "AJCC v9 Stage"
* NCIT#C177558 "Ann Arbor Clinical Stage"
* NCIT#C177559 "Ann Arbor Pathologic Stage"
* NCIT#C141138 "Ann Arbor Stage"
* NCIT#C115134 "BCLC Stage"
* NCIT#C141212 "Binet Stage"
* NCIT#C139445 "Breast Cancer Anatomic Stage"
* NCIT#C139446 "Breast Cancer Prognostic Stage"
* NCIT#C198025 "Children's Oncology Group (COG)/National Wilms Tumor Study Group (NWTSG) Stage"
* NCIT#C139006 "Durie/Salmon Stage"
* NCIT#C141099 "ENSAT Stage"
* NCIT#C186618 "FIGO 2009 Stage"
* NCIT#C186617 "FIGO 2018 Stage"
* NCIT#C125738 "FIGO Stage"
* NCIT#C157232 "FIGO/TNM Stage"
* NCIT#C28067 "Hepatoblastoma Stage"
* NCIT#C192760 "International Neuroblastoma Risk Group"
* NCIT#C198026 "International Society of Pediatric Oncology (SIOP) Stage"
* NCIT#C139007 "International Staging System Stage"
* NCIT#C141147 "Lugano Stage"
* NCIT#C143151 "Masaoka-Koga Stage"
* NCIT#C146847 "Mediastinal Malignant Germ Cell Tumor Stage"
* NCIT#C16899 "Neoplasm Stage"
* NCIT#C174125 "Neoplastic Disease Extent Indicator"
* NCIT#C141461 "Occult Stage"

// Observation.method
ValueSet: CancerStagingMethodVS
Id: mcode-cancer-staging-method-vs
Title: "Cancer Staging Method Value Set"
Description: "Staging system or method used for staging cancers. The terms in this value set describe staging systems, not specific stages or descriptors used within those systems."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
// LNC#LP7215-9 "Extent of disease coding system"   -- this is a LOINC part code -- should we use it?
* SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* SCT#254381008 "American Urological Association staging system for prostate cancer (tumor staging)"
* SCT#254373007 "Ann Arbor Hodgkin's disease tumor staging system (tumor staging)"
* SCT#254372002 "Ann Arbor lymphoma staging system (tumor staging)"
* SCT#254374001 "Ann Arbor non-Hodgkin's lymphoma tumor staging system (tumor staging)"
* SCT#254361007 "Astler-Coller staging system (tumor staging)"
* SCT#1149164009 "Australian Clinicopathological Staging System for colorectal cancer (tumor staging)"
* SCT#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* SCT#385346008 "Breslow system for melanoma staging (tumor staging)"
* SCT#385345007 "Clark system for melanoma staging (tumor staging)"
* SCT#254375000 "Cotswolds Hodgkin's disease tumor staging system (tumor staging)"
* SCT#254360008 "Dukes staging system (tumor staging)"
* SCT#254379006 "Indiana University testicular tumor staging system (tumor staging)"
* SCT#254386003 "International Federation of Gynecology and Obstetrics ovarian tumor staging system (tumor staging)"
* SCT#106250008 "International Federation of Gynecology and Obstetrics staging system for cervical carcinoma (tumor staging)"
* SCT#106244003 "International Federation of Gynecology and Obstetrics staging system for endometrial carcinoma (tumor staging)"
* SCT#106247005 "International Federation of Gynecology and Obstetrics staging system for epithelial tumor of ovary (tumor staging)"
* SCT#106245002 "International Federation of Gynecology and Obstetrics staging system for vulvar carcinoma (tumor staging)"
* SCT#106246001 "International Federation of Gynecology and Obstetrics staging system for vulvar melanoma (tumor staging)"
* SCT#254383006 "International Federation of Gynecology and Obstetrics staging system of gynecological malignancy (tumor staging)"
* SCT#254385004 "International Federation of Gynecology and Obstetrics uterine tumor staging system (tumor staging)"
* SCT#254384000 "International Federation of Gynecology and Obstetrics vaginal tumor staging system (tumor staging)"
* SCT#254363005 "International neuroblastoma staging system (tumor staging)"
* SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
* SCT#254380009 "Marshall Modification of Jewett-Strong staging system for urinary bladder tumor (tumor staging)"
* SCT#254362000 "Modified Astler-Coller staging system (tumor staging)"
* SCT#385359000 "Modified Dukes staging system (tumor staging)"
* SCT#254364004 "National Wilms' tumor study staging system (tumor staging)"
* SCT#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"
* SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
* SCT#254365003 "Siopel liver staging system (tumor staging)"
* SCT#254370005 "St Jude's malignant histiocytosis tumor staging system (tumor staging)"
* SCT#254371009 "St Jude's non-Hodgkin's lymphoma staging system (tumor staging)"
* SCT#254366002 "Stannard staging system for retinoblastoma (tumor staging)"
* SCT#254382001 "Trophoblastic malignancy staging system (tumor staging)"
* SCT#254368001 "United Kingdom children's cancer study group central nervous system tumor staging system (tumor staging)"
* SCT#254378003 "Walter Reed testicular tumor staging system (tumor staging)"
* SCT_TBD#USCRS-34949 "Enneking surgical staging system (tumor staging)" // requested June 2023
* SCT_TBD#USCRS-34955 "UICC Classification of Malignant Tumours 8th Edition (tumor staging)" // requested June 2023
* SCT_TBD#USCRS-34956 "UICC Classification of Malignant Tumours 7th Edition (tumor staging)"  // requested June 2023
* SCT_TBD#USCRS-34957 "Children's Oncology Group Renal Staging System (tumor staging)" // requested June 2023
* SCT_TBD#USCRS-34947  "Surveillance Epidemiology and End Results Program Extent of Disease, 2018 edition (tumor staging)"    // requested 6/9/23
* SCT_TBD#USCRS-34958 "Children's Oncology Group Liver Staging System (tumor staging)" // requested 6/13/23
* SCT_TBD#1287647003 "Toronto Childhood Cancer Stage Guidelines Version 2 (tumor staging)" //USCRS-34951  requested June 2023
* SCT_TBD#1287648008 "Masaoka-Koga stage classification for thymic malignancies (tumor staging)" // #USCRS-34950 requested June 2023
* SCT_TBD#1287643004 "International Neuroblastoma Risk Group staging system (tumor staging)"  // #USCRS-34952  requested June 2023
* SCT_TBD#1287646007 "International Germ Cell Consensus Classification (tumor staging)" //#USCRS-34948 requested June 2023
// NCIT Terms
* NCIT#C191343 "AJCC Cancer Staging Manual 4th Edition"
* NCIT#C191344 "AJCC Cancer Staging Manual 5th Edition"
* NCIT#C186613 "AJCC Cancer Staging System Version 9"
* NCIT#C186527 "Atypical Teratoid/Rhabdoid Tumor Staging System"
* NCIT#C177630 "Children's Oncology Group Liver Tumor Staging System"
* NCIT#C177631 "Children's Oncology Group Neuroblastoma Risk Group Staging System"
* NCIT#C177632 "Children's Oncology Group Renal Cancer Staging System"
* NCIT#C177633 "Children's Oncology Group Retinoblastoma Risk Group Staging System"
* NCIT#C180522 "Children's Oncology Group Staging System"
* NCIT#C140271 "Children's Oncology Group/National Wilms' Tumor Study Group Staging System"
//* NCIT#C141208 "Chronic Lymphocytic Leukemia- Binet Staging System" -- covered by SNOMED
* NCIT#C141206  "Chronic Lymphocytic Leukemia- Modified Rai Staging System"
* NCIT#C62575 "Collaborative Staging"
* NCIT#C128932 "Derkay Staging System"
* NCIT#C186536 "Embryonal Tumor with Multilayered Rosettes Staging System"
* NCIT#C140258 "Enneking Staging System"
* NCIT#C85407 "Evans Staging System"
* NCIT#C99408 "FIGO Staging System and Modified World Health Organization [WHO] Prognostic Scoring System for Gestational Trophoblastic Neoplasms"
* NCIT#C115132 "Hepatocellular Carcinoma by BCLC Stage"
* NCIT#C148010 "Intergroup Rhabdomyosarcoma Study Group Clinical Staging and Grouping System"
* NCIT#C111073 "International Germ Cell Consensus Risk Classification"
* NCIT#C133427 "International Neuroblastoma Risk Group Staging System"
* NCIT#C140270 "International Society of Pediatric Oncology Staging System"
* NCIT#C177550 "IRS Clinical Staging System"
* NCIT#C141168 "Lugano Classification Hodgkin Lymphoma by AJCC v8 Stage"
* NCIT#C186520 "Medulloblastoma Staging System"
* NCIT#C198826 "Modified Chang Staging System for Medulloblastoma"
* NCIT#C177308 "Non-Seminomatous Germ Cell Tumor International Germ Cell Consensus Risk Classification"
* NCIT#C85423  "Pediatric Oncology Group Neuroblastoma Staging System"
* NCIT#C186567 "Pineoblastoma Staging System"
* NCIT#C141133 "PRETEXT Staging System"
* NCIT#C123333 "Reese-Ellsworth Staging System"
* NCIT#C62610 "SEER Summary Staging Manual 2000"
* NCIT#C177309 "Seminoma International Germ Cell Tumor Consensus Risk Classification"
* NCIT#C140272 "SIOP/COG/NWTSG Staging System"  // Wilms tumor
* NCIT#C62611 "Summary Staging Guide 1977"
* NCIT#C112006 "Thymoma by Masaoka-Koga Stage"
* NCIT#C18008 "TNM Ovary Neoplasm Staging"
* NCIT#C25384 "TNM Staging System"
* NCIT#C198206 "UICC Staging System Manual"
* NCIT#C141685 "Veterans Administration Lung Study Group Clinical Classification"
* NCIT#C18214 "Whitmore-Jewett Staging System"

// Observation.value
ValueSet: CancerStageValueVS
Id: mcode-cancer-stage-value-vs
Title: "Cancer Stage Value Set"
Description: "A non-exhaustive value set containing codes that result from cancer staging, i.e., the stage or category of the cancer."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept descendant-of #1222585009 "American Joint Committee on Cancer clinical T category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222587001 "American Joint Committee on Cancer clinical M category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222588006 "American Joint Committee on Cancer clinical N category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222589003 "American Joint Committee on Cancer pathological T category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222590007 "American Joint Committee on Cancer pathological N category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222591006 "American Joint Committee on Cancer pathological M category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222592004 "American Joint Committee on Cancer clinical stage group allowable value"
* include codes from system SCT where concept descendant-of #1222593009 "American Joint Committee on Cancer pathological stage group allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222594003 "American Joint Committee on Cancer yp stage group allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222595002 "American Joint Committee on Cancer ypT category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222596001 "American Joint Committee on Cancer ypN category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222598000 "American Joint Committee on Cancer clinical grade allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222599008 "American Joint Committee on Cancer pathological grade allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222600006 "American Joint Committee on Cancer yp grade allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222601005 "American Joint Committee on Cancer residual tumor allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #258318002 "Generic anatomical site tumor invasion status (tumor staging)"
* include codes from system SCT where concept descendant-of #258309004 "Generic lymph node tumor invasion status stage (tumor staging)"
* include codes from system SCT where concept descendant-of #258233007 "Generic tumor staging descriptor (tumor staging)"
* include codes from system SCT where concept descendant-of #258271004 "Specific tumor staging descriptor (tumor staging)"
* include codes from system SCT where concept descendant-of #106242004 "Walter Reed staging of prostatic cancer (tumor staging)"
