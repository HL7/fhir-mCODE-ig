
### Conformance

Observation resources associated with an [in-scope patient] with `Observation.code` LOINC `97509-4` SHALL conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

In some cases, multiple values for Cancer Disease Status may be true at the same time. For example, a patient's condition may have improved AND the patient is in partial remission. However, this profile is derived from the Observation resource, which restricts value[x] to one value. If a patient has experienced multiple values for Cancer Disease Status, multiple instances should be created.

{% include markdown-link-references.md %}