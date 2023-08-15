**The following changes occurred between the [STU 3 ballot (March 2023)] and publication of STU 3, in response to ballot comments.**

### Addition of non-TNM Staging Profiles ([FHIR-41163](https://jira.hl7.org/browse/FHIR-41163), [FHIR-41003](https://jira.hl7.org/browse/FHIR-41003))

mCODE 2.1 and 3.0.0-ballot did not include any profiles for non-TNM staging, so there was no indication on how to use mCODE to represent staging for lymphoma and leukemia, for example. To address this issue, several non-TNM staging profiles were added. Given the numerous non-TNM staging systems, a set of profiles were added for illustrative purposes:

* [CLLBinetStage]
* [CLLRaiStage]
* [GynecologicTumorFIGOStage]
* [LymphomaStage]
* [MelanomaBreslowDepthStage]
* [MelanomaClarkLevel]
* [MyelomaISSStage]
* [MyelomaRISSStage]
* [ProstateGleasonGradeGroup]

### New History of Metastatic Disease Profile ([FHIR-41374](https://jira.hl7.org/browse/FHIR-41374))

Recurrences and unrelated cancers sometimes occur years after previous metastatic disease, for example, in the case of an adult with history of childhood leukemia. The details of the previous disease may be unavailable, but the fact that the patient had cancer previously may be clinically significant. The profile [HistoryOfMetastaticCancer] provides a method of recording this fact in the absence of other details. This addition brings mCODE and [CMS's Enhancing Oncology Model](https://innovation.cms.gov/innovation-models/enhancing-oncology-model) into full alignment.

### Expanded Staging Type and Staging Method Value Sets ([FHIR-41162](https://jira.hl7.org/browse/FHIR-41162), [FHIR-41164](https://jira.hl7.org/browse/FHIR-41164), [FHIR-41032](https://jira.hl7.org/browse/FHIR-41032), [FHIR-41030](https://jira.hl7.org/browse/FHIR-41030))

Additional stage type identifiers and staging methods were added to [CancerStageTypeVS] and [CancerStagingMethodVS]. These are values that could potentially be used in the future and inclusions or exclusions do not affect the immediately functionality of mCODE. Codes associated with pediatric cancers were moved out of mCODE in anticipation of an IG focused on pediatric cancer. Certain codes requested from SNOMED were added. Again, since the bindings of these values sets are extensible, inclusion or exclusion of particular values does not affect functionality.

### Clarification of Observation.code and Observation.method in CancerStage ([FHIR-41163](https://jira.hl7.org/browse/FHIR-41163))

An explanation of how Observation.code differs from (and sometimes subsumes) Observation.method in CancerStage and its descendants [was added](group-disease.html#how-to-report-staging-information).

### Birth Sex Added as Must Support ([FHIR-40587](https://jira.hl7.org/browse/FHIR-40587))

In CancerPatient, birth sex (an extension inherited from US Core), is now designated as must-support.

### Preferred Codes for TNM Stage Group and T, N, and M Classifications ([FHIR-41655](https://jira.hl7.org/browse/FHIR-41655))

mCODE is moving incrementally toward SNOMED CT as the preferred, standard vocabulary (except for identification of laboratory tests and a few other cases). While still accepting LOINC codes in Observations related to TNM staging, SNOMED CT codes are now preferred. Users should transition towards SNOMED CT in these profiles.

### Preferred Codes for Cancer Disease Status ([FHIR-40811](https://jira.hl7.org/browse/FHIR-40811))

A code representing the detection of metastases has been added, for when disease status changes from local disease to metastatic disease. The two disorder codes for partial and full remission, formerly from the SNOMED CT *disorder* hierarchy, have been replaced with analogous codes from the *qualifier value* hierarchy. This change was based on SNOMED guidance that the value of FHIR Observations should be a code from the *qualifier* hierarchy or *finding* hierarchy (see https://confluence.ihtsdotools.org/display/FHIR/Observation+binding). To assure backward compatibility with this change, the two deprecated disorder codes have been moved into a maximum value set, while the binding of the revised value set is now `preferred`. This gives implementers time to transition to the new codes for partial and full remission, since the old disorder codes are still accepted (but not preferred).

### New Page for Genomics Examples

In the ballot version, approximately 20 new examples involving genomics and next generation sequencing (NGS) we added. To increase the visibility of these examples, [a new page](examples_genomics.html) listing all these examples in one place was added.

### Use StatusReason instead of TreatmentTerminationReason Extension [FHIR-41680](https://jira.hl7.org/browse/FHIR-41680)

An mCODE user [pointed out](https://chat.fhir.org/#narrow/stream/179234-Cancer-Interoperability/topic/Question.20about.20radiotheraphy.20summary.20profile) that the TreatmentTerminationReason extension was unnecessary, because FHIR natively includes a statusReason element that is meant to explain the current status of procedures and medication actions (requests and administrations). When status = "stopped" the statusReason provides the termination reason. Extensions should be avoided when n+ative FHIR elements provide the same functionality. Therefore, the [TreatmentTerminationReason] extension has been deprecated, and henceforth users should populate the statusReason field with the values from [TreatmentTerminationReasonVS]. Two additional values were added to the termination reason value set, representing termination due to pregnancy and termination due to conclusion of the clinical trial.

### Relaxing Required Bindings for stage.type on PrimaryCancerCondition ([FHIR-41031](https://jira.hl7.org/browse/FHIR-41031)
The binding strength of `Condition.stage.type` in the [PrimaryCancerCondition] profile has been relaxed to extensible, since it is unreasonable to expect that the [CancerStagingMethodVS] valueset will encompass all possible staging methods.

### Change Conformance Verb from MUST to SHALL ([FHIR-40931](https://jira.hl7.org/browse/FHIR-40931))
HL7 specifications use [RFC 2119](https://tools.ietf.org/html/rfc2119) keywords to indicate conformance requirement levels. In RFC 2119, the words MUST, REQUIRED, and SHALL are synonymous. The mCODE specification has always used MUST and SHALL interchangeably. Even though this is 100% acceptable within RFC 2119, FHIR specifications generally prefer the word SHALL, so the specification was changed to follow this precedent.

<br/>
<br/>
----
<br/>

**The following changes occurred between [STU 2 publication](http://hl7.org/fhir/us/mcode/STU2/) (January 2022) and the STU 3 ballot (March 2023). For a history of previous changes, please see the prior change logs in the [appropriate versions](http://hl7.org/fhir/us/mcode/history.html).**

### Allowing the Use of AJCC-equivalent SNOMED Codes for Staging

mCODE STU 3 accepts SNOMED equivalents of AJCC codes, in addition to AJCC codes as in STU 2. This provides maximum interoperability across AJCC licensed and unlicensed systems, but does not break existing applications.

Based on a [new licensing agreement between SNOMED International and the American College of Surgeons](https://www.snomed.org/news-and-events/articles/SNOMED-ACS-AJCC-licensing-agreement), SNOMED CT now contains equivalents of AJCC staging codes. For example, SNOMED CT concept 1229967007 represents AJCC's cN0 category. To be clear, a clinician would never _see_ the SNOMED codes. The user interface would work with the familiar AJCC staging codes, whil the SNOMED equivalents would exist only in the back-end system.

Due to copyright restrictions still in effect, specific AJCC codes cannot be enumerated in HL7 standards. Because of this restriction, staging value sets were only vaguely defined in mCODE STU 2. In STU 3, however, mCODE has taken advantage of the new licensing agreement by redefining the staging value sets in terms of SNOMED CT's AJCC-equivalent codes, allowing specific enumeration of codes in staging-related profiles. The following value sets are now defined in terms of SNOMED CT:

* [TNMStageGroupVS]
* [TNMPrimaryTumorCategoryVS]
* [TNMRegionalNodesCategoryVS]
* [TNMDistantMetastasesCategoryVS]

This change addresses the issue <https://jira.hl7.org/browse/FHIR-37593>.

The binding strength for these value sets remains "preferred", meaning that the SNOMED codes are not required. However, any alternative codes SHALL be AJCC codes. This has been implemented through addition of [maximum value sets](http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet) to the bindings. The maximum value sets are:

* [TNMStageGroupMaxVS]
* [TNMPrimaryTumorCategoryMaxVS]
* [TNMRegionalNodesCategoryMaxVS]
* [TNMDistantMetastasesCategoryMaxVS]

### Staging Profiles

#### Common Parent Profile for TNM and non-TNM Staging

Previously, the [CancerStage] profile contained optional elements specific to TNM staging. This was confusing because CancerStage was intended also for non-TNM staging. To avoid this ambiguity, [CancerStage] no longer contains the optional TNM-specific content. A separate child profile, [TNMStageGroup], has been added as a template for TNM-specific staging. This change is backward compatible, since any resource complying with the STU 2 version (named CancerStageGroup) will comply with STU 3 CancerStage, and every resource complying to TNMStageGroup automatically complies to CancerStage.

#### Value Set Renaming

To support the separation of [TNMStageGroup] from more generic [CancerStage] profile, several value sets were renamed. In FHIR, renaming value sets has little or no impact on implementations, since value set names and ids are not used in information exchanges (although they are involved in validation algorithms). The following value sets were renamed for clarity:

* CancerStageGroupVS was renamed [TNMStageGroupVS], because it contains the TNM stage groups.
* ObservationCodesDistantMetastasesVS was renamed [TNMDistantMetastasesStagingTypeVS] because it used for TNM staging.
* ObservationCodesPrimaryTumorVS was renamed [TNMPrimaryTumorStagingTypeVS], because it used for TNM staging.
* ObservationCodesRegionalNodesVS was renamed [TNMRegionalNodesStagingTypeVS], because it used for TNM staging.
* ObservationCodesStageGroupVS was renamed [TNMStageGroupStagingTypeVS], because it used for TNM staging.
* CancerStagingSystemVS was renamed [CancerStagingMethodVS], because it populates `Observation.method`.

In addition, the following new value sets are now associated with the parent profile, [CancerStage]:

* [CancerStageTypeVS] was introduced to populate the `Observation.code` element in the CancerStage profile. The value set contains LOINC, SNOMED, and NCI Thesaurus terms that represent staging observables, such as "clinical M stage" or "FIGO ovarian tumor stage". These values identify what is being reported in Observation's value element.
* [CancerStageValueVS] was introduced to populate the `Observation.valueCodeableConcept` element in the CancerStage profile. Because there are numerous possible staging values across all staging systems, this value set is only a brief sampling, presented as an example.

#### Staging Value Set Expansion

* [CancerStagingMethodVS] (formerly CancerStagingSystemVS):
  * Several staging methods in SNOMED were added (see https://jira.hl7.org/browse/FHIR-37860), including:
    * SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
    * SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
  * Staging systems from NCI Thesaurus that are not covered in SNOMED CT have been added.
  * Certain children of Tumor staging (SCTID: 2542920070) (see https://jira.hl7.org/browse/FHIR-34448) were removed because they represent stage values rather than staging methods.

### Comorbidity Redesign

Based on user feedback on the complexity of the STU 2 design, [comorbidities][Comorbidities] have been redesigned into a more compact, practical form. As a full redesign, this change is not backward compatible.

* Comorbidities are no longer based on the Elixhauser framework. Users now have the freedom to name any condition as a comorbidity.
* Comorbid conditions can be designated either by providing a disorder code or reference to a FHIR resource. To allow this, the data types on the [RelatedCondition] extension have been expanded to allow a choice of Reference(Condition) or CodeableConcept.
* Conditions mentioned in the Comorbidities profile can still be designated as present or absent, but this is accomplished by populating different extensions. A new extension, [RelatedConditionAbsent], has been introduced to support negation of a comorbidity (if needed to assert a significant negative).
* Value sets, extensions, code systems, and profiles related to STU 2 Elixhauser comorbidities that are no longer required have been eliminated.

### Value Set Content Changes

* The following improvements were made to [CancerStagingMethodVS] (formerly CancerStagingSystemVS) value set:
  * Certain children of Tumor staging (SCTID: 2542920070) (see https://jira.hl7.org/browse/FHIR-34448) were removed because they represent stage values rather than staging methods.
  * The following staging methods were added (see https://jira.hl7.org/browse/FHIR-37860):
    * SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
    * SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
    * SCT#246165003 "Extent of disease (attribute)"
  * Temporary codes for lymph node levels IIA and IIB, missing from previous versions, were added.
  * A code for "multiple" was added to RadiotherapyTreatmentLocationQualifierVS
  * "Noncompliance with treatment (finding)" was added to TreatmentTerminationReasonVS
  * In some intensionally-defined SNOMED CT value sets, the `is-a` operator was replaced with the `descendant-of` operator, removing the top-level code when it was not a valid choice.
  * A new value set, [HistoryOfMetastaticMalignantNeoplasmVS], was added for enabling more complete reporting of patient history.

### Relaxing Required Bindings in Profiles and Extensions Related to Radiotherapy
Based on user feedback that the required bindings on certain fields were a barrier to broader implementation the following changes were made:
* [RadiotherapyModalityAndTechnique] Extension - [RadiotherapyModalityVS] and [RadiotherapyTechniqueVS] valuesets are bound with required strength, but they have been expanded with an the "un-encoded" value from the NULL Flavor codesystem.  If the "un-encoded" value is provided, and invariant requires that the .text field of the codeable concept be provided.  A coded value can also be provided in the same CodeableConcept.
* [TreatmentTerminationReason] Extension, [ProcedureIntent] Extension:  the valueset binding has been changed to extensible.
* [RadiotherapyVolume] Profile, location field:  the valueset binding has been changed to extensible
* [RadiotherapyCourseSummary] Profile, bodySite field:  the valueset binding has been changed to extensible

### Expanding [DiseaseStatusTrendVS]
This value set has been expanded to include a code indicating that the patient's cancer has metastasized.  The disorder codes for full and partial remission have also been replaced with qualifier codes.

### Update to US Core 5.0.1

mCODE has been updated to the current version of US Core, STU 5. Because there are new profiles in STU 5 that should be used as parent profiles, some mCODE profiles were affected. In particular, the parent profiles of [KarnofskyPerformanceStatus] and [ECOGPerformanceStatus] were switched from Observation to the newly-introduced [US Core Observation Clinical Test Result Profile][USCoreClinicalTestObservation]. Secondly, the parent profiles of [PrimaryCancerCondition] and [SecondaryCancerCondition] were switched to [US Core Condition Problems and Health Concerns Profile]. This change is not backward compatible.

As a result, there are new required values for `Condition.category` or `Observation.category`:

* In [PrimaryCancerCondition] and [SecondaryCancerCondition], the category "problem-list-item" is required.
* In [KarnofskyPerformanceStatus] and [ECOGPerformanceStatus] , the category "clinical-test" is required.


  As an example of how to assign a category, the JSON for a primary cancer condition must now include:

  ```
  "category" : [
      {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
            "code" : "problem-list-item"
          }
        ]
      }
    ]
  ```

### Dependency on Genomics Reporting IG

mCODE is now is explicitly dependent on the [Genomics Reporting IG STU2 (v2.0.0)](http://hl7.org/fhir/uv/genomics-reporting/STU2/index.html) (GRIG). This eliminates the duplication of profiles that existed in STU 1 and STU 2, and assures that the two IGs remain in synchronization. The following changes were made:

* [GenomicsReport], [GenomicRegionStudied], and [GenomicVariant] now inherit from the corresponding profiles in GRIG.
* Inheritance from US Core was removed from these profiles, since FHIR does not allow a profile to have two parents. Instances SHALL be consistent with US Core but the FHIR IG Publisher does not recognize US Core compliance because it does not derive from inheritance.
* Component names in genomics examples were aligned to the component names in GRIG.
* The diagnosticImplication component of GenomicVariant (present in STU 2) does not exist in GRIG. Users should express diagnostic implications of a variant using the GRIG [DiagnosticImplication](http://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-diagnostic-implication.html) profile.
* Value sets that are no longer required because equivalents are defined externally in GRIG were removed: HGNCVS, HGVSVS, GenomicMolecularConsequenceVS, ClinvarVS, and DNAChangeTypeVS.

### Change in mCODE Bundle Slicing

The mCODE bundle definition now slices on resource type, rather than profile. Slicing logic was changed because, in some cases, instances could not be assigned unambiguously to a slice, causing the FHIR validator to output errors. With this change, the assignment to a slice will always be unambiguous. This change has no effect on the contents or use of the mCODE bundle.

### Addition of Patient History of Metastatic Cancer

To enable more complete reporting of patient history, a new Observation profile for recording a patient's cancer history was added. This profile has an optional Boolean value.  If the value is false, it indicates an assertion of absence of a history of metastatic cancer. If the value is true or absent it indicates a history of metastatic cancer. [HistoryOfMetastaticCancer]. If there is no instance of an Observation of this type, and there is no instance of a [SecondaryCancerCondition], then there is no evidence for or against a past or present metastatic cancer.

### Maturity Indicators

Maturity indicators, based on the FHIR Maturity Model (FMM) have been added to profiles and value sets. These indicators show up in the IG but have no functional affect on implementations.

### CancerDiseaseStatus Focus

Radiotherapy subject matter experts requested a way to link CancerDiseaseStatus to a RadiotherapyVolume through the `Observation.focus` element. This broadens the choices of STU2, which were Reference(PrimaryCancerCondition or SecondaryCancerCondition or Tumor) and are now Reference(PrimaryCancerCondition or SecondaryCancerCondition or Tumor or RadiotherapyVolume). This allows a change in disease status to point to a specific area of the body, not just a specific Tumor or condition.

### TumorMarkerTest Related Condition

Users requested a link between TumorMarkerTest and the condition the test is related to. Optional RelatedCondition extension was added to TumorMarkerTest. See https://chat.fhir.org/#narrow/stream/229074-CodeX/topic/Reference.20between.20tumor.20characteristics.20and.20cancer.20diagnosis

### Multiple Specimen Profiles Simplified

A specimen is a specimen. There was no real reason to distinguish specimens obtained for genomic analysis from those obtained for other uses. A single profile, HumanSpecimen, was created to represent any specimen from a human subject. Since this profile is no longer associated with a single domain (Disease or Genomics), specimens were added to the Patient domain. The values for specimen type are a subset of codes representing human-sourced specimens (fluids, tissues, etc.) from http://terminology.hl7.org/CodeSystem/v2-0487.

### Technical Corrections

* [PrimaryCancerCondition]'s `stage.type` value set binding was corrected. It should have indicated the staging **method** that gave rise to the value appearing in stage.summary (such as AJCC Version 8).
* Corrected extended example, which formerly used invalid stage "pM0". Replaced with a data absent reason "not applicable".
* "SNOMED-CT" was changed to the preferred form "SNOMED CT" in narratives

### Examples

* The genetic variant in the [genomic-variant-somatic-single-nucleotide example](Observation-genomic-variant-somatic-single-nucleotide.html) changed from CLINVAR#619728 to CLINVAR#611264 to address https://jira.hl7.org/browse/FHIR-36724

### New Concept Map

* A [concept map](ConceptMap-TG263CM.html) from [TG263](https://www.aapm.org/pubs/reports/RPT_263.pdf) to [RadiotherapyTreatmentLocationVS] has been added.


### Value Set Content Changes (Published in STU 2.1)

* The following improvements were made to [CancerStagingMethodVS] (formerly CancerStagingSystemVS) value set:
  * Certain children of Tumor staging (SCTID: 2542920070) (see https://jira.hl7.org/browse/FHIR-34448) were removed because they represent stage values rather than staging methods.
  * The following staging methods were added (see https://jira.hl7.org/browse/FHIR-37860):
    * SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
    * SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
    * SCT#246165003 "Extent of disease (attribute)"
* New SNOMED Codes that have been issued since the STU 2 publication have replaced STU 2 temporary codes. These new terms include:
  * #1204242009  "External beam radiation therapy using particle scanning technique (procedure)" //USCRS-33517
  * #1217011006  "non-adjacent (qualifier)" // formerly USCRS-33144
  * #1217123003 "Radiotherapy Course of Treatment (regime/therapy)" //USCRS-33529
  * #1201745009 "Internal Target Volume (observable entity)" //USCRS-33520
  * #1201746005  "Internal Gross Tumor Volume (observable entity)" // USCRS-33521
  * #551001000124108  "Cancer in partial remission (finding)" // USCRS-352237
  * #550991000124107  "Cancer in full remission(finding)" //USCRS-352236
  * #1162492000 "Tumor bed (morphologic abnormality)"
  * #1162782007 "Three dimensional external beam radiation therapy (procedure)"
  * #1162586008 "Irradiated volume of organ at risk (observable entity)"
  * #1162616006 "Lymph node level IA (qualifier value)"
  * #1162617002 "Lymph node level IB (qualifier value)"
  * #1162620005 "Lymph node level IVA (qualifier value)"
  * #1162621009 "Lymph node level IVB (qualifier value)"
  * #1162622002 "Lymph node level VA (qualifier value)"
  * #1162623007 "Lymph node level VB (qualifier value)"
  * #1162624001 "Lymph node level VC (qualifier value)"
  * #1162625000 "Lymph node level VIA (qualifier value)"
  * #1162626004 "Lymph node level VIB (qualifier value)"
  * #1162628003 "Lymph node level VIIA (qualifier value)"
  * #1162627008 "Lymph node level VIIB (qualifier value)"
  * #1162618007 "Lymph node level VIII (qualifier value)"
  * #1162619004 "Lymph node level IX (qualifier value)"
  * #1162614009 "Lymph node level X (qualifier value)"
  * #1162615005 "Lymph node level XA (qualifier value)"
  * #1162613003 "Lymph node level XB (qualifier value)"

<br/>
________________________________
<br/>
<br/>

**The change log for changes prior to mCODE version 2.1 [continues here](https://hl7.org/fhir/us/mcode/STU2.1/change_log.html)**


{% include markdown-link-references.md %}
