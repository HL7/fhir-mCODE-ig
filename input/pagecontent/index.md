### Background

Cancer is among the leading causes of death worldwide. According to the National Cancer Institute, in the United States, 39.5 percent of men and women will be diagnosed with cancer at some point during their lifetimes. In 2020, an estimated 1,806,590 new cases of cancer will be diagnosed in the United States and 606,520 people will die from the disease. While these numbers are staggering, the silver lining in the wide prevalence of cancer is the potential to learn from treatment of millions of patients. If we had research-quality data from all cancer patients, it would enable higher quality health outcomes. Today, we lack the data models, technologies, and methods to capture that data.

[mCODE™](https://mcodeinitiative.org/) (short for Minimal Common Oncology Data Elements) is an initiative intended to assemble a core set of structured data elements for oncology electronic health records (EHRs). mCODE is a step towards capturing research-quality data from the treatment of all cancer patients. This would enable the treatment of every cancer patient to contribute to [comparative effectiveness analysis (CEA)](https://en.wikipedia.org/wiki/Comparative_effectiveness_research) of cancer treatments by allowing for easier methods of data exchange between health systems. mCODE has been created and is being supported by the [American Society of Clinical Oncology (ASCO®)](https://www.asco.org/)in collaboration with the MITRE Corporation.

In late 2018, ASCO convened committee of twenty leading clinical experts in oncology, radiology, surgery, and public health developed two use cases that drove the initial clinical data requirements for mCODE:

* **Use Case 1**: [Comparative Effectiveness Analysis and Cooperative Decision Making](mCODE-UseCase-RCC.docx)
* **Use Case 2**: [Comparative Effectiveness Analysis with Next Generation Sequencing (NGS)](mCODE-UseCase-NGS.docx)

While mCODE ultimately is meant to be applicable across all types of cancer, the initial focus (and both use cases) has been on solid tumors.

After initial development, in early 2019, an open survey was conducted to validate and prioritize the data elements from these use cases. Further down-scoping was done based on whether the data would be stored or capture in an electronic health record (EHR), and if it would place undue documentation burden on clinicians.

### Sources

In addition to information obtained from subject matter experts, several pre-existing standards, nomenclatures, and guidelines were consulted in the development of this specification. These include:

* [American Association of Physicists in Medicine (AAPM): Task Group 263 Final Report](https://www.aapm.org/pubs/reports/RPT_263.pdf)
* [American College of Surgeons(ACS): Standards for Registry Entry (STORE)](https://www.facs.org/-/media/files/quality-programs/cancer/ncdb/store_manual_2021.ashx)
* [American Society for Radiation Oncology (ASTRO): Minimum Data Elements for Radiation Oncology](https://www.practicalradonc.org/article/S1879-8500(19)30232-2/fulltext)
* [American Society for Radiation Oncology (ASTRO) Commission on Cancer Workgroup: A Multidisciplinary Consensus Recommendation on a Synoptic Radiation Treatment Summary](https://www.practicalradonc.org/article/S1879-8500(20)30002-3/fulltext)
* [American Joint Committee on Cancer (AJCC): Staging Manual (8th Edition) Breast Cancer Chapter](https://cancerstaging.org/references-tools/deskreferences/Pages/Breast-Cancer-Staging.aspx)
* [Clinical Data Interchange Standards Consortium (CDISC): Therapeutic Area User Guides (TAUG)](https://www.cdisc.org/standards/therapeutic-areas/disease-area)
* [College of American Pathologists (CAP): Cancer Protocols](https://www.cap.org/protocols-and-guidelines)
* [HL7 CDA R2 IG: Reporting to Public Health Cancer Registries from Ambulatory Healthcare Providers](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=383)
* [HL7 FHIR Genomics Reporting Implementation Guidance (STU1)](http://hl7.org/fhir/uv/genomics-reporting/index.html)
* [Human Genome Organization (HUGO): Gene Nomenclature Committee](https://www.genenames.org/)
* [Human Genome Variation Society: Nomenclature for defining genomic variants](https://varnomen.hgvs.org/).
* [National Center for Biotechnology Genomic Test Registry (GTR)](https://www.ncbi.nlm.nih.gov/gtr)
* [National Comprehensive Cancer Network (NCCN) Clinical Practice Guidelines in Oncology](https://www.nccn.org/professionals/physician_gls/default.aspx#site)
* [North American Association of Central Cancer Registries (NAACCR): 2018 Site-Specific Data Items Manual](https://www.naaccr.org/SSDI/SSDI-Manual.pdf?v=1531675132)
* [North American Association of Central Cancer Registries (NAACCR): Standards for Cancer Registries](https://www.naaccr.org/data-standards-data-dictionary/)
* [RECIST Guidelines v1.1](https://project.eortc.org/recist/wp-content/uploads/sites/4/2015/03/RECISTGuidelines.pdf)

In addition, material was drawn from the [US Core Implementation Guide](http://hl7.org/fhir/us/core/) and the [Genomics Reporting Implementation Guide](http://hl7.org/fhir/uv/genomics-reporting/).

### mCODE Overview

This implementation guide is a Domain of Knowledge IG. The purpose of this IG is to show how to represent clinical concepts generally, not to have a complete set of agreements for interoperable exchanges.

mCODE consists of approximately 30 FHIR profiles organized into six thematic groups. Groups are introduced for pedagogical purposes only and have no other meaning or consequence. Refer to the links below for details on the content and artifacts in each group:

* [Patient Information Group](group-patient.html)
* [Disease Characterization Group](group-disease.html)
* [Health Assessment Group](group-assessment.html)
* [Genomics Group](group-genomics.html)
* [Cancer Treatments Group](group-treatment.html)
* [Outcomes Group](group-outcome.html)

The overall scope of mCODE and the relationships between mCODE profiles is illustrated in the following diagram:

<object data="mCodeDiagram.svg" type="image/svg+xml"></object>

### Data Dictionary and Number of Data Elements

Readers should also take note of the [Data Dictionary](dictionary.html), a flattened list of mCODE data elements in MS-Excel format. There is also a [Data Dictionary Differential](dictionary.html#data-dictionary-differential) that compares STU 1 with STU 2 on an element-by-element basis.

The question "How many data elements are there in mCODE?" arises repeatedly. The short answer is: *it depends how data elements are counted*. Should non-required elements be counted? What about provenance elements such as author, date, patient identifier, status, language, and identifier? Should complex data types be counted as one or multiple elements? Are requirements derived from US Core counted as mCODE data elements?

Only one mCODE profile MUST be implemented: [CancerPatient]. The potential number of data elements in CancerPatient is [over 70](StructureDefinition-mcode-cancer-patient.html#tabs-snap), not even counting subelements in complex elements or [additional optional extensions](http://www.hl7.org/fhir/patient-profiles.html#extensions). Of these, [only 23](StructureDefinition-mcode-cancer-patient.html#tabs-snapms) are [must-support elements](https://www.hl7.org/fhir/conformance-rules.html#mustSupport). Of these, only four elements are absolutely [required](conformance-profiles.html#definition-of-required) (namely `identifier.system`, `identifier.value`, `name.family` or `name.given`, and `gender`). Compared to the base profile defined in US Core, [just one additional element is must-support](http://build.fhir.org/ig/HL7/fhir-mCODE-ig/branches/master/StructureDefinition-mcode-cancer-patient.html#tabs-diff). Finally, mCODE defines **zero** new data elements above and beyond those already in US Core. So depending on one's point of view, [CancerPatient] may have 0, 1, 4, 23, or more than 70 data elements.

### Understanding this Guide

The mCODE Implementation Guide was developed using the standard HL7 FHIR publishing tools. The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). In viewing a profile page, note that there are multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but it could be a US Core profile or another profile in this guide. The "Snapshot Table" represents the entire profile, with all elements.

In the event there are differences between the page renderings in this IG and the associated FHIR artifacts, the FHIR artifacts should be taken as the source of truth. In the event that an artifact's snapshot is inconsistent with its differential, the differential should be taken as the source of truth.

### Credits

The authors gratefully acknowledge the leadership and sponsorship of Dr. Monica Bertagnolli, former ASCO President and Dr. Jay Schnitzer, MITRE Chief Technology and Chief Medical Officer. The ASCO/CancerLinQ team was led by Dr. Robert Miller. Dr. Travis Osterman of Vanderbilt University leads the mCODE Technical Review Group. Dr. Charles Mayo of University of Michigan, Randi Kudner of ASTRO, and Martin von Siebenthal of Varian made significant contributions to the much improved radiotherapy portion of this IG. Wendy J. Blumenthal and Wendy Sharber of CDC provided essential input helping align with cancer registry reporting requirements.

The authors recognize HL7 sponsorship and input from [Clinical Interoperability Council](http://www.hl7.org/Special/committees/cic/index.cfm), with special thanks to Laura Heermann Langford, Russell Leftwich, and Lindsey Hoggle. The [HL7 Clinical Genomics Work Group](https://confluence.hl7.org/display/CGW) has been a consistent and constructive partner during this project. Lloyd McKenzie and Grahame Grieve contributed to mCODE in countless ways with otherworldly energy and dedication.

Andre Quina and Nichole Ng guide the overall mCODE effort at MITRE. Key MITRE contributors include Mark Kramer, May Terry, Max Masnick, Saul Kravitz, Su Chen, Rute Martins, Chris Moesel, Caroline Potteiger, Anthony DiDonato, and Sharon Sebastian. Steve Bratt leads the [CodeX FHIR Accelerator](https://confluence.hl7.org/display/COD/CodeX+Home), a member-driven community accelerating implementation around mCODE standard. Capability statements were rendered with tools developed by Eric Haas and modified by Corey Spears. Max Masnick wrote the [Data Dictionary generator](https://github.com/HL7/fhir-mCODE-ig/tree/master/data-dictionary). The raw FSH annotation of the examples was generated by Saul Kravitz using [GoFSH](https://fshschool.org/docs/gofsh/) and this [script](fshtomd.rb).

### Contact Information

If you have questions or comments about this guide, you can join the conversation on [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179234-Cancer-Interoperability/topic/mCODE), create an issue in the [HL7 Jira](https://jira.hl7.org/issues/?filter=13361), or reach out to any of the following individuals:

| Topic | Who | Role | Email |
|----|---|---|------|
| Implementation and Use Cases | Steve Bratt | CodeX Accelerator Program Manager | sbratt@mitre.org |
| Oncology Domain Content | Dr. Travis Osterman | Chair, mCODE Technical Review Group | travis.osterman@vumc.org |
| Modeling and FHIR IG issues | Mark Kramer | Modeling Lead | mkramer@mitre.org |
{: .grid }

mCODE is an open source project and welcomes all contributors. The source code for this IG is maintained in the [HL7 Github](https://github.com/HL7/fhir-mCODE-ig). All of the profiling work is done using [FHIR Shorthand](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org).

MITRE: Approved for Public Release. Distribution Unlimited. Case Number 16-1988

{% include markdown-link-references.md %}
