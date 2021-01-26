### Background

"Comorbidity" speaks to the presence of more than one distinct condition in an individual. Typically, the term refers to *additional* disorders relative to a current "index" disease ([Valderas, et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2713155/)).

Co-occurring disorders are typically treated as high-level categories, for example, "dementia" or "renal disease". Comorbidity categories are not universal, but rather, selected because of their clinical significance to the diagnosis, prognosis, or treatment of the index disease. The comorbidities significant in COVID-19 treatment are different than those for congestive heart failure.

Notwithstanding, there are several general models used to note the presence of multiple disease categories in one individual, typically used to calculate a morbidity burden or risk score.The Charlson Index is one of the most widely used indices, but there are dozens of others (DeGroot et al.[https://pubmed.ncbi.nlm.nih.gov/12725876/]).

### Elixhauser Comorbidities

The current profile captures comorbidities in the form of a checklist, based on one of these general models, the Elixhauser Comorbidity Index.

The Elixhauser Index categorizes comorbidities using International Classification of Diseases (ICD) diagnosis codes. Each comorbidity category is dichotomous -- it is either present or it is not. The Index can be used to predict hospital resource use and in-hospital mortality (Elixhauser et al., 1998).

Over time, there have been changes to the Index. The list of specific ICD diagnosis codes was updated from ICD-9-CM to ICD-10, and categories have been been revised. As a result, there are different versions of the categories and associated ICD-10 codes.

### FHIR Implementation Overview

In this profile, each comorbidity category is represented by a component (Observation.component). Each component is identified by a code, and has the same set of coded values: present, absent, or unknown.

If a comorbidity is present, the user can optionally supply a specific code detailing the disease, or provide link to an existing Condition resource.

For any component, "present" or "absent" refers back to a comorbidity category defined by Observation.component.code. Since there are no existing codes for individual Elixhauser categories, mCODE provides them. For example, a component relating to congestive heart failure (CHF) will have `component.code.coding.system` of http://hl7.org/fhir/us/mcode/CodeSystem/mcode-elixhauser-category and `component.code.coding.code` "CHF". The implication is that the patient has a disease found in the *specific version* of Elixhauser CHF codes corresponding to the definition of the "CHF" code; in this case, one of the codes in [Elixhauser Comorbid Condition Value Set for Congestive Heart Failure](http://hl7.org/fhir/us/mcode/ValueSet/elixhauser-congestive-heart-failure-vs).

If an overall score is calculated, it should be recorded in Observation.value[x]. This is not required.

### Conformance

TBD
