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

During January 2024, Brian starts to complain of pain in his knees and his parents notice abnormal bruising. His parents take him to the pediatrician, who orders a complete blood count. The test revealed [`abnormal blood counts`](DiagnosticReport-us-core-diagnosticreport-cbc-brian-l.html): low hemoglobin (6.7 g/dL), low hematocrit (22.3%), and high white blood cells (88.5 10*3/uL). The pediatrician referred the patient to a hospital for further workup. A [`bone marrow aspiration`](Procedure-us-core-procedure-bone-marrow-aspiration-brian-l.html) and [`biopsy`](Procedure-us-core-procedure-bone-marrow-biopsy-brian-l.html) were performed, which showed a [`predominance of immature cells`](Observation-bone-marrow-aspirate-result-brian-l.html), indicating leukemia. To further characterize the cancer, [`immunophenotyping occurred`](Observation-immunophenotype-brian-l.html), which identified the leukemia as [`B-cell acute lymphoblastic leukemia`](Condition-primary-cancer-condition-brian-l.html). 

After the initial diagnosis, genetic testing was performed (karyotyping), revealing a [`chromosomal translocation`](Observation-gx-genomic-variant-fusion-ETV6-RUNX1-brian-l.html) between chromosomes 12 and 21. To understand if the cancer spread to the brain or spinal cord, a [`lumbar puncture`](Procedure-us-core-procedure-lumbar-puncture-brian-l.html) was performed, revealing [`negative results`](Observation-us-core-lumbar-puncture-result-brian-l.html).

Treatment options were discussed between the patient's family and the medical oncologist. With a [`Lansky Play Performance status of 80`](Observation-lansky-performance-status-brian-l.html), the family agreed to receive a 28-day treatment regimen of [`cyclophosphamide`](MedicationRequest-cancer-related-medication-request-cyclophosphamide-brian-l.html) (750 mg/m² IV once per day on days 1 & 8), [`idarubicin`](MedicationRequest-cancer-related-medication-request-idarubicin-brian-l.html) (9 mg/m² IV once per day on days 1, 2, 3, 8), [`vincristine`](MedicationRequest-cancer-related-medication-request-vincristine-brian-l.html) (2 mg IV once per day on days 1, 8, 15, 22), and [`prednisone`](MedicationRequest-cancer-related-medication-request-prednisone-brian-l.html) (60 mg/m²/day IV or PO on days 1 to 7, 15 to 21). The medication dosage is normalized based on Brian's [`body surface area`](Observation-body-surface-area-brian-l.html) of 0.59 m². After four weeks, a repeat bone marrow aspiration and blood count was performed, showing no evidence of persistent leukemia and normal blood counts. Due to the [`improved cancer disease status`](Observation-cancer-disease-status-improved-brian-l.html), age, test results, and type of leukemia, Brian was designated as [`standard risk`](Observation-all-risk-assessment-standard-brian-l.html) and then began consolidation therapy.

### FHIR instances from mCODE elements

| **Instance Description** | **mCODE Profile** |
| ------------ | ---------------- |
| [`Cancer Patient: Brian L`](Patient-cancer-patient-brian-l.html)|[CancerPatient] |
| [`Cancer Diagnosis`](Condition-primary-cancer-condition-brian-l.html) | [PrimaryCancerCondition] |
| [`Genomic Variant: Chromosomal Translocation`](Observation-gx-genomic-variant-fusion-ETV6-RUNX1-brian-l.html) | [GenomicVariant] |
| [`Performance Status: Lansky`](Observation-lansky-performance-status-brian-l.html) | [LanskyPlayPerformanceStatus] |
| [`Medication Request: Cyclophosphamide`](MedicationRequest-cancer-related-medication-request-cyclophosphamide-brian-l.html) | [CancerRelatedMedicationRequest] | 
| [`Medication Request: Idrarubicin`](MedicationRequest-cancer-related-medication-request-idarubicin-brian-l.html) | [CancerRelatedMedicationRequest] |  
| [`MedicationRequest: Vincristine`](MedicationRequest-cancer-related-medication-request-vincristine-brian-l.html) | [CancerRelatedMedicationRequest] | 
| [`MedicationRequest: Prednisone`](MedicationRequest-cancer-related-medication-request-prednisone-brian-l.html) | [CancerRelatedMedicationRequest] |
| [`Medication Administration: Cyclophosphamide`](MedicationAdministration-cancer-related-medication-admin-cyclophosphamide-brian-l.html) | [CancerRelatedMedicationAdministration] | 
| [`Medication Administration: Idrarubicin`](MedicationAdministration-cancer-related-medication-admin-idarubicin-brian-l.html) | [CancerRelatedMedicationAdministration] |  
| [`MedicationAdministration: Vincristine`](MedicationAdministration-cancer-related-medication-admin-vincristine-brian-l.html) | [CancerRelatedMedicationAdministration] | 
| [`MedicationAdministration: Prednisone`](MedicationAdministration-cancer-related-medication-admin-prednisone-brian-l.html) | [CancerRelatedMedicationAdministration] |
| [`Body Surface Area`](Observation-body-surface-area-brian-l.html) | [BodySurfaceArea] |
| [`Cancer Disease Status: Condition Improving`](Observation-cancer-disease-status-improved-brian-l.html) | [CancerDiseaseStatus] |
| [`ALL Risk Assessment: Standard`](Observation-all-risk-assessment-standard-brian-l.html) | [ALLRiskAssessment] |
{: .grid }


### FHIR instances from _non_-mCODE elements

| **Instance Description**  | **Profile/Resource** |
| ------------ |  -------------- |
| [`Past Condition: Atrial Septal Defect`](Condition-us-core-condition-atrial-septal-defect-brian-l.html) | [USCoreConditionProblemHealthConcern] | 
| [`Grandmother With Breast Cancer`](FamilyMemberHistory-family-member-history-grandmother-brian-l.html) | [R4FamilyMemberHistory] | 
| [`Complete Blood Count: Abnormal Blood Counts`](DiagnosticReport-us-core-diagnosticreport-cbc-brian-l.html) | [USCoreDiagnosticReportLab] | 
| [`Bone Marrow Aspiration Procedure`](Procedure-us-core-procedure-bone-marrow-aspiration-brian-l.html) | [USCoreProcedure] |
| [`Bone Marrow Biopsy Procedure`](Procedure-us-core-procedure-bone-marrow-biopsy-brian-l.html) | [USCoreProcedure] |
| [`Bone Marrow Biopsy Results: Predominance of Immature Cells`](Observation-bone-marrow-biopsy-result-brian-l.html) | [USCoreObservationLab] |
| [`Bone Marrow Aspirate Results: Predominance of Immature Cells`](Observation-bone-marrow-aspirate-result-brian-l.html) | [USCoreObservationLab] |
| [`Immunophenotyping`](Observation-immunophenotype-brian-l.html) | [USCoreObservationLab] |
| [`Lumbar Puncture`](Procedure-us-core-procedure-lumbar-puncture-brian-l.html) | [USCoreProcedure] |  
| [`Lumbar Puncture Result: Negative`](Observation-us-core-lumbar-puncture-result-brian-l.html) | [USCoreObservationLab] |
| [`Blood Test Result: Hemoglobin`](Observation-hemoglobin-brian-l.html) | [USCoreObservationLab] |
| [`Blood Test Result: Hematocrit`](Observation-hematocrit-brian-l.html) | [USCoreObservationLab] |
| [`Blood Test Result: White Blood Cell`](Observation-white-blood-cell-brian-l.html) | [USCoreObservationLab] |
{: .grid }

{% include markdown-link-references.md %}