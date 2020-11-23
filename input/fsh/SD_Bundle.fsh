Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient. The bundle MUST contain exactly one Patient resource conforming to the CancerPatient profile, and one or more Condition resource(s) conforming to the PrimaryCancerCondition profile. The bundle MUST also contain following mCODE-conformant resources, if available to the server:

* Condition resources conforming to SecondaryCancerCondition
* Observation resources conforming to CancerDiseaseStatus
* Observation resources conforming to PerformanceStatus (ECOG and/or Karnofsky)
* Observation resources conforming to TumorMarker test results
* MedicationRequest resources conforming to CancerRelatedMedicationRequests (prescriptions, administrations, and patient-reported medications)
* Procedure resources conforming to CancerRelatedProcedure (surgical and radiological)
* Observation resources conforming to CancerStageParent (Clinical Group and TNM and/or Pathological Group and TNM)
* Observation resources conforming to CancerGeneticVariant
* DiagnosticReport resources conforming to CancerGenomicsReport
* Specimen resources conforming to GeneticSpecimen
* Observation resources conforming to GenomicRegionStudied
* Observation resource conforming to CancerRelatedComorbidities, and accompanying Condition resources 
* Observation resources conforming to [VitalSigns](http://hl7.org/fhir/R4/observation-vitalsigns.html) (height, weight, blood pressure)
* Observation resources conforming to Comprehensive Metabolic Panel (CMP) and Complete Blood Count (CBC) lab results

In addition, the bundle MAY contain additional resources relevant to the patient but not part of mCODE, such as smoking status, family member history, and diagnostic procedures.

The bundle itself MUST validate against the MCODEPatientBundle profile."

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


