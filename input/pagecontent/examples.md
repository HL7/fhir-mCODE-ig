### mCODE FHIR Examples

This section provides some examples how mCODE elements may be represented in a FHIR instance which conforms to this implementation guide.

* **Patient**: <a href="Patient-mCODEPatientExample01.html">mCODEPatientExample01</a> and <a href="Patient-mCODEPatientExample02.html">mCODEPatientExample02</a>  shows patient demographics like name, address, race, and ethnicity.
* **Primary Cancer Condition**: <a href="Condition-mCODEPrimaryCancerConditionExample01.html">mCODEPrimaryCancerConditionExample01</a> shows an example for a patient diagnosed with non-small cell lung cancer (NSCLC) adenocarcinoma.
* **Secondary Cancer Condition**: <a href="Condition-mCODESecondaryCancerConditionExample01.html">mCODESecondaryCancerConditionExample01</a> shows an example for a patient diagnosed with secondary malignant neoplasm of the brain.
* **Cancer Disease Status**: <a href="Observation-mCODECancerDiseaseStatusExample01.html">mCODECancerDiseaseStatusExample01</a> shows an example for a patient whose cancer disease status is improving.
* **Clinical Staging Classification**: <a href="Observation-mCODETNMClinicalStageGroupExample01.html">mCODETNMClinicalStageGroupExample01</a>, <a href="Observation-mCODETNMClinicalPrimaryTumorCategoryExample01.html">mCODETNMClinicalPrimaryTumorCategoryExample01</a>, <a href="Observation-mCODETNMClinicalRegionalNodesCategoryExample01.html">mCODETNMClinicalRegionalNodesCategoryExample01</a> and <a href="Observation-mCODETNMClinicalDistantMetastasesCategoryExample01.html">mCODETNMClinicalDistantMetastasesCategoryExample01</a> specify the clinical T, N, and M categories for <a href="Condition-mCODEPrimaryCancerConditionExample01.html">mCODEPrimaryCancerConditionExample01</a>.

* **Pathological Staging Classification**: <a href="Observation-mCODETNMPathologicalStageGroupExample01.html">mCODETNMPathologicalStageGroupExample01</a>, <a href="Observation-mCODETNMPathologicalPrimaryTumorCategoryExample01.html">mCODETNMPathologicalPrimaryTumorCategoryExample01</a>, <a href="Observation-mCODETNMPathologicalRegionalNodesCategoryExample01.html">mCODETNMPathologicalRegionalNodesCategoryExample01</a> and <a href="Observation-mCODETNMPathologicalDistantMetastasesCategoryExample01.html">mCODETNMPathologicalDistantMetastasesCategoryExample01</a> specify the pathologic T, N, and M categories for <a href="Condition-mCODEPrimaryCancerConditionExample01.html">mCODEPrimaryCancerConditionExample01</a>.

* **Comorbid Condition**:  <a href="Condition-mCODEComorbidConditionExample01.html">mCODEComorbidConditionExample01</a> shows an example for a patient diagnosed with Type 2 Diabetes Mellitus.
 * **ECOG Performance Status**:  <a href="Observation-mCODEECOGPerformanceStatusExample01.html">mCODEECOGPerformanceStatusExample01</a> shows an example for a patient with an ECOG Performance Status of 1.
 * **Karnofsky Performance Status**: <a href="Observation-mCODEKarnofskyPerformanceStatusExample01.html">mCODEKarnofskyPerformanceStatusExample01</a> shows an example for a patient with a Karnofsky Performance Status of 80.
 * **Cancer Related Medication Request**: <a href="MedicationRequest-mCODECancerRelatedMedicationRequestExample01.html">mCODECancerRelatedMedicationRequestExample01</a> shows an example for a patient who is currently receiving gefitinib and <a href="MedicationRequest-mCODECancerRelatedMedicationRequestExample02.html">mCODECancerRelatedMedicationRequestExample02</a> shows an example for a patient who completed a treatment of getfitinib.
 * **Cancer Related Surgical Procedure**: <a href="Procedure-mCODECancerRelatedSurgicalProcedureExample01.html">mCODECancerRelatedSurgicalProcedureExample01</a> shows an example for a patient who underwent a partial lobectomy of the lung for cancer treatment.
  * **Cancer Related Radiation Procedure**: <a href="Procedure-mCODECancerRelatedRadiationProcedureExample01.html">mCODECancerRelatedRadiationProcedureExample01</a> shows an example for a patient who went underwent brachytherapy for cancer treatment.
 * **Tumor Marker**: <a href="Observation-mCODETumorMarkerExample01.html">mCODETumorMarkerExample01</a> shows a simple example of an EGFR tumor marker status as positive.
 * **Genomics Report**: <a href="DiagnosticReport-mCODECancerGenomicsReportExample01.html">mCODECancerGenomicsReportExample01</a> shows a very small subset elements found in a genomics report which include the test service and test name.
 * **Genetic Variant**: <a href="Observation-mCODECancerGeneticVariantExample01.html">mCODECancerGeneticVariantFoundExample01</a> extends the contents of the Genomics Report by showing the results of a variant found for a specific gene, STK-11. This example differs from the mutation test result in that there was no preconceived test for a specific variant ahead of time.  Rather, it is the result of any variants found for a given DNA region.
 * **Genetic Variant**: - single somatic mutation <a href="Observation-mCODECancerGeneticVariantExample02.html">mCODECancerGeneticVariantExample02</a> extends the contents of the Genomic Report example showing whether a test for a specific mutation for BRCA1 was present.
 * **Genetic Specimen**: <a href="Specimen-mCODEGeneticSpecimenExample01.html">mCODEGeneticSpecimenExample01</a> shows the lower left lobe of the lung being used as a genetic specimen.
 * **Genomic Region Studied**: <a href="Observation-mCODEGenomicRegionStudiedExample01.html">mCODEGenomicRegionStudiedExample01</a> shows the STK-11 gene region being studied.

