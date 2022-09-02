The following changes occurred between STU 2 (January 2022) and the mCODE version 2.1, the STU 3 Ballot Version (January 2023).

### Staging Profiles

* To make is more clear that mCODE supports non-TNM staging systems, a new profile, [CancerStage], was added for non-TNM staging. Previously, the CancerStageGroup profile was used for representing both TNM stage groups and non-TNM staging. This was both a confusing name and poor profile fit for non-TNM staging. This profile is referenced from PrimaryCancerCondition's `Condition.stage.assessment` element. It adds flexibility to use arbitrary staging systems.
* The STU2 profile CancerStageGroup was renamed TNMStageGroup in STU3 to reflect the profile's specialization to TNM staging.

### Value Sets Renamed

Several value sets were renamed to clarify their purpose and provide consistency. In FHIR, renaming value sets has little or no impact on implementations, since value set names are not directly used in information exchanges. The following value sets were renamed:

* CancerStageGroupVS -> [TNMStageGroupVS]
* CancerStagingSystemVS -> [CancerStagingMethodVS]
* ObservationCodesDistantMetastasesVS -> [TNMDistantMetastasesStagingTypeVS]
* ObservationCodesPrimaryTumorVS -> [TNMPrimaryTumorStagingTypeVS]
* ObservationCodesRegionalNodesVS -> [TNMRegionalNodesStagingTypeVS]
* ObservationCodesStageGroupVS -> [TNMStageGroupStagingTypeVS]

### New Value Sets

To support the [CancerStage] profile, two new value sets were introduced. The naming and content of these value sets parallel those for TNM staging:

* CancerStagingTypeVS was introduced to populate the `Observation.code` element in the CancerStage profile.
* CancerStagingMethodVS was introduced to populate the `Observation.method` element in the CancerStage profile.

### Value Set Content Changes

