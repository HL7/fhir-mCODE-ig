### Usage

Tumor size is modeled as an Observation with components for one required primary dimension (for example, length) and up to two additional optional dimensions (for example, width and depth). Note that the Observation.value[x] is not used for the primary dimension, because secondary dimensions cannot be considered _components_ of the length measurement. Instead, primary and secondary (e.g., length, width and depth) are all components of one tumor size measurement.

### Conformance

Observation resources associated with an mCODE patient with an Observation.code of LOINC 21889-1 "Size Tumor" MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form.
