ValueSet:   CancerStagingSystemVS
Id: mcode-cancer-staging-system-vs
Title: "Cancer Staging System Value Set"
Description: "System used for staging."
* insert SNOMEDCTCopyrightForVS
* include codes from system SCT where concept is-a #254292007 "Tumor staging (tumor staging)"

ValueSet: ObservationCodesStageGroupVS
Id: mcode-observation-codes-stage-group-vs
Title: "Staging Type for Stage Group Value Set"
Description: "Identifying codes based on the timing of classification for stage group observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LNC#21908-9 "Stage group.clinical Cancer"
* LNC#21902-2 "Stage group.pathology Cancer"
* LNC#21914-7 "Stage group.other Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesPrimaryTumorVS
Id: mcode-observation-codes-primary-tumor-vs
Title: "Staging Type for Primary Tumor Category Value Set"
Description: "Identifying codes based on the timing of classification for primary tumor (T) staging observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* LNC#21899-0 "Primary tumor.pathology Cancer"
* LNC#21911-3 "Primary tumor.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesRegionalNodesVS
Id: mcode-observation-codes-regional-nodes-vs
Title: "Staging Type for Regional Node Category Value Set"
Description: "Identifying codes based on the timing of classification for regional node (N) staging observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* LNC#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* LNC#21912-1 "Regional lymph nodes.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesDistantMetastasesVS
Id: mcode-observation-codes-distant-metastases-vs
Title: "Staging Type Value Set (for Distant Metastases Category)"
Description: "Identifying codes based on the timing of classification for distant metastases (M) staging observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* LNC#21901-4 "Distant metastases.pathology [Class] Cancer"
* LNC#21913-9 "Distant metastases.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: CancerStageGroupVS
Id: mcode-cancer-stage-group-vs
Title: "Cancer Stage Group Value Set"
Description: "This value set is intended to contain allowable values for Stage Group, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* codes from system AJCC

ValueSet: TNMPrimaryTumorCategoryVS
Id: mcode-tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Category Value Set"
Description: "This value set is intended to contain allowable values for the T category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* codes from system AJCC

ValueSet: TNMRegionalNodesCategoryVS
Id: mcode-tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Category Value Set"
Description: "This value set is intended to contain allowable values for the N category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* include codes from system AJCC

ValueSet: TNMDistantMetastasesCategoryVS
Id: mcode-tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Category Value Set"
Description: "This value set is intended to contain allowable values for the M category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* codes from system AJCC