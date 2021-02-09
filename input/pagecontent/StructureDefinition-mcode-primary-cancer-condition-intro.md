### Usage

Cancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the TNMStageGroup, which refer back to PrimaryCancerCondition.

### Conformance

Condition resources associated with an mCODE patient with a Condition.code in the value set PrimaryOrUncertainBehaviorCancerDisorderVS MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form, for example, when employing a code that extends the PrimaryOrUncertainBehaviorCancerDisorderVS value set. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.
