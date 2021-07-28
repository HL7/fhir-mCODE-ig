### Conformance

Condition resources associated with an [in-scope patient] with a Condition.code in the value set [SecondaryCancerDisorderVS] MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form, for example, when employing a code that extends the [SecondaryCancerDisorderVS] value set. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}