### Usage

The bundle MUST contain exactly one Patient resource conforming to the [CancerPatient] profile (any patient conforming with US Core Patient is also conformant). The bundle MUST also contain following mCODE-conformant resources, if available to the server:

* FHIR Observation Resources, if they exist for the patient, including but not limited to: [CancerDiseaseStatus], [CancerStage] (TNM and non-TNM), [Comorbidities], [ECOGPerformanceStatus], [GenomicRegionStudied], [GenomicVariant], [KarnofskyPerformanceStatus], [TumorMarkerTest], [TumorSize], and [USCoreVitalSigns].
* FHIR Condition Resources, if they exist for the patient, including but not limited to: [PrimaryCancerCondition], [SecondaryCancerConditio], and [HistoryOfMetastaticCancer].
* FHIR Medication Administration Resources, if they exist for the patient, including but not limited to: [CancerRelatedMedicationAdministration].
* FHIR Medication Request Resources, if they exist for the patient, including but not limited to: [CancerRelatedMedicationRequest].
* FHIR Diagnostic Report Resources, if they exist for the patient, including but not limited to: [GenomicsReport].
* FHIR Specimen Resources, if they exist for the patient, including but not limited to: [HumanSpecimen].
* FHIR Procedure Resources, if they exist for the patient, including but not limited to: [CancerRelatedSurgicalProcedure] and [RadiotherapyCourseSummary].
* FHIR BodyStructure Resources, if they exist for the patient, including but not limited to:[RadiotherapyVolume] and [Tumor].

In addition, the bundle SHOULD contain the following non-mCODE resources, following appropriate US Core profiles:

* US Core Observation resources representing vital signs, e.g., patient height, weight, blood pressure
* Laboratory results from Comprehensive Metabolic Panels (CMP) and Complete Blood Counts (CBC)
* Relevant resources from the Genomic Reporting IG that interpret genomic findings in terms of implications or medication recommendations, including but not limited to [DiagnosticImplication](http://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-diagnostic-implication.html) resources representing evidence for or against a particular disease, condition, or cancer diagnosis.
* Additional resources relevant to the patient but not part of mCODE, such as smoking status, family member history, and diagnostic procedures.
* Any other resources deemed relevant to care of the cancer patient

By default, this Bundle includes _all_ required resources described above, irrespective of care dates associated with the resources. For some types of resources, such as vital signs, a very large number of resources will therefore be included by default. To limit the number of included resources, callers MAY specify `start` and `end` parameters when requesting a patient's mCODE bundle via the Sender's FHIR API, which operate in the same way as for [the Fetch Patient Record operation](https://www.hl7.org/fhir/operation-patient-everything.html).

### Conformance

The bundle itself MUST validate against the current profile.

{% include markdown-link-references.md %}
