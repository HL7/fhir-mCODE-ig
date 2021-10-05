### Usage

The bundle MUST contain exactly one Patient resource conforming to the [CancerPatient] profile. The bundle MUST also contain following mCODE-conformant resources, if available to the server:

* Condition resources representing the [PrimaryCancerCondition] and [SecondaryCancerCondition], if applicable
* Observation resources representing [CancerDiseaseStatus]
* Observation resources representing [ECOGPerformanceStatus] and/or [KarnofskyPerformanceStatus]
* Observation resources representing any [TumorMarkerTest]
* MedicationRequest resources conforming to [CancerRelatedMedicationRequest] and [CancerRelatedMedicationAdministration], representing any cancer-related prescriptions, administrations, and patient-reported medications
* Procedure resources representing any [CancerRelatedSurgicalProcedure], [RadiotherapyCourseSummary], [BrachytherapyTreatmentPhase], and [TeleradiotherapyTreatmentPhase]
* Observation resources representing the staging information: [CancerStageGroup], [TNMDistantMetastasesCategory], [TNMPrimaryTumorCategory], and [TNMRegionalNodesCategory]
* Observation resources representing [CancerGenomicVariant] and [GenomicRegionStudied]
* DiagnosticReport resources representing [CancerGenomicsReport]
* Specimen resources representing to [GenomicSpecimen] and [TumorSpecimen]
* BodyStructure resources representing [Tumor]
* Observation resources representing [TumorSize]
* Observation resource representing to [ComorbiditiesElixhauser], and any referenced Condition resources
* Observation resources for patient height, weight, blood pressure
* Laboratory results from Comprehensive Metabolic Panels (CMP) and Complete Blood Counts (CBC)

In addition, the bundle MAY contain additional resources relevant to the patient but not part of mCODE, such as smoking status, family member history, and diagnostic procedures.

By default, this Bundle includes _all_ required resources described above, irrespective of care dates associated with the resources. For some types of resources, such as vital signs, a very large number of resources will therefore be included by default. To limit the number of included resources, callers MAY specify `start` and `end` parameters when requesting a patient's mCODE bundle via the Sender's FHIR API, which operate in the same way as for [the Fetch Patient Record operation](https://www.hl7.org/fhir/operation-patient-everything.html).

### Conformance

The bundle itself MUST validate against the current profile.

{% include markdown-link-references.md %}
