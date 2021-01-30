### mCODE FHIR Examples

This section provides some examples how mCODE elements may be represented in a FHIR instance which conforms to this implementation guide.

* **Patient**: <a href="Patient-cancer-patient-john-anyperson.html">cancer-patient-john-anyperson</a> and <a href="Patient-cancer-patient-eve-anyperson.html">cancer-patient-eve-anyperson</a>  shows patient demographics like name, address, race, and ethnicity.
* **Primary Cancer Condition**: <a href="Condition-primary-cancer-condition-nsclc.html">primary-cancer-condition-nsclc</a> shows an example for a patient diagnosed with non-small cell lung cancer (NSCLC) adenocarcinoma.
* **Secondary Cancer Condition**: <a href="Condition-secondary-cancer-condition-brain-mets.html">secondary-cancer-condition-brain-mets</a> shows an example for a patient diagnosed with secondary malignant neoplasm of the brain.
* **Cancer Disease Status**: <a href="Observation-cancer-disease-status-improved.html">cancer-disease-status-improved</a> shows an example for a patient whose cancer disease status is improving.
* **Clinical Staging Classification**: <a href="Observation-tnm-clinical-stage-group-3c.html">tnm-clinical-stage-group-3c</a>, <a href="Observation-tnm-clinical-primary-tumor-category-cT3.html">tnm-clinical-primary-tumor-category-cT3</a>, <a href="Observation-tnm-clinical-regional-nodes-category-cN3.html">tnm-clinical-regional-nodes-category-cN3</a> and <a href="Observation-tnm-clinical-distant-metastases-category-cM0.html">tnm-clinical-distant-metastases-category-cM0</a> specify the clinical T, N, and M categories for <a href="Condition-primary-cancer-condition-nsclc.html">primary-cancer-condition-nsclc</a>.

* **Pathological Staging Classification**: <a href="Observation-tnm-pathological-stage-group-3C.html">tnm-pathological-stage-group-3C</a>, <a href="Observation-tnm-pathological-primary-tumor-category-pT3.html">tnm-pathological-primary-tumor-category-pT3</a>, <a href="Observation-tnm-pathological-regional-nodes-category-pN3.html">tnm-pathological-regional-nodes-category-pN3</a> and <a href="Observation-tnm-pathological-distant-metastases-category-pM0.html">tnm-pathological-distant-metastases-category-pM0</a> specify the pathologic T, N, and M categories for <a href="Condition-primary-cancer-condition-nsclc.html">primary-cancer-condition-nsclc</a>.

* **Comorbidities**:  <a href="Observation-cancer-related-comorbidities-elixhauser-john-anyperson.html">cancer-related-comorbidities-elixhauser-john-anyperson</a> shows an example for a cancer patient with cardiac arrhythmia and depression.
 * **ECOG Performance Status**:  <a href="Observation-ecog-performance-status-fully-active.html">ecog-performance-status-fully-active</a> shows an example for a patient with an ECOG Performance Status of 1.
 * **Karnofsky Performance Status**: <a href="Observation-karnofsky-performance-status-normal-activity.html">karnofsky-performance-status-normal-activity</a> shows an example for a patient with a Karnofsky Performance Status of 80.
 * **Cancer Related Medication Request**: <a href="MedicationRequest-cancer-related-medication-request-gefitinib.html">cancer-related-medication-request-gefitinib</a> shows an example for a patient who is currently receiving gefitinib and <a href="MedicationRequest-cancer-related-medication-request-cisplatin.html">cancer-related-medication-request-cisplatin</a> shows an example for a patient who completed a treatment of getfitinib.
 * **Cancer Related Surgical Procedure**: <a href="Procedure-cancer-related-surgical-procedure-lobectomy.html">cancer-related-surgical-procedure-lobectomy</a> shows an example for a patient who underwent a partial lobectomy of the lung for cancer treatment.
 ############
  * **Internal Radiotherapy**: [brachytherapy-prescription-delivery-ldr]</a> shows an example for a patient who went underwent brachytherapy (internal radiation) for cancer treatment.
 * **Tumor Marker**: <a href="Observation-tumor-marker-test-egf.html">tumor-marker-test-egf</a> shows a simple example of an EGFR tumor marker status as positive.
 * **Genomics Report**: <a href="DiagnosticReport-cancer-genomics-report-john-anyperson.html">cancer-genomics-report-john-anyperson</a> shows a very small subset elements found in a genomics report which include the test service and test name.
 * **Genetic Variant**: <a href="Observation-cancer-genetic-variant-somatic-single-nucleotide.html">cancer-genetic-variant-somatic-single-nucleotide</a> extends the contents of the Genomics Report by showing the results of a variant found for a specific gene, STK-11. This example differs from the mutation test result in that there was no preconceived test for a specific variant ahead of time.  Rather, it is the result of any variants found for a given DNA region.
 * **Genetic Variant**: - single somatic mutation <a href="Observation-cancer-genetic-variant-germline-deletion.html">cancer-genetic-variant-germline-deletion</a> extends the contents of the Genomic Report example showing whether a test for a specific mutation for BRCA1 was present.
 * **Genetic Specimen**: <a href="Specimen-genetic-specimen-lung.html">genetic-specimen-lung</a> shows the lower left lobe of the lung being used as a genetic specimen.
 * **Genomic Region Studied**: <a href="Observation-genomic-region-studied-stk11.html">genomic-region-studied-stk11</a> shows the STK-11 gene region being studied.

