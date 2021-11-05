### Usage

The identity of non-genomic laboratory tests is typically represented by a LOINC code. However, many genomic tests and panels do not have LOINC codes. Some tests might have an identifier in NCBI Genomic Testing Registry (GTR), a central location for voluntary submission of genomic test information by providers. To identify the diagnostic report, the name of the report must be in the text sub-field of the code structure. If there is a coded identifier from GTR, LOINC, or other source, then it should be included into the the code sub-field of the code structure. If there is no suitable code, the code can be omitted.

### Conformance

DiagnosticReport resources associated with an [in-scope patient] with `DiagnosticReport.code` LOINC `81247-9` MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}