* The following improvements were made to [CancerStagingMethodVS] value set:
  * Removed values that are not staging methods that appeared because they are children of Tumor staging (SCTID: 2542920070) (see https://jira.hl7.org/browse/FHIR-34448)
  * Added the following staging methods (see https://jira.hl7.org/browse/FHIR-37860):
    * SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
    * SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
    * SCT#246165003 "Extent of disease (attribute)"
* Based on the [new licensing agreement between SNOMED International and the American College of Surgeons](https://www.snomed.org/news-and-events/articles/SNOMED-ACS-AJCC-licensing-agreement), there are now SNOMED CT codes for AJCC staging. mCODE has redefined value sets that formerly could not list AJCC codes due to copyright restrictions (see https://jira.hl7.org/browse/FHIR-37593). The affected value sets are:
  * [TNMStageGroupVS]
  * [TNMPrimaryTumorCategoryVS]
  * [TNMRegionalNodesCategoryVS]
  * [TNMDistantMetastasesCategoryVS]
* New SNOMED Codes that have been issued since the STU2 publication have replaced STU2 temporary codes. These new terms include:
  * #1204242009  "External beam radiation therapy using particle scanning technique (procedure)" //USCRS-33517
  * #1217011006  "non-adjacent (qualifier)" // formerly USCRS-33144
  * #1217123003 "Radiotherapy Course of Treatment (regime/therapy)" //USCRS-33529
  * #1201745009 "Internal Target Volume (observable entity)" //USCRS-33520
  * #1201746005  "Internal Gross Tumor Volume (observable entity)" // USCRS-33521
* Integrated SNOMED Codes that have been issued since STU2 publication and are in the US and Int'l releases
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

Required categories have been added to PrimaryCancerCondition, SecondaryCancerCondition, TumorMarkerTest, and five staging-related profiles. The purpose is to make it easier to retrieve mCODE resources. Fixed categories provide a firmer "handle" to retrieve relevant mCODE resources, without relying on the "code in value set" (`code:in=[value set]`) operation that is not implemented by all FHIR servers. [Updated sample queries](conformance-general.html#support-querying-mcode-conforming-resources) have been provided. **These changes are not backward compatible.**

The following are now required values in `Condition.category` or `Observation.category`:

* [PrimaryCancerCondition] now requires category SNOMED CT 372087000 "Primary malignant neoplasm (disorder)"
* [SecondaryCancerCondition] now requires category SNOMED CT 128462008 "Metastatic malignant neoplasm (disorder)"
* [TumorMarkerTest] now requires category SNOMED CT 250724005 "Tumor marker measurement (procedure)"
* Staging profiles ([CancerStage], [TNMStageGroup], [TNMDistantMetastasesCategory], [TNMPrimaryTumorCategory], [TNMRegionalNodesCategory], and [TNMDistantMetastasesCategory]) now require category SNOMED CT 385356007 "Tumor stage finding (finding)"

### Comorbidity Redesign

Based on user feedback about the complexity of the STU2 design, [comorbidities][Comorbidities] have been redesigned into a far more compact, practical form. **This change is not backward compatible.**

* Comorbidities are no longer based on the Elixhauser framework. Users now have the freedom to name any condition as a comorbidity.
* Comorbid conditions can be designated either by providing a disorder code or reference to a FHIR resource. To allow this, the data types on the ConditionReference extension has been expanded to allow either a reference or a CodeableConcept.
* Conditions mentioned in the Comorbidities profile can still be designated as present or absent, but this is accomplished by populating different extensions. A new extension, RelatedConditionAbsent, has been introduced to support negation of a comorbidity (if needed to assert a significant negative).
* Value sets, extensions, and profiles related to STU2 Elixhauser comorbidities that are no longer required have been eliminated.

### Update to US Core 5.0.1

mCODE has been updated to the current version of US Core, STU5. Because there are new profiles in STU5 that should be used as parent profiles, some mCODE profiles were affected. In particular, the parent profiles of Cancer Disease Status, Karnofsky and ECOG Performance Status were switched from Observation to the newly-introduced US Core Observation Clinical Test Result Profile.

### Dependency on Genomics Reporting IG

mCODE is now is explicitly dependent on the [Genomics Reporting IG STU2 (v2.0.0)](http://hl7.org/fhir/uv/genomics-reporting/STU2/index.html) (GRIG). This eliminates the duplication of profiles that existed in STU1 and STU2, assuring that the two IGs remain in synchronization. The following changes were made:

* GenomicsReport, GenomicRegionStudied, and GenomicVariant now inherit from the corresponding profiles in GRIG.
* Inheritance from US Core was removed from these profiles, since FHIR does not allow a profile to have two parents. Instances can still be consistent with US Core but FHIR IG Publisher does not recognize compliance that does not derive from inheritance.
* Component names in genomics examples were aligned to the component names in GRIG
* The diagnosticImplication component of GenomicVariant no longer exists. Users should express diagnostic implications of a variant using the GRIG [DiagnosticImplication](http://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-diagnostic-implication.html) profile.
* Value sets that are no longer required because equivalents are defined externally in GRIG were removed: HGNCVS, HGVSVS, GenomicMolecularConsequenceVS, ClinvarVS, and DNAChangeTypeVS.

### Maturity Indicators

Maturity indicators, based on the FHIR Maturity Model (FMM) have been added to profiles and value sets. These indicators show up in the IG but have no functional affect on implementations.

### Corrections

* [PrimaryCancerCondition]'s `stage.type` value set binding was corrected. It should have indicated the staging **method** that gave rise to the value appearing in stage.summary (such as AJCC Version 8).
* Corrected extended example, which formerly used invalid stage "pM0". Replaced with a data absent reason "not applicable".
* "SNOMED-CT" was changed to the preferred form "SNOMED CT" in narratives

### Examples

* Changed the genomic-variant-somatic-single-nucleotide example from CLINVAR#619728 to CLINVAR#611264 to address https://jira.hl7.org/browse/FHIR-36724


{% include markdown-link-references.md %}
