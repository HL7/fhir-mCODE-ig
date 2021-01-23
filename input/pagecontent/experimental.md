The profiles and value sets on this page are experimental.

### Tumor Size

This is a set of experimental profiles for representing the dimensions of a tumor.

| Type     | Name               | Description                   | Example             |
| -------- | ------------------ | ----------------------------- | ------------------- |
| Profile  | [TumorSize]        | Defines dimensions of a tumor | [TumorSize example] |
| Profile  | [Tumor]            | Identifies a specific tumor   | [Tumor example]     |
| ValueSet | [TumorSizeUnitsVS] | Limits units to `mm` or `cm`  | n/a                 |

[TumorSize]: StructureDefinition-mcode-tumor-size.html
[TumorSize example]: Observation-example1-mcode-tumor-size.html
[Tumor]: StructureDefinition-mcode-tumor.html
[Tumor example]: BodyStructure-example1-mcode-tumor.html
[TumorSizeUnitsVS]: ValueSet-mcode-tumor-size-units-vs.html

#### Usage notes

- If the tumor has been removed from the body, use `specimen` to reference a [Specimen](http://hl7.org/fhir/R4/specimen.html) resource. If the tumor is still in the body, use `focus` to reference a resource confirming to the [Tumor] profile.
- The tumor dimensions are stored in three different components in [TumorSize]. `tumorLongestDimension` is required, and `tumorDimension2` and `tumorDimension3` are optional.
