#### mCODE Roles

Two roles are defined:

* **mCODE Data Sender** - a participant in exchange of mCODE data who provides mCODE data in response to a data query or autonomously pushes mCODE data to an mCODE receiver. The data sender does not have to be the originator of the data it possesses.
* **mCODE Data Receiver** - a participant in exchange of mCODE data who accepts mCODE data from an mCODE Data Sender.

US Core defines two actors, US Core Requestor and US Core Responder, which are highly suggestive of a "pull" architecture. In mCODE, we use the terms sender and receiver, which are more neutral with respect to push and pull. However, for all practical purposes, there is an equivalence between US Core Requestor and mCODE Data Receiver, and similarly between US Core Responder and mCODE Data Sender.

#### Capability Statements

[FHIR capability statements](http://hl7.org/fhir/R4/capabilitystatement.html) describe the capabilities of actual implementation or requirements of a desired solution. This IG provides two requirement capability statements, one for mCODE Data Senders, and one for mCODE Data Receivers.

##### Supported Profiles

Each mCODE participant SHOULD support all profiles defined in mCODE unless the participant does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialized role in clinical or information workflows. For example, a Genomics Laboratory may support GenomicsReport, but not vital signs or staging.

Each mCODE participant MUST publish a FHIR CapabilityStatement listing their supported profiles, by declaring the profile in CapabilityStatement.rest.resource.supportedProfile.

Supporting a profile requires implementation of certain behaviors. In particular, mCODE Data Senders MUST:

1. Mark resources with profile assertions documenting the profile(s) they conform to, by populating meta.profile.
2. Support searching by the _profile parameter for the declared profiles.

These are requirements in the base FHIR specification, not additional requirements imposed by mCODE. Refer to the [FHIR Documentation on supported profiles](https://www.hl7.org/fhir/profiling.html#CapabilityStatement.rest.resource.supportedProfile) for details.


##### Supported Operations

TBD

#### mCODE Patients

To facilitate conformance testing, the testing software must be able to determine which patients are "mCODE Patients" -- in scope for mCODE. All patients with confirmed cancer diagnoses SHOULD be covered by mCODE. In FHIR terms, these are patients who have a Condition where Condition.code is a member of the value set `PrimaryOrUncertainBehaviorCancerDisorderVS` and `Condition.verificationStatus` is confirmed.

Due to technical, organizational, or legal reasons, mCODE Data Senders MAY exclude some cancer patients from mCODE. In that case, the mCODE Data Sender MUST implement [profile search](https://www.hl7.org/fhir/search.html#profile) indicate which patients fall into the scope of mCODE by populating `Patient.meta.profile` with the mCODE CancerPatient profile (`http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient`). Patients not explicitly indicated by this method are assumed to be out of scope, regardless of any cancer diagnosis.

#### mCODE Bundle

An mCODE Bundle is the complete set of data for a particular patient corresponding to the set of supported profiles of an mCODE Data Sender. An mCODE Data Sender MUST be capable of producing a valid mCODE bundle for all of its mCODE patients (as defined above).

#### mCODE Profiles

The documentation of each mCODE profile includes criteria for which FHIR resources are expected to comply with that profile. For example, in CancerDiseaseStatus, the conformance criteria states that any resource associated with an mCODE patient (as defined above) that represent an observation of patient's response to cancer treatment SHALL conform to that profile.

Each mCODE profile expresses requirements and expectations for individual mCODE instances in terms of structural constraints and terminology bindings. Any FHIR resources claiming to conform to mCODE must [validate](https://www.hl7.org/fhir/validation.html) against the declared mCODE profile.

#### Conformance to US Core

Most mCODE profiles are based on US Core profiles defined in the [US Core Implementation Guide (v3.1.1)](http://hl7.org/fhir/us/core/index.html). For example, the CancerGeneticVariant profile is based on US Core Laboratory Result Observation Profile and CancerPatient is based on the US Core Patient profile. As such, if a resource validates against any of these mCODE profiles, it will also be in compliance with US Core.

Where US Core does not provide an appropriate base profile, mCODE profiles FHIR resources. Examples include such as CancerRelatedMedicationStatement (based on MedicationStatement) and CancerDiseaseStatus (based on Observation). In the latter case, US Core does not provide a profile for non-laboratory observations. In these cases, resources only need to conform to the mCODE profiles.

#### MustSupport Interpretation

The [MustSupport](https://www.hl7.org/fhir/conformance-rules.html#mustSupport) flag indicates that implementation shall provide "meaningful support" for the element, as defined by its implementation guide. The mCODE definitions of MustSupport encompass the [definitions in US Core](http://hl7.org/fhir/us/core/general-guidance.html#must-support). mCODE defines MustSupport as follows:

* **mCODE Data Sender** - MustSupport is interpreted as "must populate". That is, every required and MustSupport element in a supported mCODE profile SHALL be populated if the Data Sender has that data.

* **mCODE Data Receiver** - MustSupport is interpreted as "must display" or "must store". That is, a Data Receiver SHALL be capable of receiving and displaying or storing each required and MustSupport element in an mCODE bundle, provided the corresponding profile has been declared as a "supportedProfile" in the receiver's capability statement.

#### Missing/Unknown Data Elements

The handling of missing or unknown elements in mCODE is functionally identical to US Core, specifically:

* In situations where information on a particular data element is not present and the reason for absence is unknown, mCODE Data Senders SHALL NOT include the data elements in the resource instance.
* mCODE Data Receivers SHALL interpret missing data elements within resource instances as data not present in the mCODE Data Sender's system.
* In situations where information on a particular data element is missing and the mCODE Data Sender knows the reason for the absence of data, the Data Sender SHALL send the reason for the missing information. The absence reason value SHOULD come first from the element's value set if it exists or otherwise from the dataAbsentReason extension.
* mCODE Data Receivers SHALL be able to process resource instances containing data elements asserting missing information.

#### Required Elements

An mCODE data element is required if any of the following criteria are met:

* The element is a top-level element (a first-level property of the resource) and its minimum cardinality is > 0 in the profile.
* The element not a top-level element (a second-level property or below), its minimum cardinality is > 0, and all elements directly containing that element have minimum cardinality > 0 in the profile.
* The element is not a top-level element, its minimum cardinality is > 0, and its immediate higher-level containing element exists in an _instance_ of the profile.

In other words, a data element may be 1..1, but if it is contained by an optional element, then it is not required unless its containing element is actually present in a given instance of the profile.

mCODE's rules regarding required data elements are the same as <a href="http://hl7.org/fhir/us/core/general-guidance.html#missing-data">US Core's rules</a>. To paraphrase, a Data Sender must provide each required element or an explicit data absent reason for each missing data item, and cannot substitute a nonsense or filler value just to satisfy the data requirement.
