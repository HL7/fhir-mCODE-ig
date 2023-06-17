//******************** General Staging (TNM and non-TNM) **************************/


// Observation.code
ValueSet: CancerStagingTypeVS
Id: mcode-cancer-staging-type-vs
Title: "Cancer Staging Type Value Set"
Description: "Codes identifying the type or kind of stage reported, necessary to correctly interpret the value of a staging Observation. In terms of the SNOMED CT hierarchy, these codes represent observables. If the staging system used to determine the stage group, classification, or category value, is not implicit in this code, the staging system must recorded in Observation.method. More specific profiles should be consulted before determining the correct code."
* insert LOINCCopyrightForVS
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
// LOINC Codes
* include LNC#21886-7 "Breast-prostate staging.NAACCR"
* include LNC#42082-8 "Collaborative staging lymph nodes Cancer"
* include LNC#59478-8 "Collaborative staging metastasis at diagnosis - lung involvement Cancer"
* include LNC#42084-4 "Collaborative staging metastasis at diagnosis Cancer"
* include LNC#42085-1 "Collaborative staging metastasis evaluation Cancer"
* include LNC#59479-6 "Collaborative staging post treatment extension Cancer"
* include LNC#59480-4 "Collaborative staging post treatment lymph nodes Cancer"
* include LNC#59481-2 "Collaborative staging post treatment metastasis at diagnosis Cancer"
* include LNC#59482-0 "Collaborative staging post treatment tumor size Cancer"
* include LNC#59559-5 "Collaborative staging pre treatment extension Cancer"
* include LNC#59483-8 "Collaborative staging pre treatment lymph nodes Cancer"
* include LNC#59484-6 "Collaborative staging pre treatment metastasis at diagnosis Cancer"
* include LNC#59485-3 "Collaborative staging pre treatment metastasis evaluation Cancer"
* include LNC#59486-1 "Collaborative staging pre treatment regional nodes evaluation Cancer"
* include LNC#59487-9 "Collaborative staging pre treatment tumor size and extension evaluation Cancer"
* include LNC#59488-7 "Collaborative staging pre treatment tumor size Cancer"
* include LNC#42083-6 "Collaborative staging regional nodes evaluation Cancer"
* include LNC#42081-0 "Collaborative staging tumor size extension evaluation Cancer"
* include LNC#59508-2 "Collaborative staging version.current Cancer"
* include LNC#42092-7 "Collaborative staging version.first Cancer"
* include LNC#42093-5 "Collaborative staging version.latest Cancer"
* include LNC#42098-4 "Derived American Joint Committee on Cancer M"
* include LNC#42096-8 "Derived American Joint Committee on Cancer N"
* include LNC#42100-8 "Derived American Joint Committee on Cancer stage group"
* include LNC#42094-3 "Derived American Joint Committee on Cancer T Derived"
* include LNC#59522-3 "Derived American Joint Committee on Cancer-7 M"
* include LNC#59524-9 "Derived American Joint Committee on Cancer-7 N"
* include LNC#59526-4 "Derived American Joint Committee on Cancer-7 stage group"
* include LNC#59527-2 "Derived American Joint Committee on Cancer-7 T"
* include LNC#59530-6 "Derived post treatment-7 M Cancer"
* include LNC#59531-4 "Derived post treatment-7 N Cancer"
* include LNC#59532-2 "Derived post treatment-7 stage group Cancer"
* include LNC#59533-0 "Derived post treatment-7 T Cancer"
* include LNC#59534-8 "Derived pre treatment-7 M Cancer"
* include LNC#59536-3 "Derived pre treatment-7 N Cancer"
* include LNC#59538-9 "Derived pre treatment-7 stage group Cancer"
* include LNC#59539-7 "Derived pre treatment-7 T Cancer"
* include LNC#42101-6 "Derived SEER summary stage 1977 Cancer"
* include LNC#42102-4 "Derived SEER summary stage 2000 Cancer"
* include LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* include LNC#21913-9 "Distant metastases.other [Class] Cancer"
* include LNC#21901-4 "Distant metastases.pathology [Class] Cancer"
* include LNC#42080-2 "Extension collaborative staging Cancer"
* include LNC#21891-7 "Extent of disease Prostate cancer"
* include LNC#21895-8 "Extent of disease.NAACCR.old 13 digit"
* include LNC#21896-6 "Extent of disease.NAACCR.old 2 digit"
* include LNC#21897-4 "Extent of disease.NAACCR.old 4 digit"
* include LNC#21892-5 "Lymph node involvement Cancer"
* include LNC#21921-2 "Pediatric stage Cancer"
* include LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* include LNC#21911-3 "Primary tumor.other [Class] Cancer"
* include LNC#21899-0 "Primary tumor.pathology Cancer"
* include LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* include LNC#21912-1 "Regional lymph nodes.other [Class] Cancer"
* include LNC#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* include LNC#21887-5 "SEER summary stage 1977 Cancer"
* include LNC#21908-9 "Stage group.clinical Cancer"
* include LNC#21914-7 "Stage group.other Cancer"
* include LNC#21902-2 "Stage group.pathology Cancer"
* include LNC#21888-3 "Summary stage abbreviated at Dx Cancer"
* include LNC#39806-5 "Summary stage at Dx 2000 revised Cancer"
// SNOMED CT Codes
* include codes from system SCT where concept is-a #399566009 "Tumor-node-metastasis (TNM) category (observable entity)"
* include codes from system SCT where concept is-a #399390009 "Tumor-node-metastasis (TNM) stage grouping (observable entity)"
* include codes from system SCT where concept is-a #385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* include codes from system SCT where concept is-a #371508000 "Tumor stage (observable entity)"
* include codes from system SCT where concept is-a #405978005 "Pathologic stage (observable entity)"
* include codes from system SCT where concept is-a #405931009 "National Wilms Tumor Study Group Stage (observable entity)"
* include codes from system SCT where concept is-a #260760003 "Staging of disease (attribute)"
* include SCT#385349001 "Clinical stage (observable entity)"
* include SCT#103420007 "Modified Dukes stage (observable entity)"
* include SCT#385357003 "Dukes stage (observable entity)"
* include SCT#405916000 "Intergroup rhabdomyosarcoma study post-surgical clinical group (observable entity)"
* include SCT#385363007 "International Federation of Gynecology and Obstetrics ovarian tumor stage (observable entity)"
* include SCT#17964000 "Residual tumor stage (observable entity)"
* include SCT#371495009 "Stage of tumor involvement of non-regional lymph nodes (observable entity)"
* exclude SCT#277655009 "Additional staging descriptors (attribute)"
// NCI Thesaurus terms
* include NCIT#C134969 "AIDS-Related Kaposi Sarcoma Stage"
* include NCIT#C90529 "AJCC v6 Stage"
* include NCIT#C90530 "AJCC v7 Stage"
* include NCIT#C177555 "AJCC v8 Clinical Stage"
* include NCIT#C177556 "AJCC v8 Pathologic Stage"
* include NCIT#C132248 "AJCC v8 Stage"
* include NCIT#C180901 "AJCC v9 Stage"
* include NCIT#C177558 "Ann Arbor Clinical Stage"
* include NCIT#C177559 "Ann Arbor Pathologic Stage"
* include NCIT#C141138 "Ann Arbor Stage"
* include NCIT#C115134 "BCLC Stage"
* include NCIT#C141212 "Binet Stage"
* include NCIT#C139445 "Breast Cancer Anatomic Stage"
* include NCIT#C139446 "Breast Cancer Prognostic Stage"
* include NCIT#C198025 "Children's Oncology Group (COG)/National Wilms Tumor Study Group (NWTSG) Stage"
* include NCIT#C139006 "Durie/Salmon Stage"
* include NCIT#C141099 "ENSAT Stage"
* include NCIT#C186618 "FIGO 2009 Stage"
* include NCIT#C186617 "FIGO 2018 Stage"
* include NCIT#C125738 "FIGO Stage"
* include NCIT#C157232 "FIGO/TNM Stage"
* include NCIT#C28067 "Hepatoblastoma Stage"
* include NCIT#C192760 "International Neuroblastoma Risk Group"
* include NCIT#C198026 "International Society of Pediatric Oncology (SIOP) Stage"
* include NCIT#C139007 "International Staging System Stage"
* include NCIT#C141147 "Lugano Stage"
* include NCIT#C143151 "Masaoka-Koga Stage"
* include NCIT#C146847 "Mediastinal Malignant Germ Cell Tumor Stage"
* include NCIT#C16899 "Neoplasm Stage"
* include NCIT#C174125 "Neoplastic Disease Extent Indicator"
* include NCIT#C141461 "Occult Stage"


