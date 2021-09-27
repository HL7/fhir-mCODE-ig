In addition to individual examples of each profile, this extended example demonstrates how mCODE can be used to represent a clinically realistic scenario.
* When information in the scenario does not map on to mCODE profiles, we provide examples using [USCore](http://hl7.org/fhir/us/core/index.html) or standard FHIR resources.
* For the sake of brevity, only a subset of examples will be shown in cases where the FHIR representation patter is the same. For example, we only show one example of MedicationAdministration when in reality, there could be 4 cycles, of 3 medications that could be repeated over a 28 day cycle. Since the only difference would be the day of the administration, then we omit it assuming that the implementer understands that the representation pattern is the same except for timestamps.

### Patient description

Patient Jenny M. is a 55 year old non-Hispanic white female with a past medical history significant for depression, a 20-pack-year history of smoking (current smoker), anxiety, and hypertension. Her family history was significant for a maternal aunt with ovarian cancer at age 69, a sister with breast cancer at age 64, and deceased paternal uncle due to pancreatic cancer.

During a routine screening mammography in February 2018, an abnormality was detected as a possible mass and suspected breast cancer. The gynecologist performing the biopsy refers the patient to an oncologist for further workup. An ultrasound-guided biopsy was performed along with prognostic tumor marker tests with [`ER positive`](Observation-tumor-marker-test-er-jenny-m.html), [`PR negative`](Observation-tumor-marker-test-pr-jenny-m.html), and [`HER2 negative`](Observation-tumor-marker-test-her2-jenny-m.html). The patient is referred to an oncologist who clinically reviews the mammogram and tumor marker results, and clinical staged as [`cT3`](Observation-tnm-clinical-primary-tumor-category-jenny-m.html)[`N0`](Observation-tnm-clinical-regional-nodes-category-jenny-m.html).

Genetic counseling ordered a [7 gene panel](https://www.invitae.com/en/physician/tests/50001/), which revealed a [pathogenic variant in PALB2 (`c.3549C>A`)](https://www.ncbi.nlm.nih.gov/clinvar/variation/128144/).[^1]

[^1]: For the purposes of this example, we are assuming that a single relevant variant was returned by the clinical genomics laboratory. In practice, genomics testing may return (many) more variants. The standards for representing genomics data are currently under development by the [HL7 Clinical Genomics Work Group](https://confluence.hl7.org/display/CGW/WorkGroup+Home). The expectation is that mCODE will adopt those standards when they are completed.

A partial mastectomy was performed, revealing a 2.5 cm tumor with no lymph-vascular invasion and negative margins of excision. Three sentinel lymph nodes were excised and were negative for metastatic carcinoma.  The tumor specimen was sent to the pathologist. The [`pathology report`](DiagnosticReport-us-core-diagnosticreport-lab-jenny-m.html) revealed a [`2.5cm malignant tumor`](Observation-tumor-size-jenny-m.html) histological grade 2 invasive ductal adenocarcinoma with prognostic tumor markers ER positive, PR negative, and HER2 negative. The patient is pathologically staged as [`pT3`](Observation-tnm-pathologic-primary-tumor-category-jenny-m.html) [`pN0`](Observation-tnm-pathologic-regional-nodes-category-jenny-m.html) [`M0`](Observation-tnm-pathologic-distant-metastases-category-jenny-m.html), [`stage group IIB`](Observation-tnm-pathologic-stage-group-jenny-m.html).

A [21-gene RT-PCR assay](https://www.oncotypeiq.com/en-US/breast-cancer/healthcare-professionals/oncotype-dx-breast-recurrence-score/about-the-test) yielded a recurrence score of 47.

Treatment options were discussed between the patient and the medical oncologist. With an [`ECOG performance score`](Observation-ecog-performance-status-jenny-m.html) of 0, the patient agrees to receive an AC-T chemotherapy regimen. She received four cycles of doxorubicin (60 mg/m² IV) and cyclophosphamide (600 mg/m² IV) followed by paclitaxel (175 mg/m² IV) (AC-T), administered on a dose-dense schedule. She subsequently received whole breast radiation therapy with regional nodal irradiation.

One month following the completion of first-line therapy, the patient is evaluated and with her disease status improving.  The patient will under surveillance imaging and monitoring.

A timeline of the narrative is illustrated in the following diagram:

<div style="text-align: center;">
<img src="mCODE-PersonaExample.svg" alt="Example Timeline" />
</div>

### FHIR instances from mCODE elements

* [`cancer-patient-jenny-m`](Patient-cancer-patient-jenny-m.html) ([CancerPatient])
* [`cancer-disease-status-jenny-m`](Observation-cancer-disease-status-jenny-m.html) ([CancerDiseaseStatus])
* [`cancer-related-mcode-comorbidities-elixhauser-jenny-m`](Observation-cancer-related-mcode-comorbidities-elixhauser-jenny-m.html) ([ComorbiditiesElixhauser])
* [`us-core-condition-depression-jenny-m`](Condition-us-core-condition-depression-jenny-m.html) ([ComorbiditiesElixhauser])
* [`us-core-condition-hypertension-jenny-m`](Condition-us-core-condition-hypertension-jenny-m.html) ([ComorbiditiesElixhauser])
* [`ecog-performance-status-jenny-m`](Observation-ecog-performance-status-jenny-m.html) ([ECOGPerformanceStatus])
* [`cancer-related-surgical-procedure-jenny-m`](Procedure-cancer-related-surgical-procedure-jenny-m.html) ([CancerRelatedSurgicalProcedure])
* [`mcode-patient-bundle-jenny-m`](Bundle-mcode-patient-bundle-jenny-m.html) ([MCODEPatientBundle])
* [`primary-cancer-condition-jenny-m`](Condition-primary-cancer-condition-jenny-m.html) ([PrimaryCancerCondition])
* [`tnm-clinical-stage-group-jenny-m`](Observation-tnm-clinical-stage-group-jenny-m.html) ([CancerStageGroup])
* [`tnm-clinical-primary-tumor-category-jenny-m`](Observation-tnm-clinical-primary-tumor-category-jenny-m.html) ([TNMPrimaryTumorCategory])
* [`tnm-clinical-regional-nodes-category-jenny-m`](Observation-tnm-clinical-regional-nodes-category-jenny-m.html) ([TNMRegionalNodesCategory])
* [`tnm-clinical-distant-metastases-category-jenny-m`](Observation-tnm-clinical-distant-metastases-category-jenny-m.html) ([TNMDistantMetastasesCategory])
* [`tnm-pathologic-stage-group-jenny-m`](Observation-tnm-pathologic-stage-group-jenny-m.html) ([CancerStageGroup])
* [`tnm-pathologic-primary-tumor-category-jenny-m`](Observation-tnm-pathologic-primary-tumor-category-jenny-m.html) ([TNMPrimaryTumorCategory])
* [`tnm-pathologic-regional-nodes-category-jenny-m`](Observation-tnm-pathologic-regional-nodes-category-jenny-m.html) ([TNMRegionalNodesCategory])
* [`tnm-pathologic-distant-metastases-category-jenny-m`](Observation-tnm-pathologic-distant-metastases-category-jenny-m.html) ([TNMDistantMetastasesCategory])
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
* [`cancer-related-medication-administration-doxorubicin-jenny-m`](MedicationAdministration-cancer-related-medication-administration-doxorubicin-jenny-m.html) ([CancerRelatedMedicationAdministration])
* [`radiotherapy-treatment-summary-chest-wall-jenny-m`](Procedure-radiotherapy-treatment-summary-chest-wall-jenny-m.html) ([RadiotherapyCourseSummary])

### FHIR instances from _non_-mCODE elements

* [`us-core-practitioner-owen-oncologist`](Practitioner-us-core-practitioner-owen-oncologist.html) (US Core Practitioner)
* [`us-core-procedure-biopsy-jenny-m`](Procedure-us-core-procedure-biopsy-jenny-m.html) (US Core Procedure)
* [`us-core-procedure-mammogram-jenny-m`](Procedure-us-core-procedure-mammogram-jenny-m.html) (US Core Procedure)
* [`us-core-smokingstatus-jenny-m`](Observation-us-core-smokingstatus-jenny-m.html) (US Core Smoking Status)
* [`observation-smoking-history-jenny-m`](Observation-observation-smoking-history-jenny-m.html) (Observation)
* [`us-core-condition-anxiety-jenny-m`](Condition-us-core-condition-anxiety-jenny-m.html) (US Core Condition)
* [`family-member-history-aunt-jenny-m`](FamilyMemberHistory-family-member-history-aunt-jenny-m.html) (FamilyMemberHistory)
* [`family-member-history-sister-jenny-m`](FamilyMemberHistory-family-member-history-sister-jenny-m.html) (FamilyMemberHistory)
* [`family-member-history-uncle-jenny-m`](FamilyMemberHistory-family-member-history-uncle-jenny-m.html) (FamilyMemberHistory)
* [`tumor-specimen-left-breast-jenny-m`](Specimen-tumor-specimen-left-breast-jenny-m.html) (Specimen)
* [`us-core-diagnosticreport-lab-jenny-m`](DiagnosticReport-us-core-diagnosticreport-lab-jenny-m.html) (DiagnosticReport)
* [`us-core-observation-lab-tumor-invasion-jenny-m`](Observation-us-core-observation-lab-tumor-invasion-jenny-m.html) (Observation)
* [`us-core-observation-lab-tumor-margins-jenny-m`](Observation-us-core-observation-lab-tumor-margins-jenny-m.html) (Observation)
* [`us-core-observation-lab-sentinel-nodes-jenny-m`](Observation-us-core-observation-lab-sentinel-nodes-jenny-m.html) (Observation)
* [`Observation-tumor-size-jenny-m.html`](Observation-tumor-size-jenny-m.html) (Observation)
* [`scenario1-observation-dcis`](Observation-us-core-observation-lab-tumor-dcis-jenny-m.html) (Observation)

{% include markdown-link-references.md %}
