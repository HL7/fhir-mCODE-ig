Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient.

The bundle MUST contain exactly one Patient resource conforming to the [CancerPatient](StructureDefinition-mcode-cancer-patient.html) profile, and one or more Condition resource(s) conforming to the [PrimaryCancerCondition](StructureDefinition-mcode-primary-cancer-condition.html) profile.

The bundle MUST also contain following mCODE-conformant resources, if available to the server:

* Condition resources conforming to [SecondaryCancerCondition](StructureDefinition-mcode-secondary-cancer-condition.html)
* Observation resources conforming to [CancerDiseaseStatus](StructureDefinition-mcode-cancer-disease-status.html)
* Observation resources conforming to [PerformanceStatusParent](StructureDefinition-mcode-performance-status-parent.html) ([ECOGPerformanceStatus](StructureDefinition-mcode-ecog-performance-status.html) and [KarnofskyPerformanceStatus](StructureDefinition-mcode-karnofsky-performance-status.html))
* Observation resources conforming to [TumorMarker](StructureDefinition-mcode-tumor-marker.html) test results
* MedicationRequest resources conforming to [CancerRelatedMedicationRequest](StructureDefinition-mcode-cancer-related-medication-request.html) (prescriptions, administrations, and patient-reported medications)
* Procedure resources conforming to [CancerRelatedProcedureParent](StructureDefinition-mcode-cancer-related-procedure-parent.html) ([CancerRelatedSurgicalProcedure](StructureDefinition-mcode-cancer-related-surgical-procedure.html) and [CancerRelatedRadiationProcedure](StructureDefinition-mcode-cancer-related-radiation-procedure.html))
* Observation resources conforming to [CancerStageParent](StructureDefinition-mcode-cancer-stage-parent.html) (Clinical Group and TNM and/or Pathological Group and TNM)
* Observation resources conforming to [CancerGeneticVariant](StructureDefinition-mcode-cancer-genetic-variant.html)
* DiagnosticReport resources conforming to [CancerGenomicsReport](StructureDefinition-mcode-cancer-genomics-report.html)
* Specimen resources conforming to [GeneticSpecimen](StructureDefinition-mcode-genetic-specimen.html)
* Observation resources conforming to [GenomicRegionStudied](StructureDefinition-mcode-genomic-region-studied.html)
* Observation resource conforming to [CancerRelatedComorbidities](StructureDefinition-mcode-cancer-related-comorbidities.html), and accompanying Condition resources
* Observation resources conforming to [VitalSigns](http://hl7.org/fhir/R4/observation-vitalsigns.html) (height, weight, blood pressure)
* Observation resources conforming to Comprehensive Metabolic Panel (CMP) and Complete Blood Count (CBC) lab results

In addition, the bundle MAY contain additional resources relevant to the patient but not part of mCODE, such as smoking status, family member history, and diagnostic procedures.

The bundle itself MUST validate against the [MCODEPatientBundle](StructureDefinition-mcode-patient-bundle.html) profile.

By default, this Bundle includes _all_ required resources described above, irrespective of care dates associated with the resources. For some types of resources, such as vital signs, a very large number of resources will therefore be included by default. To limit the number of included resources, callers MAY specify `start` and `end` parameters when requesting a patient's mCODE bundle via the Sender's FHIR API, which operate in the same way as for [the Fetch Patient Record operation](https://www.hl7.org/fhir/operation-patient-everything.html)."

/* TODO update this file to match the description in `mcode-patient-bundle.md`. */
* type  = #collection
* insert BundleEntrySlicingRules
* entry and entry.resource MS
* entry contains
    // These resources are required per Conformance > Supported Profiles.
    cancerPatient 1..1 MS and
    primaryCancerCondition 1..* MS

* entry[cancerPatient].resource only CancerPatient
* entry[cancerPatient] ^short = "Cancer Patient"
* entry[cancerPatient] ^definition = "The Cancer Patient whose data is included in the bundle (required element)."
* entry[primaryCancerCondition].resource only PrimaryCancerCondition
* entry[primaryCancerCondition] ^short = "Primary Cancer Condition"
* entry[primaryCancerCondition] ^definition = "The Primary Cancer Condition resource (required element)."
