<style>
  a code {
    font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI",
    "Roboto", "Oxygen", "Ubuntu", "Cantarell", "Fira Sans", "Droid Sans",
    "Helvetica Neue", sans-serif !important;

    text-decoration: underline;
    text-decoration-color: #0088f9;
    background-color: #f4faff;
  }
</style>

In addition to providing examples of mCODE profiles, this extended example demonstrates how to represent a clinically realistic scenario of a pediatric cancer patient.

* When information in the scenario does not map on to mCODE profiles, we provide examples using [USCore](http://hl7.org/fhir/us/core/index.html) or standard FHIR resources.
* We condense some repeated patterns. For example, we only show one example of MedicationAdministration when in reality, there could be multiple cycles, the only difference being the day of the administration.

### Patient description

<div class="well" style="padding: 0.5em;background-color: white;border: 1px solid #0088f9;">
<strong>Note:</strong> patient and clinical data in the narrative example below are linked to the relevant FHIR examples using <a href="#"><code style="background-color: #f5f2f0; color: #000;">this styling</code></a>.
</div>

[`Patient Brian L.`](Patient-cancer-patient-brian-l.html) is a 3 year old non-Hispanic Asian male with a past medical history of an [`atrial septal defect`](Condition-us-core-condition-atrial-septal-defect-brian-l.html)  that was repaired with surgery. His family history includes a [`grandmother with breast cancer at age 55`](FamilyMemberHistory-family-member-history-grandmother-brian-l.html).

During January mber 2024, Brian starts to complain of pain in his knees and his parents notice abnormal bruising. His parents take him to the pediatrician, who orders a complete blood count. The test revealed ['abnormal blood counts'](DiagnosticReport-us-core-diagnosticreport-lab-brian-l): low hemoglobin (6.7), low hematocrit (22.3), and high white blood cells (88.5). The pediatrician referred the patient to a hospital for further workup. A ['bone marrow aspiration'](Procedure-us-core-procedure-bone-marrow-aspiration-brian-l) and ['biopsy'](Procedure-us-core-procedure-bone-marrow-biopsy-brian-l) were performed, which showed a ['predominance of immature cells'](Procedure-bone-marrow-biopsy-brian-l), indicating leukemia. To further characterize the cancer, ['immunophenotyping occurred'](Observation-immunophenotype-brian-l), which identified the leukemia as ['B-cell acute lymphoblastic leukemia'](Condition-primary-cancer-condition-brian-l). 

Treatment options were discussed between the patient's family and the medical oncologist. With a Lansky Play Performance status of 3, the family agreed to receive a 28-day treatment regimen of cyclophosphamide (750 mg/m2 IV once per day on days 1 & 8), idrarubicin (9 mg/m2 IV once per day on days 1, 2, 3, 8), vincristine (2 mg IV once per day on days 1, 8, 15, 22), and prednisone (60 mg/m2/day IV or PO on days 1 to 7, 15 to 21).






Treatment options were discussed between the patient and the medical oncologist. With an [`ECOG performance score`](Observation-ecog-performance-status-jenny-m.html) of 0, the patient agrees to receive an AC-T chemotherapy regimen. She received four cycles of [`doxorubicin (60 mg/m² IV)`](MedicationAdministration-cancer-related-medication-admin-doxorubicin-jenny-m.html) and [`cyclophosphamide (600 mg/m² IV`)](MedicationAdministration-cancer-related-medication-admin-cyclophosphamide-jenny-m.html) followed by [`paclitaxel (175 mg/m² IV) (AC-T)`](MedicationAdministration-cancer-related-medication-admin-paclitaxel-jenny-m.html), administered on a dose-dense schedule. She subsequently received [`whole breast radiation therapy`](Procedure-radiotherapy-treatment-summary-chest-wall-jenny-m.html) with regional nodal irradiation.

One month following the completion of first-line therapy, the patient is evaluated and with her [`disease status`](Observation-cancer-disease-status-jenny-m.html) improving.  The patient will undergo surveillance imaging and monitoring.

A timeline of the narrative is illustrated in the following diagram:

<div style="text-align: center;">
<img src="mCODE-PersonaExample.svg" alt="Example Timeline" />
</div>

