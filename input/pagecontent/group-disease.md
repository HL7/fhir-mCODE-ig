The mCODE **Disease Characterization** group includes data elements specific to the diagnosis and staging of cancer. This includes:

* **Cancer Diagnosis** - the date and location (body site/position and laterality) of the cancer diagnosis.
* **Tumor Characteristics** - histological classification, morphology, and behavior of the tumor cell, compared to that of a normal cell.
* **Cancer Stage** - describes the severity of an individual's cancer based on the magnitude of the original (primary) tumor as well as on the extent cancer has spread in the body. Understanding the stage of the cancer helps doctors to develop a prognosis and design a treatment plan for individual patients. Staging calculations leverage results from the previous two categories, along with prognostic factors relevant to the cancer type, in order to assess an overall cancer stage group (source: [AJCC](https://cancerstaging.org/references-tools/Pages/What-is-Cancer-Staging.aspx)).

### Representing the Cancer Diagnosis

The cancer diagnosis combines the type, site, and certain characteristics of the cancer. Depending on the EHR and provider organization, different code systems may be used, such as:

* [Systematized Nomenclature of Medicine - Clinical Terms (SNOMED CT)](https://www.snomed.org/)
* [International Classification of Diseases, 10th version, Clinical Modifications (ICD-10-CM)](https://www.cdc.gov/nchs/icd/icd10cm.htm)
* [International Classification of Diseases for Oncology, 3rd version (ICD-O-3)](https://codes.iarc.fr/)

Because the use of these code systems vary in different institutions, mCODE supports all three. Two elements and one [extension](https://www.hl7.org/fhir/extensibility.html) of the [FHIR Condition Resource](https://www.hl7.org/fhir/condition.html) are involved with coding the cancer diagnosis: `Condition.code`, `Condition.bodySite`, and the [HistologyMorphologyBehavior] extension. How these attributes are used, depending on the code system, is captured in the table below:

| Encoding | Code  | Histology Morphology Behavior Extension| Body Site |
|----------|-------|-----------------------------|----------|
| **SNOMED Encoded** | Any descendant of `363346000` "Malignant neoplastic disease (disorder)" | Any descendant of `367651003` "Malignant neoplasm of primary, secondary, or uncertain origin (morphologic abnormality)" | Any descendant of `123037004` "Body structure" |
| **ICD-10-CM Encoded** | Any ICD-10-CM primary code (precoodinated) | n/a | n/a |
| **ICD-O-3 Encoded** | The code `363346000` "Malignant neoplastic disease (disorder)" | Any ICD-O-3 Morphology Code (including /1, /2, or /3 suffix for primary cancers, and /6 suffix for secondary cancers) | Any ICD-O-3 Topology Code |
{: .grid }

Implementers should reference the [PrimaryCancerCondition] and [SecondaryCancerCondition] profiles for further details on the use of these terminologies and associated value sets.

### Representing Staging Information

Clinicians assign stages to cancers according to rules defined in various [cancer staging systems](https://www.cancer.gov/about-cancer/diagnosis-staging/staging). The staging system must always be specified alongside the stage, because it establishes the meaning of the stage code(s).

Cancer stage information is contained in a set of profiles. One profile on Observation represents the [stage group][CancerStageGroup]. The stage group contains optional references to additional profiles representing the primary tumor (T), regional nodes (N), and distant metastases (M) categories. These references are used only in conjunction with TNM staging systems.

The `Observation.code` element value is used to distinguish the method of staging, e.g., [clinical](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/clinical-staging) or [pathologic](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/pathologic-staging). For other types staging (e.g., retreatment (r) or autopsy (a)), a code indicating "other" staging type must be used. The staging type codes for the `Observation.code` element are found in these value sets:

* [ObservationCodesStageGroupVS]
* [ObservationCodesPrimaryTumorVS]
* [ObservationCodesRegionalNodesVS]
* [ObservationCodesDistantMetastasesVS]

In mCODE, a single patient may have more than one staging panel, although this is not common in practice.

#### TNM Staging Information

TNM staging is used for many types of solid-tumor cancers. Clinical applications vary in their representation of T, N, and M staging category values, falling into one of two naming conventions:

* Prefixed with a staging classification abbreviation (e.g.: _cT3_, _ypT3_). This is the coding convention returned by American Joint Commission on Cancer (AJCC) in their digital data content retrieved via the [AJCC Application Programming Interface (API)](https://ajcc.3scale.net/).
* Without a prefixed staging classification abbreviation (e.g.: _T3_).

mCODE strongly recommends that the implementers align with AJCC's convention of representing the staging category value _including the classification prefix_. This code convention is aligned with the AJCC's digital data and clearly distinguishes the staging classification as clinical (c), pathologic (p), or neoadjuvant (yc or yp) without having to retrieve further context from the model. The selected prefix MUST be consistent with the `Observation.code` value.

Several widely-used terminologies in the cancer domain, including ICD-O-3 and AJCC staging, are proprietary and cannot be reproduced in this guide. As such, some elements related to staging do not include required terminology codes. The guide does, however, indicate where it is appropriate to use codes from such terminologies. Under the [Fair Use doctrine](https://www.copyright.gov/fair-use/more-info.html), the IG includes examples illustrating mCODE's representation of cancer diagnoses and AJCC staging values for the purposes of technical implementation guidance to FHIR developers.

#### Non-TNM Staging Information

Not all cancer types are staged with a TNM-based staging system, including hematological cancers like leukemias, multiple myeloma, and some lymphomas. Some specialized solid tumors like gynecologic tumors are staged using the FIGO (International Federation of Gynecology and Obstetrics) staging system. Other non-TNM staging systems include Rai, Binet, and Cottswold. The staging system should be represented with a code from the [CancerStagingSystemVS] value set, if available.

Support for non-TNM staging systems in mCODE is limited to [CancerStageGroup]. T, N, and M profiles are not used. Prognostic factors related to the cancer stage group can be specified with the `Observation.derivedFrom` element. For example, a hemoglobin lab result which was evaluated in the  staging of chronic lymphocytic leukemia using the Binet staging system can be referenced under `Observation.derivedFrom` element. [This example of Binet staging](Observation-binet-stage-group-A.html) illustrates how this could be represented.

### Body Locations

Body locations in FHIR are typically represented using a single code. However, a single code is often insufficient to describe where a tumor is located, where a surgery is targeted, or where a radiation treatment is focused. When a single code is insufficient, FHIR recommends using a BodyStructure. This is appropriate when the BodyStructure is something to be tracked over time, for example, in the case of [Tumor]. But generally, it is better to describe a body location without using an additional resource.

mCODE has adopted an approach that allows the user to add additional code or codes to further define the body site, without the need to create an independent resource. This takes the form of a [BodyLocationQualifier] extension. This extension can be used to specify laterality, directionality, and plane. It appears in mCODE wherever a body site code is found.

### Tumor Marker Tests

Tumor markers are key prognostic factors in calculating cancer staging, identifying treatment options, and monitoring progression of disease. For example, an abnormal increase in prostate-specific antigen (PSA) levels is a prognostic factor for prostate cancer. Other tumor markers include estrogen receptor (ER) status, progesterone receptor (PR) status, carcinoembryonic antigen (CEA) levels, among others. mCODE distinguishes tumor marker tests from sequencing-based genomic tests measured at the DNA, RNA, or chromosomal level. The latter are addressed in the [Genomics](group-genomics.html) section.

mCODE includes single FHIR profile, [TumorMarkerTest], for all labs involving serum and tissue-based tumor markers. This is less than ideal, since without specifying units of measure or answer sets on a per-test basis, reporting could vary. However, given the large number of tumor marker tests, creating individual profiles was judged impractical.

### Profiles

* Diagnosis
  * [PrimaryCancerCondition]
  * [SecondaryCancerCondition]
* Staging
  * [CancerStageGroup]
  * [TNMPrimaryTumorCategory]
  * [TNMRegionalNodesCategory]
  * [TNMDistantMetastasesCategory]
* Characterization
  * [TumorMarkerTest]

### Extensions

* [HistologyMorphologyBehavior]
* [LocationQualifier]

### Value Sets

* **Diagnosis**
  * [PrimaryOrUncertainBehaviorCancerDisorderVS]
  * [SecondaryCancerDisorderVS]
  * [CancerDisorderVS]
  * [CancerBodyLocationVS]
  * [BodyLocationQualifierVS]
  * [HistologyMorphologyBehaviorVS]
* **Staging**
  * [CancerStageGroupVS]
  * [ObservationCodesStageGroupVS]
  * [ObservationCodesPrimaryTumorVS]
  * [ObservationCodesRegionalNodesVS]
  * [ObservationCodesDistantMetastasesVS]
  * [TNMPrimaryTumorCategoryVS]
  * [TNMRegionalNodesCategoryVS]
  * [TNMDistantMetastasesCategoryVS]
* **Characterization**
  * [TumorMarkerTestVS]

{% include markdown-link-references.md %}
