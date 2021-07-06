### Background

Codes correspond to body structures defined in [AAPM Task Group 263 Final Report](https://www.aapm.org/pubs/reports/RPT_263.pdf), but are drawn from SNOMED CT (SCT). The body structure terms do not, however, include laterality or any other qualifier (see [Usage](#usage)).

### Usage

To prevent a combinatorial explosion of codes, and to describe each treatment location uniquely, the body structure codes may be used in conjunction with qualifiers taken from the [Radiotherapy Treatment Location Qualifier Value Set][RadiotherapyTreatmentLocationQualifierVS], when necessary. For example, to specify the lower lobe of right lung, the code for lobe of lung structure (SCT#31094006) would be qualified with the codes right (SCT#24028007) and lower (SCT#261122009).

{% include markdown-link-references.md %}