### FHIR instances from mCODE elements

| **Instance Description** | **mCODE Profile** |
| ------------ | ---------------- |
| [`Cancer Diagnosis`](Condition-primary-cancer-condition-jenny-m.html)|[PrimaryCancerCondition] |
| [`Cancer Disease Status: Condition Improving`](Observation-cancer-disease-status-jenny-m.html) | [CancerDiseaseStatus] |
| [`Cancer Patient: Jenny M`](Patient-cancer-patient-jenny-m.html)  | [CancerPatient]  |
| [`Clinical CancerStage: 2B`](Observation-tnm-clinical-stage-group-jenny-m.html) |[TNMStageGroup] |
| [`Clinical Primary Tumor Category: cT3`](Observation-tnm-clinical-primary-tumor-category-jenny-m.html) | [TNMPrimaryTumorCategory] |
| [`Clinical Regional Lymph Nodes Category: cN0`](Observation-tnm-clinical-regional-nodes-category-jenny-m.html) | [TNMRegionalNodesCategory]|
| [`Clinical Distant Metastases Category: cM0`](Observation-tnm-clinical-distant-metastases-category-jenny-m.html)|[TNMDistantMetastasesCategory]|
| [`Comorbidities: Anxiety, Depression, Hypertension`](Observation-cancer-related-comorbidities-jenny-m.html) | [Comorbidities] |
| [`Genomic Region: BRCA1`](Observation-genomic-region-studied-jenny-m.html) |[GenomicRegionStudied]|
| [`Genomics Report`](DiagnosticReport-genomics-report-jenny-m.html)| [GenomicsReport] |
| [`Genomic Variant Results: Pathogenic Variant in PALB2`](Observation-genomic-variant-jenny-m.html) | [GenomicVariant] |
| [`Human Specimen: Left Breast`](Specimen-human-specimen-left-breast-jenny-m.html) | [HumanSpecimen] |
| [`mCODE Patient Bundle: Jenny M`](Bundle-mcode-patient-bundle-jenny-m.html) | [MCODEPatientBundle]|
| [`Medication Administration: Cyclophosphamide`](MedicationAdministration-cancer-related-medication-admin-cyclophosphamide-jenny-m.html) | [CancerRelatedMedicationAdministration] |
| [`Medication Administration: Paclitaxel`](MedicationAdministration-cancer-related-medication-admin-paclitaxel-jenny-m.html) | [CancerRelatedMedicationAdministration] | 
| [`Medication Administration: Doxorubicin`](MedicationAdministration-cancer-related-medication-admin-doxorubicin-jenny-m.html) | [CancerRelatedMedicationAdministration] |
| [`Medication Request: Doxorubicin`](MedicationRequest-cancer-related-medication-request-doxorubicin-jenny-m.html) | [CancerRelatedMedicationRequest] |
| [`Medication Request: Cyclophosphamide`](MedicationRequest-cancer-related-medication-request-cyclophosphamide-jenny-m.html) | [CancerRelatedMedicationRequest] |
| [`Medication Request: Paclitaxel`](MedicationRequest-cancer-related-medication-request-paclitaxel-jenny-m.html) | [CancerRelatedMedicationRequest] |
| [`Oncotype DX Breast Recurrence Score Assay: 47/High`](Observation-tumor-marker-test-oncotype-dx-jenny-m.html)| [TumorMarkerTest] |
| [`Pathologic CancerStage Group: stage IIB`](Observation-tnm-pathologic-stage-group-jenny-m.html) |[TNMStageGroup] |
| [`Pathologic Primary Tumor Category: pT3`](Observation-tnm-pathologic-primary-tumor-category-jenny-m.html) | [TNMPrimaryTumorCategory] |
| [`Pathologic Regional Lymph Nodes Category: pN0`](Observation-tnm-pathologic-regional-nodes-category-jenny-m.html) | [TNMRegionalNodesCategory]|
| [`Pathologic Distant Metastases Category: pM0`](Observation-tnm-pathologic-distant-metastases-category-jenny-m.html)| [TNMDistantMetastasesCategory]|
| [`Performance Status: ECOG`](Observation-ecog-performance-status-jenny-m.html) | [ECOGPerformanceStatus] |
| [`Radiation Treatment Summary`](Procedure-radiotherapy-treatment-summary-chest-wall-jenny-m.html) | [RadiotherapyCourseSummary]|
| [`Seven Gene Panel: BRCA1, BRCA2, CDH1, PALB2, PTEN, STK11, TP53`](Observation-genomic-region-studied-jenny-m.html) |[GenomicRegionStudied]|
| [`Surgical Procedure: Partial Mastectomy`](Procedure-cancer-related-surgical-procedure-jenny-m.html)|[CancerRelatedSurgicalProcedure] |
| [`Tumor Marker ER Positive`](Observation-tumor-marker-test-er-jenny-m.html)| [TumorMarkerTest] |
| [`Tumor Marker PR Negative`](Observation-tumor-marker-test-pr-jenny-m.html)| [TumorMarkerTest] |
| [`Tumor Marker Her2 Negative`](Observation-tumor-marker-test-her2-jenny-m.html)| [TumorMarkerTest] |
| [`Tumor Size: 2.5cm`](Observation-tumor-size-jenny-m.html)| [TumorSize]|
| [`Tumor Specimen: Left Breast`](Specimen-tumor-specimen-left-breast-jenny-m.html)| [HumanSpecimen] |
{: .grid }