ValueSet: CancerStagingMethodVS
Id: mcode-cancer-staging-method-vs
Title: "Cancer Staging Method Value Set"
Description: "Staging system or method used for staging cancers. The terms in this value set describe staging systems, not specific stages or descriptors used within those systems."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* include SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* include SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* include SCT#254381008 "American Urological Association staging system for prostate cancer (tumor staging)"
* include SCT#254373007 "Ann Arbor Hodgkin's disease tumor staging system (tumor staging)"
* include SCT#254372002 "Ann Arbor lymphoma staging system (tumor staging)"
* include SCT#254374001 "Ann Arbor non-Hodgkin's lymphoma tumor staging system (tumor staging)"
* include SCT#254361007 "Astler-Coller staging system (tumor staging)"
* include SCT#1149164009 "Australian Clinicopathological Staging System for colorectal cancer (tumor staging)"
* include SCT#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* include SCT#385346008 "Breslow system for melanoma staging (tumor staging)"
* include SCT#385345007 "Clark system for melanoma staging (tumor staging)"
* include SCT#254375000 "Cotswolds Hodgkin's disease tumor staging system (tumor staging)"
* include SCT#254360008 "Dukes staging system (tumor staging)"
* include SCT#254379006 "Indiana University testicular tumor staging system (tumor staging)"
* include SCT#254386003 "International Federation of Gynecology and Obstetrics ovarian tumor staging system (tumor staging)"
* include SCT#106250008 "International Federation of Gynecology and Obstetrics staging system for cervical carcinoma (tumor staging)"
* include SCT#106244003 "International Federation of Gynecology and Obstetrics staging system for endometrial carcinoma (tumor staging)"
* include SCT#106247005 "International Federation of Gynecology and Obstetrics staging system for epithelial tumor of ovary (tumor staging)"
* include SCT#106245002 "International Federation of Gynecology and Obstetrics staging system for vulvar carcinoma (tumor staging)"
* include SCT#106246001 "International Federation of Gynecology and Obstetrics staging system for vulvar melanoma (tumor staging)"
* include SCT#254383006 "International Federation of Gynecology and Obstetrics staging system of gynecological malignancy (tumor staging)"
* include SCT#254385004 "International Federation of Gynecology and Obstetrics uterine tumor staging system (tumor staging)"
* include SCT#254384000 "International Federation of Gynecology and Obstetrics vaginal tumor staging system (tumor staging)"
* include SCT#254363005 "International neuroblastoma staging system (tumor staging)"
* include SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
* include SCT#254380009 "Marshall Modification of Jewett-Strong staging system for urinary bladder tumor (tumor staging)"
* include SCT#254362000 "Modified Astler-Coller staging system (tumor staging)"
* include SCT#385359000 "Modified Dukes staging system (tumor staging)"
* include SCT#254364004 "National Wilms' tumor study staging system (tumor staging)"
* include SCT#1149131009 "Rai staging system for chronic lymphocytic leukemia (tumor staging)"
* include SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
* include SCT#254365003 "Siopel liver staging system (tumor staging)"
* include SCT#254370005 "St Jude's malignant histiocytosis tumor staging system (tumor staging)"
* include SCT#254371009 "St Jude's non-Hodgkin's lymphoma staging system (tumor staging)"
* include SCT#254366002 "Stannard staging system for retinoblastoma (tumor staging)"
* include SCT#254382001 "Trophoblastic malignancy staging system (tumor staging)"
* include SCT#254368001 "United Kingdom children's cancer study group central nervous system tumor staging system (tumor staging)"
* include SCT#254378003 "Walter Reed testicular tumor staging system (tumor staging)"
* include NCIT#C191343 "AJCC Cancer Staging Manual 4th Edition"
* include NCIT#C191344 "AJCC Cancer Staging Manual 5th Edition"
* include NCIT#C186613 "AJCC Cancer Staging System Version 9"
* include NCIT#C186527 "Atypical Teratoid/Rhabdoid Tumor Staging System"
* include NCIT#C177630 "Children's Oncology Group Liver Tumor Staging System"
* include NCIT#C177631 "Children's Oncology Group Neuroblastoma Risk Group Staging System"
* include NCIT#C177632 "Children's Oncology Group Renal Cancer Staging System"
* include NCIT#C177633 "Children's Oncology Group Retinoblastoma Risk Group Staging System"
* include NCIT#C180522 "Children's Oncology Group Staging System"
* include NCIT#C140271 "Children's Oncology Group/National Wilms' Tumor Study Group Staging System"
* include NCIT#C141208 "Chronic Lymphocytic Leukemia- Binet Staging System"
* include NCIT#C141206  "Chronic Lymphocytic Leukemia- Modified Rai Staging System"
* include NCIT#C62575 "Collaborative Staging"
* include NCIT#C128932 "Derkay Staging System"
* include NCIT#C186536 "Embryonal Tumor with Multilayered Rosettes Staging System"
* include NCIT#C140258 "Enneking Staging System"
* include NCIT#C85407 "Evans Staging System"
* include NCIT#C99408 "FIGO Staging System and Modified World Health Organization [WHO] Prognostic Scoring System for Gestational Trophoblastic Neoplasms"
* include NCIT#C115132 "Hepatocellular Carcinoma by BCLC Stage"
* include NCIT#C148010 "Intergroup Rhabdomyosarcoma Study Group Clinical Staging and Grouping System"
* include NCIT#C111073 "International Germ Cell Consensus Risk Classification"
* include NCIT#C133427 "International Neuroblastoma Risk Group Staging System"
* include NCIT#C140270 "International Society of Pediatric Oncology Staging System"
* include NCIT#C177550 "IRS Clinical Staging System"
* include NCIT#C186520 "Medulloblastoma Staging System"
* include NCIT#C198826 "Modified Chang Staging System for Medulloblastoma"
* include NCIT#C177308 "Non-Seminomatous Germ Cell Tumor International Germ Cell Consensus Risk Classification"
* include NCIT#C85423  "Pediatric Oncology Group Neuroblastoma Staging System"
* include NCIT#C186567 "Pineoblastoma Staging System"
* include NCIT#C141133 "PRETEXT Staging System"
* include NCIT#C123333 "Reese-Ellsworth Staging System"
* include NCIT#C62610 "SEER Summary Staging Manual 2000"
* include NCIT#C177309 "Seminoma International Germ Cell Tumor Consensus Risk Classification"
* include NCIT#C140272 "SIOP/COG/NWTSG Staging System"
* include NCIT#C62611 "Summary Staging Guide 1977"
* include NCIT#C112006 "Thymoma by Masaoka-Koga Stage"
* include NCIT#C18008 "TNM Ovary Neoplasm Staging"
* include NCIT#C25384 "TNM Staging System"
* include NCIT#C198206 "UICC Staging System Manual"
* include NCIT#C141685 "Veterans Administration Lung Study Group Clinical Classification"
* include NCIT#C18214 "Whitmore-Jewett Staging System"


