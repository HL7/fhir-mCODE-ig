### mCODE STU 2 Publication Version (November 2021)

#### General Changes

* Updated the [Data Dictionary](dictionary.html) content.
* A [glossary of radiotherapy terms](glossary.html) was added.
* Updated the [mCODE diagram](index.html#mcode-overview) to reflect STU 2 changes. Embedded links to FHIR artifacts were added.
* Re-arranged the top-level menus for easier navigation.
* Provided separate pages containing the different types of FHIR artifacts (e.g., [Profiles](profiles.html), [ValueSets](valuesets.html))
* Updated lists of artifacts on "Content by Group" pages.
* Added external value sets used by mCODE to FHIR Artifacts [Value Sets](valuesets.html) page
* Updated [terminology](terminology.html) page to include code system identifiers recommended by HL7 Terminology Authority, and to document [local code systems](terminology.html#local-code-systems).
* Local code systems have been consolidated and reorganized to reduce their number. Local codes have been standardized to reflect codes requested from SNOMED and LOINC.
* Added FSH rendering in notes section for all example instances (e.g., this [example](Observation-cancer-related-mcode-comorbidities-elixhauser-john-anyperson.html#notes))
* Added more readable renderings of all [capability statements](http://build.fhir.org/ig/HL7/fhir-mCODE-ig/branches/master/capabilitystatements.html).
* Made values required in all extensions because extensions should never appear if there is no value. [FHIR-33003](https://jira.hl7.org/browse/FHIR-33003)
* All definitions have been reviewed and edited and numerous improvements and corrections made to narrative content.

#### Conformance

* Replaced the term "Obligation to Implement (OTI)" with more straightforward "Must Implement" in explanation of [profile conformance](conformance-profiles.html)
* Simplified and clarified explanations of what profiles and data elements must be implemented by mCODE users.
* Narrative now refers consistently "in-scope patient", instead of "mCODE patient" due to confusion about the meaning of the latter term.

#### Patient Group Changes

* All references to subject or patient now reference [CancerPatient].   Any patient that conforms to USCore is conformant. [FHIR-32166](https://jira.hl7.org/browse/FHIR-32166)
* Removed the local code system `ResourceIdentifierCS` that contained only one code (`#mcode-patient`), and replaced `#mcode-patient` with the NCI code for cancer patient, `NCI#C19700`. This affects the profile [MCODEPatientGroup] and the way of querying for the list of "in-scope" patients.
* Changed slicing on [MCODEPatientBundle] to required each resource in the bundle to populate `meta.profile`.

#### Assessment Group Changes

* Replaced local codes for Comorbidities with codes in the [LoincRequestedCS] code system, since codes have now been requested in LOINC.
* Clarified that the overall risk score should be included in the Elixhauser Comorbidity, and explained cases where might be missing. [FHIR-32280](https://jira.hl7.org/browse/FHIR-32279), [FHIR-32280](https://jira.hl7.org/browse/FHIR-32280)
* Removed "unknown" from value set in Elixhauser Comorbidity profile components since unknown is not a part of the Elixhauser score. [FHIR-32280](https://jira.hl7.org/browse/FHIR-32281)

#### Disease Group Changes

* Laterality broken out into separate extension in [PrimaryCancerCondition], [SecondaryCancerCondition], [TumorSpecimen], [GenomicSpecimen] because laterality is reported as a separate required value in most registry reports. [FHIR-32340](https://jira.hl7.org/browse/FHIR-32340)
* Changed the definition of [CancerStagingSystemVS] to an intensional set containing descendants of SCT#254292007 "Tumor staging (tumor staging)". The includes codes for AJCC staging (version 6, 7, and 8) and many other specialized staging systems.Changed the definition of CancerStagingSystemVS to an intensional set containing descendants of SCT#254292007 "Tumor staging (tumor staging)". The includes codes for AJCC staging (version 6, 7, and 8) and many other specialized staging systems. [FHIR-32663](https://jira.hl7.org/browse/FHIR-32663)
* Changed name of extension from LocationQualifier to BodyLocationQualifier to make the semantics more clear. [FHIR-32345](https://jira.hl7.org/browse/FHIR-32345), [FHIR-32348](https://jira.hl7.org/browse/FHIR-32348)

#### Treatment Group Changes

* Incorporated the modality and technique extensions into a combined [RadiotherapyModalityAndTechnique] extension that includes invariants that restrict the allowed [combinations](StructureDefinition-mcode-radiotherapy-modality-and-technique.html#usage) using invariants
* Aligned the [RadiotherapyTreatmentLocationVS] and [RadiotherapyTreatmentLocationQualifierVS] value sets to American Association of Physicists in Medicine (AAPM) TG-263 anatomy terms and [provide a mapping](http://build.fhir.org/ig/HL7/fhir-mCODE-ig/branches/master/StructureDefinition-mcode-radiotherapy-volume.html#usage) to SNOMED-CT concepts and qualifiers. [FHIR-33343](https://jira.hl7.org/browse/FHIR-33343)
* Added the identifier slice to [RadioTherapyVolume] and [RadiotherapyCourseSummary].
* Laterality broken out into separate extension in [CancerRelatedSurgicalProcedure]. [FHIR-32340](https://jira.hl7.org/browse/FHIR-32340)
* [TumorMarkerTestVS] value set has been curated to better capture the intended scope of tumor marker tests.
* `BrachytherapyTreatmentPhase` and `RadiotherapyTreatmentPhase` profiles and examples dropped because it was determined that this was too much detail for mCODE. Phase profiles will reappear in the planned [CodeX Radiation Therapy FHIR Implementation Guide](http://build.fhir.org/ig/HL7/codex-radiation-therapy/branches/master/index.html). [FHIR-33340](https://jira.hl7.org/browse/FHIR-33340)
* Changed valued in [TreatmentTerminationReasonVS] to SNOMED-CT situations and findings. Added new values including `SCT#399307001 "Lost to follow-up (finding)"` and `SCT#419620001 "Death (event)"`. [FHIR-32832](https://jira.hl7.org/browse/FHIR-32832)
* Radiotherapy Modality Value Set and Radiotherapy Technique Value Set are now defined by inclusion of the modality and technique value sets for Brachytherapy and Teleradiotherapy rather than by enumeration. [FHIR-32263](https://jira.hl7.org/browse/FHIR-32263)
* Descriptions for the Elixhauser ThyroidOther and NeuroOther VS have been clarified. [FHIR-32350](https://jira.hl7.org/browse/FHIR-32350)
* Dropped the context restrictions on TreatmentIntent, Modality, and Technique extensions to permit them to be used in other resources in the future. [FHIR-32243](https://jira.hl7.org/browse/FHIR-32243)
* Added tables with definitions and compatibility for all radiotherapy and brachytherapy modalities and techniques. [FHIR-32244](https://jira.hl7.org/browse/FHIR-32244), [FHIR-32246](https://jira.hl7.org/browse/FHIR-32246), [FHIR-32247](https://jira.hl7.org/browse/FHIR-32247)
* Updated language defining brachythereapy and teleradiotherapy treatment phase so as not to imply that phases are sequential. [FHIR-32256](https://jira.hl7.org/browse/FHIR-32256)
* Replaced radiotherapy modality and technique UMLS and local codes with approved SNOMED-CT codes. Local codes have been removed from the radiotherapy code system, and the radiotherapy code system has been removed. [FHIR-32261](https://jira.hl7.org/browse/FHIR-32261)
* Changed name of value set from TreatmentIntentVS to ProcedureIntentVS because "procedure" was considered broader than "treatment". [FHIR-32264](https://jira.hl7.org/browse/FHIR-32264)
* Clarified that total dose in a Phase is not cumulative across multiple phases. [FHIR-32266](https://jira.hl7.org/browse/FHIR-32266)
* Clarify that the number of fractions is per volume in Course Summary, but not per volume in a Phase. [FHIR-32267](https://jira.hl7.org/browse/FHIR-32267).
* The invariant requiring a reason for medication and surgery (mcode-reason-required) now generates warning instead of an error. [FHIR-32387](https://jira.hl7.org/browse/FHIR-32387)

#### Genomics Group Changes

* Renamed `CancerGeneticVariant` to `GenomicVariant` to reflect wider scope of this profile. [FHIR-32888](https://jira.hl7.org/browse/FHIR-33340)
* Renamed `CancerGenomicsReport` to [GenomicsReport] because it is not specific to cancer, and make that profile more broadly applicable.
* [GenomicVariant] now includes additional components for molecular consequence, clinical significance, variant category, and copy number.
* Added Values Urine, Stool to [GenomicSpecimenTypeVS] value set. The suggested term `Source, other` was not added because the value set binding is extensible. [FHIR-32827](https://jira.hl7.org/browse/FHIR-32827)
* Removed `SPTY#JNTFLD "Fluid, Joint"` from [GenomicSpecimenTypeVS] because it is a duplicate of `SPTY#SNV "Fluid, synovial (Joint fluid)". [FHIR-32838](https://jira.hl7.org/browse/FHIR-32838)
* Primary and Secondary cancer value sets have been aligned with CDC state cancer reporting practices. [FHIR-32956](https://jira.hl7.org/browse/FHIR-32956)

#### Outcome Group Changes

* Added values to [TumorSizeMethodVS] to reflect clinical and pathologic analysis practices.
* Aligned [ConditionStatusTrendVS] with NAACR reporting requirements by adding TBD SNOMED terms for partial and complete remission, and dropping `SCT#281900007 "No abnormality detected (finding)"` [FHIR-32837](https://jira.hl7.org/browse/FHIR-32837)
* Aligned [CancerDiseaseStatusEvidenceTypeVS] valueSet with NAACR reporting needs. [FHIR-32893](https://jira.hl7.org/browse/FHIR-32893)

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
* Realignment of the six mCODE groups (Patient, Disease, Genomics, Labs/Vitals, Outcomes): Labs/Vitals has been renamed "Assessments" and some profiles formerly in the Patient Group have been moved into that group. TumorMarkerTest has been moved from Labs/Vitals to the Disease group. The [mCODE concept diagram](index.html#mcode-overview) has been updated to reflect these changes.

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

* [CancerRelatedMedicationStatement](http://hl7.org/fhir/us/mcode/STU1/StructureDefinition-mcode-cancer-related-medication-statement.html) was replaced with [CancerRelatedMedicationRequest] and [CancerRelatedMedicationAdministration]. This decision was prompted by US Core STU Release 3.1.1, which replaced MedicationStatement with MedicationRequest. [Its guidance for fetching medications in different contexts is provided here.](http://hl7.org/fhir/us/core/medication-list-guidance.html)
* Radiotherapy procedure area was expanded to include new requirements, resulting in additional profiles: [RadiotherapyCourseSummary], [RadiotherapyCourseSummary], and [TeleradiotherapyTreatmentPhase]

#### Genomics

* [GenomicVariant] contains an additional component for DNA change type.

#### Outcomes

* Three new profiles further specify the location and size of a tumor: [Tumor], [TumorSpecimen], and [TumorSize].

----

### mCODE 1.0.0 STU 1

The following are changes made to the [mCODE 0.9.1 September 2019 Ballot Release](http://hl7.org/fhir/us/mcode/2019Sep/) that are in the  [mCODE 1.0.0 STU1 release](http://hl7.org/fhir/us/mcode/STU1/).

#### Enhancements

* The following profiles have been added: **GenomicSpecimen, RegionStudied** to support greater alignment between mCODE and the [Clinical Genomics Reporting FHIR IG STU1.](http://hl7.org/fhir/uv/genomics-reporting/index.html).
* The GeneticVariant profile has additional components which conform to equivalent components in the CG Reporting IG Variant profile: geneStudied, variationCode, genomicDNAChange, genomicSourceClass, aminoAcidChange, aminoAcidChangeType, cytogeneticLocation, and cytogeneticNomenclature.
* The MedicationStatement profile name has changed to **CancerRelatedMedicationStatement**. This profile now constrains the reason reference to only primary and secondary cancer conditions.

#### Corrections and Modifications to Existing Content

* The following mCODE profiles no longer appear and instead document preferred use of FHIR base profiles: **BloodPressure**, **BodyWeight**, **BodyHeight**, **CBCWAutoDifferentialPanel**, **ComprehensiveMetabolic2000SerumOrPlasmaPanel**.
* Genomics-related profiles GeneticVariantTested and GeneticVariantFound are combined into one profile, GeneticVariant.
* GenomicsReport onco-core-RegionStudied-extension is migrated to a slice under DiagnosticReport.result with a reference to a new profile, RegionStudied.
* GenomicsReport obf-SpecimenType-extension is migrated to a slice under DiagnosticReport.result with a reference to a new profile, GenomicSpecimen.
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
