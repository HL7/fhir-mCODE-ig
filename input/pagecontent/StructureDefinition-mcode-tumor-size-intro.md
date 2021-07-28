### Usage

Tumor size is modeled as an Observation with components for one required primary dimension (for example, length) and up to two additional optional dimensions (for example, width and depth). Note that the `Observation.value[x]` is not used for the primary dimension, because secondary dimensions cannot be considered _components_ of the length measurement. Instead, primary and secondary (e.g., length, width and depth) are all components of one tumor size measurement.

For staging and prognostic purposes, it is assumed that reported tumor measurements will include the longest dimension of the tumor. Therefore, this profile requires the longest dimension to be reported in `Observation.component.value` with `Observation.component.code` set to LOINC `33728-7` ("Size.maximum dimension in Tumor). To avoid confusion, it is not possible to represent tumor size with this profile without including a measurement of the tumor's longest dimension.

### Conformance

Observation resources associated with an [in-scope patient] with an `Observation.code` of LOINC `21889-1` ("Size Tumor") MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form.

{% include markdown-link-references.md %}