// Observation.value
ValueSet: CancerStageVS
Id: mcode-cancer-stage-group-vs
Title: "Cancer Stage Group Value Set"
Description: "The result of cancer staging, i.e., the stage or category of the cancer."
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




//******************** TNM Staging **************************/

// Observation.method
ValueSet: TNMStagingMethodVS
Id: mcode-tnm-staging-method-vs
Title: "TNM Staging Method Value Set"
Description: "Method used for TNM staging, e.g., AJCC 6th, 7th, or 8th edition."
* insert SNOMEDCopyrightForVS
* include SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* include SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* include SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* include SCT#1269566009 "American Joint Commission on Cancer, Cancer Staging Manual, 9th version neoplasm staging system (tumor staging)"
* include NCIT#C191343 "AJCC Cancer Staging Manual 4th Edition"
* include NCIT#C191344 "AJCC Cancer Staging Manual 5th Edition"
* include NCIT#C186613 "AJCC Cancer Staging System Version 9"

// Stage Group

// valueCodeableConcept
ValueSet: TNMStageGroupVS
Id: mcode-tnm-stage-group-vs
Title: "TNM Stage Group Value Set"
Description: "Result values for cancer stage group using TNM staging. This value set contains SNOMED-CT equivalents of AJCC codes for Stage Group, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #1222592004 "American Joint Committee on Cancer clinical stage group allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222593009 "American Joint Committee on Cancer pathological stage group allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222594003 "American Joint Committee on Cancer yp stage group allowable value (qualifier value)"

