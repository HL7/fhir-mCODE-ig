### Background

Cancer is among the leading causes of death worldwide. According to the National Cancer Institute, in the United States, 39.5 percent of men and women will be diagnosed with cancer at some point during their lifetimes. In 2020, an estimated 1,806,590 new cases of cancer will be diagnosed in the United States and 606,520 people will die from the disease. While these numbers are staggering, the silver lining in the wide prevalence of cancer is the potential to learn from treatment of millions of patients. If we had research-quality data from all cancer patients, it would enable better health outcomes. Today, we lack the data models, technologies, and methods to capture that data.

[mCODE™](https://mcodeinitiative.org/) (short for Minimal Common Oncology Data Elements) is an initiative intended to increase interoperability by assembling a core set of structured data elements for oncology electronic health records (EHRs). mCODE is a step towards capturing research-quality data from the treatment of all cancer patients. This would enable the treatment of every cancer patient to contribute to [comparative effectiveness analysis (CEA)](https://en.wikipedia.org/wiki/Comparative_effectiveness_research) of cancer treatments by allowing for easier methods of data exchange between health systems.

### Overview

mCODE consists of approximately 30 FHIR profiles organized into six thematic groups. Groups are introduced for pedagogical purposes only and have no other meaning or consequence:

* [Patient Information Group](group-patient.html)
* [Disease Characterization Group](group-disease.html)
* [Health Assessment Group](group-assessment.html)
* [Genomics Group](group-genomics.html)
* [Cancer Treatments Group](group-treatment.html)
* [Outcomes Group](group-outcome.html)

The overall scope of mCODE and the relationships between mCODE profiles is shown in the following diagram (not all details are shown). Click on items to see their underlying definitions. When viewing the diagram, please note:

1. mCODE does not define a specific set of information that must be collected for each cancer patient. Instead, mCODE presents a set of patterns or templates, including controlled terminologies, to be used when certain data in the above groups are shared. 

> **Example:** mCODE includes a FHIR profile for ECOG performance status, but clearly not every cancer patient undergoes such an evaluation. However, if a patient *has had* an ECOG performance evaluation, that information must be shared in a manner conforming to mCODE's ECOG profile. 

2. The need to conform to mCODE profiles when sharing information may influence the way data is collected at the source and recorded in an EHR, for example, by tailoring the values included in a pick-list.

> **Example:** mCODE provides a specific set of values for [procedure intent][ProcedureIntentVS]. The need for terminology mapping can be minimized if the EHR offers these specific choices.

3. The absence of an mCODE profile only means that mCODE does not impose any specific requirements for how that type of information is represented (above and beyond the base FHIR specification). In other words, if mCODE does not have a profile for some type of data, it still can be included with mCODE data using an appropriate resource or profile.

> **Example:** mCODE does not include a profile for care teams. However, users can share care team information using [FHIR's CareTeam resource](https://hl7.org/fhir/R4B/careteam.html), using a profile such as [US Core CareTeam](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-careteam.html).
  
4. Additional profiles can be derived from mCODE. It is expected that mCODE will serve as the basis for future implementation guides dealing with new use cases, particular types of cancer, or specific demographic groups.

> **Example:** A group of surgeons may collaborate to create a profile for reconstructive procedures, assuring mCODE compliance by deriving their profile from mCODE's [CancerRelatedSurgicalProcedure] profile.

<object data="mCodeDiagram.svg" type="image/svg+xml"></object>
<br/>


### Data Dictionary

Readers should take note of the [Data Dictionary](dictionary.html), a flattened list of data elements in mCODE in Microsoft Excel format. There is also a [Data Dictionary Differential](dictionary.html#data-dictionary-differential) that compares STU 3 with STU 2 on an element-by-element basis.

The Data Dictionary comes with several caveats:

* Only [must-support (MS)](https://www.hl7.org/fhir/conformance-rules.html#mustSupport) data elements are included. These are elements that implementers could be expected to provide meaningful support for (see [Profile Conformance](conformance-profiles.html) for details).
* Profiles defined externally to mCODE, such as vital signs defined in base FHIR or US Core, are not included.
* Sub-elements of complex types such as CodeableConcept and Period are not explicitly included.

The actual number of data elements in a resource can vary widely. For example, there are 16 MS data elements in the [CancerPatient] profile, but the full resource defines more than 60 elements. Of these, only four are [required](conformance-profiles.html#definition-of-required) (namely `identifier.system`, `identifier.value`, `name.family` or `name.given`, and `gender`). Moreover, different systems can implement different subsets of profiles, depending on their role in information workflows (see [Profile Conformance](conformance-profiles.html) for details). Therefore, not every mCODE-compliant system will support the same set of data elements. However, whatever portion of this specification is implemented will be compatible with other systems, inasmuch as the implementations overlap.

### Development History

In late 2018, [American Society of Clinical Oncology (ASCO®)](https://www.asco.org/), with the assistance of MITRE Corporation, convened a committee of twenty leading clinical experts in oncology, radiology, surgery, and public health. This group developed two use cases that drove the initial clinical data requirements for mCODE:

* **Use Case 1**: [Comparative Effectiveness Analysis and Cooperative Decision Making](mCODE-UseCase-RCC.docx)
* **Use Case 2**: [Comparative Effectiveness Analysis with Next Generation Sequencing (NGS)](mCODE-UseCase-NGS.docx)

After the initial analysis, an open survey was conducted to validate and prioritize the data elements from these use cases. Down-scoping was conducted based on the likelihood the data elements would be found in current EHRs, and if collecting the data would place undue burden on clinicians. In 2019, mCODE was balloted and approved as an HL7 Standard for Trial Use (STU 1). In the ensuing period, mCODE was piloted at a number of clinical sites, facilitated by the [CodeX FHIR Accelerator](https://confluence.hl7.org/display/COD/CodeX+Home). Use cases are tracked [here](https://confluence.hl7.org/display/COD/CodeX+Use+Cases). Incorporating that experience, the second trial use publication (STU 2) was balloted in May 2021, and published in January 2022. A non-balloted update containing terminology updates, version 2.1, was published in March 2023. STU 3 was balloted in April-May 2023.

### Sources

In addition to information obtained from subject matter experts, several existing standards, nomenclatures, and guidelines were consulted during the development of this specification. These include:

* [American Association of Physicists in Medicine (AAPM): Task Group 263 Final Report](https://www.aapm.org/pubs/reports/RPT_263.pdf)
* [American College of Surgeons (ACS): Standards for Registry Entry (STORE)](https://www.facs.org/-/media/files/quality-programs/cancer/ncdb/store_manual_2021.ashx)
* [American Society for Radiation Oncology (ASTRO): Minimum Data Elements for Radiation Oncology](https://www.practicalradonc.org/article/S1879-8500(19)30232-2/fulltext)
* [American Society for Radiation Oncology (ASTRO) Commission on Cancer Workgroup: A Multidisciplinary Consensus Recommendation on a Synoptic Radiation Treatment Summary](https://www.practicalradonc.org/article/S1879-8500(20)30002-3/fulltext)
* [American Joint Committee on Cancer (AJCC): Staging Manual (8th Edition)](https://www.facs.org/quality-programs/cancer-programs/american-joint-committee-on-cancer/)
* [Clinical Data Interchange Standards Consortium (CDISC): Therapeutic Area User Guides (TAUG)](https://www.cdisc.org/standards/therapeutic-areas/disease-area)
* [College of American Pathologists (CAP): Cancer Protocols](https://www.cap.org/protocols-and-guidelines)
* [The DICOM Standard](https://www.dicomstandard.org/)
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

### Understanding this Guide

mCODE is a "Domain of Knowledge" implementation guide (IG). The purpose is to show how to represent clinical concepts generally, not to have a complete set of agreements for interoperable exchanges.

The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). In viewing a profile page, note that there are multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but could be a US Core profile or another profile in this guide. The "Snapshot Table" represents the entire profile, with all elements.

In the event there are differences between the page renderings in this IG and the associated FHIR artifacts, the FHIR artifacts should be taken as the source of truth. In the event that an artifact's snapshot is inconsistent with its differential, the differential should be taken as the source of truth.

### Credits

The authors gratefully acknowledge the leadership of Dr. Monica Bertagnolli, former ASCO President (currently NCI Director) and Dr. Jay Schnitzer, MITRE Chief Technology and Chief Medical Officer. The ASCO/CancerLinQ team was led by Dr. Robert Miller. Dr. Travis Osterman of Vanderbilt University leads the CodeX Executive Committee. Dr. Sanjay Aneja leads the mCODE Technical Review Group. Dr. Charles Mayo of University of Michigan, Randi Kudner of ASTRO, and Martin von Siebenthal of Varian made significant contributions to the much improved radiotherapy portion of this IG. Wendy J. Blumenthal and Wendy Sharber of CDC provided essential input helping align mCODE with cancer registry reporting requirements.

The authors recognize HL7 sponsorship and input from [Clinical Interoperability Council](http://www.hl7.org/Special/committees/cic/index.cfm), with special thanks to Laura Heermann Langford, Russell Leftwich, and James McClay. The [HL7 Clinical Genomics Work Group](https://confluence.hl7.org/display/CGW) has been a consistent and constructive partner during this project. Lloyd McKenzie and Grahame Grieve contributed to mCODE in countless ways with their outstanding energy and dedication.

Andre Quina and Nichole Ng guide the overall mCODE effort at MITRE. Key MITRE contributors include Mark Kramer, May Terry, Max Masnick, Saul Kravitz, Su Chen, Rute Martins, Chris Moesel, Caroline Potteiger, Anthony DiDonato, and Sharon Sebastian. Su Chen leads the [CodeX FHIR Accelerator](https://confluence.hl7.org/display/COD/CodeX+Home), a member-driven community accelerating implementation around mCODE standard. Capability statements were rendered with tools developed by Eric Haas and modified by Corey Spears. Max Masnick wrote the [Data Dictionary generator](https://github.com/HL7/fhir-mCODE-ig/tree/master/data-dictionary) (now known as the IG Summary Tool)

### Contact Information

If you have questions or comments about this guide, you can join the conversation on [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179234-Cancer-Interoperability/topic/mCODE), create an issue in the [HL7 Jira](https://jira.hl7.org/issues/?filter=13361), or reach out to any of the following individuals:

| Topic | Who | Role | Email |
|----|---|---|------|
| Implementation and Use Cases | Dr. Su Chen | CodeX Accelerator Program Manager | suchen@mitre.org |
| CodeX Leadership | Dr. Travis Osterman | Chair, CodeX Executive Committee | travis.osterman@vumc.org |
| Oncology Domain Content | Dr. Sanjay Aneja | Chair, mCODE Technical Review Group | sanjay.aneja@yale.edu |
| Modeling and FHIR IG | Mark Kramer | Modeling Lead | mkramer@mitre.org |
{: .grid }

mCODE is an open source project and welcomes all contributors. The source code for this IG is maintained in the [HL7 Github](https://github.com/HL7/fhir-mCODE-ig). All of the profiling work is done using [FHIR Shorthand](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org).

MITRE: Approved for Public Release. Distribution Unlimited. Case Number 16-1988

{% include markdown-link-references.md %}
