ValueSet: CancerStagingMethodVS
Id: mcode-cancer-staging-method-vs
Title: "Cancer Staging Method Value Set"
Description: "System or method used for staging cancers. The terms in this value set describe staging systems, not specific stages or descriptors used within those systems."
* insert SNOMEDCTCopyrightForVS
* include codes from system SCT where concept is-a #254292007 "Tumor staging (tumor staging)"
* SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
* SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
* SCT#246165003 "Extent of disease (attribute)"  // instead of NCI#C174125 "Neoplastic Disease Extent Indicator"
* SCT#418414003 "The revised European-American Lymphoma classification (qualifier value)"
* SCT#418823005 "The World Health Organization classification of lymphoid malignancies (qualifier value)"
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

ValueSet:   CancerStagingSystemVS
Id: mcode-cancer-staging-system-vs
Title: "Cancer Staging System Value Set"
Description: "System used for staging."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
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