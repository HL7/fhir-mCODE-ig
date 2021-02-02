### mCODE Participant Roles

Two roles for **mCODE Participants** are defined:

* **mCODE Data Sender** - a participant in exchange of mCODE data who provides mCODE data in response to a data query or autonomously pushes mCODE data to an mCODE receiver. The data sender does not have to be the originator of the data it possesses.
* **mCODE Data Receiver** - a participant in exchange of mCODE data who accepts mCODE data from an mCODE Data Sender.

US Core defines two actors, US Core Requestor and US Core Responder, which are highly suggestive of a "pull" architecture. In mCODE, we use the terms Sender and Receiver, which are more neutral with respect to push and pull. However, for all practical purposes, there is an equivalence between US Core Requestor and mCODE Data Receiver, and similarly between US Core Responder and mCODE Data Sender.

#### Architecture

Currently, the mCODE Implementation Guide provides CapabilityStatements and documentation for a **pull** architecture. The Implementation Guide does not currently provide specific conformance specifications for other architectures, though these may be added in the future if common use cases arise that do not fit with a pull model. Notwithstanding this, participants implementing a different architecture MUST follow the conformance requirements as defined on this page and elsewhere in the mCODE Implementation Guide EXCEPT for those specifically identified as applying to participants implementing a pull architecture.

### Requirements for Conformance

mCODE participants MUST meet the following requirements for conformance:

#### Support Core Profiles

Each mCODE participant MUST support the following profiles, core to representing an mCODE patient:

* [CancerPatient]
* [PrimaryCancerCondition] (a Condition resource with a code in the [PrimaryOrUncertainBehaviorCancerDisorderVS] value set)

#### Follow Conformance Requirements for Supported Profiles

