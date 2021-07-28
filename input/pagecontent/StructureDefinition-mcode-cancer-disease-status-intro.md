### Usage

The LOINC code chosen to represent this observation (LOINC `88040-1`, Response to cancer treatment) does not precisely match the meaning of this profile, but it is the closest available LOINC code at the present time. The code is more granular than the definition of this profile because cancer disease status is observable regardless of whether the patient is under treatment. However, in the context of a patient undergoing treatment (the primary use case of mCODE), disease status and response to treatment are synonymous. A new LOINC code that represents cancer disease status, as defined here, has been requested.

### Conformance

Observation resources associated with an [mCODE patient] with `Observation.code` LOINC `88040-1` MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}