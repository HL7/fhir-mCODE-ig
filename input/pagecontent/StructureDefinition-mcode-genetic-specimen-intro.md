### Usage

The specimen SHOULD be referenced by [CancerGenomicsReport]. Multiple specimens are possible in the case of a tumor normal test where the variants found in a tumor specimen are compared with the variants in a normal specimen.

### Conformance

Specimen resources associated with an [in-scope patient] with a `Specimen.code` in the value set [GeneticSpecimenTypeVS] MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}