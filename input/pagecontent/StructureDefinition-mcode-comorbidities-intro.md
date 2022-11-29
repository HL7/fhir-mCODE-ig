### Background

"Comorbidity" speaks to the presence of more than one distinct condition in an individual. Typically, the term refers to *additional* disorders relative to a current "index" disease ([Valderas, et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2713155/)).

Co-occurring disorders are typically treated as high-level categories, for example, "liver disease, mild", "dementia", or "renal disease". Comorbidity categories are not universal, but rather, selected because of their clinical significance to the diagnosis, prognosis, or treatment of the index disease. The comorbidities significant in COVID-19 treatment are different than those for congestive heart failure.

There are several general models used to note the presence of multiple disease categories in one individual, typically used to calculate a morbidity burden or risk score. The [Charlson Comorbidity Index](https://www.mdcalc.com/calc/3917/charlson-comorbidity-index-cci) is one of the most widely used. The [NCI Comorbidity Index](https://healthcaredelivery.cancer.gov/seermedicare/considerations/comorbidity.html) is similar, however, the NCI comorbidities exclude solid tumors, leukemias, and lymphomas, given that the index was developed from a cohort of cancer patients. However, there is no uniform way to record comorbidities, and therefore mCODE does not impose any particular framework.

### FHIR Implementation Overview

The user can use this profile in three ways: (1) free-form, listing any conditions they wish to highlight as significant comorbidities, (2) by following a formal paradigm, such as Charlson or [Elixhauser](https://www.hcup-us.ahrq.gov/toolssoftware/comorbidityicd10/comorbidity_icd10.jsp), or (3) use codes defined for registry reporting purposes, such as [codes defined by Center for International Blood and Marrow Transplant Research (CIBMTR)](https://www.cibmtr.org/manuals/fim/1/en/topic/appendix-j). This profile contains two extensions, representing comorbidities that are present and those asserted to be absent.

#### Index Condition

Record the "index" condition (the condition the comorbidities are relevant to) in `Observation.focus`. Reference the patient's primary cancer condition.

#### Comorbidities Present

Comorbidities that are present are reported in the array `Observation.extension:comorbidConditionPresent` as a `valueReference` or `valueCodeableConcept`. The use of `valueReference` is optional and applicable only if there is an existing Condition resource representing the comorbid condition. In other cases, a diagnosis code or a comorbid condition category code appears in `valueCodeableConcept`.

Typically, a cancer condition would not be considered a comorbidity in a cancer patient, but it is possible that there could be a pre-existing or concurrent cancer condition included in the list of comorbidities.

#### Comorbidities Absent

Usually, only comorbidities that are present are recorded. However, assertions of absent comorbidities are useful when calculating comorbid risk indices. To assert a comorbidity is **not** present, the array `Observation.extension:comorbidConditionAbsent` is populated with either a diagnosis code or comorbid condition category code.

#### No Comorbidities

To represent no comorbidities, there should be only one entry in `Observation.extension:comorbidConditionAbsent` with the `valueCodeableConcept` of SNOMED CT ID 64572001 (Disease).


#### Comorbidity Method

If a formal methodology is used to assess comorbidities (e.g., Charlson, NCI, Elixhauser, CIMBTR, ACE-27), it should be identified in `Observation.method`. The comorbidity score (`Observation.value`) cannot be interpreted without knowing the method. The method may also provide the comorbidity categories used in present and absent comorbidities.

At present, only Charlson has a specific SNOMED CT code, so in other cases, a plain text can be specified in `Observation.method.text`.

#### Comorbidity Index or Risk Score

A comorbid condition risk index, if it exists, is reported in `Observation.value[x]`. In several frameworks the index is an integer, so the value would appear as `Observation.valueInteger`.

### Conformance

Observation resources associated with an [in-scope patient] with `Observation.code` of SCT#398192003 "Co-morbid conditions (finding)" MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}