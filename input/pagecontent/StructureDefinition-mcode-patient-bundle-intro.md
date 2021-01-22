### Usage

The bundle MUST contain exactly one Patient resource conforming to the [CancerPatient](StructureDefinition-mcode-cancer-patient.html) profile.

The bundle MUST also contain following mCODE-conformant resources, if available to the server:

* Condition resources representing the [PrimaryCancerCondition](StructureDefinition-mcode-primary-cancer-condition.html) and [SecondaryCancerCondition](StructureDefinition-mcode-secondary-cancer-condition.html), if applicable
* Observation resources representing [CancerDiseaseStatus](StructureDefinition-mcode-cancer-disease-status.html)
* Observation resources representing [ECOGPerformanceStatus](StructureDefinition-mcode-ecog-performance-status.html) and/or [KarnofskyPerformanceStatus](StructureDefinition-mcode-karnofsky-performance-status.html)
* Observation resources representing any [TumorMarkerTests](StructureDefinition-mcode-tumor-marker-test.html)
* MedicationRequest resources conforming to [CancerRelatedMedicationRequest](StructureDefinition-mcode-cancer-related-medication-request.html), representing cancer-related prescriptions, administrations, and patient-reported medications
* Procedure resources representing any [CancerRelatedSurgicalProcedure](StructureDefinition-mcode-cancer-related-surgical-procedure.html) or [RadiotherapyCourseSummary](StructureDefinition-radiotherapy-course-summary.html) or [BrachytherapyPrescriptionDelivery](StructureDefinition-brachytherapy-prescription-delivery.html) or [TeleradiotherapyPrescriptionDelivery](StructureDefinition-teleradiotherapy-prescription-delivery.html)
* Observation resources representing the TNM staging information
* Observation resources representing [CancerGeneticVariant](StructureDefinition-mcode-cancer-genetic-variant.html) and [GenomicRegionStudied](StructureDefinition-mcode-genomic-region-studied.html)
* DiagnosticReport resources representing [CancerGenomicsReport](StructureDefinition-mcode-cancer-genomics-report.html)
* Specimen resources representing to [GeneticSpecimen](StructureDefinition-mcode-genetic-specimen.html)
* Observation resource representing to [CancerRelatedComorbidities](StructureDefinition-mcode-cancer-related-comorbidities.html), and accompanying Condition resources
* Observation resources for patient height, weight, blood pressure
* Laboratory results from Comprehensive Metabolic Panels (CMP) and Complete Blood Counts (CBC)

In addition, the bundle MAY contain additional resources relevant to the patient but not part of mCODE, such as smoking status, family member history, and diagnostic procedures.

By default, this Bundle includes _all_ required resources described above, irrespective of care dates associated with the resources. For some types of resources, such as vital signs, a very large number of resources will therefore be included by default. To limit the number of included resources, callers MAY specify `start` and `end` parameters when requesting a patient's mCODE bundle via the Sender's FHIR API, which operate in the same way as for [the Fetch Patient Record operation](https://www.hl7.org/fhir/operation-patient-everything.html).

### Conformance

The bundle itself MUST validate against the [MCODEPatientBundle](StructureDefinition-mcode-patient-bundle.html) profile.
