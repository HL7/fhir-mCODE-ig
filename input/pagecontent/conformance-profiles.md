### Profile Base

Most mCODE profiles are based on US Core profiles defined in the [US Core Implementation Guide (v4.0.1)](http://hl7.org/fhir/us/core/index.html). For example, [CancerPatient] is based on the [US Core Patient][USCorePatient] profile. Because of the way profiles work in FHIR, any resource that validates against an mCODE profile that is based a US Core profile will automatically be in compliance with the US Core profile.

Where US Core does not provide an appropriate base profile, mCODE profiles FHIR resources. An example is [CancerDiseaseStatus], based on Observation because US Core does not provide a profile for non-laboratory observations.

| Profile | Based on US Core?  | Immediate Parent Profile |
|---------|--------------------|--------------------------|
| [Body Structure Identifier][BodyStructureIdentifier] | no | Identifier |
| [Cancer Disease Status][CancerDiseaseStatus] | no | Observation |
| [Cancer Patient][CancerPatient] | yes | US Core Patient |
| [Cancer-Related Medication Administration][CancerRelatedMedicationAdministration] | no | Medication Administration |
| [Cancer-Related Medication Request][CancerRelatedMedicationRequest] | yes | US Core Medication Request |
| [Cancer-Related Surgical Procedure][CancerRelatedSurgicalProcedure] | yes | US Core Procedure |
| [Cancer Stage][CancerStage] | no | Observation |
| [Comorbidities] | no | Observation |
| [ECOG Performance Status][ECOGPerformanceStatus] | yes | US Core Observation Clinical Test Result |
| [Genomic Region Studied][GenomicRegionStudied] | no | Genomics Reporting IG RegionStudied |
| [Genomics Report][GenomicsReport] | no | Genomics Reporting IG GenomicsReport |
| [Genomic Variant][GenomicVariant] | no | Genomics Reporting IG Variant |
| [Karnofsky Performance Status][KarnofskyPerformanceStatus] | yes | US Core Observation Clinical Test Result |
| [mCODE Patient Bundle][MCODEPatientBundle] | no | Bundle  |
| [mCODE Patient Group][MCODEPatientGroup] | no | Group  |
| [Human Specimen][HumanSpecimen] | no | Specimen |
| [Primary Cancer Condition][PrimaryCancerCondition] | yes | US Core Condition Problems Health Concerns |
| [Radiotherapy Course Summary][RadiotherapyCourseSummary] | yes | US Core Procedure |
| [Radiotherapy Volume][RadiotherapyVolume] | no | BodyStructure |
| [Secondary Cancer Condition][SecondaryCancerCondition] | yes | US Core Condition Problems Health Concerns |
| [TNM Distant Metastases Category][TNMDistantMetastasesCategory] | no | Observation |
| [TNM Primary Tumor Category][TNMPrimaryTumorCategory] | no | Observation |
| [TNM Regional Nodes Category][TNMRegionalNodesCategory] | no | Observation |
| [TNM Stage Group TNM][TNMStageGroup] | no | CancerStage |
| [Tumor][Tumor] | no | BodyStructure |
| [Tumor Marker Test][TumorMarkerTest] | yes | US Core Laboratory Result Observation |
| [Tumor Size][TumorSize] | no | Observation |
{: .grid }

### Profile-Level Conformance Expectations

mCODE expresses requirements and expectations for implementers on the level of entire profiles and individual data elements within those profiles. The conformance rules concerning profiles are as follows:

1. All mCODE profiles that have a top-level Must-Support (MS) flag SHALL be implemented[^1].
2. All profiles defined in mCODE SHOULD be implemented UNLESS the participant does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialized role in clinical or information workflows.
3. The list of implemented profiles SHALL be published in a CapabilityStatement.
4. For each implemented profile, a Data Sender SHALL follow that profile's conformance statement describing what data SHALL or SHOULD conform to that profile[^2].
5. Support of data elements that [reference](https://www.hl7.org/fhir/references.html) other profiles MAY require implementers to support additional profiles.
6. A Sender has the responsibility for creating instances that conform to the target profile. All such instances must pass [validation](https://www.hl7.org/fhir/validation.html) against the selected profile.
7. A Receiver SHOULD perform validation on instances it receives. If an instance fails validation, the Receiver MAY reject the instance.

Regarding #7, there are several ways the Receiver can identify the correct profile to use for validation:

* The instance is received in response to a [profile search](https://www.hl7.org/fhir/search.html#profile), so the validating profile is known in advance.
* The instance self-identifies an mCODE profile using `meta.profile`. Every Data Sender SHOULD populate this element.
* The Data Receiver examines the contents of the instance to associate it with a profile. Often, there is an identifying code or category that can be used to associate an instance with a profile.
* The Data Receiver iteratively tries to validate against each of its supported profiles applicable to the instance's resource type. This is typically a means of last resort.

### Element-Level Conformance Expectations

#### Implementing a Data Element

Implementing an mCODE data element means:

1. A Data Sender SHALL be capable of populating the element, UNLESS the sender does not anticipate supplying or consuming the element, usually by virtue of playing a limited or specialized role in clinical or information workflows.
2. If the element's minimum cardinality is greater than zero, and the Sender lacks the data necessary to populate the element, then the [US Core rules on missing data](http://hl7.org/fhir/us/core/general-guidance.html#missing-data) SHALL be followed.
3. If the element's minimum cardinality is zero and the Sender lacks the data necessary to populate the element, the element SHOULD be entirely omitted. If there is a specific reason the data is missing, a data absent reason (described in the [US Core rules on missing data](http://hl7.org/fhir/us/core/general-guidance.html#missing-data)) MAY be substituted.
4. Senders SHALL NOT substitute nonsense or filler values for missing values.
5. Receivers SHALL be capable of meaningfully processing the element. Depending on context, "meaningful processing" might mean displaying the data element for human use, reacting to it, or storing it for other purposes.

#### Must-Implement (Versus "Must-Support")

An implementer SHALL implement certain data elements. These are not necessarily the ones labeled "Must-Support" in the specification. Must-Support elements (marked with the <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flag in IG profile pages) do not *necessarily* need to be implemented, and certain elements that lack MS flags *may have to be* implemented.

To see which elements have MS flags, consult the "Snapshot Table" or "Snapshot Table (Must-Support)" views of a profile. The "Snapshot Table" view shows _all_ elements, with flags (<span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span>) identifying the subset of these elements that are MS. The "Snapshot Table (Must-Support)" view shows _only_ MS elements and therefore does not display MS flags. Note that the "Differential Table" profile view hides MS flags inherited from the parent profile, and is therefore not appropriate for identifying MS elements in a profile.

Outside of data elements that must be implemented, additional data elements MAY be implemented. If a data element is implemented, the profile must be interpreted as if an MS flag were present on that element.

#### Must-Implement Rules

The following rules determine which data elements must be implemented:

1. Only data elements in implemented profiles (as declared in the Sender or Receiver's CapabilityStatement) can be Must-Implement (MI). In other words, if a profile is not implemented, then none of the elements of that profile must be implemented, regardless of MS flags[^3]. *This rule takes precedence over subsequent rules.*
2. A top-level element with an MS flag SHALL be implemented.
3. A nested element (at the second-level or below) with MS flag whose parents all are implemented SHALL be implemented. Note that this includes parent elements that have been implemented electively.
4. An element whose cardinality is 0..0 does NOT need to be implemented, regardless of MS flag[^4].
5. For Data Senders, a [required element](#definition-of-required) SHALL be implemented, regardless of whether that element has an MS flag. This is because Data Senders must populate required elements.
6. For Data Receivers, a [required element](#definition-of-required) without an MS flag does NOT have to be implemented[^5]. This is because Receivers have the option of ignoring an element passed to them if they have elected to not support that element.

More complex cases involving references, sliced arrays, and choice types are outlined in the [Must-Implement Summary](#must-implement-summary).

#### Definition of "Required"

An mCODE data element is **required** if any of the following criteria are met:

* The element is a top-level element (a first-level property of the resource) and its minimum cardinality is > 0 in the profile.
* The element not a top-level element (a second-level property or below), its minimum cardinality is > 0, and all elements directly containing that element have minimum cardinality > 0 in the profile.
* The element is not a top-level element, its minimum cardinality is > 0, and its immediate higher-level containing element exists in an _instance_ attempting to conform to the profile.

Note that a data element may be `1..1`, but if it is contained by an optional element, then it is not required unless its containing element is actually present.

### Must-Implement Summary

The following table summarizes how Must-Implement (MI) requirements derive from Must-Support (MS) flags. For the sake of completeness, this table covers certain cases not seen in mCODE.

| # | MS-Flagged Element  | Data Sender (Server) Must Implement?  | Data Receiver (Client) Must Implement? | Example |
|---|--------------|--------------|---------------|---|
| 1 | Top level element, or nested element whose parents are all MS | Yes | Yes | [`CancerDiseaseStatus.focus`][CancerDiseaseStatus] or [`CancerRelatedMedicationRequest.dosageInstruction.text`][CancerRelatedMedicationRequest] |
| 2 | Element is a nested (child) element and there is no MS flag on its parent element | MI only if the Sender elects to implement the parent element | MI only if the Receiver elects to implement the parent element | [US Core Patient version 3.2](https://bit.ly/us-core-2021Jan-StructureDefinition-us-core-patient) `Patient.telecom.system` |
| 3 | Element is a [complex data type](https://www.hl7.org/fhir/datatypes.html#complex) (such as CodeableConcept) with no MS flag on any immediate sub-element  | MI [at least one sub-element](https://bit.ly/us-core-2021Jan-conformance-expectations-must-support), and SHOULD implement every sub-element for which the server might possess data | MI every sub-element (since the Receiver cannot anticipate which sub-elements might be populated) | [`PrimaryCancerCondition.code`][PrimaryCancerCondition] |
| 4 | Element is a [complex data type](https://www.hl7.org/fhir/datatypes.html#complex) with an MS flag on one or more immediate sub-elements  | MI [only the sub-elements that are explicitly flagged](https://bit.ly/us-core-2021Jan-conformance-expectations-must-support) | same | [`CancerPatient.name`][CancerPatient] |
| 5 | Element is a [choice \[x\] type](https://www.hl7.org/fhir/stu3/formats.html#choice) with no MS flag on any choice | MI at least one datatype choice, and SHOULD implement every datatype for which the server might possess data | MI **all** datatype choices (since the Receiver cannot anticipate which sub-elements might be populated)| [`CancerPatient.deceased[x]`][CancerPatient] |
| 6 | Element is a [choice \[x\] type](https://www.hl7.org/fhir/stu3/formats.html#choice) with an MS flag on one or more choice | MI only on the datatype choice(s) that are explicitly flagged | same |  [US Core Laboratory Result Observation Profile version 3.2](https://bit.ly/us-core-2021Jan-StructureDefinition-us-core-observation-lab) `Observation.value[x]` |
| 7 | Element is a [Reference() data type](https://www.hl7.org/fhir/references.html#2.3.0) with no MS flag on any referenced resource or profile | MI all resources or profiles in the reference that are in Sender's capability statement | MI all resources or profiles in the reference unless they are outside the scope of the Receiver's capability statement | [`Tumor.extension[mcode-related-condition].value[x]`][Tumor] |
| 8 | Element is a [Reference() data type](https://www.hl7.org/fhir/references.html#2.3.0) with an MS flag on one or more of the referenced types | MI only on the resources or profiles in the reference that are explicitly MS-flagged, and only if they are in the Sender's capability statement | MI only on the resources or profiles in the reference that are explicitly MS-flagged, and only if they are in the Receiver's capability statement | [US Core DocumentReference Profile version 3.2](https://bit.ly/us-core-2021Jan-StructureDefinition-us-core-documentreference) `DocumentReference.author` |
| 9 | Element is a [backbone data type](https://www.hl7.org/fhir/backboneelement.html#2.29.0) | No implementation requirement on sub-elements unless they are explicitly MS-flagged  | same | [`SDC QuestionnaireResponse.item`](https://hl7.org/fhir/uv/sdc/2019May/sdc-questionnaireresponse.html) (subelement `QuestionResponse.item.definition` is not MS)  |
| 10 | Element is an [array that is sliced](https://www.hl7.org/fhir/profiling.html#slicing), with no MS flag on any slice | SHALL be able to populate the array, but [no implementation requirement any particular slice](https://confluence.hl7.org/pages/viewpage.action?pageId=35718826#GuidetoDesigningResources-HowdoIinterpret'MustSupport'withrespecttoslicing?) | MI array and its contents, including any or all defined slices. |
| 11 | Element is an [array that is sliced](https://www.hl7.org/fhir/profiling.html#slicing), with MS flags on one or more slices | MI only on the slices that have MS flags | same | [`TNMStageGroup.hasMember`][TNMStageGroup] |
| 12 | Element that has MS flag is a slice and the containing array does not have an MS flag | No implementation requirement on the slice | same | [US Core Patient Profile version 3.1.1](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) `Patient.extension:us-core-race` (because `Patient.extension` is not MS) |
{: .grid }

Footnotes:

[^1]: Although not common practice, profiles can have MS flags at the very top level (see [CancerPatient] for example).

[^2]: Typically, data would reasonably be expected to conform to an mCODE profile SHOULD conform to that profile. This rule is intended to discourage an mCODE Data Sender from creating different representation for data that *should* fall into the scope of mCODE. Compliance to this kind of condition is difficult to enforce, so it is expressed as a SHOULD.

[^3]: However, in FHIR, when exchanging ANY resources, systems SHOULD retain unknown extensions when they are capable of doing so, and they they SHOULD retain core elements when they are capable of doing so (see <https://www.hl7.org/fhir/extensibility.html#exchange>)

[^4]: When inheriting from another profile, it is possible to set the upper cardinality to zero on an element that was MS in the parent profile. For example, you could inherit from US Core Patient, but forbid the patient’s name for privacy reasons.  In this case, neither Sender nor Receiver are expected to populate or support the element – in fact, it would be an error if the element were present.

[^5]: An example is a Receiver that does not meaningfully process a required element even though it was populated by the Sender.

{% include markdown-link-references.md %}
