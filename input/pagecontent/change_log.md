The following changes occurred between [STU 2 publication](http://hl7.org/fhir/us/mcode/STU2/) (January 2022) and mCODE version 2.1, STU 3 ballot (January 2023). For a history of previous changes, please see the prior change logs in the [appropriate versions](http://hl7.org/fhir/us/mcode/history.html).

### Use of AJCC-equivalent SNOMED Codes for Staging

Based on the [new licensing agreement between SNOMED International and the American College of Surgeons](https://www.snomed.org/news-and-events/articles/SNOMED-ACS-AJCC-licensing-agreement), there are now SNOMED CT equivalent codes for AJCC staging codes. mCODE has taken advantage of this by redefining the staging value sets that previously could not list AJCC codes due to copyright restrictions (see https://jira.hl7.org/browse/FHIR-37593). The value sets now defined in terms of SNOMED CT are:

* [TNMStageGroupVS]
* [TNMPrimaryTumorCategoryVS]
* [TNMRegionalNodesCategoryVS]
* [TNMDistantMetastasesCategoryVS]

Here is one sample code to demonstrate how SNOMED and AJCC are related:

  ```
  American Joint Committee on Cancer cN0 (qualifier value)
  SCTID: 1229967007

  1229967007 | American Joint Committee on Cancer cN0 (qualifier value) |
    en   American Joint Committee on Cancer cN0 (qualifier value)
    en   cN0
    en   AJCC (American Joint Committee on Cancer) cN0
    en   American Joint Committee on Cancer cN0
    en   cN0 - Used with permission of the American College of Surgeons, Chicago, Illinois. The original source for this information is the AJCC Cancer Staging System (2022) https://www.facs.org/quality-programs/cancer/ajcc/cancer-staging.
  ```

To be clear, a clinician should never _see_ the SNOMED codes. A user interface would present and accept the familiar AJCC staging codes. The SNOMED equivalents would exist only in the back end system for wire transfer purposes.  

The binding strength for these value sets remains "preferred", meaning that the SNOMED codes are not required. However, the alternative codes if used must be AJCC codes. This is implemented through addition of [maximum value sets](http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet) to the bindings. The maximum value sets are:

* [TNMStageGroupMaxVS]
* [TNMPrimaryTumorCategoryMaxVS]
* [TNMRegionalNodesCategoryMaxVS]
* [TNMDistantMetastasesCategoryMaxVS]

**To summarize, mCODE now prefers the SNOMED equivalents of AJCC codes, but AJCC codes are still acceptable. This provides maximum interoperability across AJCC licensed and unlicensed systems, but does not break existing applications.**

### Staging Profiles

Previously, the CancerStageGroup profile was used to represent both the TNM stage group and non-TNM staging. This was less than optimal, since the name "stage group" was confusing for non-TNM staging, and the profile contained elements specific to TNM staging. With the ability to have specific value sets for TNM staging afforded by the SNOMED-AJCC agreement described above, mCODE can now explicitly model TNM-based and non-TNM-based staging. To make it clear how to represent non-TNM staging, a new profile, [CancerStage], has been added to represent non-TNM staging, while the former CancerStageGroup profile has been renamed [TNMStageGroup] to reflect the profile's specialization to TNM staging.

For non-TNM staging, the PrimaryCancerCondition's `Condition.stage.assessment` element should reference an Observation conforming to the [CancerStage] profile. For TNM staging, the same element will reference an Observation conforming to the [TNMStageGroup] profile.

### New Value Sets

To support the [CancerStage] profile, two new value sets were introduced:

* [CancerStagingTypeVS] was introduced to populate the `Observation.code` element in the CancerStage profile.
* [CancerStageVS] was introduced to populate the `Observation.valueCodeableConcept` element in the CancerStage profile.

The [CancerStagingMethodVS] (formerly CancerStagingSystemVS) that populates the `Observation.method` element in the CancerStage profile, already existed in STU2.

### Value Sets Renamed

Several value sets were renamed to clarify their purpose and provide more consistent naming. In FHIR, renaming value sets has little or no impact on implementations, since value set names are not directly used in information exchanges. The following value sets were renamed:

* CancerStageGroupVS -> [TNMStageGroupVS] (because it contains TNM stage groups)
* CancerStagingSystemVS -> [CancerStagingMethodVS] (because it populates `Observation.method`)
* ObservationCodesDistantMetastasesVS -> [TNMDistantMetastasesStagingTypeVS] (because it used for TNM staging)
* ObservationCodesPrimaryTumorVS -> [TNMPrimaryTumorStagingTypeVS] (because it used for TNM staging)
* ObservationCodesRegionalNodesVS -> [TNMRegionalNodesStagingTypeVS] (because it used for TNM staging)
* ObservationCodesStageGroupVS -> [TNMStageGroupStagingTypeVS] (because it used for TNM staging)

### Value Set Content Changes

* The following improvements were made to [CancerStagingMethodVS] (formerly CancerStagingSystemVS) value set:
  * There are certain children of Tumor staging (SCTID: 2542920070) (see https://jira.hl7.org/browse/FHIR-34448) that represent stage values rather than staging methods. Values that are not staging methods were removed.
  * The following staging methods were added (see https://jira.hl7.org/browse/FHIR-37860):
    * SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
    * SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
    * SCT#246165003 "Extent of disease (attribute)"
* New SNOMED Codes that have been issued since the STU2 publication have replaced STU2 temporary codes. These new terms include:
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

### Profile Categories

Required categories (`Observation.category`) have been added to PrimaryCancerCondition, SecondaryCancerCondition, TumorMarkerTest, and five staging-related profiles. The purpose is to make it easier to retrieve mCODE resources. Having fixed categories provide a firmer "handle" to retrieve relevant mCODE resources, without relying on the "code in value set" (`code:in=[value set]`) operation that is not implemented by all FHIR servers. [Updated sample queries](conformance-general.html#support-querying-mcode-conforming-resources) have been provided. **These changes are not backward compatible.**

The following are now required values in `Condition.category` or `Observation.category`:

* [PrimaryCancerCondition] now requires category SNOMED CT 372087000 "Primary malignant neoplasm (disorder)"
* [SecondaryCancerCondition] now requires category SNOMED CT 128462008 "Metastatic malignant neoplasm (disorder)"
* [TumorMarkerTest] now requires category SNOMED CT 250724005 "Tumor marker measurement (procedure)"
* All staging profiles ([CancerStage], [TNMStageGroup], [TNMDistantMetastasesCategory], [TNMPrimaryTumorCategory], [TNMRegionalNodesCategory], and [TNMDistantMetastasesCategory]) now require category SNOMED CT 385356007 "Tumor stage finding (finding)"

  As an example of how to assign these categories in instances, the JSON for a principal cancer condition would include:

  ```
  "category" : [
      {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
            "code" : "problem-list-item"
          }
        ]
      },
      {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008",
            "code" : "372087000"
          }
        ]
      }
    ]
    ```

  The first of these categories satisfies the US Core requirement from [US Core Condition Problems and Health Concerns Profile][USCoreConditionProblemHealthConcern] and the second category satisfies the mCODE requirement. The other categories are similar.


### Comorbidity Redesign

Based on user feedback criticizing the complexity of the STU2 design, [comorbidities][Comorbidities] have been redesigned into a far more compact, practical form. **This change is not backward compatible.**

* Comorbidities are no longer based on the Elixhauser framework. Users now have the freedom to name any condition as a comorbidity.
* Comorbid conditions can be designated either by providing a disorder code or reference to a FHIR resource. To allow this, the data types on the [RelatedCondition] extension have been expanded to allow a choice of Reference(Condition) or CodeableConcept.
* Conditions mentioned in the Comorbidities profile can still be designated as present or absent, but this is accomplished by populating different extensions. A new extension, [RelatedConditionAbsent], has been introduced to support negation of a comorbidity (if needed to assert a significant negative).
* Value sets, extensions, code systems, and profiles related to STU2 Elixhauser comorbidities that are no longer required have been eliminated.

### Update to US Core 5.0.1

mCODE has been updated to the current version of US Core, STU5. Because there are new profiles in STU5 that should be used as parent profiles, some mCODE profiles were affected. In particular, the parent profiles of [CancerDiseaseStatus], [KarnofskyPerformanceStatus], and [ECOGPerformanceStatus] were switched from Observation to the newly-introduced [US Core Observation Clinical Test Result Profile][USCoreClinicalTestObservation].

### Dependency on Genomics Reporting IG

mCODE is now is explicitly dependent on the [Genomics Reporting IG STU2 (v2.0.0)](http://hl7.org/fhir/uv/genomics-reporting/STU2/index.html) (GRIG). This eliminates the duplication of profiles that existed in STU1 and STU2, and assures that the two IGs remain in synchronization. The following changes were made:

* [GenomicsReport], [GenomicRegionStudied], and [GenomicVariant] now inherit from the corresponding profiles in GRIG.
* Inheritance from US Core was removed from these profiles, since FHIR does not allow a profile to have two parents. Instances MUST be consistent with US Core but the FHIR IG Publisher does not recognize US Core compliance because it does not derive from inheritance.
* Component names in genomics examples were aligned to the component names in GRIG.
* The diagnosticImplication component of GenomicVariant (present in STU2) does not exist in GRIG. Users should express diagnostic implications of a variant using the GRIG [DiagnosticImplication](http://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-diagnostic-implication.html) profile.
* Value sets that are no longer required because equivalents are defined externally in GRIG were removed: HGNCVS, HGVSVS, GenomicMolecularConsequenceVS, ClinvarVS, and DNAChangeTypeVS.

### Maturity Indicators

Maturity indicators, based on the FHIR Maturity Model (FMM) have been added to profiles and value sets. These indicators show up in the IG but have no functional affect on implementations.

### Technical Corrections

* [PrimaryCancerCondition]'s `stage.type` value set binding was corrected. It should have indicated the staging **method** that gave rise to the value appearing in stage.summary (such as AJCC Version 8).
* Corrected extended example, which formerly used invalid stage "pM0". Replaced with a data absent reason "not applicable".
* "SNOMED-CT" was changed to the preferred form "SNOMED CT" in narratives

### Examples

* The genetic variant in the [genomic-variant-somatic-single-nucleotide example](Observation-genomic-variant-somatic-single-nucleotide.html) changed from CLINVAR#619728 to CLINVAR#611264 to address https://jira.hl7.org/browse/FHIR-36724


{% include markdown-link-references.md %}
