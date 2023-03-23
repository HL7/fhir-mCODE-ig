//******************** Non-TNM Staging **************************/

ValueSet: CancerStagingMethodVS
Id: mcode-cancer-staging-method-vs
Title: "Cancer Staging Method Value Set"
Description: "System or method used for staging cancers. The terms in this value set describe staging systems, not specific stages or descriptors used within those systems."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #254292007 "Tumor staging (tumor staging)"
* SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
* SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
* SCT#246165003 "Extent of disease (attribute)"  // instead of NCI#C174125 "Neoplastic Disease Extent Indicator"
* SCT#418414003 "The revised European-American Lymphoma classification (qualifier value)"
* SCT#418823005 "The World Health Organization classification of lymphoid malignancies (qualifier value)"
* exclude codes from system SCT where concept descendant-of #258318002 "Generic anatomical site tumor invasion status (tumor staging)"
* exclude codes from system SCT where concept descendant-of #258309004 "Generic lymph node tumor invasion status stage (tumor staging)"
* exclude codes from system SCT where concept descendant-of #258233007 "Generic tumor staging descriptor (tumor staging)"
* exclude codes from system SCT where concept descendant-of #258271004 "Specific tumor staging descriptor (tumor staging)"
* exclude SCT#42114005 "Walter Reed stage 1 (tumor staging)"
* exclude SCT#15972002 "Walter Reed stage 2 (tumor staging)"
* exclude SCT#13808002 "Walter Reed stage 3 (tumor staging)"
* exclude SCT#74542008 "Walter Reed stage 4 (tumor staging)"
* exclude SCT#66470009 "Walter Reed stage 5 (tumor staging)"
* exclude SCT#83200007 "Walter Reed stage 6 (tumor staging)"

ValueSet: CancerStagingTypeVS
Id: mcode-cancer-staging-type-vs
Title: "Cancer Staging Type Value Set"
Description: "Identifying codes for the type of cancer staging performed. In terms of the SNOMED CT hierarchy, these codes represent observables."
//* insert LOINCCopyrightForVS
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept descendant-of #371508000 "Tumor stage (observable entity)"
* include codes from system SCT where concept is-a #385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* include codes from system SCT where concept is-a #405931009 "National Wilms Tumor Study Group Stage (observable entity)"
* SCT#409720004 "International neuroblastoma staging system stage (observable entity)"
* SCT#385357003 "Dukes stage (observable entity)"
* SCT#103420007 "Modified Dukes stage (observable entity)"

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
* include SCT#42114005 "Walter Reed stage 1 (tumor staging)"
* include SCT#15972002 "Walter Reed stage 2 (tumor staging)"
* include SCT#13808002 "Walter Reed stage 3 (tumor staging)"
* include SCT#74542008 "Walter Reed stage 4 (tumor staging)"
* include SCT#66470009 "Walter Reed stage 5 (tumor staging)"
* include SCT#83200007 "Walter Reed stage 6 (tumor staging)"

//******************** TNM Staging **************************/

ValueSet: TNMStagingMethodVS
Id: mcode-tnm-staging-method-vs
Title: "TNM Staging Method Value Set"
Description: "Method used for TNM staging, e.g., AJCC 6th, 7th, or 8th edition."
* insert SNOMEDCopyrightForVS
* include SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* include SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* include SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

// Stage Group

ValueSet: TNMStageGroupStagingTypeVS
Id: mcode-tnm-stage-group-staging-type-vs
Title: "TNM Stage Group Staging Type Value Set"
Description: "Identifying codes for the type of cancer staging performed, i.e., clinical, pathological, or other, for the stage group observation."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21908-9 "Stage group.clinical Cancer"
* LNC#21902-2 "Stage group.pathology Cancer"
* LNC#21914-7 "Stage group.other Cancer"

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