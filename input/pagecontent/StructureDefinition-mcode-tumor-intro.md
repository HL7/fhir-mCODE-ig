### Usage

Used to represent a tumor that has not been removed from the body, and track that specific tumor across encounters and procedures.

### Conformance

BodyStructure resources associated with an [in-scope patient] with `morphology` of SCT `367651003` MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] used to represent a tumor that has not been removed from the body SHALL be published in this form.

A single instance of BodyStructure conforming to this profile SHOULD be used to track a specific tumor over time.

{% include markdown-link-references.md %}