#### Additional Notes

* The narrative rendering of the FHIR examples may not exactly match the wording or order of the structured portion of the FHIR examples. This is on purpose since it is allowed for an implementation to present the data in a way that is understandable to the end user so long as the meaning and context of the structured and coded content is preserved.
* The narrative rendering might also contain data not explicitly appearing in the structured section of the FHIR example.  In this case, rather than including contained resources, our example assumes this content is generated implicitly by the backend application retrieving and parsing data from the FHIR references included in the structured section of the example.  For example, in <a href="DiagnosticReport-cancer-genomics-report-john-anyperson.html">mCODEGenomicsReportExample1</a>, the narrative section contains information about the genetic mutation tested and variant found, however the coded section just includes the external references to each.
* The FHIR examples conform to the HL7 FHIR Argonaut IG where applicable and is subject to change with subsequent releases.
* Proprietary content like AJCC staging categories may appear in some of these examples solely for the purposes of illustration only. It is expected that all implementers will adhere to licensing requirements as appropriate.

### Extended Example: Breast Cancer Patient Susan M.

In addition to the examples provided above, we also have developed this scenario describing a hypothetical patient, along with accompanying example instances to demonstrate how mCODE profiles can be used to guide the creation resources representing a clinically realistic scenario. When information in the persona does not map onto mCODE profiles, we provide examples using [USCore](http://hl7.org/fhir/us/core/index.html) or standard FHIR resources.

#### Patient description

Patient Susan M. is a 55 year old non-Hispanic white female with a past medical history significant for depression, a 20-pack-year history of smoking (current smoker), anxiety, and hypertension. Her family history was significant for a maternal aunt with ovarian cancer at age 69, a sister with breast cancer at age 64, and deceased paternal uncle due to pancreatic cancer.

She presented for routine screening mammography in March 2018. Performance status was ECOG 0. An abnormality was detected, followed by ultrasound-guided biopsy which revealed a Grade 2 invasive ductal adenocarcinoma, ER positive, PR negative, HER2 negative. Pre-operative workup revealed no other disease in either breast. Genetic counseling ordered a [7 gene panel](https://www.invitae.com/en/physician/tests/50001/), which revealed a [pathogenic variant in PALB2 (`c.3549C>A`)](https://www.ncbi.nlm.nih.gov/clinvar/variation/128144/).[^1]

[^1]: For the purposes of this example, we are assuming that a single relevant variant was returned by the clinical genomics laboratory. In practice, genomics testing may return (many) more variants. The standards for representing genomics data are currently under development by the [HL7 Clinical Genomics Work Group](https://confluence.hl7.org/display/CGW/WorkGroup+Home), and should be adopted by mCODE when completed.

A partial mastectomy was performed, revealing a 2.5 cm tumor with no lymph-vascular invasion and negative margins of excision. Ductal carcinoma in situ was noted, also completely excised. Three sentinel lymph nodes were excised and were negative for metastatic carcinoma. The primary tumor was staged as cT3N0.

A [21-gene RT-PCR assay](https://www.oncotypeiq.com/en-US/breast-cancer/healthcare-professionals/oncotype-dx-breast-recurrence-score/about-the-test) yielded a recurrence score of 47. She received four cycles of doxorubicin (60 mg/m² IV) and cyclophosphamide (600 mg/m² IV) followed by paclitaxel (175 mg/m² IV) (AC-T), administered on a dose-dense schedule. She subsequently received whole breast radiation therapy with regional nodal irradiation. Following RT, she began anastrozole (1 mg daily).

The patient is two years out from surgery and has undergone surveillance imaging and has no evidence of recurrent disease or new imaging. She continues to take adjuvant endocrine therapy (anastrozole).

#### FHIR instances from mCODE elements

* [`cancer-patient-susan-m`](Patient-cancer-patient-susan-m.html) ([CancerPatient])
* [`cancer-disease-status-susan-m-2020-03-01`](Observation-cancer-disease-status-susan-m-2020-03-01.html) ([CancerDiseaseStatus])
* [`cancer-related-comorbidities-elixhauser-susan-m`](Observation-cancer-related-comorbidities-elixhauser-susan-m.html) ([ComorbidCondition])
* [`us-core-condition-depression-susan-m`](Condition-us-core-condition-depression-susan-m.html) ([ComorbidCondition])
* [`us-core-condition-hypertension-susan-m`](Condition-us-core-condition-hypertension-susan-m.html) ([ComorbidCondition])
* [`ecog-performance-status-susan-m`](Observation-ecog-performance-status-susan-m.html) ([ECOGPerformanceStatus])
* [`cancer-related-surgical-procedure-susan-m`](Procedure-cancer-related-surgical-procedure-susan-m.html) ([CancerRelatedSurgicalProcedure])
* [`mcode-patient-bundle-susan-m`](Bundle-mcode-patient-bundle-susan-m.html) ([MCODEPatientBundle])
* [`primary-cancer-condition-susan-m`](Condition-primary-cancer-condition-susan-m.html) ([PrimaryCancerCondition])
* [`tnm-clinical-stage-group-susan-m`](Observation-tnm-clinical-stage-group-susan-m.html) ([TNMClinicalStageGroup])
* [`tnm-primary-tumor-category-susan-m`](Observation-tnm-primary-tumor-category-susan-m.html) ([TNMClinicalPrimaryTumorCategory])
* [`tnm-clinical-regional-nodes-category-susan-m`](Observation-tnm-clinical-regional-nodes-category-susan-m.html) ([TNMClinicalRegionalNodesCategory])
* [`tnm-clinical-distant-metastases-category-susan-m`](Observation-tnm-clinical-distant-metastases-category-susan-m.html) ([TNMClinicalDistantMetastasesCategory])
* [`tumor-marker-test-er-susan-m`](Observation-tumor-marker-test-er-susan-m.html)  ([TumorMarkerTest])
* [`tumor-marker-test-pr-susan-m`](Observation-tumor-marker-test-pr-susan-m.html)  ([TumorMarkerTest])
* [`tumor-marker-test-her2-susan-m`](Observation-tumor-marker-test-her2-susan-m.html)  ([TumorMarkerTest])
* [`tumor-marker-test-oncotype-dx-susan-m`](Observation-tumor-marker-test-oncotype-dx-susan-m.html)  ([TumorMarkerTest])
* [`cancer-genomics-report-susan-m`](DiagnosticReport-cancer-genomics-report-susan-m.html) ([CancerGenomicsReport])
* [`genomic-region-studied-susan-m`](Observation-genomic-region-studied-susan-m.html) ([GenomicRegionStudied])
* [`genetic-specimen-left-breast-susan-m`](Specimen-genetic-specimen-left-breast-susan-m.html) ([GeneticSpecimen])
* [`cancer-genetic-variant-susan-m`](Observation-cancer-genetic-variant-susan-m.html) ([CancerGeneticVariant])
* [`cancer-related-medication-request-doxorubicin-susan-m`](MedicationRequest-cancer-related-medication-request-doxorubicin-susan-m.html) ([CancerRelatedMedicationRequest])
* [`cancer-related-medication-request-cyclophosphamide-susan-m`](MedicationRequest-cancer-related-medication-request-cyclophosphamide-susan-m.html) ([CancerRelatedMedicationRequest])
* [`cancer-related-medication-request-paclitaxel-susan-m`](MedicationRequest-cancer-related-medication-request-paclitaxel-susan-m.html) ([CancerRelatedMedicationRequest])
* [`cancer-related-medication-request-anastrozole-susan-m`](MedicationRequest-cancer-related-medication-request-anastrozole-susan-m.html) ([CancerRelatedMedicationRequest])
* [`teleradiotherapy-prescription-delivery-susan-m`](Procedure-teleradiotherapy-prescription-delivery-susan-m.html) ([TeleradiotherapyPrescriptionDelivery])


#### FHIR instances from _non_-mCODE elements

* [`us-core-practitioner-owen-oncologist`](Practitioner-us-core-practitioner-owen-oncologist.html) (US Core Practitioner)
* [`us-core-procedure-biopsy-susan-m`](Procedure-us-core-procedure-biopsy-susan-m.html) (US Core Procedure)
* [`us-core-procedure-mammogram-susan-m`](Procedure-us-core-procedure-mammogram-susan-m.html) (US Core Procedure)
* [`us-core-smokingstatus-susan-m`](Observation-us-core-smokingstatus-susan-m.html) (US Core Smoking Status)
* [`observation-smoking-history-susan-m`](Observation-observation-smoking-history-susan-m.html) (Observation)
* [`us-core-condition-anxiety-susan-m`](Condition-us-core-condition-anxiety-susan-m.html) (US Core Condition)
* [`family-member-history-aunt-susan-m`](FamilyMemberHistory-family-member-history-aunt-susan-m.html) (FamilyMemberHistory)
* [`family-member-history-sister-susan-m`](FamilyMemberHistory-family-member-history-sister-susan-m.html) (FamilyMemberHistory)
* [`family-member-history-uncle-susan-m`](FamilyMemberHistory-family-member-history-uncle-susan-m.html) (FamilyMemberHistory)
* [`specimen-left-breast-susan-m`](Specimen-specimen-left-breast-susan-m.html) (Specimen)
* [`us-core-diagnosticreport-lab-susan-m`](DiagnosticReport-us-core-diagnosticreport-lab-susan-m.html) (DiagnosticReport)
* [`us-core-observation-lab-tumor-invasion-susan-m`](Observation-us-core-observation-lab-tumor-invasion-susan-m.html) (Observation)
* [`us-core-observation-lab-tumor-margins-susan-m`](Observation-us-core-observation-lab-tumor-margins-susan-m.html) (Observation)
* [`us-core-observation-lab-sentinel-nodes-susan-m`](Observation-us-core-observation-lab-sentinel-nodes-susan-m.html) (Observation)
* [`tumor-size-susan-m-2018-03-06`](Observation-tumor-size-susan-m-2018-03-06.html) (Observation)
* [`scenario1-observation-dcis`](Observation-us-core-observation-lab-tumor-dcis.html) (Observation)

[CancerDiseaseStatus]: StructureDefinition-mcode-cancer-disease-status.html
[CancerGeneticVariant]: StructureDefinition-mcode-cancer-genetic-variant.html
[CancerGenomicsReport]: StructureDefinition-mcode-cancer-genomics-report.html
[CancerPatient]: StructureDefinition-mcode-cancer-patient.html
[CancerRelatedMedicationRequest]: StructureDefinition-mcode-cancer-related-medication-request.html
[CancerRelatedTeleradiotherapyPhase]: StructureDefinition-mcode-cancer-related-teleradiotherapy-phase.html
[CancerRelatedSurgicalProcedure]: StructureDefinition-mcode-cancer-related-surgical-procedure.html
[ComorbidCondition]: StructureDefinition-mcode-cancer-related-comorbidities-elixhauser.html
[ECOGPerformanceStatus]: StructureDefinition-mcode-ecog-performance-status.html
[GeneticSpecimen]: StructureDefinition-mcode-genetic-specimen.html
[GenomicRegionStudied]: StructureDefinition-mcode-genomic-region-studied.html
[PrimaryCancerCondition]: StructureDefinition-mcode-primary-cancer-condition.html
[StructureDefinition-us-core-practitioner]: http://hl7.org/fhir/us/core/STU3.1/StructureDefinition-us-core-practitioner.html
[TNMClinicalDistantMetastasesCategory]: StructureDefinition-mcode-tnm-clinical-distant-metastases-category.html
[TNMClinicalPrimaryTumorCategory]: StructureDefinition-mcode-tnm-clinical-primary-tumor-category.html
[TNMClinicalRegionalNodesCategory]: StructureDefinition-mcode-tnm-clinical-regional-nodes-category.html
[TNMClinicalStageGroup]: StructureDefinition-mcode-tnm-clinical-stage-group.html
[TumorMarkerTest]: StructureDefinition-mcode-tumor-marker-test.html
