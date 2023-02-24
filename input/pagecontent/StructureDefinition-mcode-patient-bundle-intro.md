### Usage

The bundle MUST contain exactly one Patient resource conforming to the [CancerPatient] profile (any patient conforming with US Core Patient is also conformant). The bundle MUST also contain following mCODE-conformant resources, if available to the server:

* Condition resources conforming to [PrimaryCancerCondition] and [SecondaryCancerCondition] profiles
* Observation resources conforming to [CancerDiseaseStatus] profile
* Observation resources conforming to [Comorbidities] profile
* Observation resources conforming to [ECOGPerformanceStatus] and/or [KarnofskyPerformanceStatus] profiles
* Observation resources conforming to [GenomicVariant] and [GenomicRegionStudied] profiles
* Observation resources conforming to [TumorMarkerTest] profile
* Observation resources conforming to: [TNMStageGroup], [TNMDistantMetastasesCategory], [TNMPrimaryTumorCategory], and [TNMRegionalNodesCategory] profiles, representing staging information
* Medication resources conforming to [CancerRelatedMedicationRequest] and [CancerRelatedMedicationAdministration] profiles, representing cancer-related prescriptions, administrations, and patient-reported medications
* Procedure resources conforming to [CancerRelatedSurgicalProcedure] and [RadiotherapyCourseSummary] profiles
* DiagnosticReport resources conforming to [GenomicsReport] profile
* Specimen resources conforming to [HumanSpecimen] profiles
* BodyStructure resources conforming to [RadiotherapyVolume] and [Tumor] profiles
* Observation resources conforming to [TumorSize] profile

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
