

The mCODE Patient Bundle is a collection of data for an mCODE cancer patient. This page provides a written description of the Bundle, meant to accompany [the Bundle's definition](StructureDefinition-mcode-patient-bundle.html).

The goal of this Bundle is to useful out of the box by an mCODE Data Sender to collect and send a comprehensive collection of mCODE-related data for an _individual patient_ to an mCODE Data Receiver.

This Bundle may not be useful for specialty use cases. For example, if a laboratory does not have enough information to construct a resource conforming to [`CancerPatient`], they will not be able to use this Bundle to send data back to the ordering clinician. In cases like this, existing FHIR operations can be used.

## Required Elements

The following elements are REQUIRED in this Bundle:

* CancerPatient: Exactly one Patient resource conforming to this profile
* PrimaryCancerCondition: One or more conforming Condition resources

## Must Support Elements

The following elements are labelled MustSupport, indicating that an mCODE Data Sender SHALL populate the element if the Data Sender has that data. If multiple instances exist, ALL instances SHOULD be reported.

* [`CancerDiseaseStatus`]
* [`CancerGeneticVariant`]
* [`CancerGenomicsReport`]
* [`GenomicRegionStudied`]
* [`CancerRelatedMedicationRequest`]
* [`CancerRelatedRadiationProcedure`]
* [`CancerRelatedSurgicalProcedure`]
* [`GeneticSpecimen`]
* [`GenomicRegionStudied`]
* Performance status ([`ECOGPerformanceStatus`] and [`KarnofskyPerformanceStatus`])
* [`SecondaryCancerCondition`]
* Stage ([`TNMClinicalStageGroup`], [`TNMClinicalPrimaryTumorCategory`], [`TNMClinicalRegionalNodesCategory`], [`TNMClinicalDistantMetastasesCategory`], [`TNMPathologicalStageGroup`], [`TNMPathologicalPrimaryTumorCategory`], [`TNMPathologicalRegionalNodesCategory`], [`TNMPathologicalDistantMetastasesCategory`])
* **TODO: TumorSize support**
* **TODO: Comorbidity support**
* [`TumorMarker`]
* Vital Signs, including blood pressure, body height, and body weight. Observations conform to the FHIR vital sign profiles, incorporated by reference into US Core. See [Implementation > Vital Sign Profiles](implementation.html#vital-sign-profiles) for details.
* Laboratory Results: Observations included in Complete Blood Count (CBC) and Comprehensive Metabolic Panel (CMP). Individual results must conform to the [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html). See [Implementation > Laboratory Profiles](implementation.html#laboratory-profiles) for a list of LOINC codes to be included.

Note that these elements have a minimum [cardinality](https://www.hl7.org/fhir/conformance-rules.html#cardinality) of `0` **only** to allow them to be unreported if the Sender does not have the necessary data to generate a resource for a particular patient.

## Optional Elements

mCODE does not exclude other elements in the mCODE Bundle. Senders MAY include the following if available:

* Clinical notes, represented as `DiagnosticReport` or `DocumentReference` resources [as described by US Core][us-core-clinical-notes].
* Diagnostic imaging related to a primary or secondary cancer condition, represented as [`Media`] or [`ImagingStudy`] resources.
* `FamilyMemberHistory` resources that may be related to a primary or secondary cancer condition.
* `Observation` resources that related to the patient or cancer diagnosis. For example, an `Observation` conforming to [`USCoreSmokingStatusProfile`] to indicate smoking status or an [an `Observation` indicating negative margins] on an excised tumor could be included.
* `MedicationRequest` resources that do not conform to `CancerRelatedMedicationRequest`. Concomitant medications may be relevant in the cancer-treatment context. A data receiver cannot assume the medications included in the bundle represent the complete list of active medications available from the data sender.

## Specifying a time range

By default, this Bundle includes ALL required and Must Support resources described above irrespective of time. For some types of resources, such as vital signs, this may include a very large number of resources.

To avoid this, callers may specify the `date` parameter when requesting a patient's Bundle via the Sender's FHIR API. This operates according to the [FHIR search specification for the `date` parameter](http://hl7.org/fhir/R4/search.html#date): for example, `date=ge2020-01-01&date=le2020-09-01` could be used to request resources within the provided date range.

If the `date` parameter is provided, the following resources SHALL be filtered accordingly:

- Laboratory results (based on the value of `effective`; if `effectivePeriod` is provided, use the end of the `Period` for date comparisons)
- Medications (based on the value of `MedicationRequest.dosageInstruction.timing.event`)
- Vital signs (based on the value of `effective`; if `effectivePeriod` is provided, use the end of the `Period` for date comparisons)

Other resources SHALL NOT be filtered based on the `date` parameter. There are two reasons for this:

1. The primary goal of date filtering is performance optimization: there may be _many_ instances of the resources listed above, and filtering by date avoids sending large amounts of data over the wire that would be immediately discarded via client-side filtering by the Receiver.

2. Resources may have multiple date elements, and the optimal approach for filtering on these may differ by use case. Filtering these elements client-side rather than server-side allows for more flexibility, with no significant downside for resources with few instances.

## References

For included resources that reference another resource not already in the Bundle, the referenced resource MAY be included if it is critical to the utility of the referencing resource. For example, [a `MedicationRequest` resource may reference a `Medication` resource when an RxNorm code is not available](http://hl7.org/fhir/us/core/all-meds.html#options-for-representing-medication). In this case, the referenced `Medication` resource should be included in the Bundle because it is integral to the interpretation of the `MedicationRequest`.

[`CancerDiseaseStatus`]: StructureDefinition-mcode-cancer-disease-status.html
[`CancerGeneticVariant`]: StructureDefinition-mcode-cancer-genetic-variant.html
[`CancerGenomicsReport`]: StructureDefinition-mcode-cancer-genomics-report.html
[`CancerPatient`]: StructureDefinition-mcode-cancer-patient.html
[`CancerRelatedMedicationRequest`]: StructureDefinition-mcode-cancer-related-medication-request.html
[`CancerRelatedRadiationProcedure`]: StructureDefinition-mcode-cancer-related-radiation-procedure.html
[`CancerRelatedSurgicalProcedure`]: StructureDefinition-mcode-cancer-related-surgical-procedure.html
[`ComorbidCondition`]: StructureDefinition-mcode-comorbid-condition.html
[`ECOGPerformanceStatus`]: StructureDefinition-mcode-ecog-performance-status.html
[`KarnofskyPerformanceStatus`]: StructureDefinition-mcode-karnofsky-performance-status.html
[`GeneticSpecimen`]: StructureDefinition-mcode-genetic-specimen.html
[`GenomicRegionStudied`]: StructureDefinition-mcode-genomic-region-studied.html
[`ImagingStudy`]: https://www.hl7.org/fhir/imagingstudy.html
[`Media`]: https://www.hl7.org/fhir/media.html
[`PrimaryCancerCondition`]: StructureDefinition-mcode-primary-cancer-condition.html
[`SecondaryCancerCondition`]: StructureDefinition-mcode-secondary-cancer-condition.html
[`TNMClinicalDistantMetastasesCategory`]: StructureDefinition-mcode-tnm-clinical-distant-metastases-category.html
[`TNMClinicalPrimaryTumorCategory`]: StructureDefinition-mcode-tnm-clinical-primary-tumor-category.html
[`TNMClinicalRegionalNodesCategory`]: StructureDefinition-mcode-tnm-clinical-regional-nodes-category.html
[`TNMClinicalStageGroup`]: StructureDefinition-mcode-tnm-clinical-stage-group.html
[`TumorMarker`]: StructureDefinition-mcode-tumor-marker.html
[`USCorePractitioner`]: http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html
[`USCoreProcedureProfile`]: http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html
[`USCoreSmokingStatusProfile`]: http://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus.html
[an Observation indicating negative margins]: Observation-example1-observation-tumor-invasion-negative.html
[conformance guidance for supported profiles]: conformance.html#supported-profiles
[StructureDefinition-us-core-`practitioner`]: http://hl7.org/fhir/us/core/STU3.1/StructureDefinition-us-core-practitioner.html
[us-core-clinical-notes]: https://www.hl7.org/fhir/us/core/clinical-notes-guidance.html
[`TNMClincalDistantMetastasesCategory`]: StructureDefinition-mcode-tnm-clinical-distant-metastases-category.html
[`TNMPathologicalStageGroup`]: StructureDefinition-mcode-tnm-pathological-stage-group.html
[`TNMPathologicalPrimaryTumorCategory`]: StructureDefinition-mcode-tnm-pathological-primary-tumor-category.html
[`TNMPathologicalRegionalNodesCategory`]: StructureDefinition-mcode-tnm-pathological-regional-nodes-category.html
[`TNMPathologicalDistantMetastasesCategory`]: StructureDefinition-mcode-tnm-pathological-distant-metastases-category.html
