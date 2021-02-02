In addition to individual examples of each profile, this extended example demonstrates how mCODE can be used to represent a clinically realistic scenario. When information in the scenario does not map onto mCODE profiles, we provide examples using [USCore](http://hl7.org/fhir/us/core/index.html) or standard FHIR resources.

#### Patient description

Patient Jenny M. is a 55 year old non-Hispanic white female with a past medical history significant for depression, a 20-pack-year history of smoking (current smoker), anxiety, and hypertension. Her family history was significant for a maternal aunt with ovarian cancer at age 69, a sister with breast cancer at age 64, and deceased paternal uncle due to pancreatic cancer.

She presented for routine screening mammography in March 2018. Performance status was ECOG 0. An abnormality was detected, followed by ultrasound-guided biopsy which revealed a Grade 2 invasive ductal adenocarcinoma, ER positive, PR negative, HER2 negative. Pre-operative workup revealed no other disease in either breast. Genetic counseling ordered a [7 gene panel](https://www.invitae.com/en/physician/tests/50001/), which revealed a [pathogenic variant in PALB2 (`c.3549C>A`)](https://www.ncbi.nlm.nih.gov/clinvar/variation/128144/).[^1]

[^1]: For the purposes of this example, we are assuming that a single relevant variant was returned by the clinical genomics laboratory. In practice, genomics testing may return (many) more variants. The standards for representing genomics data are currently under development by the [HL7 Clinical Genomics Work Group](https://confluence.hl7.org/display/CGW/WorkGroup+Home). The expectation is that mCODE will adopt those standards when they are completed.

A partial mastectomy was performed, revealing a 2.5 cm tumor with no lymph-vascular invasion and negative margins of excision. Ductal carcinoma in situ was noted, also completely excised. Three sentinel lymph nodes were excised and were negative for metastatic carcinoma. The primary tumor was staged as cT3N0.

A [21-gene RT-PCR assay](https://www.oncotypeiq.com/en-US/breast-cancer/healthcare-professionals/oncotype-dx-breast-recurrence-score/about-the-test) yielded a recurrence score of 47. She received four cycles of doxorubicin (60 mg/m² IV) and cyclophosphamide (600 mg/m² IV) followed by paclitaxel (175 mg/m² IV) (AC-T), administered on a dose-dense schedule. She subsequently received whole breast radiation therapy with regional nodal irradiation. Following RT, she began anastrozole (1 mg daily).

The patient is two years out from surgery and has undergone surveillance imaging and has no evidence of recurrent disease or new imaging. She continues to take adjuvant endocrine therapy (anastrozole).

#### FHIR instances from mCODE elements

* [`cancer-patient-jenny-m`](Patient-cancer-patient-jenny-m.html) ([CancerPatient])
* [`cancer-disease-status-jenny-m`](Observation-cancer-disease-status-jenny-m.html) ([CancerDiseaseStatus])
* [`cancer-related-comorbidities-elixhauser-jenny-m`](Observation-cancer-related-comorbidities-elixhauser-jenny-m.html) ([ComorbidCondition])
* [`us-core-condition-depression-jenny-m`](Condition-us-core-condition-depression-jenny-m.html) ([ComorbidCondition])
* [`us-core-condition-hypertension-jenny-m`](Condition-us-core-condition-hypertension-jenny-m.html) ([ComorbidCondition])
* [`ecog-performance-status-jenny-m`](Observation-ecog-performance-status-jenny-m.html) ([ECOGPerformanceStatus])
* [`cancer-related-surgical-procedure-jenny-m`](Procedure-cancer-related-surgical-procedure-jenny-m.html) ([CancerRelatedSurgicalProcedure])
* [`mcode-patient-bundle-jenny-m`](Bundle-mcode-patient-bundle-jenny-m.html) ([MCODEPatientBundle])
* [`primary-cancer-condition-jenny-m`](Condition-primary-cancer-condition-jenny-m.html) ([PrimaryCancerCondition])
* [`tnm-clinical-stage-group-jenny-m`](Observation-tnm-clinical-stage-group-jenny-m.html) ([TNMClinicalStageGroup])
* [`tnm-primary-tumor-category-jenny-m`](Observation-tnm-primary-tumor-category-jenny-m.html) ([TNMClinicalPrimaryTumorCategory])
* [`tnm-clinical-regional-nodes-category-jenny-m`](Observation-tnm-clinical-regional-nodes-category-jenny-m.html) ([TNMClinicalRegionalNodesCategory])
* [`tnm-clinical-distant-metastases-category-jenny-m`](Observation-tnm-clinical-distant-metastases-category-jenny-m.html) ([TNMClinicalDistantMetastasesCategory])
* [`tumor-marker-test-er-jenny-m`](Observation-tumor-marker-test-er-jenny-m.html)  ([TumorMarkerTest])
* [`tumor-marker-test-pr-jenny-m`](Observation-tumor-marker-test-pr-jenny-m.html)  ([TumorMarkerTest])
* [`tumor-marker-test-her2-jenny-m`](Observation-tumor-marker-test-her2-jenny-m.html)  ([TumorMarkerTest])
* [`tumor-marker-test-oncotype-dx-jenny-m`](Observation-tumor-marker-test-oncotype-dx-jenny-m.html)  ([TumorMarkerTest])
* [`cancer-genomics-report-jenny-m`](DiagnosticReport-cancer-genomics-report-jenny-m.html) ([CancerGenomicsReport])
* [`genomic-region-studied-jenny-m`](Observation-genomic-region-studied-jenny-m.html) ([GenomicRegionStudied])
* [`genetic-specimen-left-breast-jenny-m`](Specimen-genetic-specimen-left-breast-jenny-m.html) ([GeneticSpecimen])
* [`cancer-genetic-variant-jenny-m`](Observation-cancer-genetic-variant-jenny-m.html) ([CancerGeneticVariant])
* [`cancer-related-medication-request-doxorubicin-jenny-m`](MedicationRequest-cancer-related-medication-request-doxorubicin-jenny-m.html) ([CancerRelatedMedicationRequest])
* [`cancer-related-medication-request-cyclophosphamide-jenny-m`](MedicationRequest-cancer-related-medication-request-cyclophosphamide-jenny-m.html) ([CancerRelatedMedicationRequest])
* [`cancer-related-medication-request-paclitaxel-jenny-m`](MedicationRequest-cancer-related-medication-request-paclitaxel-jenny-m.html) ([CancerRelatedMedicationRequest])
* [`cancer-related-medication-request-anastrozole-jenny-m`](MedicationRequest-cancer-related-medication-request-anastrozole-jenny-m.html) ([CancerRelatedMedicationRequest])
* [`teleradiotherapy-prescription-delivery-jenny-m`](Procedure-teleradiotherapy-prescription-delivery-jenny-m.html) ([TeleradiotherapyPrescriptionDelivery])


#### FHIR instances from _non_-mCODE elements

* [`us-core-practitioner-owen-oncologist`](Practitioner-us-core-practitioner-owen-oncologist.html) (US Core Practitioner)
* [`us-core-procedure-biopsy-jenny-m`](Procedure-us-core-procedure-biopsy-jenny-m.html) (US Core Procedure)
* [`us-core-procedure-mammogram-jenny-m`](Procedure-us-core-procedure-mammogram-jenny-m.html) (US Core Procedure)
* [`us-core-smokingstatus-jenny-m`](Observation-us-core-smokingstatus-jenny-m.html) (US Core Smoking Status)
* [`observation-smoking-history-jenny-m`](Observation-observation-smoking-history-jenny-m.html) (Observation)
* [`us-core-condition-anxiety-jenny-m`](Condition-us-core-condition-anxiety-jenny-m.html) (US Core Condition)
* [`family-member-history-aunt-jenny-m`](FamilyMemberHistory-family-member-history-aunt-jenny-m.html) (FamilyMemberHistory)
* [`family-member-history-sister-jenny-m`](FamilyMemberHistory-family-member-history-sister-jenny-m.html) (FamilyMemberHistory)
* [`family-member-history-uncle-jenny-m`](FamilyMemberHistory-family-member-history-uncle-jenny-m.html) (FamilyMemberHistory)
* [`specimen-left-breast-jenny-m`](Specimen-specimen-left-breast-jenny-m.html) (Specimen)
* [`us-core-diagnosticreport-lab-jenny-m`](DiagnosticReport-us-core-diagnosticreport-lab-jenny-m.html) (DiagnosticReport)
* [`us-core-observation-lab-tumor-invasion-jenny-m`](Observation-us-core-observation-lab-tumor-invasion-jenny-m.html) (Observation)
* [`us-core-observation-lab-tumor-margins-jenny-m`](Observation-us-core-observation-lab-tumor-margins-jenny-m.html) (Observation)
* [`us-core-observation-lab-sentinel-nodes-jenny-m`](Observation-us-core-observation-lab-sentinel-nodes-jenny-m.html) (Observation)
* [`jenny-m-2018-03-06`](Observation-tumor-size-jenny-m.html) (Observation)
* [`scenario1-observation-dcis`](Observation-us-core-observation-lab-tumor-dcis.html) (Observation)