See the ["Conforming with mCODE Profiles" section below](#conforming-with-mcode-profiles) for details.

#### Identify mCODE Patients

To facilitate conformance testing, the testing software must be able to determine which patients are "mCODE Patients" -- meaning that they in scope for mCODE. All patients with confirmed cancer diagnoses SHOULD be covered by mCODE. In FHIR terms, these are patients who have a Condition where `Condition.code` is a member of the value set [PrimaryOrUncertainBehaviorCancerDisorderVS] and `Condition.verificationStatus` is confirmed.

Due to technical, organizational, or legal reasons, mCODE Data Senders MAY exclude some cancer patients from mCODE. In that case, the mCODE Data Sender MUST define a Group resource to identify ALL mCODE patients in their system. This Group resource MUST set `Group.code` to `mcode-patient` (no code system). Data Senders that do not exclude any cancer patients from mCODE MAY still populate a `mcode-patient` Group resource.

**All** mCODE Data Senders MUST respond to `GET [base]/Group?code=mcode-patient` with either zero or one Group resource. If zero Group resources are returned, all patients with cancer diagnoses (as defined above) will be considered to be "mCODE Patients." If a Group resource is returned, patients not referenced in the Group resource are assumed to be out of scope, independent of any cancer diagnosis. This requirement is reflected in ALL CapabilityStatements referenced in this section.

The following CapabilityStatements define the various methods participants can use to identify mCODE Patients. Participants implementing a pull architecture MUST support at least one of the CapabilityStatements listed from **most to least preferable** below:

1. **Patients-in-group** approach (CapabilityStatements for the [sender][mcode-sender-patients-in-group] and [receiver][mcode-receiver-patients-in-group]):

    Senders respond to the following request with a Group resource referencing the Patient resources for all mCODE Patients, AND allow the Receiver to retrieve a Bundle of the Patient resources referenced in the first response using [composite search parameters](https://www.hl7.org/fhir/search.html#combining):

        GET [base]/Group?code=mcode-patients

        GET [base]/Patient?_id=some_patient_id_1,some_patient_id_2,...,some_patient_id_n

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;">{%include patients-in-group.svg%}</div>

1. **Patients-with-cancer-condition** approach (CapabilityStatements for the [sender][mcode-sender-patients-with-cancer-condition] and [receiver][mcode-receiver-patients-with-cancer-condition]):

    Senders respond to the following request with a Bundle of Patient resources for all mCODE Patients. This method is preferred over the approaches below UNLESS [reverse chaining](https://www.hl7.org/fhir/search.html#has) is entirely unsupported on the system.

        GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;">{%include patients-with-cancer-condition.svg%}</div>

1.  **Patient-then-cancer-conditions** approach (CapabilityStatements for the [sender][mcode-sender-patients-and-cancer-conditions] and [receiver][mcode-receiver-patients-and-cancer-conditions]):

    Senders can respond to a request using [`_include`](https://www.hl7.org/fhir/search.html#revinclude) to get a Bundle of the relevant Patient resources along with the subset of Condition resources with `Condition.code` in [Primary or Uncertain Behavior Cancer Disorder Value Set][PrimaryOrUncertainBehaviorCancerDisorderVS] in a single request. Preferred over the approach below UNLESS `_include` is entirely unsupported on the system.

        GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;">{%include patients-and-cancer-conditions.svg%}</div>

1. **Conditions-then-patients** approach (CapabilityStatements for the [sender][mcode-sender-cancer-conditions-then-patients] and [receiver][mcode-receiver-cancer-conditions-then-patients]):

    Senders return a Bundle with the subset of Condition resources with a `code` in the [Primary or Uncertain Behavior Cancer Disorder Value Set][PrimaryOrUncertainBehaviorCancerDisorderVS] in a single request, AND allow the Receiver to retrieve a Bundle of the Patient resources referenced in the first response using [composite search parameters](https://www.hl7.org/fhir/search.html#combining):

        GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs

        GET [base]/Patient?_id=some_patient_id_1,some_patient_id_2,...,some_patient_id_n

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;">{%include cancer-conditions-then-patients.svg%}</div>

#### Retrieve a Patient Resource

Participants shall implement the following operation for retrieving a Patient resource by `id`. For the pull architecture, this requirement is included in all of the CapabilityStatements in the [Identify mCODE Patients](#identify-mcode-patients) section above.

    GET [base]/Patient/[id]

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div style="text-align: center;">{%include mcode-patient-pull.svg%}</div>

#### Publish a CapabilityStatement Identifying Supported Profiles and Operations

Each mCODE participant MUST publish a FHIR CapabilityStatement listing their supported profiles, by declaring the profile in `CapabilityStatement.rest.resource.supportedProfile`. The CapabilityStatement SHALL be returned in response to a `GET [base]/metadata` request.

This MUST include [CancerPatient] and [PrimaryCancerCondition] (unless they are not supported as described [above](#support-core-profiles)), as well as any other mCODE Profiles supported on the system.

<!-- TODO: Provide examples of what this would look like.-->

#### Support Querying mCODE-Conforming Resources

The following FHIR requests return resources that MUST conform to an mCODE profile (if the associated Patient is considered an "mCODE Patient" as described above):

<!-- TODO: Provide examples of what this would look like.-->

mCODE participants MUST support these requests UNLESS they do not support the profile at all (see ["Support All mCODE Profiles"](#support-all-mcode-profiles) below).

#### Support US Core Conformance Requirements

Additional [conformance requirements from US Core](http://hl7.org/fhir/us/core/capstatements.html) apply to RESTful interactions, searches, and resource formats.

<!-- TODO: Consider merging this and the above section -- this might make sense if the US Core conformance requirements apply to the queries for mCODE-conforming resources.-->

#### Receivers Meaningfully Process mCODE Resources

mCODE Data Receivers implementing a pull architecture SHALL be able to initiate ALL the requests described above. Additionally, Receivers MUST be able to meaningfully process the MustSupport ALL individual resources returned by the operations above that conform to mCODE profiles identified as supported by their CapabilityStatements. "Meaningfully Process" is context-specific, and may mean display, store, analyze, or otherwise deal with that data.

### Recommendations for Conformance

mCODE participants SHOULD meet the following requirements for conformance:

#### Support All mCODE Profiles

In addition to supporting the core profiles as described above, mCODE participants SHOULD support all profiles defined in mCODE UNLESS the participant does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialized role in clinical or information workflows. For example, a genomics laboratory may support [CancerGenomicsReport], but not vital signs or staging.

Participants SHOULD also support the non-mCODE-specific profiles that are considered part of an [mCODE Patient Bundle][MCODEPatientBundle], such as [blood pressure](http://hl7.org/fhir/StructureDefinition/bp).

#### Support the mCODE Patient Bundle

The [mCODE Patient Bundle][MCODEPatientBundle] provides a mechanism to retrieve all mCODE-conforming resources for an mCODE Patient. Participants SHOULD support this CapabilityStatement ([sender][mcode-sender-patient-bundle]/[receiver][mcode-receiver-patient-bundle]) for the [mcode-patient-everything] operation, which retrieves an mCODE Patient Bundle for a given Patient ID.

    GET [base]/Patient/[id]/$mcode-everything

This endpoint SHALL support `start` and `end` parameters which operate the same as in the [`Patient/[id]/$everything` operation](https://www.hl7.org/fhir/operation-patient-everything.html).

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div style="text-align: center;">{%include mcode-patient-bundle-pull.svg%}</div>

mCODE Patient Bundles SHALL be identified by an `id` value that matches the `id` in the contained CancerPatient-conforming resource.

#### Use `meta.profile` to Signal Conformance

Participants SHOULD populate `meta.profile` elements for all resources to indicate which profiles the resources should conform to.

Participants SHOULD also implement [profile search](https://www.hl7.org/fhir/search.html#profile), which allows participants to query using the `_profile` parameter to return resources conforming to the profiles declared in `meta.profile`.

The profile search requirement originates from the base FHIR specification. It is not an additional requirement imposed by mCODE. Refer to the [FHIR Documentation on supported profiles](https://www.hl7.org/fhir/profiling.html#CapabilityStatement.rest.resource.supportedProfile) for details.

### Conforming with mCODE Profiles

Each [mCODE profile](artifacts.html#1) includes conformance criteria describing which resources MUST or SHOULD conform to mCODE profiles. For example, in [CancerDiseaseStatus], the conformance criteria states that any resource associated with an mCODE Patient (as [defined above](#identify-mcode-patients)) that represent an observation of patient's response to cancer treatment MUST conform to that profile.

Each mCODE profile expresses requirements and expectations for individual mCODE instances in terms of structural constraints and terminology bindings. Any FHIR resources claiming to conform to mCODE MUST [validate](https://www.hl7.org/fhir/validation.html) against the declared mCODE profile.

#### Conformance to US Core

Most mCODE profiles are based on US Core profiles defined in the [US Core Implementation Guide (v3.1.1)](http://hl7.org/fhir/us/core/index.html). For example, the [CancerGeneticVariant] profile is based on [US Core Laboratory Result Observation Profile][USCoreLaboratoryResultObservationProfile] and [CancerPatient] is based on the [US Core Patient][USCorePatientProfile] profile. If a resource validates against any of the mCODE profiles based on US Core, it will be in compliance with US Core.

Where US Core does not provide an appropriate base profile, mCODE profiles FHIR resources. An example is [CancerDiseaseStatus], based on Observation because US Core does not provide a profile for non-laboratory observations.

#### MustSupport Interpretation

The [MustSupport](https://www.hl7.org/fhir/conformance-rules.html#mustSupport) flag indicates that implementation shall provide "meaningful support" for the element, as defined by its implementation guide. The mCODE definitions of MustSupport encompass the [definitions in US Core](http://hl7.org/fhir/us/core/general-guidance.html#must-support). mCODE defines MustSupport as follows:

* **mCODE Data Sender** - MustSupport is interpreted as "must populate if known". That is, every required and MustSupport element in a supported mCODE profile MUST be populated if the Data Sender has that data.

* **mCODE Data Receiver** - MustSupport is interpreted as "able to meaningfully process". "Meaningfully Process" is contextual, and for various receivers may mean display, store, analyze, or otherwise deal with that data.

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

### Representing Provenance

Provenance information includes the "who, what, when, where, why" associated with collection, transfer, and updating of clinical information. mCODE relies on FHIR's native mechanisms for recording and tracking provenance. As such, mCODE shares all the capabilities and limitations of FHIR provenance tracking. The user should refer to the [FHIR specification](https://www.hl7.org/fhir/provenance.html) for more information.

### Capability Statements

* **Receiver**
  * [mcode-receiver-cancer-conditions-then-patients]
  * [mcode-receiver-patient-bundle]
  * [mcode-receiver-patients-and-cancer-conditions]
  * [mcode-receiver-patients-in-group]
  * [mcode-receiver-patients-with-cancer-condition]
* **Sender**  
  * [mcode-sender-cancer-conditions-then-patients]
  * [mcode-sender-patient-bundle]
  * [mcode-sender-patients-and-cancer-conditions]
  * [mcode-sender-patients-in-group]
  * [mcode-sender-patients-with-cancer-condition]

### Operations

* [mcode-patient-everything]

{% include markdown-link-references.md %}

