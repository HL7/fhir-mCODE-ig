### Usage

This profile captures the cancer diagnosis. More information on coding the diagnosis can be found on the page Content by Group -> Disease.

In mCODE, staging information MUST be captured in an Observation that conforms to the TNMStageGroup profile. The resulting stage group MAY appear in this profile, in `stage.summary` and `stage.type`, but mCODE Data Senders and Receivers MAY ignore it in favor of the TNMStageGroup Observation. If present, cancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the TNMStageGroup, which refer back to PrimaryCancerCondition.

For SNOMED CT coding, use a code from the disorder hierarchy under SNOMED CT 363346000 'Malignant neoplastic disease (disorder)' excluding codes descending from SNOMED CT 128462008 'Secondary malignant neoplastic disease (disorder)'. If body location is not precoordinated (i.e., implied by the code), the site of the primary tumor should be specified in the body site attribute.

For ICD-10-CM coding, use one of the codes given in this value set representing primary malignant neoplasms and neoplasms of uncertain or unspecified behavior.

Note that ICD-O-3 specifies morphology and topography, not disorder. If ICD-O-3 is used, the primary cancer disorder code must be specifically be SNOMED CT 363346000  'Malignant neoplastic disease (disorder)'. The ICD-O-3 morphology and topography codes should be entered in the HistologyMorphologyBehavior and body location fields, respectively.


### Conformance

Condition resources associated with an [in-scope patient] with a `Condition.code` in the value set [PrimaryCancerDisorderVS] MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}
