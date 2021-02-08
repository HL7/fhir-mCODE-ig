### Profile Base

Most mCODE profiles are based on US Core profiles defined in the [US Core Implementation Guide (v3.1.1)](http://hl7.org/fhir/us/core/index.html). For example, [CancerPatient] is based on the [US Core Patient][USCorePatientProfile] profile. Because of the way profiles work in FHIR, any resource that validates against an mCODE profile that is based a US Core profile will automatically be in compliance with the US Core profile.

Where US Core does not provide an appropriate base profile, mCODE profiles FHIR resources. An example is [CancerDiseaseStatus], based on Observation because US Core does not provide a profile for non-laboratory observations.

| Profile | Based on US Core?  | Immediate Parent Profile |
|---------|--------------------|--------------------------|
| Brachytherapy Implantable Device | no | Device |
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
| Radiotherapy Course Summary | yes | US Core Procedure |
| Secondary Cancer Condition | yes | US Core Condition |
| TNM Clinical Distant Metastases Category | no | Observation |
| TNM Clinical Primary Tumor Category | no | Observation |
| TNM Clinical Regional Nodes Category | no | Observation |
| TNM Clinical Stage Group | no | Observation |
| TNM Pathological Distant Metastases Category | yes | US Core Laboratory Result Observation |
| TNM Pathological Primary Tumor Category | yes | US Core Laboratory Result Observation |
| TNM Pathological Regional Nodes Category | yes | US Core Laboratory Result Observation |
| TNM Pathological Stage Group | yes | US Core Laboratory Result Observation |
| Teleradiotherapy Prescription Delivery | yes | US Core Procedure |
| Tumor | no | BodyStructure |
| Tumor Marker Test | yes | US Core Laboratory Result Observation |
| Tumor Size | no | Observation |
{: .grid }

### Profile-Level Expectations

Each mCODE profile expresses requirements and expectations for FHIR instances in terms of structural constraints and terminology bindings. If an instance is expected to conform with an mCODE profile, it MUST [validate](https://www.hl7.org/fhir/validation.html) against that profile. Only FHIR instances associated an [mCODE Patient](conformance-patients.html) carry mCODE conformance expectations.

#### Data Sender Expectations

Each mCODE profile has a conformance statement describing what data or resource instances MUST or SHOULD conform to it. For example, in [PrimaryCancerCondition], the conformance requirements are expressed in two parts:

1. Any Condition resource associated with an [mCODE Patient](conformance-patients.html) whose `Condition.code` is in the value set `[PrimaryOrUncertainBehaviorCancerDisorderVS]` MUST conform to the profile.
2. Any resource instance that would reasonably be expected to conform to the profile SHOULD conform to the profile.

The second statement is intended to discourage an mCODE Data Sender from creating a different representation of a primary cancer condition that would not be found when querying for Condition resources that possess an mCODE-specified code.

#### Data Receiver Expectations

An mCODE Data Receiver SHOULD perform validation on instances it receives. To do this, the Receiver needs to identify which profile to use for validation. There four ways to identify the correct profile:

1. The instance is received in response to a [profile search](https://www.hl7.org/fhir/search.html#profile), so the validating profile is known in advance.
2. The instance self-identifies using `meta.profile`. The Data Sender SHOULD populate this element.
3. The Data Receiver can examine the contents of the instance to associate it with a profile (in particular, by looking for identifying code or category).
4. The Data Receiver can iteratively attempt to validate the instance against each of the Data Receiver's supported profiles.

### Element-Level Expectations

#### Cardinality

For a server populating a instance:

* An element is **required** if its minimum cardinality is greater than zero, and, if nested, the minimum cardinality of every parent element in the element's hierarchy is also greater than zero.

* A **conditionally-required element** is a nested element whose minimum cardinality is greater than zero but one or more parent element in its hierarchy has a zero minimum cardinality. A conditionally-required element becomes **required** when its immediate parent element is present in the instance.

* An element with minimum cardinality of zero is **optional**.

A server MUST populate all **required** elements (including conditionally-required elements whose parent elements are present) if it has data available to do so. If the system does not have requisite data, the system should follow the [missing data guidance outlined in US Core](http://hl7.org/fhir/us/core/2021Jan/general-guidance.html#missing-data).

#### Must Support

For an **mCODE Data Sender**, MustSupport (MS) is interpreted as "must populate if known". Each MustSupport element in a supported mCODE profile MUST be populated if the Data Sender has that data.

For an **mCODE Data Receiver** MS is interpreted as "able to meaningfully process". "Meaningfully process" is contextual, and for various receivers may mean display, store, analyze, or otherwise deal with that data.


A must-support flag does not imply an element must be supported



#### Definitions

* An **element** is a part of a resource structure that either has a value or sub-element(s).

* A **top-level element** is an element that has no parent other than the resource itself.

* A **nested element** (or sub-element) is an element that is a child of another element.



* A **MustSupport element** is any element that has a MustSupport (MS) label.

* A **rooted MS element** is one that is MS all the way

* A **conditional MS element** is a nested MS element whose 

* A ** ** is a non-MS element that has one or more MS elements as a parent

Optional element means there is no expectation that an mCODE Data Sender populate the element, or an mCODE Data Receiver meaningfully process the element.

#### MustSupport Interpretation

The [MustSupport](https://www.hl7.org/fhir/conformance-rules.html#mustSupport) flag indicates that implementation shall provide "meaningful support" for the element, as defined by its implementation guide. The mCODE definitions of MustSupport encompass the [definitions in US Core](http://hl7.org/fhir/us/core/general-guidance.html#must-support). mCODE defines MustSupport as follows:



#### Missing/Unknown Data Elements

The handling of missing or unknown elements in mCODE is functionally identical to US Core, specifically:

* In situations where information on a particular data element is not present and the reason for absence is unknown, mCODE Data Senders MUST NOT include the data elements in the resource instance.
* mCODE Data Receivers MUST interpret missing data elements within resource instances as data not present in the mCODE Data Sender's system.
* In situations where information on a particular data element is missing and the mCODE Data Sender knows the reason for the absence of data, the Data Sender MUST send the reason for the missing information. The absence reason value SHOULD come first from the element's value set if it exists or otherwise from the `dataAbsentReason` element (if present) or extension.
* mCODE Data Receivers MUST be able to process resource instances containing data elements asserting missing information.

#### Required Elements

An mCODE data element is required if any of the following criteria are met:

* The element is a top-level element (a first-level property of the resource) and its minimum cardinality is > 0 in the profile.
* The element not a top-level element (a second-level property or below), its minimum cardinality is > 0, and all elements directly containing that element have minimum cardinality > 0 in the profile.
* The element is not a top-level element, its minimum cardinality is > 0, and its immediate higher-level containing element exists in an _instance_ of the profile.

In other words, a data element may be `1..1`, but if it is contained by an optional element, then it is not required unless its containing element is actually present in a given instance of the profile.

For every required element in mCODE, Data Senders MUST either (1) provide data for the element; or (2) follow [US Core's rules](http://hl7.org/fhir/us/core/general-guidance.html#missing-data) for handling missing data for required elements. mCODE Data Senders MUST NOT substitute a nonsense or filler value just to satisfy the cardinality requirement for a required element.

{% include markdown-link-references.md %}
