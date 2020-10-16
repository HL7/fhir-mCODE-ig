Instance: example1-mcode-patient-bundle
InstanceOf: MCODEPatientBundle
Description: "Extended example 1 as a mCODE Patient Bundle"
* id = "example1-mcode-patient-bundle"


* entry[cancerPatient].resource = example1-mcode-cancer-patient
* entry[primaryCancerCondition].resource = example1-mcode-primary-cancer-condition

* entry[cancerDiseaseStatus].resource = example1-mcode-cancer-disease-status
* entry[performanceStatus].resource = example1-mcode-ecog-performance-status

* entry[tumorMarker][0].resource = example1-mcode-tumor-marker-er
* entry[tumorMarker][1].resource = example1-mcode-tumor-marker-pr
* entry[tumorMarker][2].resource = example1-mcode-tumor-marker-her2
* entry[tumorMarker][3].resource = example1-mcode-tumor-marker-oncotype-dx
* entry[cancerRelatedRadiationProcedure].resource = example1-mcode-cancer-related-surgical-procedure-mastectomy
* entry[cancerRelatedSurgicalProcedure].resource = example1-mcode-cancer-related-radiation-procedure
* entry[cancerStage][0].resource = example1-mcode-tnm-clinical-stage-group
* entry[cancerStage][1].resource = example1-mcode-tnm-primary-tumor-category
* entry[cancerStage][2].resource = example1-mcode-tnm-clinical-regional-nodes-category
* entry[cancerStage][3].resource = example1-mcode-tnm-clinical-distant-metastases-category
* entry[cancerGeneticVariant].resource = example1-mcode-cancer-genetic-variant
* entry[cancerGenomicsReport].resource = example1-mcode-cancer-genomics-report
* entry[geneticSpecimen].resource = example1-mcode-genetic-specimen
* entry[genomicRegionStudied].resource = example1-mcode-genomic-region-studied

* entry[smokingStatus].resource = example1-us-core-smoking-status
* entry[medication][0].resource = example1-mcode-cancer-related-medication-chemo-doxorubicin
* entry[medication][1].resource = example1-mcode-cancer-related-medication-chemo-cyclophosphamide
* entry[medication][2].resource = example1-mcode-cancer-related-medication-chemo-paclitaxel
* entry[medication][3].resource = example1-mcode-cancer-related-medication-anastrozole
* entry[procedure][0].resource = example1-us-core-procedure-biopsy
* entry[procedure][1].resource = example1-us-core-procedure-mammogram
* entry[familyHistory][0].resource = example1-family-member-history-aunt
* entry[familyHistory][1].resource = example1-family-member-history-sister
* entry[familyHistory][2].resource = example1-family-member-history-uncle
* entry[diagnosticReport].resource = example1-diagnosticreport-pathology
* entry[observation][0].resource = example1-observation-smoking-history
* entry[observation][1].resource = example1-observation-tumor-invasion-negative
* entry[observation][2].resource = example1-observation-tumor-negative-margins
* entry[observation][3].resource = example1-observation-tumor-sentinel-nodes
* entry[observation][4].resource = example1-observation-tumor-size
* entry[observation][5].resource = example1-observation-tumor-dcis
* entry[practitioner][0].resource = example1-practitioner1-mcode
* entry[practitioner][1].resource = example1-practitioner2-mcode
* entry[organization].resource = example1-organization1-mcode


/*
Example 1 resources not included:

// Will be included once we merge in the experimental profile
example1-specimen-tumor

// Comorbid conditions - waiting on decision on how these will be profiled
example1-us-core-condition-anxiety
example1-mcode-comorbid-condition-depression
example1-mcode-comorbid-condition-hypertension
*/