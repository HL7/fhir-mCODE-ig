### Background

Codes correspond to body structures defined in [AAPM Task Group 263 Final Report](https://www.aapm.org/pubs/reports/RPT_263.pdf), but are drawn from SNOMED CT (SCT). The body structure terms do not, however, include laterality or any other qualifier (see [Usage](#usage)).

### Usage

To prevent a combinatorial explosion of codes, and to describe each treatment location uniquely, the body structure codes may be used in conjunction with qualifiers taken from the [Radiotherapy Treatment Location Qualifier Value Set][RadiotherapyTreatmentLocationQualifierVS] and [LateralityQualifierVS], when necessary. For example, to specify the lower lobe of right lung, the code for lobe of lung structure (SCT#31094006) would be qualified with the codes lower (SCT#261122009) and right (SCT#24028007).

The content of this value set and the associated [Radiotherapy Treatment Location Qualifier Value Set][RadiotherapyTreatmentLocationQualifierVS] supports expression of all of the anatomical concepts in the American Association of Physicists in Medicine (AAPM) [Task Group 263 report on Standardizing Nomenclatures in Radiation Oncology](https://www.aapm.org/pubs/reports/RPT_263.pdf).   The mapping from AAPM TG263 concepts to SNOMED CT codes and qualifiers can be found in this [spreadsheet](TG263_Nomenclature_to_SNOMEDCT_Codes_and_Qualifiers.xlsx), as well as in this [concept map][TG263CM].

{% include markdown-link-references.md %}
