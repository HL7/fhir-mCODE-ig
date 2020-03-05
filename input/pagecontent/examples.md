<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3><a name="Examples"></a>mCODE FHIR Examples</h3>

<p>This section provides some examples how mCODE elements may be represented in a FHIR instance which conforms to this implementation guide.</p>
<ul>
    <li><b>Patient</b>: <a href="Patient-mCODEPatientExample01.html">mCODEPatientExample01</a> and <a href="Patient-mCODEPatientExample02.html">mCODEPatientExample02</a>  shows patient demographics like name, address, race, and ethnicity.</li>
    <li><b>Primary Cancer Condition:</b> <a href="Condition-mCODEPrimaryCancerConditionExample01.html">mCODEPrimaryCancerConditionExample01</a> shows an example for a patient diagnosed with non-small cell lung cancer (NSCLC) adenocarcinoma.</li>
    <li><b>Secondary Cancer Condition:</b> <a href="Condition-mCODESecondaryCancerConditionExample01.html">mCODESecondaryCancerConditionExample01</a> shows an example for a patient diagnosed with secondary malignant neoplasm of the brain.</li>
    <li><b>Cancer Disease Status:</b> <a href="Observation-mCODECancerDiseaseStatusExample01.html">mCODECancerDiseaseStatusExample01</a> shows an example for a patient whose cancer disease status is improving.</li>
    <li><b>Clinical Staging Classification</b>: <a href="Observation-mCODETNMClinicalStageGroupExample01.html">mCODETNMClinicalStageGroupExample01</a>, <a href="Observation-mCODETNMClinicalPrimaryTumorCategoryExample01.html">mCODETNMClinicalPrimaryTumorCategoryExample01</a>, <a href="Observation-mCODETNMClinicalRegionalNodesCategoryExample01.html">mCODETNMClinicalRegionalNodesCategoryExample01</a> and <a href="Observation-mCODETNMClinicalDistantMetastasesCategoryExample01.html">mCODETNMClinicalDistantMetastasesCategoryExample01</a> specify the clinical T, N, and M categories for <a href="Condition-mCODEPrimaryCancerConditionExample01.html">mCODEPrimaryCancerConditionExample01</a>. 
    </li>
    <li><b>Pathological Staging Classification</b>: <a href="Observation-mCODETNMPathologicalStageGroupExample01.html">mCODETNMPathologicalStageGroupExample01</a>, <a href="Observation-mCODETNMPathologicalPrimaryTumorCategoryExample01.html">mCODETNMPathologicalPrimaryTumorCategoryExample01</a>, <a href="Observation-mCODETNMPathologicalRegionalNodesCategoryExample01.html">mCODETNMPathologicalRegionalNodesCategoryExample01</a> and <a href="Observation-mCODETNMPathologicalDistantMetastasesCategoryExample01.html">mCODETNMPathologicalDistantMetastasesCategoryExample01</a> specify the pathologic T, N, and M categories for <a href="Condition-mCODEPrimaryCancerConditionExample01.html">mCODEPrimaryCancerConditionExample01</a>. 
    </li>
    <li><b>Comorbid Condition</b>: <a href="Condition-mCODEComorbidConditionExample01.html">mCODEComorbidConditionExample01</a> shows an example for a patient diagnosed with Type 2 Diabetes Mellitus.</li>
    <li><b>ECOG Performance Status</b>: <a href="Observation-mCODEECOGPerformanceStatusExample01.html">mCODEECOGPerformanceStatusExample01</a> shows an example for a patient with an ECOG Performance Status of 1.</li>
    <li><b>Karnofsky Performance Status</b>: <a href="Observation-mCODEKarnofskyPerformanceStatusExample01.html">mCODEKarnofskyPerformanceStatusExample01</a> shows an example for a patient with a Karnofsky Performance Status of 80.</li>
    <li><b>Cancer Related Surgical Procedure</b>: <a href="Procedure-mCODECancerRelatedSurgicalProcedureExample01.html">mCODECancerRelatedSurgicalProcedureExample01</a> shows an example for a patient who underwent a partial lobectomy of the lung for cancer treatment.</li>
    <li><b>Cancer Related Radiation Procedure</b>: <a href="Procedure-mCODECancerRelatedRadiationProcedureExample01.html">mCODECancerRelatedRadiationProcedureExample01</a> shows an example for a patient who went underwent brachytherapy for cancer treatment.</li>
    <li><b>Tumor Marker</b>: <a href="Observation-mCODETumorMarkerExample01.html">mCODETumorMarkerExample01</a> shows a simple example of an EGFR tumor marker status as positive.</li>
    <li><b>Genomics Report</b>: <a href="DiagnosticReport-mCODECancerGenomicsReportExample01.html">mCODECancerGenomicsReportExample01</a> shows a very small subset elements found in a genomics report which include the test service and test name.</li>
    <li><b>Genetic Variant</b>: <a href="Observation-mCODECancerGeneticVariantExample01.html">mCODECancerGeneticVariantFoundExample01</a> extends the contents of the Genomics Report by showing the results of a variant found for a specific gene, STK-11. This example differs from the mutation test result in that there was no preconceived test for a specific variant ahead of time.  Rather, it is the result of any variants found for a given DNA region.</li>
    <li><b>Genetic Variant - single somatic mutation</b>: <a href="Observation-mCODECancerGeneticVariantExample02.html">mCODECancerGeneticVariantExample02</a> extends the contents of the Genomic Report example showing whether a test for a specific mutation for BRCA1 was present.</li>
</ul>

<h4>Additional Notes</h4>
<ul>
    <li>The narrative rendering of the FHIR examples may not exactly match the wording or order of the structured portion of the FHIR examples. This is on purpose since it is allowed for an implementation to present the data in a way that is understandable to the end user so long as the meaning and context of the structured and coded content is preserved.</li>
    <li>The narrative rendering might also contain data not explicitly appearing in the structured section of the FHIR example.  In this case, rather than including contained resources, our example assumes this content is generated implicitly by the backend application retrieving and parsing data from the FHIR references included in the structured section of the example.  For example, in <a href="DiagnosticReport-mCODECancerGenomicsReportExample01.html">mCODEGenomicsReportExample01</a>, the narrative section contains information about the genetic mutation tested and variant found, however the coded section just includes the external references to each. </li>
    <li>The FHIR examples conform to the HL7 FHIR Argonaut IG where applicable and is subject to change with subsequent releases.</li>
    <li>Proprietary content like AJCC staging categories may appear in some of these examples solely for the purposes of illustration only. It is expected that all implementers will adhere to licensing requirements as appropriate.</li>
</ul>

</div>
