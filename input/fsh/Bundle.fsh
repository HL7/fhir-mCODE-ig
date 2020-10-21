Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient.

The goal of this Bundle is to useful out of the box by an mCODE Data Sender to collect and send a comprehensive collection of mCODE-related data for an _individual patient_ to an mCODE Data Receiver.

** Requests can be time-boxed. Discuss.

This Bundle may not be useful for specialty use cases. For example, if a laboratory does not have enough information to construct a resource conforming to [`CancerPatient`], they will not be able to use this Bundle to send data back to the ordering clinician. In cases like this, existing FHIR operations can be used.

In the following, 

### Required Elements

The following elements are REQUIRED:

* CancerPatient: Exactly one Patient resource conforming to this profile
* PrimaryCancerCondition: One or more conforming Condition resource 

### Must Support Elements

The following elements are labelled MustSupport, indicating that an mCODE Data Sender MUST populate the element if the Data Sender has that data. If multiple instances exist, ALL instances SHOULD be reported. These elements are optional only in the sense that they will not be reported if the Sender does not have that type of data for a particular patient:


* CancerDiseaseStatus
* CancerGeneticVariant
* CancerGenomicsReport
* GenomicRegionStudied
* CancerRelatedMedicationRequest 
* CancerRelatedRadiationProcedure
* CancerRelatedSurgicalProcedure
* Genetic Specimen
* GenomicRegionStudied
* PerformanceStatus (ECOGPerformanceStatus and KarnofskyPerformanceStatus)
* SecondaryCancerCondition 
* Stage (TNMClinicalStageGroup, TNMClinicalPrimaryTumorCategory, TNMClinicalRegionalNodesCategory, TNMClincalDistantMetastasesCategory, TNMPathologicalStageGroup, TNMPathologicalPrimaryTumorCategory, TNMPathologicalRegionalNodesCategory, TNMPathologicalDistantMetastasesCategory)
* TumorMarker 
* Vital Signs, including blood pressure, body height, and body weight. Observations conform to the FHIR vital sign profiles, incorporated by reference into US Core. See implementation.html#vital-sign-profiles.
* Laboratory Results: Observations included in Complete Blood Count (CBC) and Comprehensive Metabolic Panel (CMP). Individual results must conform to the US Core Laboratory Result Profile. See implementation.html#laboratory-profiles for a list of LOINC codes to be included.

### Optional Elements

mCODE does not exclude other elements in the mCODE bundle.

Additional MedicationRequests -- concomitant drugs may be relevant in the cancer-treatment context. 
Clinical Notes -- see US Core

- `smokingStatus`: SHOULD include any Observations conforming to
  [`USCoreSmokingStatusProfile`]
- `familyHistory`: SHOULD include any FamilyMemberHistory resources that may be
  related to a primary or secondary cancer condition. MAY include other
  FamilyMemberHistory if filtering to only cancer-related family history is not
  possible.
- `diagnosticReport`: SHOULD include any DiagnosticReport resources that may be
  related to a primary or secondary cancer condition.
- `observation`: MAY include other Observation resources related to a
  primary or secondary cancer condition. This is a catch-all for any Observation
  resources that do not conform to an mCODE profile, and do not fit in one of
  the other entries in this Bundle. For example, this could include
  [an Observation indicating negative margins] on an excised tumor.

IMAGES?


### References

See http://hl7.org/fhir/us/core/all-meds.html#options-for-representing-medication

> Referenced resources may be included in the bundle returned, an external resource, or a contained if the resource can’t stand alone. These options are shown in figure 3 below. The server application MAY choose any combination of these methods, but if an external reference to Resource is used, the server SHALL support the include parameter for searching this element. The client application MUST support all methods. 


------------




**TODO: Support for comorbidities** -- waiting on decision for how these are profiled**
**TODO: Support tumor size experimental profile -- waiting for this to be merged in**







[`CancerPatient`]: StructureDefinition-mcode-cancer-patient.html
[conformance guidance for supported profiles]: conformance.html#supported-profiles
[`USCoreProcedureProfile`]: http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html
[`USCorePractitioner`]: http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html
[`USCoreSmokingStatusProfile`]: http://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus.html
[an Observation indicating negative margins]: Observation-example1-observation-tumor-invasion-negative.html
"

* type = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains

    // These resources are required per Conformance > Supported Profiles.
    cancerPatient 1..1 and
    primaryCancerCondition 1..* and


    // Other mCODE profiles
    secondaryCancerCondition 0..* and
    cancerDiseaseStatus 0..* and
    performanceStatus 0..* and
    tumorMarker 0..* and
    cancerRelatedRadiationProcedure 0..* and
    cancerRelatedSurgicalProcedure 0..* and

    // Multiple profiles can be used to represent cancer stage. We will
    // combine them into a single element for simplicity.
    cancerStage 0..* and

    // TODO handle comorbidities, waiting on decision for how these are profiled

    // mCODE genomics
    cancerGeneticVariant 0..* and
    cancerGenomicsReport 0..* and
    geneticSpecimen 0..* and
    genomicRegionStudied 0..* and



    // Cancer-related, but not restricted to mCODE profiles
    smokingStatus 0..* and
    medication 0..* and
    procedure 0..* and
    familyHistory 0..* and
    diagnosticReport 0..* and
    observation 0..* and
    practitioner 0..* and
    organization 0..*



// No 1:1 relationship with mCODE profiles
* entry[observation].resource only Observation
* entry[cancerStage].resource only CancerStageParent // I think I can do this rather than specifying each profile inheriting from CancerConditionParent
* entry[familyHistory].resource only FamilyMemberHistory
* entry[medication].resource only MedicationAdministration or MedicationRequest or MedicationStatement
* entry[organization].resource only Organization
* entry[performanceStatus].resource only ECOGPerformanceStatus or KarnofskyPerformanceStatus
* entry[practitioner].resource only USCorePractitioner
* entry[procedure].resource only USCoreProcedureProfile
* entry[smokingStatus].resource only USCoreSmokingStatusProfile
* entry[diagnosticReport].resource only DiagnosticReport


// 1:1 relationship with mCODE profiles
* entry[cancerDiseaseStatus].resource only CancerDiseaseStatus
* entry[cancerGeneticVariant].resource only CancerGeneticVariant
* entry[cancerGenomicsReport].resource only CancerGenomicsReport
* entry[cancerPatient].resource only CancerPatient
* entry[cancerRelatedRadiationProcedure].resource only CancerRelatedRadiationProcedure
* entry[cancerRelatedSurgicalProcedure].resource only CancerRelatedSurgicalProcedure
* entry[geneticSpecimen].resource only GeneticSpecimen
* entry[genomicRegionStudied].resource only GenomicRegionStudied
* entry[primaryCancerCondition].resource only PrimaryCancerCondition
* entry[secondaryCancerCondition].resource only SecondaryCancerCondition
* entry[tumorMarker].resource only TumorMarker