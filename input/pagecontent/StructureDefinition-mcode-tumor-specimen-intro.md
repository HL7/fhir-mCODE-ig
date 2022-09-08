### Usage

Used to represent a tumor or portion of a tumor that has been removed from the body.

To associate this with a specific BodyStructure conforming to the Tumor profile, add an identifier with a value that matches a persistent identifier from `BodyStructure.identifier.value` that is unique in the context of the Patient.


### Conformance

Observation resources associated with an [in-scope patient] with an `Specimen.type` of `TUMOR` (from [`http://terminology.hl7.org/CodeSystem/v2-0487`](https://terminology.hl7.org/2.1.0/CodeSystem-v2-0487.html)) MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}
