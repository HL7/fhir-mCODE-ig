Recording patient outcomes in mCODE involves disease status, tumor size, and date of death. Other common outcome measures, such as progression-free survival, time to recurrence, and overall survival, can be derived from time-indexed observations of disease status. The date of diagnosis is also required for some derived measures (see [Disease Characterization](group-disease.html)). At this time, mCODE does not include patient reported outcomes.

### Disease Status

Formal recording of disease status is often limited to clinical trials, involving precise criteria such as [RECIST](https://ctep.cancer.gov/protocolDevelopment/docs/recist_guideline.pdf). The lack of outcome data outside of trials greatly limits the application of real-world data. Disease status information is rarely found in structured form in EHRs. If recorded at all, the information is found in clinical notes, which is of limited usefulness.

mCODE asks for disease progression to be recorded in structured form as part of patient encounters. In mCODE, disease status is defined as "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc." In other words, the disease status is an assessment by the oncologist that synthesizes all currently available information about the patient. The [ICAREdata™ Project](http://icaredata.org/) is conducting a study in association with a randomized controlled trial (RCT), which aims to demonstrate the ability to calculate equivalent clinical trial endpoints using computable clinical treatment data.

In addition, the history of tumor size is indicative of treatment efficacy. Profiles for reporting tumor size are new in STU 2.

### Date of Death

Date of death data can be obtained from several sources outside of the clinical setting. If available in the EHR, it can be reported through via mCODE, but more likely, it will be filled in from vital records, after the last clinical interaction.

### Tumor

To track and compare tumor characteristics over time, it is necessary to have a method for persistent identification of specific tumors. Two profiles are provided for this purpose:

1. [Tumor] MUST be used when identifying tumors prior to removal from the body
1. [HumanSpecimen] MUST be used when identifying tumors after removal

A single [Tumor]-conforming resource SHOULD be created for a tumor when it is first identified, and this resource SHOULD be referenced in Observations of this tumor or other resources that refer to a specific tumor until the tumor is removed from the body. After removal, a single [HumanSpecimen]-conforming resource SHOULD be created and used in the same manner. 

If both [Tumor] and [HumanSpecimen] are used to represent the same tumor, `identifier` MUST be used to associate them: a persistent identifier from [Tumor] that is unique within the context of the Patient MUST appear in [HumanSpecimen].

#### Tumor Size

The [TumorSize] profile provides a mechanism for recording the dimensions of a tumor. It MUST reference a [Tumor] if the measurement is made while the tumor is still in the body, or [HumanSpecimen] if the tumor has been removed. Multiple [TumorSize] instances MAY be used to record changes in tumor size over time.

<!--
#### Multifocal and Multicentric Tumors

In the context of breast cancer, multifocal tumors refer to "multiple foci of the same tumor" while multicentric tumors are "different primary tumors in the same breast" ([Andea 2002](https://pubmed.ncbi.nlm.nih.gov/11920492/)).

For multifocal tumors, each foci may be separately tracked and measured by clinicians. Therefore, each foci SHOULD be represented by a separate [Tumor] or [HumanSpecimen] instance, and grouped together using the `focus` element in a [MultifocalTumor] Observation. [MultifocalTumor] SHOULD be referenced in `hasMember` of [TNMClinicalStageGroup] or [TNMPathologicalStageGroup] if relevant.

Multicentric tumors should also each be represented by a separate [Tumor] or [HumanSpecimen], which can each be associated with separate [PrimaryCancerCondition]-conforming resources using `extension[mcode-related-condition]` in [Tumor] or [HumanSpecimen].
-->

### Profiles

* [BodyStructureIdentifier]
* [CancerPatient] (for death date)
* [CancerDiseaseStatus]
* [Tumor]
* [TumorSize]

### Extension

* [CancerDiseaseStatusEvidenceType]

### Value Sets

* [BodyLocationAndLateralityQualifierVS]
* [CancerDiseaseStatusEvidenceTypeVS]
* [ConditionStatusTrendVS]
* [TumorSizeMethodVS]
* [TumorSizeUnitsVS]

{% include markdown-link-references.md %}
