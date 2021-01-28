### Usage

This profile assumes the current focus or "index" condition is the patient's cancer, and from that perspective, comorbidities are conditions *in addition* to cancer. Therefore, the components related to cancer should not be included in the set of reported comorbidity categories. To report the full set of Elixhauser categories, for example to enable calculation of the Elixhauser comorbidity index, use the [ComorbiditiesElixhauser](StructureDefinition-comorbidities-elixhauser.html) profile. Since the index cannot be calculated with an incomplete set of comorbid conditions, the place for the index (Observation.value[x]) has also been suppressed in this profile.

### Conformance

TBD
