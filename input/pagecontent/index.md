### Background

Cancer is among the leading causes of death worldwide. According to the National Cancer Institute, in the United States, 39.5 percent of men and women will be diagnosed with cancer at some point during their lifetimes. In 2020, an estimated 1,806,590 new cases of cancer will be diagnosed in the United States and 606,520 people will die from the disease. While these numbers are staggering, the silver lining in the wide prevalence of cancer is the potential to learn from treatment of millions of patients. If we had research-quality data from all cancer patients, it would enable higher quality health outcomes. Today, we lack the data models, technologies, and methods to capture that data.

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

### Scope and Conceptual Model

This implementation guide is a Domain of Knowledge IG. The purpose of this IG is to show how to represent clinical concepts generally, not to have a complete set of agreements for interoperable exchanges.

mCODE consists of data elements divided into six loosely-arranged groups. Refer to the links below for details on the content and artifacts in each group:

* [Patient Information Group](group-patient.html)
* [Disease Characterization Group](group-disease.html)
* [Health Assessment Group](group-assessment.html)
* [Genomics Group](group-genomics.html)
* [Cancer Treatments Group](group-treatment.html)
* [Outcomes Group](group-outcome.html)

The groups are illustrated in the following diagram:

![mCODE Logical Model](mCodeDiagram.svg)

### Data Dictionary

In addition to the FHIR artifacts, readers should also take note of the [Data Dictionary ](dictionary.html), a simplified, flattened list of mCODE elements in MS-Excel format.

There is also a [Data Dictionary Differential](dictionary.html#data-dictionary-differential) that compares STU 1 with STU 2 on an element-by-element basis.

### Understanding this Guide

The mCODE Implementation Guide was developed using the standard HL7 FHIR publishing tools. The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). In viewing a profile page, note that there are multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but it could be a US Core profile or another profile in this guide. The "Snapshot Table" represents the entire profile, with all elements.

In the event there are differences between the page renderings in this IG and the associated FHIR artifacts, the FHIR artifacts should be taken as the source of truth. In the unlikely event that an artifact's snapshot is inconsistent with its differential, the differential should be taken as the source of truth.

### Contributions

mCODE is an open source project and welcomes all contributors. The source code for this IG is maintained in the [HL7 Github](https://github.com/HL7/fhir-mCODE-ig). Instead of just suggesting a change, consider creating a branch, making the change, and submitting a pull request. All of our profiling work is done in [FHIR Shorthand](http://hl7.org/fhir/uv/shorthand/) and all narrative content in markdown (specifically, [Kramdown](https://kramdown.gettalong.org/)). We suggest using the [Visual Studio Code editor](https://code.visualstudio.com/) with the [FHIR Shorthand plug-in](https://marketplace.visualstudio.com/items?itemName=kmahalingam.vscode-language-fsh). For more information on how to get started with IG development, visit the [FSH School](https://fshschool.org/).

If you have questions or comments about this guide, please reach out on [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179234-Cancer-Interoperability/topic/mCODE) or create an issue in the [HL7 Jira](https://jira.hl7.org/issues/?filter=13361).

### Credits

The authors recognize the leadership and sponsorship of Dr. Monica Bertagnolli, former ASCO President and Dr. Jay Schnitzer, MITRE Chief Technology and Chief Medical Officer. The ASCO/CancerLinQ team was led by Dr. Robert Miller. Dr. Travis Osterman of Vanderbilt University leads the mCODE Technical Review Group. Andre Quina guides the overall mCODE effort at MITRE. Dr. Charles Mayo of University of Michigan, Randi Kudner of ASTRO, and Martin von Siebenthal of Varian made significant contributions to the much improved radiotherapy portion of this IG. MITRE contributors include Mark Kramer, May Terry, Max Masnick, Rute Martins, Chris Moesel, Caroline Potteiger, Steve Bratt, and Sharon Sebastian. HL7 sponsorship and input from [Clinical Interoperability Council](http://www.hl7.org/Special/committees/cic/index.cfm) and [Clinical Information Modeling Initiative](https://www.hl7.org/Special/Committees/cimi/index.cfm) is gratefully acknowledged, with special thanks to Richard Esmond, Laura Heermann Langford, and Lindsey Hoggle.

This IG was authored by the MITRE Corporation using [FHIR Shorthand (FSH)](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org), a free, open source toolchain from [MITRE Corporation](https://www.mitre.org/).

### Contact Information

| Topic | Who | Role | Email |
|----|---|---|------|
| Implementation and use cases  | Steve Bratt | CodeX Accelerator Program Manager | sbratt@mitre.org |
| Domain content | Dr. Travis Osterman | Chair, mCODE Technical Review Group | travis.osterman@vumc.org |
| Modeling and FHIR IG issues | Mark Kramer | Modeling Lead | mkramer@mitre.org |
{: .grid }

MITRE: Approved for Public Release. Distribution Unlimited. Case Number 16-1988

{% include markdown-link-references.md %}
