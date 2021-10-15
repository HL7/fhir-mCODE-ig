In addition to individual examples of each , this extended example demonstrates how mCODE can be used to represent a clinically realistic scenario.
* When information in the scenario does not map on to mCODE s, we provide examples using [USCore](http://hl7.org/fhir/us/core/index.html) or standard FHIR resources.
* For the sake of brevity, only a subset of examples will be shown in cases where the FHIR representation patter is the same. For example, we only show one example of MedicationAdministration when in reality, there could be 4 cycles, of 3 medications that could be repeated over a 28 day cycle. Since the only difference would be the day of the administration, then we omit it assuming that the implementer understands that the representation pattern is the same except for timestamps.

### Patient description

[`Patient Jenny M.`](Patient-cancer-patient-jenny-m.html) is a 55 year old non-Hispanic white female with a [`past medical history`](Observation-cancer-related-mcode-comorbidities-elixhauser-jenny-m.html) significant for [`depression`](Condition-us-core-condition-depression-jenny-m.html), a [`20-pack-year history of smoking`](Observation-observation-smoking-history-jenny-m.html) (current smoker), [`anxiety`](Condition-us-core-condition-anxiety-jenny-m.html), and [`hypertension`](Condition-us-core-condition-hypertension-jenny-m.html). Her family history was significant for a [`maternal aunt with ovarian cancer at age 69`](/FamilyMemberHistory-family-member-history-aunt-jenny-m.json.html), a [`sister with breast cancer at age 64`](FamilyMemberHistory-family-member-history-sister-jenny-m.html), and [`deceased paternal uncle due to pancreatic cancer`](FamilyMemberHistory-family-member-history-uncle-jenny-m.html).

During a routine screening mammography in February 2018, an abnormality was detected as a possible mass and suspected breast cancer. The gynecologist performing the biopsy refers the patient to an oncologist for further workup. An ultrasound-guided biopsy was performed along with prognostic tumor marker tests with [`ER positive`](Observation-tumor-marker-test-er-jenny-m.html), [`PR negative`](Observation-tumor-marker-test-pr-jenny-m.html), and [`HER2 negative`](Observation-tumor-marker-test-her2-jenny-m.html). The patient is referred to an oncologist who clinically reviews the mammogram and tumor marker results, and clinical staged the [`cancer diagnosis`](Condition-primary-cancer-condition-jenny-m.html) as [`cT3`](Observation-tnm-clinical-primary-tumor-category-jenny-m.html)[`N0`](Observation-tnm-clinical-regional-nodes-category-jenny-m.html).

Genetic counseling ordered a [7 gene panel](https://www.invitae.com/en/physician/tests/50001/), which revealed a [pathogenic variant in PALB2 (`c.3549C>A`)](https://www.ncbi.nlm.nih.gov/clinvar/variation/128144/).[^1]

[^1]: For the purposes of this example, we are assuming that a single relevant variant was returned by the clinical genomics laboratory. In practice, genomics testing may return (many) more variants. The standards for representing genomics data are currently under development by the [HL7 Clinical Genomics Work Group](https://confluence.hl7.org/display/CGW/WorkGroup+Home). The expectation is that mCODE will adopt those standards when they are completed.

A [`partial mastectomy`](Procedure-cancer-related-surgical-procedure-jenny-m.html) was performed, revealing a 2.5 cm tumor with no [`lymph-vascular invasion`](Observation-us-core-observation-lab-tumor-invasion-jenny-m.html) and [`negative margins of excision`](Observation-us-core-observation-lab-tumor-margins-jenny-m.html). Three sentinel lymph nodes were excised and were [`negative for metastatic carcinoma`](Observation-us-core-observation-lab-sentinel-nodes-jenny-m).  The [`tumor specimen`](Specimen-tumor-specimen-left-breast-jenny-m.html) was sent to the pathologist. The [`pathology report`](DiagnosticReport-us-core-diagnosticreport-lab-jenny-m.html) revealed a [`2.5cm malignant tumor`](Observation-tumor-size-jenny-m.html) histological grade 2 invasive ductal adenocarcinoma with prognostic tumor markers [`ER positive`](Observation-tumor-marker-test-er-jenny-m.html), [`PR negative`](Observation-tumor-marker-test-pr-jenny-m.html), and [`HER2 negative`](Observation-tumor-marker-test-her2-jenny-m.html). The patient is pathologically staged as [`pT3`](Observation-tnm-pathologic-primary-tumor-category-jenny-m.html) [`pN0`](Observation-tnm-pathologic-regional-nodes-category-jenny-m.html) [`M0`](Observation-tnm-pathologic-distant-metastases-category-jenny-m.html), [`stage group IIB`](Observation-tnm-pathologic-stage-group-jenny-m.html).

A [21-gene RT-PCR assay](https://www.oncotypeiq.com/en-US/breast-cancer/healthcare-professionals/oncotype-dx-breast-recurrence-score/about-the-test) yielded a recurrence score of 47.

Treatment options were discussed between the patient and the medical oncologist. With an [`ECOG performance score`](Observation-ecog-performance-status-jenny-m.html) of 0, the patient agrees to receive an AC-T chemotherapy regimen. She received four cycles of [`doxorubicin (60 mg/m² IV)`](MedicationAdministration-cancer-related-medication-administration-doxorubicin-jenny-m.html) and [`cyclophosphamide (600 mg/m² IV`)](MedicationRequest-cancer-related-medication-request-cyclophosphamide-jenny-m.html) followed by [`paclitaxel (175 mg/m² IV) (AC-T)`](MedicationRequest-cancer-related-medication-request-paclitaxel-jenny-m.html), administered on a dose-dense schedule. She subsequently received [`whole breast radiation therapy`](Procedure-radiotherapy-treatment-summary-chest-wall-jenny-m.html) with regional nodal irradiation.

One month following the completion of first-line therapy, the patient is evaluated and with her [`disease status`](Observation-cancer-disease-status-jenny-m.html) improving.  The patient will undergo surveillance imaging and monitoring.

A timeline of the narrative is illustrated in the following diagram:

<div style="text-align: center;">
<img src="mCODE-PersonaExample.svg" alt="Example Timeline" />
</div>

### FHIR instances from mCODE elements


| **Instance Description** | **mCODE Profile** | **Based On** |
| ------------ | ---------------- | -------------- |
|  [`Cancer Patient: Jenny M`](Patient-cancer-patient-jenny-m.html)  |  [CancerPatient]  |  [USCorePatient] |
|  [`Cancer Disease Status`](Observation-cancer-disease-status-jenny-m.html) | [CancerDiseaseStatus] | [R4Observation]|
|  [`Elixhauser Comorbidities`](Observation-cancer-related-mcode-comorbidities-elixhauser-jenny-m.html) | [ComorbiditiesElixhauser] |  [R4Observation]|
|  [`Genomic Variant`](Observation-cancer-genomic-variant-jenny-m.html) | [CancerGenomicVariant] |[USCoreLaboratoryResultObservation] |
|  [`Medication Request: Doxorubicin`](MedicationRequest-cancer-related-medication-request-doxorubicin-jenny-m.html) | [CancerRelatedMedicationRequest] | [USCoreMedicationRequest] |
|  [`Medication Request: Cyclophosphamide`](MedicationRequest-cancer-related-medication-request-cyclophosphamide-jenny-m.html) | [CancerRelatedMedicationRequest] | [USCoreMedicationRequest] |
|  [`Medication Request: Paclitaxel`](MedicationRequest-cancer-related-medication-request-paclitaxel-jenny-m.html) | [CancerRelatedMedicationRequest] | [USCoreMedicationRequest] |
|  [`Medication Administration: Doxorubicin`](MedicationRequest-cancer-related-medication-administration-doxorubicin-jenny-m.html) | [CancerRelatedMedicationAdministration] | [R4MedicationAdministration]|
|  [`Surgical Procedure: Partial Mastectomy`](Procedure-cancer-related-surgical-procedure-jenny-m.html)|[CancerRelatedSurgicalProcedure] | [USCoreProcedure]|
|  [`Performance Status: ECOG`](Observation-ecog-performance-status-jenny-m.html) | [ECOGPerformanceStatus] | [R4Observation] |
|  [`Genomic Region: BRCA1`](Observation-genomic-region-studied-jenny-m.html) |[GenomicRegionStudied]| [USCoreLaboratoryResultObservation] |
|  [`Genomic Specimen: Left Breast`](Specimen-genomic-specimen-left-breast-jenny-m.html) | [GenomicSpecimen] | [R4Specimen]|
|  [`mCODE Patient Bundle: Jenny M`](Bundle-mcode-patient-bundle-jenny-m.html) | [MCODEPatientBundle]|[R4Bundle] |
|  [`Cancer Diagnosis`](Condition-primary-cancer-condition-jenny-m.html)|[PrimaryCancerCondition] | [USCoreCondition]|
|  [`Radiation Treatment Summary`](Procedure-radiotherapy-treatment-summary-chest-wall-jenny-m.html) | [RadiotherapyCourseSummary]| [USCoreProcedure]
| [`Clinical Cancer Stage: 2B`](Observation-tnm-clinical-stage-group-jenny-m.html) |[CancerStageGroup] | [R4Observation]|
| [`Clinical Primary Tumor Category: cT3`](Observation-tnm-clinical-primary-tumor-category-jenny-m.html) | [TNMPrimaryTumorCategory] | [R4Observation] |
| [`Clinical Regional Lymph Nodes Category: cN0`](Observation-tnm-clinical-regional-nodes-category-jenny-m.html) | [TNMRegionalNodesCategory]| [R4Observation] |
| [`Clinical Distant Metastases Category: cM0`](Observation-tnm-clinical-distant-metastases-category-jenny-m.html)|[TNMDistantMetastasesCategory]| [R4Observation] |
| [`Pathologic Cancer Stage: pT3`](Observation-tnm-pathologic-stage-group-jenny-m.html) |[CancerStageGroup] | [R4Observation] |
| [`Pathologic Primary Tumor Category: pT3`](Observation-tnm-pathologic-primary-tumor-category-jenny-m.html) | [TNMPrimaryTumorCategory] | [R4Observation] |
| [`Pathologic Regional Lymph Nodes Category: pN0`](Observation-tnm-pathologic-regional-nodes-category-jenny-m.html) | [TNMRegionalNodesCategory]| [R4Observation] |
| [`Pathologic Distant Metastases Category: pM0`](Observation-tnm-pathologic-distant-metastases-category-jenny-m.html)| [TNMDistantMetastasesCategory]| [R4Observation] |
| [`Tumor Marker ER Positive`](Observation-tumor-marker-test-er-jenny-m.html)| [TumorMarkerTest] | [USCoreLaboratoryResultObservation]|
| [`Tumor Marker PR Negative`](Observation-tumor-marker-test-pr-jenny-m.html)| [TumorMarkerTest] | [USCoreLaboratoryResultObservation]|
| [`Tumor Marker Her2 Negative`](Observation-tumor-marker-test-her2-jenny-m.html)| [TumorMarkerTest] | [USCoreLaboratoryResultObservation]|
| [`Oncotype DX Breast Recurrence Score Assay: High`](Observation-tumor-marker-test-oncotype-dx-jenny-m.html)| [USCoreLaboratoryResultObservation]|
| [`Tumor Size: 2.5cm`](Observation-tumor-size-jenny-m.html)| [TumorSize]| [R4Observation]|
| [`Tumor Specimen: Left Breast``](Specimen-tumor-specimen-left-breast-jenny-m.html)| [TumorSpecimen] | [R4Specimen] |
| [`Cancer Genomics Report`](DiagnosticReport-cancer-genomics-report-jenny-m.html)| [CancerGenomicsReport] | [USCoreLaboratoryResultObservation]|
{: .grid }


### FHIR instances from _non_-mCODE elements

| **Instance Description**  | **Profile/Resource** |
| ------------ |  -------------- |
| [`Smoking History: 20 Pack-Years`](Observation-observation-smoking-history-jenny-m.html) |[R4Observation]|
| [`Aunt With Ovarian Cancer`](FamilyMemberHistory-family-member-history-aunt-jenny-m.html) |[R4FamilyMemberHistory]|
| [`Sister With Breast Cancer`](FamilyMemberHistory-family-member-history-sister-jenny-m.html) |[R4FamilyMemberHistory]|
| [`Uncle With Pancreatic Cancer`](FamilyMemberHistory-family-member-history-uncle-jenny-m.html) |[R4FamilyMemberHistory]|
| [`Anxiety Diagnosis`](Condition-us-core-condition-anxiety-jenny-m.html) |[USCoreCondition]|
| [`Depression Diagnosis`](Condition-us-core-condition-depression-jenny-m.html) |[USCoreCondition]|
| [`Hypertension Diagnosis`](Condition-us-core-condition-hypertension-jenny-m.html) |[USCoreCondition]|
| [`Pathology Report`](DiagnosticReport-us-core-diagnosticreport-lab-jenny-m.html) |[USCoreDiagnosticReport]|
| [`DCIS intraductal extension Report`](Observation-us-core-observation-lab-tumor-dcis-jenny-m.html) |[USCoreLaboratoryResultObservation]|
| [`Tumor Invasion Report`](Observation-us-core-observation-lab-tumor-invasion-jenny-m.html) |[USCoreLaboratoryResultObservation]|
| [`Tumor Margins Report`](Observation-us-core-observation-lab-tumor-margins-jenny-m.html) |[USCoreLaboratoryResultObservation]|
| [`Sentinel Lymph Nodes Report`](Observation-us-core-observation-lab-sentinel-nodes-jenny-m.html) |[USCoreLaboratoryResultObservation]|
| [`Oncologist Owen`](Practitioner-us-core-practitioner-owen-oncologist.html) |[USCorePractitioner]|
| [`Breast Biopsy Procedure`](Procedure-us-core-procedure-biopsy-jenny-m.html) |[USCoreProcedure]|
| [`Mammogram Procedure`](Procedure-us-core-procedure-mammogram-jenny-m.html) |[USCoreProcedure]|
| [`Smoking Status: Smokes Daily`](Observation-us-core-smokingstatus-jenny-m.html) |[USCoreSmokingStatus]|
{: .grid }

{% include markdown-link-references.md %}
