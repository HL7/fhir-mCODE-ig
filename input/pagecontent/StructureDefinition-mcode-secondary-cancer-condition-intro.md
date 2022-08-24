### Usage
* SNOMED CT coding: Use a code from the disorder hierarchy under secondary malignant neoplastic disease (SNOMED CT 128462008).
* ICD-10-CM coding: Use one of the codes given in this value set representing secondary malignant neoplasms and neoplasms of uncertain or unspecified behavior. If body site is not precoordinated (implied by the code), it should be specified separately using the body location.

Note that ICD-O-3 specifies morphology and topography, not disorder; in this case that the disorder code must be SNOMED CT 128462008 (Secondary malignant neoplastic disease). The ICD-O-3 morphology and topography codes should be entered in the HistologyMorphologyBehavior and bodySite fields, respectively.

### Conformance

Condition resources associated with an [in-scope patient] with a Condition.code in the value set [SecondaryCancerDisorderVS] MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form, for example, when employing a code that extends the [SecondaryCancerDisorderVS] value set. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.


{% include markdown-link-references.md %}