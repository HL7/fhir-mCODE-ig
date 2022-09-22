### Usage

This profile identifies a specific region analyzed for gene mutations or variants in a given genomic test. For example, exome sequencing tests could analyze multiple non-contiguous regions. Each region is designated by a range of start and end location and referencing a coordinate system which is 0-based or 1-based.

RegionStudied is noted at the [GenomicsReport] level and not directly tied to a given [GenomicVariant].

### Conformance

Observation resources associated with an [in-scope patient] with `DiagnosticReport.code` LOINC `53041-0` MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}