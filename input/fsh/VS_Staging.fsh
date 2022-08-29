ValueSet:   CancerStagingSystemVS
Id: mcode-cancer-staging-system-vs
Title: "Cancer Staging System Value Set"
Description: "System used for staging. Terms describe staging systems, not specific stages or descriptors used within those systems."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept is-a #254292007 "Tumor staging (tumor staging)"
* include SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
* include SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
* exclude codes from system SCT where concept is-a #258318002 "Generic anatomical site tumor invasion status (tumor staging)"
* exclude codes from system SCT where concept is-a #258309004 "Generic lymph node tumor invasion status stage (tumor staging)"
* exclude codes from system SCT where concept is-a #258233007 "Generic tumor staging descriptor (tumor staging)"
* exclude codes from system SCT where concept is-a #258271004 "Specific tumor staging descriptor (tumor staging)"
* exclude SCT#42114005 "Walter Reed stage 1 (tumor staging)"
* exclude SCT#15972002 "Walter Reed stage 2 (tumor staging)"
* exclude SCT#13808002 "Walter Reed stage 3 (tumor staging)"
* exclude SCT#74542008 "Walter Reed stage 4 (tumor staging)"
* exclude SCT#66470009 "Walter Reed stage 5 (tumor staging)"
* exclude SCT#83200007 "Walter Reed stage 6 (tumor staging)"

ValueSet: ObservationCodesStageGroupVS
Id: mcode-observation-codes-stage-group-vs
Title: "Staging Type for Stage Group Value Set"
Description: "Identifying codes based on the timing of classification for stage group observations."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21908-9 "Stage group.clinical Cancer"
* LNC#21902-2 "Stage group.pathology Cancer"
* LNC#21914-7 "Stage group.other Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesPrimaryTumorVS
Id: mcode-observation-codes-primary-tumor-vs
Title: "Staging Type for Primary Tumor Category Value Set"
Description: "Identifying codes based on the timing of classification for primary tumor (T) staging observations."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* LNC#21899-0 "Primary tumor.pathology Cancer"
* LNC#21911-3 "Primary tumor.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesRegionalNodesVS
Id: mcode-observation-codes-regional-nodes-vs
Title: "Staging Type for Regional Node Category Value Set"
Description: "Identifying codes based on the timing of classification for regional node (N) staging observations."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* LNC#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* LNC#21912-1 "Regional lymph nodes.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesDistantMetastasesVS
Id: mcode-observation-codes-distant-metastases-vs
Title: "Staging Type Value Set (for Distant Metastases Category)"
Description: "Identifying codes based on the timing of classification for distant metastases (M) staging observations."
* insert LOINCCopyrightForVS
* ^extension[FMM].valueInteger = 4
* LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* LNC#21901-4 "Distant metastases.pathology [Class] Cancer"
* LNC#21913-9 "Distant metastases.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: CancerStageGroupVS
Id: mcode-cancer-stage-group-vs
Title: "Cancer Stage Group Value Set"
Description: "This value set contains SNOMED-CT equivalents of AJCC codes for Stage Group, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept is-a #1222592004 "American Joint Committee on Cancer clinical stage group allowable value (qualifier value)"
* include codes from system SCT where concept is-a #1222593009 "American Joint Committee on Cancer pathological stage group allowable value (qualifier value)"
* include codes from system SCT where concept is-a #1222594003 "American Joint Committee on Cancer yp stage group allowable value (qualifier value)"

ValueSet: TNMPrimaryTumorCategoryVS
Id: mcode-tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Category Value Set"
Description: "This value set contains SNOMED-CT equivalents of AJCC codes for the T category, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept is-a #1222585009 "American Joint Committee on Cancer clinical T category allowable value (qualifier value)"
* include codes from system SCT where concept is-a #1222589003 "American Joint Committee on Cancer pathological T category allowable value (qualifier value)"
* include codes from system SCT where concept is-a #1222595002 "American Joint Committee on Cancer ypT category allowable value (qualifier value)"

ValueSet: TNMRegionalNodesCategoryVS
Id: mcode-tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Category Value Set"
Description: "This value set contains SNOMED-CT equivalents of AJCC codes for the N category, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept is-a #1222588006 "American Joint Committee on Cancer clinical N category allowable value (qualifier value)"
* include codes from system SCT where concept is-a #1222590007 "American Joint Committee on Cancer pathological N category allowable value (qualifier value)"
* include codes from system SCT where concept is-a #1222596001 "American Joint Committee on Cancer ypN category allowable value (qualifier value)"

ValueSet: TNMDistantMetastasesCategoryVS
Id: mcode-tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Category Value Set"
Description: "This value set contains SNOMED-CT equivalents of AJCC codes for the M category, according to TNM staging rules."
* insert SNOMEDCopyrightForVS
* ^extension[FMM].valueInteger = 4
* include codes from system SCT where concept is-a #1222587001 "American Joint Committee on Cancer clinical M category allowable value (qualifier value)"
* include codes from system SCT where concept is-a #1222591006 "American Joint Committee on Cancer pathological M category allowable value (qualifier value)"
