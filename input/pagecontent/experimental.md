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

### Adverse Event

This is a set of experimental profiles for representing adverse events (AE). The definitions are FHIR interpretation of Common Terminology Criteria (CTC). The profiles and value sets and are intended to give sufficient information for FDA reporting.

| Type       | Name                            | Description                    | Example             |
| ---------- | ------------------------------- | -----------------------------  | ------------------- |
| Profile    | [CTCAdverseEvent]               | Records an AE                  | [Example 1], [Example 2] |
| Extension  | [CTCAEGrade]                    | Records the CTC Grade          |                    |
| CodeSystem | [CTCAEGradeCS]                  | Defines numerical CTC Grades   | n/a                 |
| ValueSet   | [CTCAEGradeVS]                  | Numerical values for CTC Grade | n/a                 |
| ValueSet   | [AdverseEventSeriousnessVS]     | Values for seriousness         | n/a                 |
| ValueSet   | [CTCAEPreferredTermVS]          | CTCAE preferred terms for AE   | n/a                 |
| ValueSet   | [AdverseEventRelatednessVS]     | Likelihood that AE is related to intervention | n/a |

[CTCAdverseEvent]: StructureDefinition-ctc-adverse-event.html
[CTCAEGrade]: StructureDefinition-ctcae-grade.html
[CTCAEGradeCS]: CodeSystem-ctcae-grade-code-system.html
[CTCAEGradeVS]: ValueSet-ctcae-grade-value-set.html
[AdverseEventSeriousnessVS]: ValueSet-adverse-event-seriousness-value-set.html
[CTCAEPreferredTermVS]: ValueSet-ctcae-preferred-term-value-set.html
[AdverseEventRelatednessVS]: ValueSet-adverse-event-relatedness-value-set.html
[Example 1]: AdverseEvent-ctc-adverse-event-example-1.html
[Example 2]: AdverseEvent-ctc-adverse-event-example-2.html
