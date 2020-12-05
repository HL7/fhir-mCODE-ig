<style>
    table.mcode-table, .mcode-table tr, .mcode-table td {
        border: 1px solid #ccc;
        border-collapse: collapse;
    }
</style>

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd" markdown="1">

* [Background](#background)
* [Scope and Conceptual Model](#scope-and-conceptual-model)
* [Conformance](conformance.html)
* [Data Dictionary (Excel download)](mCODEDataDictionary.xlsx)
* [FHIR Examples](examples.html)
* [Implementation Notes](implementation.html)
* [Change Log](change_log.html)
* [Disclaimers and Known Limitations](#disclaimers-and-known-limitations)
* [Credits](#credits)
* [Contact Information](#contact-information)

### Background

According to the National Cancer Institute, 38.5 percent of men and women will be diagnosed with cancer at some point during their lifetimes. In 2014, an estimated 14.7M people were living with cancer in the United States. While these numbers are staggering, the silver lining in the wide prevalence of cancer is the potential to learn from treatment of millions of patients. If we had research-quality data from all cancer patients, it would enable higher quality health outcomes. Today, we lack the data models, technologies, and methods to capture that data.

[mCODE™](https://mcodeinitiative.org/) (short for Minimal Common Oncology Data Elements) is an initiative intended to assemble a core set of structured data elements for oncology electronic health records (EHRs). mCODE is a step towards capturing research-quality data from the treatment of all cancer patients. This would enable the treatment of every cancer patient to contribute to [comparative effectiveness analysis (CEA)](https://en.wikipedia.org/wiki/Comparative_effectiveness_research) of cancer treatments by allowing for easier methods of data exchange between health systems. mCODE has been created and is being supported by the [American Society of Clinical Oncology (ASCO®)](https://www.asco.org/)in collaboration with the MITRE Corporation.

In late 2018, ASCO convened committee of twenty leading clinical experts in oncology, radiology, surgery, and public health developed two use cases that drove the initial clinical data requirements for mCODE:

* **Use Case 1**: [Comparative Effectiveness Analysis and Cooperative Decision Making](mCODE-UseCase-RCC.docx)
* **Use Case 2**: [Comparative Effectiveness Analysis with Next Generation Sequencing (NGS)](mCODE-UseCase-NGS.docx)

While mCODE ultimately is meant to be applicable across all types of cancer, the initial focus (and both use cases) has been on solid tumors.

In addition to information obtained from subject matter experts, several pre-existing standards, nomenclatures, and guidelines were consulted in the development of this specification, including:

* [American Joint Committee on Cancer (AJCC) Staging Manual (8th Edition) Breast Cancer Chapter](https://cancerstaging.org/references-tools/deskreferences/Pages/Breast-Cancer-Staging.aspx)
* [College of American Pathologists (CAP) Cancer Protocols](https://www.cap.org/protocols-and-guidelines)
* [North American Association of Central Cancer Registries (NAACCR) 2018 Site-Specific Data Items Manual](https://www.naaccr.org/SSDI/SSDI-Manual.pdf?v=1531675132)
* [HL7 CDA R2 IG: Reporting to Public Health Cancer Registries from Ambulatory Healthcare Providers](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=383)
* [National Comprehensive Cancer Network (NCCN) Clinical Practice Guidelines in Oncology](https://www.nccn.org/professionals/physician_gls/default.aspx#site)
* [RECIST Guidelines v1.1](https://project.eortc.org/recist/wp-content/uploads/sites/4/2015/03/RECISTGuidelines.pdf)
* [HL7 FHIR Genomics Reporting Implementation Guidance (STU1)](http://hl7.org/fhir/uv/genomics-reporting/index.html)
* [The National Center for Biotechnology Genetic Test Registry (GTR)](https://www.ncbi.nlm.nih.gov/gtr)
* [The Human Genome Variation Society nomenclature for defining genetic variants](https://varnomen.hgvs.org/).
* [The Human Genome Organization (HUGO) Gene Nomenclature Committee](https://www.genenames.org/)
* [The CDISC Therapeutic Area User Guides (TAUG)](https://www.cdisc.org/standards/therapeutic-areas/disease-area/oncology/)

After initial development, in early 2019, an open survey was conducted to validate and prioritize the data elements from these use cases. Further down-scoping was done based on whether the data would be stored or capture in an electronic health record (EHR), and if it would place undue documentation burden on clinicians.

The data elements identified in this process were modeled using [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/) and [SUSHI](https://github.com/FHIR/sushi) and exported as FHIR Profiles. [The profiles](artifacts.html#2), related FHIR artifacts, and other [technical implementation information](implementation.html), constitute the bulk of this IG. What follows is an overview of mCODE, directed primarily at clinical readers. Readers should also take note of the [Data Dictionary (Excel download)](mCODEDataDictionary.xlsx), a simplified, flattened list of mCODE elements.

Currently, there are two defined mCODE roles involving the exchange of mCODE data. However, this may change in the future. The first role is the "mCODE Data Sender". This participant provides mCODE data in response to a data query or autonomously pushes mCODE data to an mCODE receiver. The data sender does not have to be the originator of the data it possesses. The second mCODE data exchange role is the "mCODE Data Receiver". This participant accepts mCODE data from an mCODE Data Sender.

There are multiple actors recognized in this IG including:

* **Provider** - the oncologist, or their representatives, who works to treat cancer patients.
* **Patient** - the patient who is suspected to have, or is diagnosed with, cancer.
* **Application** - EHR systems or lab systems.

This implementation guide is a Domain of Knowledge IG. The purpose of this IG is to show how to represent clinical concepts generally, not to have a complete set of agreements for interoperable exchanges.

### Scope and Conceptual Model

mCODE consists of data elements divided into six groups, illustrated in the following diagram:

* [Patient Group](#patient-group)
* [Disease Characterization Group](#disease-characterization-group)
* [Laboratory Results and Vital Signs Group](#laboratory-results-and-vital-signs-group)
* [Treatments Group](#treatments-group)
* [Genomics Group](#genomics-group)
* [Outcomes Group](#outcomes-group)

![mCODE Logical Model](mCodeDiagram.svg)

#### Patient Group

The mCODE **Patient** group contains the following basic information about the patient:

* **Demographics** - including date of birth, gender, zip code, race, and ethnicity.
* **Comorbid conditions** - the list of comorbid conditions aligned with the [Elixhauer Comorbidity Index](http://mchp-appserv.cpe.umanitoba.ca/concept/Elixhauser%20Comorbidities%20-%20Coding%20Algorithms%20for%20ICD-9-CM%20and%20ICD-10.pdf).
* **Patient performance status** - [Eastern Cooperative Oncology Group (ECOG) Performance Status](https://ecog-acrin.org/resources/ecog-performance-status) and/or [Karnofsky Performance Status (KPS)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3722041/). Because performance assessments may be performed more than once over a period of time, multiple instances may exist for a single patient.
* **Patient Bundle** - the [mCODE patient bundle](StructureDefinition-mcode-patient-bundle.html) contains all information about the patient defined in mCODE in a single resource that can be sent over the wire.

[Patient](StructureDefinition-mcode-cancer-patient.html) is the most essential FHIR profile, as all other mCODE major elements reference it. The only difference between the mCODE Patient profile and the [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) is that Patient.deceased is a [must-support](https://www.hl7.org/fhir/profiling.html#mustsupport) element in mCODE.

#### Disease Characterization Group

The mCODE **Disease Characterization** group includes data elements specific to the diagnosis and staging of cancer. This includes:

* **Cancer Diagnosis** - the date and location (body site/position and laterality) of the cancer diagnosis.
* **Tumor characteristics** - the shape (histologic type) and behavior of the tumor cell, compared to that of a normal cell.
* **Cancer stage** - describes the severity of an individual's cancer based on the magnitude of the original (primary) tumor as well as on the extent cancer has spread in the body. Understanding the stage of the cancer helps doctors to develop a prognosis and design a treatment plan for individual patients. Staging calculations leverage results from the previous two categories, along with prognostic factors relevant to the cancer type, in order to assess an overall cancer stage group (source: [AJCC](https://cancerstaging.org/references-tools/Pages/What-is-Cancer-Staging.aspx)).

##### Representing Cancer Diagnosis

The cancer diagnosis combines the type, site, and certain characteristics of the cancer. Depending on the EHR and provider organization, different code systems may be used, such as:

* [Systematized Nomenclature of Medicine - Clinical Terms (SNOMED CT)](https://www.snomed.org/)
* [International Classification of Diseases, 10th version, Clinical Modifications (ICD-10-CM)](https://www.cdc.gov/nchs/icd/icd10cm.htm)
* [International Classification of Diseases for Oncology, 3rd version (ICD-O-3)](https://codes.iarc.fr/)

Because the use of these code systems vary in different institutions, mCODE supports all three. Implementers should be aware, however, that how the cancer diagnosis is coded can affect compliance with [US Core](http://hl7.org/fhir/us/core/index.html) (see [Implementation Notes](implementation.html) for details). Two attributes and one [FHIR extension](https://www.hl7.org/fhir/extensibility.html) of the [FHIR Condition Resource](https://www.hl7.org/fhir/condition.html) are involved with coding the cancer diagnosis: the Code, the [HistologyMorphologyBehavior extension](StructureDefinition-mcode-histology-morphology-behavior.html), and the Body Site. How these attributes are used, depending on the code system, is captured in the table below:

<table class="mcode-table">
<thead>
<tr>
	<th>Condition Attribute</th>
	<th>SNOMED-CT (SCT)</th>
	<th>ICD-10-CM</th>
	<th>ICD-O-3</th>
</tr>
</thead>

<tbody>
<tr>
	<th>Code (required)</th>
	<td>Code from hierarchy of<code>SCT#363346000</code> "Malignant neoplastic disease (disorder)"</td>
	<td>ICD-10-CM Primary Code (precoordinated)</td>
	<td>Fixed code <code>SCT#363346000</code> "Malignant neoplastic disease (disorder)"</td>
</tr>
<tr>
	<th>Histology Morphology Behavior (extension)</th>
	<td>Code from hierarchy of <code>SCT#367651003</code> "Malignant neoplasm of primary, secondary, or uncertain origin (morphologic abnormality)"</td>
	<td>n/a</td>
	<td>ICD-O-3 Morphology Code (including /1, /2, or /3 suffix for primary cancers, and /6 suffix for secondary cancers)</td>
</tr>
<tr>
	<th>Body Site</th>
	<td>Code from hierarchy of <code>STC#123037004</code> "Body structure (body structure)"</td>
	<td>n/a</td>
	<td>ICD-O-3 Topology Code</td>
</tr>
</tbody>
</table>

Implementers should reference the [PrimaryCancerCondition](StructureDefinition-mcode-primary-cancer-condition.html) and [Secondary Cancer Condition](StructureDefinition-mcode-secondary-cancer-condition.html) profiles for details on the use of these terminologies and associated value sets.

##### Representing Cancer Staging Information

Cancer stage information is contained in a set of profiles, representing [clinical stage group](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/clinical-staging) and [pathologic stage group](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/pathological-staging) panels with members representing the primary tumor (T) category, the regional nodes (N) category, and the distant metastases (M) category.

TNM staging systems are specified in the _CancerStagingSystemVS_ extensible value set of SNOMED CT terms. SNOMED CT does not have a concept code to denote AJCC version 8, the most current version used for AJCC for cancer staging. AJCC is actively requesting the addition of new SNOMED CT concept code, although the process to approve and publish the new code could take several months. Until one is available in the SNOMED CT US Edition, we recommend the NCI thesaurus code _C146985 (AJCC Cancer Staging Manual 8th Edition)_.

Non-TNM staging systems are not currently represented in mCODE, reflecting mCODE's current focus on solid tumors. In mCODE, a single patient may have more than one staging panel, although this is not common in practice.

Clinical applications vary in their representation of T, N, and M staging category values, falling into one of two naming conventions:

* prepended with a staging classification abbreviation (e.g.: _cT3_). This is the coding convention returned by AJCC in their digital data content retrieved via the [AJCC Application Programming Interface (API)](https://ajcc.3scale.net/).
* without a prepended staging classification abbreviation (e.g.: _T3_).

mCODE recommends that the implementers align with AJCC's convention of representing the staging category value with the _prepended classification_ in both [TNMClinicalStageGroup](StructureDefinition-mcode-tnm-clinical-stage-group.html) and [TNMPathologicalStageGroup](StructureDefinition-mcode-tnm-pathological-stage-group.html) profiles. This code convention is aligned with the AJCC's digital data and clearly distinguishes the staging classification as clinical, pathologic, or neoadjuvant without having to retrieve further context from the model. Nonetheless, separate profiles for clinical and pathological staging were developed, with an eye toward future extensibility, in particular, the ability to additional prognostic factors relevant to particular types of cancers in the [TNMPathologicalStageGroup](StructureDefinition-mcode-tnm-pathological-stage-group.html).

#### Laboratory Results and Vital Signs Group

##### US Core Laboratory Results

Many laboratory tests could be relevant to an individual with cancer. The initial mCODE release calls for results from two common laboratory panels, the Complete Blood Count (CBC) (Automatic or Manual Differential) and Comprehensive Metabolic Panel (CMP). CBC and CMP results can be reported as individual laboratory observations or as grouped panels, using the DiagnosticReport resource. If DiagnosticReports are submitted, they must conform to [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html). Examples of [CBC reporting](http://hl7.org/fhir/us/core/DiagnosticReport-cbc.html) and [CMP reporting](http://hl7.org/fhir/us/core/DiagnosticReport-metabolic-panel.html) are given in the [US Core IG](http://hl7.org/fhir/us/core/index.html).

##### Tumor Marker Tests

Tumor markers are key prognostic factors in calculating cancer staging, identifying treatment options, and monitoring progression of disease. For example, an abnormal increase in prostate-specific antigen (PSA) levels is a prognostic factor for prostate cancer. Other tumor markers include estrogen receptor (ER) status, progesterone receptor (PR) status, carcinoembryonic antigen (CEA) levels, among others. See the profile [TumorMarkerTest](StructureDefinition-mcode-tumor-marker.html) for full details.

We distinguish Tumor Marker Tests from genetic tests that are measured at the DNA, RNA, or chromosomal level, addressed in the [Genomics](#genomics-group) section.

##### Vital Signs

Vital signs are measurements of the most essential, or "vital" body functions. Traditionally, [vital signs include](https://medlineplus.gov/vitalsigns.html) blood pressure, heart rate, respiratory rate, and temperature. More recently, height and weight have been included. For mCODE, blood pressure, body height, and body weight are believed to be most critical to assessment and treatment. mCODE uses the [FHIR vital sign profiles](http://hl7.org/fhir/R4/observation-vitalsigns.html), which are incorporated by reference into [US Core v3](http://hl7.org/fhir/us/core/index.html).

#### Treatments Group

The **Treatment** group includes reporting of procedures and medications used to treat a cancer patient, or relevant to that treatment. Treatments are captured using the following profiles:

* [CancerRelatedSurgicalProcedure](StructureDefinition-mcode-cancer-related-surgical-procedure.html) - representing surgical procedures that involve the removal of cancer tumors from the body.
* [CancerRelatedRadiationProcedure](StructureDefinition-mcode-cancer-related-radiation-procedure.html) - to document the use of high-energy radiation from x-rays, gamma rays, neutrons, protons, and other sources to all cancer cells and shrink tumors.
* [MedicationRequest](StructureDefinition-mcode-cancer-related-medication-request.html) - recording treatments involving chemotherapy agents, targeted therapy agents, and hormone therapy agents. The mCODE profile of MedicationRequest includes two extensions that distinguish it from the US Core MedicationRequest profile:
    * [TreatmentIntent](StructureDefinition-mcode-treatment-intent.html) - to record the purpose of the treatment, whether curative or palliative
    * [TerminationReason](StructureDefinition-mcode-termination-reason.html) - to document the reason for unplanned or premature termination of the medication.

Like US Core, mCODE gives preference to representing medications using the National Library of Medicine (NLM) [RxNorm](https://www.nlm.nih.gov/research/umls/rxnorm/) terminology - a coding standard established by the Office of the National Coordinator (ONC) for the exchange of drugs. However, RxNorm is restricted to FDA-approved drugs and does not include clinical trial drugs. To address this limitation, mCODE allows for the inclusion of other code systems like the [NCI Thesaurus (NCIT)](https://ncit.nci.nih.gov/ncitbrowser/) to represent clinical trial oncology drugs.

#### Genomics Group

mCODE includes the minimal set of genomics related elements relevant to capture in an EHR to inform cancer assessment and treatment options. The approach is based on the [HL7 CGWG Clinical Genomics Reporting Implementation Guide](http://hl7.org/fhir/uv/genomics-reporting/index.html). However, mCODE simplifies genomics reporting to single discrete variants or to variants that were found in a given DNA region. Three profiles relate to the capture of clinical genomics data:

* [Genomics Report](StructureDefinition-mcode-cancer-genomics-report.html) - contain results of genomic analyses. Genomic reports vary in complexity and content, as simple as the results for a single discrete variant to complex sequences that are found in exome and genome-wide association studies (GWAS).
* [Genetic Variant](StructureDefinition-mcode-cancer-genetic-variant.html) - used to record variants that could be found from tests that broadly analyze genetic regions (e.g.: exome tests) and stores results for any variants that could have been found. The region in which the variant was found could be specified in the RegionStudied attribute of the GenomicsReport profile.
* [Genetic Specimen](StructureDefinition-mcode-genetic-specimen.html) - used to further specify the specimen collected for a genomics test.

The identity of non-genomic laboratory tests is typically represented by a [Logical Observation Identifiers and Names (LOINC)](https://loinc.org/) code. However, many genetic tests and panels do not have LOINC codes, although some might have an identifier in the [NCBI Genetic Testing Registry (GTR)](https://www.ncbi.nlm.nih.gov/gtr/), a central location for voluntary submission of genetic test information by providers. While GTR is a viable source for identifying many genetic tests, the user should be aware that the GTR is not single authoritative source since the test data is voluntarily updated. Standardization of codes for genetic tests is essential to facilitate data analysis of genetic tests, and should be a priority for the genomics testing community in the near future. Implementers should also note that, to conform to the requirements of the [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html), LOINC must be used, if a suitable code is available. If there is no suitable code in LOINC, then a code from an alternative code system such as GTR can be used.

#### Outcomes Group

Recording outcomes of cancer treatment in mCODE involves two data elements: disease status and date of death. Other common outcome measures, such as progression-free survival, time to recurrence, and overall survival, can be derived from time-indexed observations of disease status. The date of diagnosis is also required for some derived measures (see [Disease Characterization](#disease-characterization-group)). At this time, mCODE does not include patient reported outcomes.

##### Disease Status

Formal recording of disease status is often limited to clinical trials, involving precise criteria such as [RECIST](https://ctep.cancer.gov/protocolDevelopment/docs/recist_guideline.pdf). The lack of outcome data outside of trials greatly limits the application of real-world data. Disease status information is rarely found in structured form in EHRs. If recorded at all, the information is found in clinical notes, which is of limited usefulness.

mCODE asks for disease progression to be recorded in structured form as part of patient encounters. In mCODE, disease status is defined as "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc." In other words, the disease status is an assessment by the oncologist that synthesizes all currently available information about the patient. The [ICAREdata™ Project](http://icaredata.org/) is conducting a study in association with a randomized controlled trial (RCT), which aims to demonstrate the ability to calculate equivalent clinical trial endpoints using computable clinical treatment data.

##### Date of Death

Date of death data can be obtained from several sources outside of the clinical setting. If available in the EHR, it can be reported through via mCODE, but more likely, it will be filled in from vital records, after the last clinical interaction.

### Disclaimers and Known Limitations

* Several proprietary terminologies, including ICD-O-3 and the American Joint Commission on Cancer (AJCC) Staging Systems are widely used in the cancer domain. Others, such as Current Procedural Terminology (CPT®), while not cancer-specific, are relevant for the representation of cancer-related procedures, such as surgeries or radiation procedures. Consequently, this guide does not include content from these terminologies due to licensing restrictions. As such, _**elements related to staging may not currently include required terminology codes for assessing the cancer stage**_. The guide does, however, indicate where it is appropriate to use codes from such terminologies.

* Under the [Fair Use doctrine](https://www.copyright.gov/fair-use/more-info.html), this IG provides examples illustrating mCODE's representation of cancer diagnoses and AJCC staging values for the purposes of technical implementation guidance to FHIR developers.

* mCODE elements listed in this IG might vary from the list identified by ASCO in their recent survey. These elements are subject to change based on review from ASCO, CancerLinQ, and other reviewers from the oncology community.

* The Data Dictionary includes a subset of must-support elements in the mCODE specification, intentionally omitting certain elements included in this implementation guide. When there are differences between the Data Dictionary and content of the FHIR implementation guide, the profiles and value sets in the guide should be taken as the source of truth. The metadata elements not included in the Data Dictionary are listed below:

    * Reference to the patient or subject
    * Time of the event and/or time of the record creation
    * Encounter, if required by US Core
    * Workflow status for observations, conditions, and procedures
    * Any fixed codes that identify the type of measurement or observation
    * The practitioner or organization for observations and conditions, except where this information is specifically important to the interpretation of the result (only in GenomicsReport)

* Under [Clinical Laboratory Improvement Amendments (CLIA)](https://www.cms.gov/Regulations-and-Guidance/Legislation/CLIA/index.html?redirect=/clia) regulations, laboratory tests must include information on the performing technologist, performing laboratory, and performing laboratory medical director. These three roles would ideally appear as [slices](https://www.hl7.org/fhir/profiling.html#slicing) on Observation.performer and/or DiagnosticReport.performer. However, slicing requires a [discriminator](https://www.hl7.org/fhir/profiling.html#discriminator), a field that can be checked to determine whether a resource found in Observation.performer or DiagnosticReport.performer corresponds to the performing technologist or the performing laboratory medical director. While the performing laboratory can be determined by its resource type, in the current design of FHIR, there is no indicator that would discriminate the roles of the two Practitioner participants.

* mCODE includes a dedicated FHIR profile, [TumorMarkerTest](StructureDefinition-mcode-tumor-marker.html), for labs involving serum and tissue-based tumor markers. Unlike other laboratory profiles in mCODE, one profile has been created to handle the entire class of tumor marker tests, primarily because of the large number of laboratory tests involved. A value set of approximately 150 tumor marker tests was developed and bound to the Code attribute, using an extensible binding to account for new and overlooked tests and code updates. The [TumorMarkerVS](ValueSet-mcode-tumor-marker-test-vs.html) lists some common tests for tumor markers but does not further align by cancer type. The approach of using a single profile for multiple tests is less than ideal, since without specifying units of measure or answer sets on a per-test basis, reporting could vary.

* Not all vocabularies used in mCODE are currently supported by the [FHIR Implementation Guide Publishing Tool](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation). The [error report on this IG](qa.html) reports these references as errors. In truth, they reflect limitations of the FHIR terminology server. Unsupported vocabularies include ClinVar and AJCC.

* The authors are considering whether it might be more accurate to represent Clinical and Pathologic Staging Groups as DiagnosticReports, rather than Observations. Feedback is welcome.

* The authors are considering NCI Thesaurus as a source vocabulary for [CancerStagingSystemVS](ValueSet-mcode-cancer-staging-system-vs.html), since SNOMED CT lacks the necessary terms (AJCC Version 8, in particular).

### Credits

The authors recognize the leadership and sponsorship of Dr. Monica Bertagnolli, President, ASCO and Dr. Jay Schnitzer, MITRE Chief Technology Officer. Dr. Steven Piantadosi and the Alliance for Clinical Trials in Oncology coordinated real-world data collection in clinical trials, as part of this project. The ASCO/CancerLinQ team was led by Dr. Robert Miller and Dr. Wendy Rubinstein. Lead MITRE contributors were Mark Kramer, Rute Martins, Chris Moesel, Caroline Potteiger, and May Terry. Andre Quina and Dr. Brian Anderson guide the overall mCODE effort at MITRE. HL7 sponsorship and input from [Clinical Interoperability Council](http://www.hl7.org/Special/committees/cic/index.cfm) and [Clinical Information Modeling Initiative](https://www.hl7.org/Special/Committees/cimi/index.cfm) is gratefully acknowledged, with special thanks to Richard Esmond and Laura Heermann Langford.

This IG was authored by the MITRE Corporation using [FHIR Shorthand (FSH)](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org), a free, open source toolchain from [MITRE Corporation](https://www.mitre.org/).

### Contact Information


| **General Inquiries:** | [mcode-info@asco.org]                                            |
| **Co-Editor:**         | Dr. Robert Miller<br>ASCO CancerLinQ<br>[robert.miller@asco.org] |
| **Co-Editor:**         | Mark Kramer<br>MITRE Corporation<br>[mkramer@mitre.org]          |

[robert.miller@asco.org]: mailto:robert.miller@asco.org
[mcode-info@asco.org]: mailto:mcode-info@asco.org
[mkramer@mitre.org]: mailto:mkramer@mitre.org

MITRE: Approved for Public Release. Distribution Unlimited. Case Number 16-1988

</div>
