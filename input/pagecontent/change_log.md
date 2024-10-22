
For a history of changes prior to STU4, please see the prior change logs in the [appropriate versions](https://hl7.org/fhir/us/mcode/history.html).

### Support for Staging Systems
See the section on cancer staging.

### Addition of Risk Assessment Profiles

Risk assessments have been identified as an essential piece of information to represent a cancer patient. To address this, an abstract, generic profile was created for risk assessment, and specific risk assessment profiles were added for illustrative purposes:

* [CancerRiskAssessment]
* [RhabdomyosarcomaRiskAssessment]
* [ALLRiskAssessment]

### Addition of Histology Profiles

Three new profiles were added for histologic reporting. [HistologicBehaviorAndType] reports the morphology and type of the tumor using ICD-O-3 codes and the proper suffix, while [HistologicGrade] reports the grade of the tumor. Both profiles are referenced in a summary with the [TumorMorphology] profile.

* [HistologicBehaviorAndType]
* [HistologicGrade]
* [TumorMorphology]

### Modification of Medication Profiles

The normalization basis for medication dosage is important, especially for pediatric oncology. As a result, the [CancerRelatedMedicationAdministration] and [CancerRelatedMedicationRequest] profiles were modified to include an extension for the normalization basis used.

### Addition of Lansky Play Performance Profile

The Lansky Play Performance assessment was identified as a key performance assessment used when treating pediatric cancer patients. As a result, the [LanskyPlayPerformanceStatus] profile was added.

### Addition of Deauville Scale Profile

Deauville Scale is a common assessment performed for lymphoma cancer patients, and as a result, a [DeauvilleScale] profile was added to mCODE.


### Addition of Body Surface Area Profile

Body surface area is measured/calculated commonly for pediatric patients and used to determine medication dosage. As a result, a [BodySurfaceArea] profile was added to mCODE.

### Clarified Codes for Cancer Disease Status

Adjusted the [ConditionStatusTrendVS] to avoid confusion. In mCODE STU3, some of the values can be true at the same time (example: a patient’s condition could have improved AND be in full remission). However, value[x] is 0.1. As a result, the codes for in full remission, partial remission, and distant metastasis present were moved into a maximum value set to ensure backward compatibility with this change.

{% include markdown-link-references.md %}