ValueSet: TNMStageGroupMaxVS
Id: mcode-tnm-stage-group-max-vs
Title: "TNM Stage Group Maximum Value Set"
Description: "Values for TNM stage group must be selected from this value set, which includes all codes from AJCC and all codes from TNMStageGroupVS."
* ^experimental = false
* include codes from valueset TNMStageGroupVS
* include codes from system AJCC

// Primary Tumor

ValueSet: TNMPrimaryTumorStagingTypeVS
Id: mcode-tnm-primary-tumor-staging-type-vs
Title: "TNM Primary Tumor Staging Type Value Set"
Description: "Identifying codes for the type of cancer staging performed, i.e., clinical, pathological, or other, for primary tumor (T) staging observation."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* LNC#21899-0 "Primary tumor.pathology Cancer"
* LNC#21911-3 "Primary tumor.other [Class] Cancer"

ValueSet: TNMPrimaryTumorCategoryVS
Id: mcode-tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Category Value Set"
Description: "Result values for T category. This value set contains SNOMED-CT equivalents of AJCC codes for the T category, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #1222585009 "American Joint Committee on Cancer clinical T category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222589003 "American Joint Committee on Cancer pathological T category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222595002 "American Joint Committee on Cancer ypT category allowable value (qualifier value)"

ValueSet: TNMPrimaryTumorCategoryMaxVS
Id: mcode-tnm-primary-tumor-category-max-vs
Title: "TNM Primary Tumor Maximum Value Set"
Description: "Values for TNM primary tumor category must be selected from this value set, which includes all codes from AJCC and all codes from TNMPrimaryTumorCategoryVS."
* ^experimental = false
* include codes from valueset TNMPrimaryTumorCategoryVS
* include codes from system AJCC

