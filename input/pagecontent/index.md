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
* [The CDISC Therapeutic Area User Guides (TAUG)](https://www.cdisc.org/standards/therapeutic-areas/disease-area)

After initial development, in early 2019, an open survey was conducted to validate and prioritize the data elements from these use cases. Further down-scoping was done based on whether the data would be stored or capture in an electronic health record (EHR), and if it would place undue documentation burden on clinicians.

The data elements identified in this process were modeled using [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/) and [SUSHI](https://github.com/FHIR/sushi) and exported as FHIR Profiles. [The profiles](artifacts.html#2), related FHIR artifacts, and other [technical implementation information](implementation.html), constitute the bulk of this IG. What follows is an overview of mCODE, directed primarily at clinical readers. Readers should also take note of the [Data Dictionary (Excel download)](mCODEDataDictionary.xlsx), a simplified, flattened list of mCODE elements.

Currently, there are two defined mCODE roles involving the exchange of mCODE data. However, this may change in the future. The first role is the "mCODE Data Sender". This participant provides mCODE data in response to a data query or autonomously pushes mCODE data to an mCODE receiver. The data sender does not have to be the originator of the data it possesses. The second mCODE data exchange role is the "mCODE Data Receiver". This participant accepts mCODE data from an mCODE Data Sender.

There are multiple actors recognized in this IG including:

* **Provider** - the oncologist, or their representatives, who works to treat cancer patients.
* **Patient** - the patient who is suspected to have, or is diagnosed with, cancer.
* **Application** - EHR systems or lab systems.

This implementation guide is a Domain of Knowledge IG. The purpose of this IG is to show how to represent clinical concepts generally, not to have a complete set of agreements for interoperable exchanges.

### Scope and Conceptual Model

mCODE consists of data elements divided into six loosely-arranged groups. Refer to the links below for details on the content and artifacts in each group:

* [Patient Information Group](group-patient.html)
* [Disease Characterization Group](group-disease.html)
* [Laboratory Results and Vital Signs Group](group-labvital.html)
* [Genomics Group](group-genomics.html)
* [Cancer Treatments Group](group-treatment.html)
* [Outcomes Group](group-outcome.html)

The groups are illustrated in the following diagram:

![mCODE Logical Model](mCodeDiagram.svg)

### Data Dictionary

The [Data Dictionary (DD)]() includes only the must-support elements in the mCODE specification, intentionally omitting certain elements in FHIR that are not expected to be implemented. When there are differences between the DD and content of the FHIR implementation guide, the profiles and value sets in the guide should be taken as the source of truth.

The STU 2 DD is somewhat different than the STU 1 version. The reader may notice the STU 2 DD lists significantly more data elements. In STU 1, some data elements were suppressed because they were common to most or all profiles, such as the reference to patient or subject, or the time of resource creation. However, the redaction of certain elements proved confusing, so the current DD does not continue this practice. Many of the "extra" rows are due to this change.

### Limitations

* Not all vocabularies used in mCODE are currently supported by the [FHIR Implementation Guide Publishing Tool](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation). Unsupported vocabularies include ClinVar, NCI Thesaurus, and AJCC.

### Credits

The authors recognize the leadership and sponsorship of Dr. Monica Bertagnolli, former ASCO President and Dr. Jay Schnitzer, MITRE Chief Technology Officer. Dr. Steven Piantadosi and the Alliance for Clinical Trials in Oncology coordinated real-world data collection in clinical trials, as part of this project. The ASCO/CancerLinQ team was led by Dr. Robert Miller. Lead MITRE contributors were Mark Kramer, May Terry, Max Masnick, Rute Martins, Chris Moesel, and Caroline Potteiger. Andre Quina and Dr. Brian Anderson guided the overall mCODE effort at MITRE. HL7 sponsorship and input from [Clinical Interoperability Council](http://www.hl7.org/Special/committees/cic/index.cfm) and [Clinical Information Modeling Initiative](https://www.hl7.org/Special/Committees/cimi/index.cfm) is gratefully acknowledged, with special thanks to Richard Esmond and Laura Heermann Langford.

This IG was authored by the MITRE Corporation using [FHIR Shorthand (FSH)](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org), a free, open source toolchain from [MITRE Corporation](https://www.mitre.org/).

### Contact Information

| **General Inquiries:** | [mcode-info@asco.org]     |
| **Co-Editor:**  | Dr. Robert Miller<br>ASCO CancerLinQ<br>[robert.miller@asco.org] |
| **Co-Editor:**  | Mark Kramer<br>MITRE Corporation<br>[mkramer@mitre.org]  |

[robert.miller@asco.org]: mailto:robert.miller@asco.org
[mcode-info@asco.org]: mailto:mcode-info@asco.org
[mkramer@mitre.org]: mailto:mkramer@mitre.org

MITRE: Approved for Public Release. Distribution Unlimited. Case Number 16-1988

</div>

{% include markdown-link-references.md %}