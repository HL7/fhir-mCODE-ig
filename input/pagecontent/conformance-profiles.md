### Profile Base

Most mCODE profiles are based on US Core profiles defined in the [US Core Implementation Guide (v3.1.1)](http://hl7.org/fhir/us/core/index.html). For example, [CancerPatient] is based on the [US Core Patient][USCorePatientProfile] profile. Because of the way profiles work in FHIR, any resource that validates against an mCODE profile that is based a US Core profile will automatically be in compliance with the US Core profile.

Where US Core does not provide an appropriate base profile, mCODE profiles FHIR resources. An example is [CancerDiseaseStatus], based on Observation because US Core does not provide a profile for non-laboratory observations.

| Profile | Based on US Core?  | Immediate Parent Profile |
|---------|--------------------|--------------------------|
| [Brachytherapy Treatment Phase][BrachytherapyTreatmentPhase]| yes | US Core Procedure |
| [Cancer Disease Status][CancerDiseaseStatus] | no | Observation |
| [Cancer Genomic Variant][CancerGenomicVariant] | yes | US Core Laboratory Result Observation |
| [Cancer Genomics Report][CancerGenomicsReport] | yes | US Core Diagnostic Report Lab |
| [Cancer Patient][CancerPatient] | yes | US Core Patient |
| [Cancer-Related Medication Administration][CancerRelatedMedicationAdministration] | no | Medication Administration |
| [Cancer-Related Medication Request][CancerRelatedMedicationRequest] | yes | US Core Medication Request |
| [Cancer-Related Surgical Procedure][CancerRelatedSurgicalProcedure] | yes | US Core Procedure |
| [Cancer Stage Group][CancerStageGroup] | no | Observation |
| [Comorbidities Parent][ComorbiditiesParent]  | no | Observation |
| [Comorbidities Elixhauser][ComorbiditiesElixhauser] | no | Comorbidities Parent |
| [ECOG Performance Status][ECOGPerformanceStatus] | no | Observation |
| [Genomic Specimen][GenomicSpecimen] | no | Specimen |
| [Genomic Region Studied][GenomicRegionStudied] | yes | US Core Laboratory Result Observation |
| [Karnofsky Performance Status][KarnofskyPerformanceStatus] | no | Observation |
| [mCODE Patient Bundle][MCODEPatientBundle] | no | Bundle  |
| [Primary Cancer Condition][PrimaryCancerCondition] | yes | US Core Condition |
| [Radiotherapy Course Summary][RadiotherapyCourseSummary] | yes | US Core Procedure |
| [Secondary Cancer Condition][SecondaryCancerCondition] | yes | US Core Condition |
| [Teleradiotherapy Treatment Phase][TeleradiotherapyTreatmentPhase] | yes | US Core Procedure |
| [TNM Distant Metastases Category][TNMDistantMetastasesCategory] | no | Observation |
| [TNM Primary Tumor Category][TNMPrimaryTumorCategory] | no | Observation |
| [TNM Regional Nodes Category][TNMRegionalNodesCategory] | no | Observation |
| [Tumor][Tumor] | no | BodyStructure |
| [Tumor Marker Test][TumorMarkerTest] | yes | US Core Laboratory Result Observation |
| [Tumor Size][TumorSize] | no | Observation |
| [Tumor Specimen][TumorSpecimen] | no | Specimen |
{: .grid }

### Profile-Level Conformance Expectations

Each mCODE expresses requirements and expectations for implementers on the level of entire profiles and individual data elements within those profiles. The following requirements apply to every profile and data element that is implemented (supported) by a Sender or Receiver. For definition of what mCODE data elements must be implemented, see [Obligation to Implement](#obligation-to-implement).

#### Expectations for Data Senders

The following rules apply to Senders:

1. A Data Sender MUST implement all mCODE profiles that have a top-level Must Support (MS) flag [^1] (also see [Obligation to Implement](#obligation-to-implement)).
2. A Data Sender SHOULD implement **all** profiles defined in mCODE UNLESS the participant does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialized role in clinical or information workflows.
3. The Sender's list of implemented profiles MUST be published in a CapabilityStatement.
4. For each implemented profile, the Data Sender MUST follow that profile's conformance statement describing what data MUST or SHOULD conform to that profile.
5. When the appropriate profile for a certain type of data has been determined, the Sender has the responsibility for creating instances that conform to that profile. All such instances must pass [validation](https://www.hl7.org/fhir/validation.html) against the selected profile.
6. The Data Sender SHALL be capable of populating every data element it implements. See the [Obligation to Implement](#obligation-to-implement) section to determine which elements MUST/SHOULD/MAY be implemented for a given profile.
7. For any element that is required (minimum cardinality > 0), if the Sender lacks the data necessary to populate the element, the [US Core rules on missing data](http://hl7.org/fhir/us/core/general-guidance.html#missing-data) MUST be followed.
8. For any non-required element (minimum cardinality = 0), if the Sender lacks the data necessary to populate the element, the element SHOULD be entirely omitted. If there is a specific reason the data is missing, a data absent reason (described in the [US Core rules on missing data](http://hl7.org/fhir/us/core/general-guidance.html#missing-data)) MAY be substituted. Note that this rule applies to _non-required_ Obligation to Implement elements (described below).
9. Senders MUST NOT substitute nonsense or filler values for missing values.

As an example of #4, the conformance requirements for [PrimaryCancerCondition] are:

* Any Condition resource associated with an [in-scope patient](conformance-patients.html) whose `Condition.code` is in the value set (`PrimaryOrUncertainBehaviorCancerDisorderVS`)[PrimaryOrUncertainBehaviorCancerDisorderVS] MUST conform to the profile.
* Any resource instance that would reasonably be expected to conform to the profile SHOULD conform to the profile.

The second statement is intended to discourage an mCODE Data Sender from creating different representation for data that *should* fall into the scope of mCODE. Compliance to this kind of condition is difficult to enforce, so it is expressed as a SHOULD.

#### Expectations for Data Receivers

The following rules apply to Receivers:

1. A Data Receiver MUST implement all mCODE profiles that have a top-level MS flag [^1].
2. A Data Receiver SHOULD implement **all** profiles defined in mCODE UNLESS the participant does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialized role in clinical or information workflows.
3. The Receiver's list of implemented profiles MUST be published in a CapabilityStatement.
4. A Receiver SHOULD perform validation on instances it receives. If an instance fails validation, the Receiver MAY reject the instance.
5. Receivers SHALL be capable of meaningfully processing (at minimum) all [Obligation To Implement elements](#obligation-to-implement). Depending on context, "meaningful processing" might mean displaying the data element for human use, reacting to it, or storing it for other purposes.

Regarding #4, there are several ways the Receiver can identify the correct profile to use for validation:

* The instance is received in response to a [profile search](https://www.hl7.org/fhir/search.html#profile), so the validating profile is known in advance.
* The instance self-identifies an mCODE profile using `meta.profile`. Every Data Sender SHOULD populate this element.
* The Data Receiver examines the contents of the instance to associate it with a profile. Often, there is an identifying code or category that can be used to associate an instance with a profile.
* The Data Receiver iteratively tries to validate against each of its supported profiles applicable to the instance's resource type. This is typically a means of last resort.

### Obligation to Implement

This section describes conformance requirements in terms of which profiles and data elements MUST (or SHOULD or MAY) be implemented by adopters of mCODE.

mCODE defines Obligation to Implement (OTI) as follows:

* OTI on a profile means that the profile MUST be implemented.
* OTI on a data element means that Senders and Receivers MUST implement that data element -- in other words, implementers MUST support the population and use of that data element. (Note that the [Profile-Level Conformance Expectations](#profile-level-conformance-expectations) describes handling missing data for OTI elements.)

#### Obligation to Implement Versus Must Support

OTI is related to the FHIR concept of Must Support (MS); however, the relationship between OTI and MS is not one-to-one. MustSupport elements (marked with the <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flag in IG profile pages) are not necessarily OTI, and OTI may be attached to elements that lack MS flags.

To see which elements have MS flags, consult the "Snapshot Table" or "Snapshot Table (Must Support)" views of a profile. The "Snapshot Table" view shows _all_ elements, with flags (<span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span>) identifying the subset of these elements that are MS. The "Snapshot Table (Must Support)" view shows _only_ MS elements and therefore does not display MS flags. Note that the "Differential Table" profile view hides MS flags inherited from the parent profile, and is therefore not appropriate for identifying MS elements in a profile.

As mentioned above, presence of a MS flag **does not** necessarily imply OTI. The interpretation of MS in the context of OTI is described in the following section.

#### Determining OTI Status

The following rule determines which profiles have OTI:

1. Profiles with top-level MS flags are OTI. Implementation of other profiles is elective.

The following rules determine which data elements have OTI:

1. Only data elements in implemented profiles (as declared in the Sender or Receiver's CapabilityStatement) are OTI. In other words, if a profile is not implemented, then none of the elements of that profile must be implemented, regardless of MS flags [^2]. *This rule takes precedence over subsequent rules.*
2. An element with an MS flag is OTI if it is a top-level element, or a a second-level property or below whose parents all have MS flags. However, if an implementation *elects* to implement the non-MS element or elements in the nested element's hierarchy, then the nested element *becomes* OTI.
3. An element with an MS flag whose cardinality is 0..0 is not OTI [^3].
4. For Data Senders, a [required element](#definition-of-required) is OTI, regardless of whether that element has an MS flag. This is because Data Senders must populate required elements.
5. For Data Receivers, a [required element](#definition-of-required) without an MS flag is not OTI [^4]. This is because Receivers have the option of ignoring an element passed to them if they have elected to not support that element.

#### Non-OTI Data Elements

Data elements in mCODE that are not OTI optionally MAY be implemented. If a data element is implemented, whether it is OTI or not, the profile must be interpreted as if an MS flag were present on that element. For example, (`TumorMarkerTest.performer`)[TumorMarkerTest] does not have an MS flag, but a Receiver may implement the capability to display it. In this example, because this element is a Reference data type with no MS flag on any referenced resource or profile (case #7 in the [Obligation to Implement Summary](#obligation-to-implement-summary)), the Receiver is obligated to implement all resources or profiles in the Reference unless outside the scope of the Receiver's capability statement, namely, Practitioner, PractitionerRole, Organization, CareTeam, Patient, and RelatedPerson.

#### Definition of Required

An mCODE data element is **required** if any of the following criteria are met:

* The element is a top-level element (a first-level property of the resource) and its minimum cardinality is > 0 in the profile.
* The element not a top-level element (a second-level property or below), its minimum cardinality is > 0, and all elements directly containing that element have minimum cardinality > 0 in the profile.
* The element is not a top-level element, its minimum cardinality is > 0, and its immediate higher-level containing element exists in an _instance_ attempting to conform to the profile.

In other words, a data element may be `1..1`, but if it is contained by an optional element, then it is not required unless its containing element is actually present.

### Obligation to Implement Summary

The following table summarizes how Obligations to Implement (OTI) derive from MS flags in a supported profile. Processing requirements for Senders and Receivers for all implemented elements are [defined above](#profile-level-conformance-expectations). For the sake of completeness, this table covers certain cases not seen in mCODE.

| # | MS-Flagged Element  | Data Sender (Server) Obligation to Implement?  | Data Receiver (Client) Obligation to Implement? | Example |
|---|--------------|--------------|---------------|---|
| 1 | Top level element, or nested element whose parents are all MS | Yes | Yes | [`CancerDiseaseStatus.focus`][CancerDiseaseStatus] or [`CancerRelatedMedicationRequest.dosageInstruction.text`][CancerRelatedMedicationRequest] |
| 2 | Element is a nested (child) element and there is no MS flag on its parent element | OTI only if the Sender elects to implement the parent element | OTI only if the Receiver elects to implement the parent element | [US Core Patient version 3.2](https://bit.ly/us-core-2021Jan-StructureDefinition-us-core-patient) `Patient.telecom.system` |
| 3 | Element is a [complex data type](https://www.hl7.org/fhir/datatypes.html#complex) (such as CodeableConcept) with no MS flag on any immediate sub-element  | OTI on [at least one sub-element](https://bit.ly/us-core-2021Jan-conformance-expectations-must-support), and SHOULD implement every sub-element for which the server might possess data | OTI on every sub-element (since the Receiver cannot anticipate which sub-elements might be populated) | [`PrimaryCancerCondition.code`][PrimaryCancerCondition] |
| 4 | Element is a [complex data type](https://www.hl7.org/fhir/datatypes.html#complex) with an MS flag on one or more immediate sub-elements  | OTI on [only the sub-elements that are explicitly flagged](https://bit.ly/us-core-2021Jan-conformance-expectations-must-support) | same | [`CancerPatient.name`][CancerPatient] |
| 5 | Element is a [choice \[x\] type](https://www.hl7.org/fhir/stu3/formats.html#choice) with no MS flag on any choice | OTI on at least one datatype choice, and SHOULD implement every datatype for which the server might possess data | OTI on **all** datatype choices (since the Receiver cannot anticipate which sub-elements might be populated)| [`CancerPatient.deceased[x]`][CancerPatient] |
| 6 | Element is a [choice \[x\] type](https://www.hl7.org/fhir/stu3/formats.html#choice) with an MS flag on one or more choice | OTI only on the datatype choice(s) that are explicitly flagged | same |  [US Core Laboratory Result Observation Profile version 3.2](https://bit.ly/us-core-2021Jan-StructureDefinition-us-core-observation-lab) `Observation.value[x]` |
| 7 | Element is a [Reference() data type](https://www.hl7.org/fhir/references.html#2.3.0) with no MS flag on any referenced resource or profile | OTI on all resources or profiles in the reference that are in Sender's capability statement | OTI on all resources or profiles in the reference unless they are outside the scope of the Receiver's capability statement | [`Tumor.extension[mcode-condition-related].value[x]`][Tumor] |
| 8 | Element is a [Reference() data type](https://www.hl7.org/fhir/references.html#2.3.0) with an MS flag on one or more of the referenced types | OTI only on the resources or profiles in the reference that are explicitly MS-flagged, and only if they are in the Sender's capability statement | OTI only on the resources or profiles in the reference that are explicitly MS-flagged, and only if they are in the Receiver's capability statement | [US Core DocumentReference Profile version 3.2](https://bit.ly/us-core-2021Jan-StructureDefinition-us-core-documentreference) `DocumentReference.author` |
| 9 | Element is a [backbone data type](https://www.hl7.org/fhir/backboneelement.html#2.29.0) | No OTI on sub-elements unless they are explicitly MS-flagged  | same | [`SDC QuestionnaireResponse.item`](http://hl7.org/fhir/uv/sdc/2019May/sdc-questionnaireresponse.html#root) (subelement `QuestionResponse.item.definition` is not MS)  |
| 10 | Element is an [array that is sliced](https://www.hl7.org/fhir/profiling.html#slicing), with no MS flag on any slice | MUST be able to populate the array, but [no OTI on any particular slice](https://confluence.hl7.org/pages/viewpage.action?pageId=35718826#GuidetoDesigningResources-HowdoIinterpret'MustSupport'withrespecttoslicing?) | OTI on array and its contents, including any or all defined slices. |
| 11 | Element is an [array that is sliced](https://www.hl7.org/fhir/profiling.html#slicing), with MS flags on one or more slices | OTI only on the slices that have MS flags | same | [`CancerStageGroup.hasMember`][CancerStageGroup] |
| 12 | Element that has MS flag is a slice and the containing array does not have an MS flag | No OTI on the slice | same | [US Core Patient Profile version 3.1.1](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) `Patient.extension:us-core-race` (because `Patient.extension` is not MS) |
{: .grid }

[^1]: Although not common practice, profiles can have MS flags at the very top level (see [CancerPatient] for example).

[^2]: However, in FHIR, when exchanging ANY resources, systems SHOULD retain unknown extensions when they are capable of doing so, and they they SHOULD retain core elements when they are capable of doing so (see <https://www.hl7.org/fhir/extensibility.html#exchange>)

[^3]: When inheriting from another profile, it is possible to set the upper cardinality to zero on an element that was MS in the parent profile. For example, you could inherit from US Core Patient, but forbid the patient’s name for privacy reasons.  In this case, neither Sender nor Receiver are expected to populate or support the element – in fact, it would be an error if the element were present.

[^4]: An example is a Receiver that does not meaningfully process a required element even though it was populated by the Sender.

{% include markdown-link-references.md %}
