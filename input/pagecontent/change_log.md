### mCODE STU 2 (Sept 2021)

* CancerDiseaseStatus profile now uses a newly-created LOINC code, 97509-4 "Cancer Disease Progression". In STU 1, the LOINC code chosen to represent this observation (88040-1, "Response to cancer treatment") did not precisely match the meaning of this profile because cancer disease status is observable regardless of whether the patient is under treatment. See [FHIR-27850](https://jira.hl7.org/browse/FHIR-27850?jql=project%3D%22FHIR%22%20AND%20id%20%3D%20FHIR-27850).


### mCODE STU 2 Ballot Version (May 2021)

The following summarizes changes to [the STU1 release](http://hl7.org/fhir/us/mcode/STU1) for the STU2 Ballot (May 2021). Many of these changes have been taken in response to input from the HL7 community. Issue numbers refer to the [HL7 Jira](https://jira.hl7.org/issues/?filter=13361) (free account registration required).

A comprehensive listing of differences in FHIR artifacts between STU 1 and STU 2 is given in the [Data Dictionary Differential](dictionary.html#data-dictionary-differential) (DDD) spreadsheet. This file is meant to supplement rather than replace the content in this Implementation Guide, and the Implementation Guide takes precedence in any cases where the DDD appears to conflict with it.

#### General Changes


* Improved [Data Dictionary](dictionary.html)
* New and improved [Conformance Criteria](conformance-general.html)
* New [OperationDefinition][mcode-patient-everything] for retrieving an mCODE bundle.
* New [CapabilityStatements and SearchParameters](conformance-patients.html) defined for mCODE Data Sender and mCODE Data Receiver roles
* New [extended patient journey example](examples.html)
* Extended [conformance criteria](conformance-general.html) to allow compliance to be tested in a more objective way
* Realignment of the six mCODE groups (Patient, Disease, Genomics, Labs/Vitals, Outcomes): Labs/Vitals has been renamed "Assessments" and some profiles formerly in the Patient Group have been moved into that group. TumorMarkerTest has been moved from Labs/Vitals to the Disease group. The [mCODE concept diagram](index.html#scope-and-conceptual-model) has been updated to reflect these changes.

#### Patient Group Changes

* Certain profiles have been moved to the Assessments group
* A new profile, [MCODEPatientGroup], has been added to represent the patients to be considered in scope for mCODE.
* A new profile, [MCODEPatientBundle], has been added for the purpose of returning all mCODE resources related to a [CancerPatient].

### Assessment

* Changed the name of this group from Labs & Vital to Assessment and moved Performance Assessments and Comorbidities into this group.
* [Comorbidities][ComorbiditiesElixhauser] have been redesigned to capture the presence or absence of all comorbidities in one Observation.

#### Disease

* The separate sets of profiles for TNM Clinical and TNM Pathologic staging were combined into a single set of profiles: [CancerStageGroup], [TNMPrimaryTumorCategory], [TNMRegionalNodesCategory], and [TNMDistantMetastasesCategory]. The new profiles can be used for both clinical and pathologic TNM staging, or for other types of TNM staging; these are differentiated by the value of `Observation.code` in CancerStageGroup, which is bound to [ObservationCodesPrimaryTumorVS].
* The profile TNMStageGroup is now renamed [CancerStageGroup] in order to support non-TNM staging systems such as Rai, Binet, and Revised International Staging System (R-ISS).

#### Treatment

* [CancerRelatedMedicationStatement](http://hl7.org/fhir/us/mcode/STU1/StructureDefinition-mcode-cancer-related-medication-statement.html) was replaced with [CancerRelatedMedicationRequest] and [CancerRelatedMedicationAdministration]. This decision was prompted by US Core STU Release 3.1.1, which replaced MedicationStatement with MedicationRequest. [Its guidance for fetching medications in different contexts is provided here.](http://hl7.org/fhir/us/core/all-meds.html)
* Radiotherapy procedure area was expanded to include new requirements, resulting in additional profiles: [RadiotherapyCourseSummary], [RadiotherapyCourseSummary], and [TeleradiotherapyTreatmentPhase]

#### Genomics

* [CancerGeneticVariant] contains an additional component for DNA change type.

#### Outcomes

* Three new profiles further specify the location and size of a tumor: [Tumor], [TumorSpecimen], and [TumorSize].

----

### mCODE 1.0.0 STU 1

The following are changes made to the [mCODE 0.9.1 September 2019 Ballot Release](http://hl7.org/fhir/us/mcode/2019Sep/) that are in the  [mCODE 1.0.0 STU1 release](http://hl7.org/fhir/us/mcode/STU1/).

#### Enhancements

* The following profiles have been added: **GeneticSpecimen, RegionStudied** to support greater alignment between mCODE and the [Clinical Genomics Reporting FHIR IG STU1.](http://hl7.org/fhir/uv/genomics-reporting/index.html).
* The GeneticVariant profile has additional components which conform to equivalent components in the CG Reporting IG Variant profile: geneStudied, variationCode, genomicDNAChange, genomicSourceClass, aminoAcidChange, aminoAcidChangeType, cytogeneticLocation, and cytogeneticNomenclature.
* The MedicationStatement profile name has changed to **CancerRelatedMedicationStatement**. This profile now constrains the reason reference to only primary and secondary cancer conditions.

#### Corrections and Modifications to Existing Content

* The following mCODE profiles no longer appear and instead document preferred use of FHIR base profiles: **BloodPressure**, **BodyWeight**, **BodyHeight**, **CBCWAutoDifferentialPanel**, **ComprehensiveMetabolic2000SerumOrPlasmaPanel**.
* Genomics-related profiles GeneticVariantTested and GeneticVariantFound are combined into one profile, GeneticVariant.
* GenomicsReport onco-core-RegionStudied-extension is migrated to a slice under DiagnosticReport.result with a reference to a new profile, RegionStudied.
* GenomicsReport obf-SpecimenType-extension is migrated to a slice under DiagnosticReport.result with a reference to a new profile, GeneticSpecimen.
* DiagnosticReport.category cardinality changed from `1..1` to `1..*`
* Replaced references of CIMPL to references of FHIR Shorthand and SUSHI.
* ECOGPerformanceStatus Observation.code and Observation.interpretation changed to align with the LOINC equivalent of ECOG score (89247-1) and interpretation (LOINC Answer List LL529-9).
* KarnofskyPerformanceStatus Observation.code and Observation.interpretation changed to align with the LOINC equivalent of Karnofsky score (89243-0) and interpretation (LOINC Answer List LL4986-7).

### mCODE 0.9.1 September 2019 Ballot Release

The following are changes relative to [mCODE 0.9.0](https://mcodeinitiative.github.io/index.html) that appear in the [mCODE 0.9.1 September 2019 Ballot Release](http://hl7.org/fhir/us/mcode/2019Sep/)

#### Enhancements

* Updated to FHIR Release 4 from DSTU 2.
* Changed base class of mCODE laboratory panels (CBC and CMP) from Observation to DiagnosticReport.
* Documented mCODE compliance criteria.
* Documented preferred value sets for extensible binding and affect on US Core compliance.
* Changed HistologyMorphologyBehaviorVS value set to descendants of SCT#367651003 (Malignant neoplasm of primary, secondary, or uncertain origin (morphologic abnormality)), from descendants of SCT#108369006 (Neoplasm (morphologic abnormality)), because the latter brought in some concepts that do not represent malignant neoplasms.

#### Corrections and Modifications to Existing Content

* Updated code systems to new FHIR R4 base URL, http://terminology.hl7.org (previously was http://hl7.org/fhir)
* Changed profile name from GeneticMutationTested to GeneticVariant.
* Corrected mapping so the reference to PrimaryCancerCondition in all staging-related observations uses the existing 'focus' attribute.
* Eliminated AnatomicalOrientation.
* Eliminated ClockDirection as a separate value set because values are incorporated in logically-defined SNOMED CT AnatomicalOrientationVS.
* Re-wrote the introductory narratives to consolidate multiple pages.
* Changed clinicalStatus on PrimaryCancerCondition and SecondaryCancerCondition from `1..1` to `0..1`.
* Typographical fixes to multiple documentation pages.
* Eliminated reference range from GeneticVariant and components of GeneticVariantFound.
* Improved the definition of "curative" and "palliative" in TreatmentIntentVS.
* Corrected the definition of TreatmentIntent.
* Improved the explanation of the relationships between the genomics-related profiles.
* Updated examples to validate against FHIR R4 and other changes to the profiles.
* Changed blood pressure test code to LNC#85354-9 "Blood pressure panel with all children optional" to align with FHIR
* Restored device attribute on TumorMarkerTest since laboratories do report it on occasion.
* Added string as an allowable datatype for `TumorMarkerTest.value[x]`, since it is a valid datatype for some of the tests included in TumorMarkerTestVS.
* Changed cardinality of ECOGPerformanceStatus.value and KarnofskyPerformanceStatus.value to `1..1` and ECOGPerformanceStatus.dataAbsentReason and ECOGPerformanceStatus.dataAbsentReason to `0..0`
* Changed cardinality of GeneticVariant.referenceRange to `0..0`.
* Changed cardinality of referenceRange for `GeneticVariantFound.component[VariantFoundIdentifier]`, `GeneticVariantFound.component[VariantFoundHGVSName]` and `GeneticVariantFound.component[VariantFoundDescription]` and to `0..0`.
* Clarified description of HistologyMorphologyBehaviorVS regarding the use of ICD-O-3 behavior codes.
* Corrected descriptions for multiple codes in the ComorbidConditionVS.
* Updated Data Dictionary to reflect FHIR R4 and other changes to the Implementation Guide.
* Renamed PrimaryCancerConditionVS to PrimaryOrUncertainBehaviorCancerDisorderVS, for greater alignment with value set content.
* Renamed extension prefixes from `shr-core` to `obf-datatype`.
* Replaced onco-core-geneStudied-extension with observation-geneticsGene standard extension in GeneticVariant.
* Corrected the definition of obf-RadiationDosePerFraction-extension.
* Renamed vital-precondition-extension to vital-preconditionCode-extension to distinguish from precondition whose datatype is Reference().
* Improved the definition for obf-RadiationFractionsDelivered-extension.
* Replaced locally defined LateralityVS with FHIR-defined laterality value set in obf-datatype-Laterality-extension.
* Improved definition of onco-core-EvidenceType-extension.
* Replaced obf-dateOfDiagnosis-extension with condition-assertedDate standard extension in PrimaryCancerCondition and SecondaryCancerCondition.
* Added logical definition to TNM-related value sets to include all codes from AJCC staging systems.
* Removed references to MedicationRequest on basedOn attribute for TNMPrimaryTumorCategory, TNMRegionalNodesCategory, TNMDistantMetastasesCategory, KarnofskyPerformanceStatus and ECOGPerformanceStatus.


{% include markdown-link-references.md %}