// Regional Nodes

ValueSet: TNMRegionalNodesStagingTypeVS
Id: mcode-tnm-regional-nodes-staging-type-vs
Title: "TNM Regional Nodes Staging Type Value Set"
Description: "Identifying codes for the type of cancer staging performed, i.e., clinical, pathological, or other, for regional nodes (N) staging observation."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* LNC#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* LNC#21912-1 "Regional lymph nodes.other [Class] Cancer"

ValueSet: TNMRegionalNodesCategoryVS
Id: mcode-tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Category Value Set"
Description: "Result values for N category. This value set contains SNOMED-CT equivalents of AJCC codes for the N category, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #1222588006 "American Joint Committee on Cancer clinical N category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222590007 "American Joint Committee on Cancer pathological N category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222596001 "American Joint Committee on Cancer ypN category allowable value (qualifier value)"

ValueSet: TNMRegionalNodesCategoryMaxVS
Id: mcode-tnm-regional-nodes-category-max-vs
Title: "TNM Regional Nodes Maximum Value Set"
Description: "Values for TNM regional nodes category must be selected from this value set, which includes all codes from AJCC and all codes from TNMRegionalNodesCategoryVS."
* ^experimental = false
* include codes from valueset TNMRegionalNodesCategoryVS
* include codes from system AJCC

// Distant Mets

ValueSet: TNMDistantMetastasesStagingTypeVS
Id: mcode-tnm-distant-metastases-staging-type-vs
Title: "TNM Distant Metastases Staging Type Value Set"
Description: "Identifying codes for the type of cancer staging performed, i.e., clinical, pathological, or other, for distant metastases (M) staging observation."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* LNC#21901-4 "Distant metastases.pathology [Class] Cancer"
* LNC#21913-9 "Distant metastases.other [Class] Cancer"

ValueSet: TNMDistantMetastasesCategoryVS
Id: mcode-tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Category Value Set"
Description: "Result values for M category. This value set contains SNOMED-CT equivalents of AJCC codes for the M category, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #1222587001 "American Joint Committee on Cancer clinical M category allowable value (qualifier value)"
* include codes from system SCT where concept descendant-of #1222591006 "American Joint Committee on Cancer pathological M category allowable value (qualifier value)"

ValueSet: TNMDistantMetastasesCategoryMaxVS
Id: mcode-tnm-distant-metastases-category-max-vs
Title: "TNM Distant Metastases Maximum Value Set"
Description: "Values for TNM distant metastases category must be selected from this value set, which includes all codes from AJCC and all codes from TNMDistantMetastasesCategoryVS."
* ^experimental = false
* include codes from valueset TNMDistantMetastasesCategoryVS
* include codes from system AJCC