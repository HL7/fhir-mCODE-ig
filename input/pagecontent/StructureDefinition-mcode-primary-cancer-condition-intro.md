### Usage

This profile captures the cancer diagnosis. More information on coding the diagnosis can be found on the page Content by Group -> Disease.

In mCODE, staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. The resulting stage group MAY appear in this profile, in `stage.summary` and `stage.type`, but mCODE Data Senders and Receivers MAY ignore it in favor of the CancerStageGroup Observation. If present, cancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the CancerStageGroup, which refer back to PrimaryCancerCondition.

### Conformance

Condition resources associated with an [in-scope patient] with a `Condition.code` in the value set [PrimaryOrUncertainBehaviorCancerDisorderVS] MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}