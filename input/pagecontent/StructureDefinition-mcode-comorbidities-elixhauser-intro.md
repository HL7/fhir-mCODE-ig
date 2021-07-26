### Background

"Comorbidity" speaks to the presence of more than one distinct condition in an individual. Typically, the term refers to *additional* disorders relative to a current "index" disease ([Valderas, et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2713155/)).

Co-occurring disorders are typically treated as high-level categories, for example, "dementia" or "renal disease". Comorbidity categories are not universal, but rather, selected because of their clinical significance to the diagnosis, prognosis, or treatment of the index disease. The comorbidities significant in COVID-19 treatment are different than those for congestive heart failure.

Notwithstanding, there are several general models used to note the presence of multiple disease categories in one individual, typically used to calculate a morbidity burden or risk score.The Charlson Index is one of the most widely used indices, but there are dozens of others ([DeGroot et al.](https://pubmed.ncbi.nlm.nih.gov/12725876/)).

### Elixhauser Comorbidities

The current profile captures comorbidities in the form of a checklist, based on one of these general models, the Elixhauser Comorbidity Index.

The Elixhauser Index categorizes comorbidities using International Classification of Diseases (ICD) diagnosis codes. Each comorbidity category is dichotomous -- it is either present or it is not. The Index can be used to predict hospital resource use and in-hospital mortality (see <https://pubmed.ncbi.nlm.nih.gov/9431328>).

Over time, there have been changes to the Index. The list of specific ICD diagnosis codes was updated from ICD-9-CM to ICD-10, and categories have been been revised. As a result, there are different versions of the categories and associated ICD-10 codes. The particular version used here was defined by the Agency for Healthcare Research and Quality (AHRQ) Healthcare Cost and Utilization Project (H-CUP) (see <https://www.hcup-us.ahrq.gov/toolssoftware/comorbidityicd10/comorbidity_icd10.jsp>).

### FHIR Implementation Overview

In this profile, each comorbidity category is represented by a component (`Observation.component`). Each component is identified by a code, and has the same set of coded values: present, absent, or unknown.

If a comorbidity is present, the user can optionally supply a specific code detailing the disease, or provide link to an existing Condition resource.

For any component, "present" or "absent" refers back to a comorbidity category defined by `Observation.component`.code. Since there are no existing codes for individual Elixhauser categories, mCODE provides them. For example, a component relating to congestive heart failure (CHF) will have `component.code.coding.system` of `http://hl7.org/fhir/us/mcode/CodeSystem/mcode-elixhauser-category-cs` and `component.code.coding.code` "CHF". The implication is that the patient has a disease found in the *specific version* of Elixhauser CHF codes corresponding to the definition of the "CHF" code; in this case, one of the codes in [Elixhauser Comorbid Condition Value Set for Congestive Heart Failure](ValueSet-elixhauser-congestive-heart-failure-vs.html).

If an overall score is calculated, it should be recorded in Observation.value[valueInteger].   This is not required.

### Usage

This profile assumes the current focus or "index" condition is the patient's cancer. Typically, a cancer condition would not be considered a comorbidity in a cancer patient, but it is possible that there could be pre-existing or concurrent cancer condition could be included in the list of comorbidities. There are many comorbidity categories, and usually only the comorbidities that are present are worth recording. However, if there is a need to know a comorbidity is **not** present, it can be documented using the current structure. Reporting of the actual condition, by reference or by code, is not required.

### Conformance

Observation resources associated with an [in-scope patient] with `Observation.code` of LNC#78923-0 MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}