### FHIR instances from _non_-mCODE elements

| **Instance Description**  | **Profile/Resource** |
| ------------ |  -------------- |
| [`Smoking History: 20 Pack-Years`](Observation-observation-smoking-pack-years-jenny-m.html) |[R4Observation]|
| [`Aunt With Ovarian Cancer`](FamilyMemberHistory-family-member-history-aunt-jenny-m.html) |[R4FamilyMemberHistory]|
| [`Sister With Breast Cancer`](FamilyMemberHistory-family-member-history-sister-jenny-m.html) |[R4FamilyMemberHistory]|
| [`Uncle With Pancreatic Cancer`](FamilyMemberHistory-family-member-history-uncle-jenny-m.html) |[R4FamilyMemberHistory]|
| [`Comorbidity: Anxiety Diagnosis`](Condition-us-core-condition-anxiety-jenny-m.html) |[USCoreConditionProblemHealthConcern]|
| [`Comorbidity: Depression Diagnosis`](Condition-us-core-condition-depression-jenny-m.html) |[USCoreConditionProblemHealthConcern]|
| [`Comorbidity: Hypertension Diagnosis`](Condition-us-core-condition-hypertension-jenny-m.html) |[USCoreConditionProblemHealthConcern]|
| [`Pathology Report`](DiagnosticReport-us-core-diagnosticreport-lab-jenny-m.html) |[USCoreDiagnosticReport]|
| [`DCIS intraductal extension Report`](Observation-us-core-observation-lab-tumor-dcis-jenny-m.html) |[USCoreLaboratoryResultObservation]|
| [`Histologic Grade in Specimen: Grade 2`](Observation-us-core-observation-lab-tumor-grade-jenny-m.html) |[USCoreLaboratoryResultObservation]|
| [`Tumor Invasion Report`](Observation-us-core-observation-lab-tumor-invasion-jenny-m.html) |[USCoreLaboratoryResultObservation]|
| [`Tumor Margins Report`](Observation-us-core-observation-lab-tumor-margins-jenny-m.html) |[USCoreLaboratoryResultObservation]|
| [`Sentinel Lymph Nodes Report: Negative`](Observation-us-core-observation-lab-sentinel-nodes-jenny-m.html) |[USCoreLaboratoryResultObservation]|
| [`Oncologist Owen`](Practitioner-us-core-practitioner-owen-oncologist.html) |[USCorePractitioner]|
| [`Breast Biopsy Procedure`](Procedure-us-core-procedure-biopsy-jenny-m.html) |[USCoreProcedure]|
| [`Mammogram Procedure`](Procedure-us-core-procedure-mammogram-jenny-m.html) |[USCoreProcedure]|
| [`Smoking Status: Smokes Daily`](Observation-us-core-smokingstatus-jenny-m.html) |[USCoreSmokingStatus]|
{: .grid }

{% include markdown-link-references.md %}