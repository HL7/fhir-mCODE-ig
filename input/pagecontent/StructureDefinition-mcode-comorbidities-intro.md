### Background

"Comorbidity" speaks to the presence of more than one distinct condition in an individual. Typically, the term refers to *additional* disorders relative to a current "index" disease ([Valderas, et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2713155/)).

Co-occurring disorders are typically treated as high-level categories, for example, "dementia" or "renal disease". Comorbidity categories are not universal, but rather, selected because of their clinical significance to the diagnosis, prognosis, or treatment of the index disease. The comorbidities significant in COVID-19 treatment are different than those for congestive heart failure.

There are several general models used to note the presence of multiple disease categories in one individual, typically used to calculate a morbidity burden or risk score.The Charlson Index is one of the most widely used indices, but there are dozens of others ([DeGroot et al.](https://pubmed.ncbi.nlm.nih.gov/12725876/)). However, there is no uniform way to record comorbidities, and therefore mCODE does not impose any particular framework.

### FHIR Implementation Overview

This profile contains two extensions, representing comorbidities that are present, and those asserted to be absent (sometimes a positive assertion of absence can be important). If a comorbidity is present, the user can either provide link to an existing Condition resource, or provide a code. The same is true for absent comorbidities, but it would be unusual to have a resource representing a condition that is not present.

There is no value associated with an mCODE Comorbidities resource. For formal methods that result in a risk score, a dedicated questionnaire should be developed. This is not the approach taken here; the assumption is that the comorbidities themselves are of primary interest in clinical treatment.

### Usage

This profile assumes the current focus or "index" condition is the patient's cancer. Typically, a cancer condition would not be considered a comorbidity in a cancer patient, but it is possible that there could be pre-existing or concurrent cancer condition could be included in the list of comorbidities. There are many comorbidity categories, and usually only the comorbidities that are present are worth recording. However, if there is a need to know a comorbidity is **not** present, it can be documented using the current structure. Reporting of the actual condition, by reference or by code, is not required.

### Conformance

Observation resources associated with an [in-scope patient] with `Observation.code` of SCT# MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}