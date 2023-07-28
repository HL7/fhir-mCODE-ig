The mCODE **Disease Characterization** group includes data elements specific to the diagnosis and staging of cancer. This includes:

* **Cancer Diagnosis** - the date and location (body site/position and laterality) of the cancer diagnosis.
* **Tumor Characteristics** - histological classification, morphology, and behavior of the tumor cell, compared to that of a normal cell.
* **CancerStage** - describes the severity of an individual's cancer based on the magnitude of the original (primary) tumor as well as on the extent cancer has spread in the body. Understanding the stage of the cancer helps doctors to develop a prognosis and design a treatment plan for individual patients. Staging calculations leverage results from the previous two categories, along with prognostic factors relevant to the cancer type, in order to assess an overall cancer stage group (source: [AJCC](https://cancerstaging.org/references-tools/Pages/What-is-Cancer-Staging.aspx)).

### Representing the Cancer Diagnosis

The cancer diagnosis combines the type, site, and certain characteristics of the cancer. Depending on the EHR and provider organization, different code systems may be used, such as:

* [Systematized Nomenclature of Medicine - Clinical Terms (SNOMED CT)](https://www.snomed.org/)
* [International Classification of Diseases, 10th version, Clinical Modifications (ICD-10-CM)](https://www.cdc.gov/nchs/icd/icd10cm.htm)
* [International Classification of Diseases for Oncology, 3rd version (ICD-O-3)](https://codes.iarc.fr/)

Because the use of these code systems vary in different institutions, mCODE supports all three. Two elements and one [extension](https://www.hl7.org/fhir/extensibility.html) of the [FHIR Condition Resource](https://www.hl7.org/fhir/condition.html) are involved with coding the cancer diagnosis: `Condition.code`, `Condition.bodySite`, and the [HistologyMorphologyBehavior] extension. How these attributes are used, depending on the code system, is captured in the table below:

| Encoding | Code  | Histology Morphology Behavior Extension| Body Site |
|----------|-------|-----------------------------|----------|
| **SNOMED Encoded** | Any SNOMED CT code in the [Primary Cancer Disorder Value Set][PrimaryCancerDisorderVS] | Any SNOMED CT code in the [Histology Morphology Behavior Value Set][HistologyMorphologyBehaviorVS] | Any descendant of `123037004` "Body structure" |
| **ICD-10-CM Encoded** | Any ICD-10-CM primary code (precoodinated) | omit | optional; must be consistent with primary code if provided but may contain more detail |
| **ICD-O-3 Encoded** | SNOMED CT code `55342001` "Neoplastic disease (disorder)", `363346000` "Malignant neoplastic disease (disorder)", or `20376005` "Benign neoplastic disease (disorder)" | Full ICD-O-3 morphology code* | Any ICD-O-3 Topology Code |
{: .grid }

*The ICD-O-3 morphology code should have the form `HHHH/B G` where HHHH is the 4-digit histology code, B is the 1-digit behavior code (i.e., /1, /2, or /3 suffix for primary cancers, and /6 suffix for secondary cancers), and G is the grade or equivalent in leukemias and lymphomas (1 digit). For more information, see [ICD-O Third Edition, Table 8](https://apps.who.int/iris/bitstream/handle/10665/96612/9789241548496_eng.pdf).

Implementers should reference the [PrimaryCancerCondition] and [SecondaryCancerCondition] profiles for further details on the use of these terminologies and associated value sets.

#### Clinical Status

On initial diagnosis, the `Condition.clinicalStatus` element will be `active`. Subsequent changes to the disease status should be recorded by updating the `clinicalStatus` element. The permitted values are active, recurrence, relapse, inactive, remission, resolved. Recurrence and relapse are often used interchangeably in the context of cancer. The resource's history can be accessed to see the history of the status value. 

Note that there is another resource profile, the [CancerDiseaseStatus], that is used to record the patient's condition on an encounter-by-encounter basis, and uses values such as improved, stable, worsened, as well as full and partial remission. When the value of CancerDiseaseStatus indicates remission, the `Condition.clinicalStatus` should be updated to reflect that finding.

#### Body Location

Body locations in FHIR are typically represented using a single code. However, a single code is often insufficient to describe where a tumor is located, where a surgery is targeted, or where a radiation treatment is focused. When a single code is insufficient, FHIR recommends using a BodyStructure resource. This is appropriate when the BodyStructure is tracked over time, for example, in the case of [Tumor]. But generally, it is better to describe a body location without using an additional resource.

mCODE has adopted an approach that allows the user to add additional code or codes to further define the body site, without the need to create an independent resource. This takes the form of the [LateralityQualifier] and [BodyLocationQualifier] extensions. These extensions can be used to specify laterality, directionality, and plane.

### Staging

In mCODE, staging information has three components:

1. The type of stage reported (e.g., a clinical T category) 
2. The staging system, method, or protocol used to perform the staging (e.g., AJCC 7th Edition)
3. The actual stage value (e.g., cT3)

The stage value (3) always reported. To interpret the meaning of the stage value, the staging system or staging method must be known. Depending on the code used, the stage type (1) can identify the staging system, the kind of stage reported, and factors such as the timing (e.g., at diagnosis or posttherapy) and the type of evidence (e.g., clincal or pathologic). If the stage type does not imply the staging system, the staging system is reported separately (2). 

A degree of redundancy may exist between these three elements. For example:

* If the stage is cT3, then the type of stage is a clinical T stage.
* If the stage being reported is a Binet stage, it can be assumed that the staging system is Binet and the disease is chronic lymphocytic leukemia.

The data sender must assure that the values in these three fields are self-consistent.

#### How to Report Staging Information

Staging information should be provided as Observation resource(s) conforming to the [CancerStage] profile or a constrained version of that profile. CancerStage is a parent profile that should be used only if a more specific profile corresponding to a particular staging system is unavailable. If a patient has been staged more than once, there will be multiple CancerStage observations. 

In the CancerStage profile and its descendants, the following elements are used to describe a stage or classification:

| Stage Information | FHIR Element | Description |
|-------------------|--------------|-------------|
| Stage Type        | `Observation.code` |  LOINC or SNOMED term that describes the specific type of stage being reported, for example, a TNM stage group or International Federation of Gynecology and Obstetrics (FIGO) ovarian tumor stage. In terms of the SNOMED CT hierarchy, these are terms of type **Observable Entity**.  |
| Staging System    | `Observation.method` |  The staging system, method, or protocol used to perform the staging, for example, AJCC Version 8 or the International Neuroblastoma Staging System. In the SNOMED CT hierarchy, these are terms in the **Staging and Scales** hierarchy, specifically, terms descending from **Tumor Staging** that represent staging systems. `Observation.method` is not required if the staging system is implicit in `Observation.code`. |
| Stage Value | `Observation.valueCodeableConcept` | Contains the actual stage or category determined for the cancer. In terms of SNOMED CT, these are terms from the **Qualifier Value** and **Finding** hierarchies (some staging values appear, perhaps erroneously, in the Tumor Staging hierarchy). |
| Cancer Staged | `Observation.focus` | A reference to the cancer condition being staged. |
| Prognostic Factors | `Observation.derivedFrom` | A reference to Observations contributing to the stage. |
{: .grid }

A reference to the CancerStage observation should be given in the PrimaryCancerCondition's `Condition.stage.assessment` element. If staging has been repeated for a patient, the reference in PrimaryCancerCondition should point to the most recent staging information.

#### TNM Staging

TNM staging is used for many types of solid-tumor cancers. The [TNMStageGroup] profile is a specialization of [CancerStage] dedicated to AJCC TNM staging. This profile contains the stage group in `Observation.valueCodeableConcept` and provides optional references in `Observation.hasMember` to additional resources representing the T, N, and M categories. The `Observation.code` element value in TNMStageGroup is used to distinguish the type of staging, e.g., [clinical](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/clinical-staging) or [pathologic](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/pathologic-staging). For other types staging (e.g., retreatment (r) or autopsy (a)), a code indicating "other" staging type is used.

Clinical applications vary in their representation of T, N, and M staging category values, falling into one of two naming conventions:

* Prefixed with a staging classification abbreviation (e.g.: _cT3_, _ypT3_). This is the coding convention returned by American Joint Commission on Cancer (AJCC) in their digital data content retrieved via the [AJCC Application Programming Interface (API)](https://ajcc.3scale.net/).
* Without a prefixed staging classification abbreviation (e.g.: _T3_).

mCODE strongly recommends that the implementers align with AJCC's convention of representing the staging category value _including the classification prefix_. This code convention is aligned with the AJCC's digital data and clearly distinguishes the staging classification as clinical (c), pathologic (p), neoadjuvant (yc or yp), restage (r), or autopsy (a) without having to retrieve further context from the model. The selected prefix MUST be consistent with the `Observation.code` value.

Several widely-used terminologies in the cancer domain, including ICD-O-3 and AJCC staging, are proprietary and cannot be reproduced in this guide. SNOMED-CT has reached an agreement with AJCC to create SNOMED codes that correspond to AJCC stages. mCODE uses these SNOMED codes where applicable, but licensed sites may continue to use AJCC codes and still be in conformance with mCODE. Under the [Fair Use doctrine](https://www.copyright.gov/fair-use/more-info.html), examples illustrating mCODE's representation of cancer diagnoses may use the more familiar AJCC staging values for the purposes of implementation guidance to FHIR developers.

#### Non-TNM Staging

Profiles for several non-TNM staging systems are included in mCODE. Not all cancer types are staged with a TNM-based staging system, including hematologic cancers like leukemias, multiple myeloma, and some lymphomas. Some specialized solid tumors like gynecologic tumors are staged using the FIGO (International Federation of Gynecology and Obstetrics) staging system. Staging systems not explicitly covered in mCODE should follow the patterns in the provided profiles. 

Prognostic factors related to the cancer stage group can be specified with the `Observation.derivedFrom` element. For example, a hemoglobin lab result which was evaluated in the  staging of chronic lymphocytic leukemia (CLL)using the Binet staging system can be referenced under `Observation.derivedFrom` element. [This example of Binet staging](Observation-binet-stage-group-A.html) illustrates how this could be represented.

**Terminology.** SNOMED CT does not offer codes for every staging system. When SNOMED codes are unavailable, mCODE falls back on codes from the NCI Thesaurus (NCIT). From an implementation perspective, managing two code systems is difficult when there is no consistency of which code system is used for what purpose. We are actively working with SNOMED International to create more consistent semantic approach to coding stages, by adding concepts required by non-TNM staging systems. The current approach of mixing SNOMED and NCIT depending on the cancer type should be regarded as temporary.

#### Summary Stage Information in PrimaryCancerCondition

To keep staging information together with cancer diagnosis, staging values and types can be included in the PrimaryCancerCondition. A stage reported in PrimaryCancerCondition is interpreted as the stage at the time of diagnosis. 

In PrimaryCancerCondition, only the stage type and stage value can be reported, as follows:

| Stage Information | FHIR Element | Description |
|-------------------|--------------|-------------|
| Stage Type        | `Condition.stage.type` | See "Reporting Staging Information" above. |
| Stage Value       | `Condition.stage.summary` | See "Reporting Staging Information" above. |
{: .grid }

Representing stage information in this way, i.e., without an explicit staging system, is valid only if the staging system is implicit in the stage type. 

### Tumor Marker Tests

Tumor markers are key prognostic factors in calculating cancer staging, identifying treatment options, and monitoring progression of disease. For example, an abnormal increase in prostate-specific antigen (PSA) levels is a prognostic factor for prostate cancer. Other tumor markers include estrogen receptor (ER) status, progesterone receptor (PR) status, carcinoembryonic antigen (CEA) levels, among others. mCODE distinguishes tumor marker tests from sequencing-based genomic tests measured at the DNA, RNA, or chromosomal level. The latter are addressed in the [Genomics](group-genomics.html) section.

mCODE includes single FHIR profile, [TumorMarkerTest], for all labs involving serum and tissue-based tumor markers. This is less than ideal, since without specifying units of measure or answer sets on a per-test basis, reporting could vary. However, given the large number of tumor marker tests, creating individual profiles was judged impractical.

### Profiles

* Diagnosis
  * [PrimaryCancerCondition]
  * [SecondaryCancerCondition]
* Characterization
  * [TumorMarkerTest]
* Staging, General
  * [CancerStage]
* Staging, AJCC TNM
  * [TNMStageGroup]
  * [TNMPrimaryTumorCategory]All
  * [TNMRegionalNodesCategory]
  * [TNMDistantMetastasesCategory]
* Staging, non-TNM (Draft Status)
  * [ALLClassification]
  * [CLLBinetStage]
  * [CLLRaiStage]
  * [GynecologicTumorFIGOStage]
  * [LymphomaStage]
  * [MelanomaClarkLevel]
  * [MyelomaISSStage]
  * [MyelomaRISSStage]
  * [NeuroblastomaINSSStage]
  * [NeuroblastomaRiskGroup]

### Extensions

* [BodyLocationQualifier]
* [HistologyMorphologyBehavior]
* [LateralityQualifier]

### Value Sets

* Disorder Type (Diagnosis)
  * [BenignUncertainNeoplasmBrainCNSDisorderVS]
  * [CancerDisorderVS]
  * [CarcinomaInSituDisorderVS]
  * [HypereosinophilicSyndromeDisorderVS]
  * [MelanomaInSituDisorderVS]
  * [PrimaryCancerDisorderVS]
  * [PrimaryMalignantNeoplasmDisorderVS]
  * [SecondaryCancerDisorderVS]

* Characterization
  * [CytologicEvidenceOfMalignancyVS]
  * [HistologyMorphologyBehaviorVS]
  * [TumorMarkerTestVS]
  
* Location
  * [BodyLocationQualifierVS]
  * [CancerBodyLocationVS]
  * [LateralityQualifierVS]

* Staging, General
  * [CancerStagingMethodVS]
  * [CancerStageTypeVS]
  * [CancerStageValueVS]

* Staging, TNM
  * [TNMStagingMethodVS]
  * Stage Group
    * [TNMStageGroupVS]
    * [TNMStageGroupMaxVS]
    * [TNMStageGroupStagingTypeVS]
  * Primary Tumor (T)
    * [TNMPrimaryTumorCategoryVS]
    * [TNMPrimaryTumorCategoryMaxVS]
    * [TNMPrimaryTumorStagingTypeVS]
  * Regional Nodes (N)
    * [TNMRegionalNodesCategoryVS]
    * [TNMRegionalNodesCategoryMaxVS]
    * [TNMRegionalNodesStagingTypeVS]
  * Distant Metastases (M)
    * [TNMDistantMetastasesCategoryVS]
    * [TNMDistantMetastasesCategoryMaxVS]
    * [TNMDistantMetastasesStagingTypeVS]

* Staging, non-TNM
    * [BinetStageValueVS]
    * [ClarkLevelValueVS]  
    * [ClinOrPathModifierVS]
    * [FABClassificationValueVS]
    * [FIGOStagingMethodVS]
    * [FIGOStageValueVS]
    * [MyelomaISSValueVS]
    * [MyelomaRISSValueVS]
    * [LymphomaStagingMethodVS]
    * [LymphomaStageValueVS]
    * [LymphomaStageValueModifierVS]
    * [NeuroblastomaRiskGroupValueVS]
    * [NeuroblastomaStageValueVS]
    * [RaiStagingMethodVS]
    * [RaiStageValueVS]

### Code Systems

* [SnomedRequestedCS]

{% include markdown-link-references.md %}