#### Additional Notes

* The narrative rendering of the FHIR examples may not exactly match the wording or order of the structured portion of the FHIR examples. This is on purpose since it is allowed for an implementation to present the data in a way that is understandable to the end user so long as the meaning and context of the structured and coded content is preserved.
* The narrative rendering might also contain data not explicitly appearing in the structured section of the FHIR example.  In this case, rather than including contained resources, our example assumes this content is generated implicitly by the backend application retrieving and parsing data from the FHIR references included in the structured section of the example.  For example, in <a href="DiagnosticReport-mCODECancerGenomicsReportExample01.html">mCODEGenomicsReportExample01</a>, the narrative section contains information about the genetic mutation tested and variant found, however the coded section just includes the external references to each.
* The FHIR examples conform to the HL7 FHIR Argonaut IG where applicable and is subject to change with subsequent releases.
* Proprietary content like AJCC staging categories may appear in some of these examples solely for the purposes of illustration only. It is expected that all implementers will adhere to licensing requirements as appropriate.

### Extended example: breast cancer

In addition to the examples provided above, we also have developed this extended example description of a hypothetical patient, along with accompanying example instances to demonstrate how mCODE profiles can be used to guide the creation resources representing a clinically realistic scenario. When information in the persona does not map onto mCODE profiles, we provide examples using [USCore](http://hl7.org/fhir/us/core/) or standard FHIR resources.

#### Patient description

Patient M is a 55 year old non-Hispanic white female with a past medical history significant for depression, a 20-pack-year history of smoking (current smoker), anxiety, and hypertension. Her family history was significant for a maternal aunt with ovarian cancer at age 69, a sister with breast cancer at age 64, and deceased paternal uncle due to pancreatic cancer.

She presented for routine screening mammography in March 2018. Performance status was ECOG 0. An abnormality was detected, followed by ultrasound-guided biopsy which revealed a Grade 2 invasive ductal adenocarcinoma, ER positive, PR negative, HER2 negative. Pre-operative workup revealed no other disease in either breast. Genetic counseling ordered a [7 gene panel](https://www.invitae.com/en/physician/tests/50001/), which revealed a [pathogenic variant in PALB2 (`c.3549C>A`)](https://www.ncbi.nlm.nih.gov/clinvar/variation/128144/).[^1]

[^1]: For the purposes of this example, we are assuming that a single relevant variant was returned by the clinical genomics laboratory. In practice, genomics testing may return (many) more variants. The standards for representing genomics data are currently under development by the [HL7 Clinical Genomics Work Group](https://confluence.hl7.org/display/CGW/WorkGroup+Home), and should be adopted by mCODE when completed.

A partial mastectomy was performed, revealing a 2.5 cm tumor with no lymph-vascular invasion and negative margins of excision. Ductal carcinoma in situ was noted, also completely excised. Three sentinel lymph nodes were excised and were negative for metastatic carcinoma. The primary tumor was staged as cT3N0.

A [21-gene RT-PCR assay](https://www.oncotypeiq.com/en-US/breast-cancer/healthcare-professionals/oncotype-dx-breast-recurrence-score/about-the-test) yielded a recurrence score of 47. She received four cycles of doxorubicin (60 mg/m² IV) and cyclophosphamide (600 mg/m² IV) followed by paclitaxel (175 mg/m² IV) (AC-T), administered on a dose-dense schedule. She subsequently received whole breast radiation therapy with regional nodal irradiation. Following RT, she began anastrozole (1 mg daily).

The patient is two years out from surgery and has undergone surveillance imaging and has no evidence of recurrent disease or new imaging. She continues to take adjuvant endocrine therapy (anastrozole).

#### FHIR instances from mCODE elements

* [`example1-mcode-cancer-patient`](Patient-example1-mcode-cancer-patient.html) ([CancerPatient])
* [`example1-mcode-cancer-disease-status`](Observation-example1-mcode-cancer-disease-status.html) ([CancerDiseaseStatus])
* [`example1-mcode-comorbidity-assessment`](Condition-example1-mcode-comorbidity-assessment.html) ([ComorbidCondition])
* [`example1-mcode-comorbid-condition-depression`](Condition-example1-mcode-comorbid-condition-depression.html) ([ComorbidCondition])
* [`example1-mcode-comorbid-condition-hypertension`](Condition-example1-mcode-comorbid-condition-hypertension.html) ([ComorbidCondition])
* [`example1-mcode-ecog-performance-status`](Observation-example1-mcode-ecog-performance-status.html) ([ECOGPerformanceStatus])
* [`example1-mcode-cancer-related-surgical-procedure-mastectomy`](Procedure-example1-mcode-cancer-related-surgical-procedure-mastectomy.html) ([CancerRelatedSurgicalProcedure])
* [`example1-mcode-cancer-related-radiation-procedure`](Procedure-example1-mcode-cancer-related-radiation-procedure.html) ([CancerRelatedRadiationProcedure])
 * [`example1-mcode-primary-cancer-condition`](Condition-example1-mcode-primary-cancer-condition.html) ([PrimaryCancerCondition])
 * [`example1-mcode-tnm-clinical-stage-group`](Observation-example1-mcode-tnm-clinical-stage-group.html) ([TNMClinicalStageGroup])
* [`example1-mcode-tnm-primary-tumor-category`](Observation-example1-mcode-tnm-primary-tumor-category.html) ([TNMClinicalPrimaryTumorCategory])
* [`example1-mcode-tnm-clinical-regional-nodes-category`](Observation-example1-mcode-tnm-clinical-regional-nodes-category.html) ([TNMClinicalRegionalNodesCategory])
* [`example1-mcode-tnm-clinical-distant-metastases-category`](Observation-example1-mcode-tnm-clinical-distant-metastases-category.html) ([TNMClinicalDistantMetastasesCategory])
* [`example1-mcode-tumor-marker-er`](Observation-example1-mcode-tumor-marker-er.html)  ([TumorMarker])
* [`example1-mcode-tumor-marker-pr`](Observation-example1-mcode-tumor-marker-pr.html)  ([TumorMarker])
* [`example1-mcode-tumor-marker-her2`](Observation-example1-mcode-tumor-marker-her2.html)  ([TumorMarker])
* [`example1-mcode-tumor-marker-oncotype-dx`](Observation-example1-mcode-tumor-marker-oncotype-dx.html)  ([TumorMarker])
* [`example1-mcode-cancer-genomics-report`](DiagnosticReport-example1-mcode-cancer-genomics-report.html) ([CancerGenomicsReport])
* [`example1-mcode-genomic-region-studied`](Observation-example1-mcode-genomic-region-studied.html) ([GenomicRegionStudied])
* [`example1-mcode-genetic-specimen`](Specimen-example1-mcode-genetic-specimen.html) ([GeneticSpecimen])
* [`example1-mcode-cancer-genetic-variant`](Observation-example1-mcode-cancer-genetic-variant.html) ([CancerGeneticVariant])
* [`example1-mcode-cancer-related-medication-chemo-doxorubicin`](MedicationRequest-example1-mcode-cancer-related-medication-chemo-doxorubicin.html) ([CancerRelatedMedicationRequest])
* [`example1-mcode-cancer-related-medication-chemo-cyclophosphamide`](MedicationRequest-example1-mcode-cancer-related-medication-chemo-cyclophosphamide.html) ([CancerRelatedMedicationRequest])
* [`example1-mcode-cancer-related-medication-chemo-paclitaxel`](MedicationRequest-example1-mcode-cancer-related-medication-chemo-paclitaxel.html) ([CancerRelatedMedicationRequest])
* [`example1-mcode-cancer-related-medication-anastrozole`](MedicationRequest-example1-mcode-cancer-related-medication-anastrozole.html) ([CancerRelatedMedicationRequest])
* [`example1-practitioner1-mcode`](Practitioner-example1-practitioner1-mcode.html) ([StructureDefinition-us-core-practitioner])

#### FHIR instances from _non_-mCODE elements

* [`example1-us-core-procedure-biopsy`](Procedure-example1-us-core-procedure-biopsy.html) (US Core Procedure)
* [`example1-us-core-procedure-mammogram`](Procedure-example1-us-core-procedure-mammogram.html) (US Core Procedure)
* [`example1-us-core-smoking-status`](Observation-example1-us-core-smoking-status.html) (US Core Smoking Status)
* [`example1-observation-smoking-history`](Observation-example1-observation-smoking-history.html) (Observation)
* [`example1-us-core-condition-anxiety`](Condition-example1-us-core-condition-anxiety.html) (US Core Condition)
* [`example1-family-member-history-aunt`](FamilyMemberHistory-example1-family-member-history-aunt.html) (FamilyMemberHistory)
* [`example1-family-member-history-sister`](FamilyMemberHistory-example1-family-member-history-sister.html) (FamilyMemberHistory)
* [`example1-family-member-history-uncle`](FamilyMemberHistory-example1-family-member-history-uncle.html) (FamilyMemberHistory)
* [`example1-specimen-tumor`](Specimen-example1-specimen-tumor.html) (Specimen)
* [`example1-diagnosticreport-pathology`](DiagnosticReport-example1-diagnosticreport-pathology.html) (DiagnosticReport)
* [`example1-observation-tumor-invasion-negative`](Observation-example1-observation-tumor-invasion-negative.html) (Observation)
* [`example1-observation-tumor-negative-margins`](Observation-example1-observation-tumor-negative-margins.html) (Observation)
* [`example1-observation-tumor-sentinel-nodes`](Observation-example1-observation-tumor-sentinel-nodes.html) (Observation)
* [`example1-observation-tumor-size`](Observation-example1-observation-tumor-size.html) (Observation)
* [`example1-observation-dcis`](Observation-example1-observation-tumor-dcis.html) (Observation)

[CancerDiseaseStatus]: StructureDefinition-mcode-cancer-disease-status.html
[CancerGeneticVariant]: StructureDefinition-mcode-cancer-genetic-variant.html
[CancerGenomicsReport]: StructureDefinition-mcode-cancer-genomics-report.html
[CancerPatient]: StructureDefinition-mcode-cancer-patient.html
[CancerRelatedMedicationRequest]: StructureDefinition-mcode-cancer-related-medication-request.html
[CancerRelatedRadiationProcedure]: StructureDefinition-mcode-cancer-related-radiation-procedure.html
[CancerRelatedSurgicalProcedure]: StructureDefinition-mcode-cancer-related-surgical-procedure.html
[ComorbidCondition]: StructureDefinition-mcode-cancer-comorbidity-assessment.html
[ECOGPerformanceStatus]: StructureDefinition-mcode-ecog-performance-status.html
[GeneticSpecimen]: StructureDefinition-mcode-genetic-specimen.html
[GenomicRegionStudied]: StructureDefinition-mcode-genomic-region-studied.html
[PrimaryCancerCondition]: StructureDefinition-mcode-primary-cancer-condition.html
[StructureDefinition-us-core-practitioner]: http://hl7.org/fhir/us/core/STU3.1/StructureDefinition-us-core-practitioner.html
[TNMClinicalDistantMetastasesCategory]: StructureDefinition-mcode-tnm-clinical-distant-metastases-category.html
[TNMClinicalPrimaryTumorCategory]: StructureDefinition-mcode-tnm-clinical-primary-tumor-category.html
[TNMClinicalRegionalNodesCategory]: StructureDefinition-mcode-tnm-clinical-regional-nodes-category.html
[TNMClinicalStageGroup]: StructureDefinition-mcode-tnm-clinical-stage-group.html
[TumorMarker]: StructureDefinition-mcode-tumor-marker.html
