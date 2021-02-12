### Profile Base

Most mCODE profiles are based on US Core profiles defined in the [US Core Implementation Guide (v3.1.1)](http://hl7.org/fhir/us/core/index.html). For example, [CancerPatient] is based on the [US Core Patient][USCorePatientProfile] profile. Because of the way profiles work in FHIR, any resource that validates against an mCODE profile that is based a US Core profile will automatically be in compliance with the US Core profile.

Where US Core does not provide an appropriate base profile, mCODE profiles FHIR resources. An example is [CancerDiseaseStatus], based on Observation because US Core does not provide a profile for non-laboratory observations.

| Profile | Based on US Core?  | Immediate Parent Profile |
|---------|--------------------|--------------------------|
| Brachytherapy Implantable Device | yes | US Core Implantable Device |
| Brachytherapy Prescription Delivery | yes | US Core Procedure |
| Cancer Disease Status | no | Observation |
| Cancer Genetic Variant | no | US Core Laboratory Result Observation |
| Cancer Genomics Report | yes | US Core Diagnostic Report Lab |
| Cancer Patient | yes | US Core Patient |
| Cancer-Related Elixhauser Comorbidities | no | Elixhauser Comorbidities |
| Cancer-Related Medication Administration | no | Medication Administration |
| Cancer-Related Medication Request | yes | US Core Medication Request |
| Cancer-Related Surgical Procedure | yes | US Core Procedure |
| Comorbidities Parent  | no | Observation |
| Elixhauser Comorbidities | no  | Comorbidities Parent |
| ECOG Performance Status | no | Observation |
| Genetic Specimen | no | Specimen |
| Genomic Region Studied | yes | US Core Laboratory Result Observation |
| Karnofsky Performance Status | no | Observation |
| mCODE Patient Bundle | no | Bundle  |
| Primary Cancer Condition | yes | US Core Condition |
| Radiotherapy Summary | yes | US Core Procedure |
| Secondary Cancer Condition | yes | US Core Condition |
| Teleradiotherapy Prescription Delivery | yes | US Core Procedure |
| TNM Distant Metastases Category | no | Observation |
| TNM Primary Tumor Category | no | Observation |
| TNM Regional Nodes Category | no | Observation |
| TNM Stage Group | no | Observation |
| Tumor | no | BodyStructure |
| Tumor Marker Test | yes | US Core Laboratory Result Observation |
| Tumor Size | no | Observation |
| Tumor Specimen | no | Specimen |
{: .grid }

### Conformance to mCODE Profiles

Each mCODE profile expresses requirements and expectations for FHIR instances in terms of structural constraints and terminology bindings. If an instance is required to conform with an mCODE profile, it MUST [validate](https://www.hl7.org/fhir/validation.html) against that profile. Only certain FHIR instances associated with an [mCODE Patient](conformance-patients.html) carry mCODE conformance expectations.

#### Data Sender Expectations

Each mCODE profile has a conformance statement describing what data or FHIR instances MUST or SHOULD conform to it. For example, in [PrimaryCancerCondition], the conformance requirements are expressed in two parts:

1. Any Condition resource associated with an [mCODE Patient](conformance-patients.html) whose `Condition.code` is in the value set `[PrimaryOrUncertainBehaviorCancerDisorderVS]` MUST conform to the profile.
2. Any resource instance that would reasonably be expected to conform to the profile SHOULD conform to the profile.

The second statement is intended to discourage an mCODE Data Sender from creating different representation for data that *should* fall into the scope of mCODE. Compliance to this kind of condition is admittedly difficult to enforce, so it is expressed as a SHOULD.

#### Data Receiver Expectations

An mCODE Data Receiver SHOULD perform validation on instances it receives. The Receiver first of all needs to identify which profile to use for validation. There four ways to identify the correct profile:

1. The instance is received in response to a [profile search](https://www.hl7.org/fhir/search.html#profile), so the validating profile is known in advance.
2. The instance self-identifies using `meta.profile`. Every Data Sender SHOULD populate this element.
3. The Data Receiver can examine the contents of the instance to associate it with a profile (in particular, by looking for identifying code or category).
4. The Data Receiver can iteratively attempt to validate the instance against each of the Data Receiver's supported profiles.

If an instance fails validation, the Receiver may reject the instance.

### Element-Level Expectations

#### Sender and Receiver Expectations

For every element that is [required](#required-elements) and/or [Must Support](#must-support) (MS) in mCODE:

* mCODE Data Senders SHALL be capable of populating the element, provided the Sender supports the profile (as indicated by its CapabilityStatement).
* If the Sender lacks the data necessary to populate the element:
  * If the element is required, the [US Core rules on missing data](http://hl7.org/fhir/us/core/general-guidance.html#missing-data) MUST be followed.
  * If the element is not required (but is MS), the element SHOULD be entirely omitted. If there is a specific reason the data is missing, a data absent reason MAY be substituted.
  * Senders MUST NOT substitute a nonsense or filler value just to satisfy MS or cardinality requirement.
* mCODE Data Receivers SHALL be capable of meaningfully processing MS elements, provided the Receiver supports the profile. Depending on context, "meaningfully process" might mean displaying the data element for human use, reacting to it, or storing it for other purposes.

#### Required Elements

An mCODE data element is **required** if any of the following criteria are met:

* The element is a top-level element (a first-level property of the resource) and its minimum cardinality is > 0 in the profile.
* The element not a top-level element (a second-level property or below), its minimum cardinality is > 0, and all elements directly containing that element have minimum cardinality > 0 in the profile.
* The element is not a top-level element, its minimum cardinality is > 0, and its immediate higher-level containing element exists in an _instance_ attempting to conform to the profile.

In other words, a data element may be `1..1`, but if it is contained by an optional element, then it is not required unless its containing element is actually present.

#### Must Support

mCODE inherits the US Core interpretation of MS, in particular, the more detailed [US Core version 3.2 interpretation](https://hl7.org/fhir/us/core/2021jan/conformance-expectations.html). Interpretation of MS is not straightforward, as the following two statements make clear:

* <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> does not necessarily mean the element must be supported.
* Lack of an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> does not necessarily mean the element does not have to be supported.

Regarding the first point, an element marked with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> in a profile does **not** have to be supported if it is nested and any one of the elements directly containing that element does **not** have an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flag. There is also the case of an element whose cardinality is 0..0 and yet has an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flag, which again does not require support [^1]. 

Regarding the second point, a required element must be supported by a Data Sender, regardless of the presence or absence of an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flag. On the other hand, the same element does not have to be supported by the Data Receiver [^2].

#### Non-Must Support Elements

Data elements in mCODE that do not *have to be* supported still MAY be supported. If an element that MAY be supported is supported, the implementation of that element MUST conform to the profile. Moreover, any data element that would reasonably be expected to conform to an mCODE data element SHOULD conform to that element.

##### Viewing Must Support Flags
To see which elements have <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flags, consult the "Snapshot Table" view of the profile. The "Differential Table" view hides <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flags inherited from the parent profile. The "Snapshot Table (Must Support)" view reflects the IG Publisher's interpretation of how <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flags translate to support requirements, which may or may not coincide with the US Core/mCODE interpretation.

#### Interpretation of <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> Flags

The following is guidance how to interpret <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flags when there may be implicit meanings. Must support obligations are [defined above](#sender-and-receiver-expectations). These rules, deduced from US Core, apply only when the element in the first column must be supported.

| Supported Element | Implied Data Sender Requirement  | Implied Data Receiver Requirement |
|--------------|--------------|---------------|
| [Complex data type](https://www.hl7.org/fhir/datatypes.html#complex), no <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> on any immediate sub-element  | Must support at least one sub-elements | Must support **all** sub-elements |
| [Complex data type](https://www.hl7.org/fhir/datatypes.html#complex), <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> on one or more immediate sub-element  | Must support only the <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> sub-elements | same |
| [Choice \[x\] type](https://www.hl7.org/fhir/stu3/formats.html#choice), no <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> on any choice | Must support at least one datatype choice | Must support **all** datatype choices |
| [Choice \[x\] type](https://www.hl7.org/fhir/stu3/formats.html#choice), <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> on one or more choice | Must support only the <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> datatype choice(s) | same |
| [Reference data type](https://www.hl7.org/fhir/references.html#2.3.0), no <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> on any referenced resource or profile | Must support at least one referenced resource or profile | Must support **all** referenced resources and profiles |
| [Reference data type](https://www.hl7.org/fhir/references.html#2.3.0), <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> on one or more referenced types | Must support only the <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> resources or profiles | same |
| [Backbone data type](https://www.hl7.org/fhir/backboneelement.html#2.29.0) | No support expectation on sub-elements unless specifically <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span>  | same |
| [Sliced array](https://www.hl7.org/fhir/profiling.html#slicing) type | No support expectation on sliced array elements unless specifically <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> | same |
{: .grid }

[^1]: When inheriting from another profile, it is possible to set the upper cardinality to zero on an element that was MS in the parent profile. For example, you could inherit from US Core Patient, but forbid the patient’s name for privacy reasons.  In this case, neither Sender nor Receiver are expected to populate or support the element – in fact, it would be an error if the element were present.

[^2]: An example is a Receiver that does not meaningfully process a required element even though it was populated by the Sender.

{% include markdown-link-references.md %}
