### mCODE Roles

Two roles are defined:

* **mCODE Data Sender** - a participant in exchange of mCODE data who provides mCODE data in response to a data query or autonomously pushes mCODE data to an mCODE receiver. The data sender does not have to be the originator of the data it possesses.
* **mCODE Data Receiver** - a participant in exchange of mCODE data who accepts mCODE data from an mCODE Data Sender.

US Core defines two actors, US Core Requestor and US Core Responder, which are highly suggestive of a "pull" architecture. In mCODE, we use the terms Sender and Receiver, which are more neutral with respect to push and pull. However, for all practical purposes, there is an equivalence between US Core Requestor and mCODE Data Receiver, and similarly between US Core Responder and mCODE Data Sender.

### Capability Statements

[FHIR capability statements](http://hl7.org/fhir/R4/capabilitystatement.html) describe the capabilities of actual implementation or requirements of a desired solution. This IG provides capability statements that express requirements for mCODE Data Senders and mCODE Data Receivers.

#### Supported Profiles

Each mCODE participant SHALL support the following profiles, which are core to representing an mCODE patient, UNLESS the necessary data to populate them is typically not available in their system:

* [CancerPatient](StructureDefinition-mcode-cancer-patient.html)
* [PrimaryCancerCondition](StructureDefinition-mcode-primary-cancer-condition.html)
* [MCODEPatientBundle](StructureDefinition-mcode-patient-bundle.html)

Additionally, each mCODE participant SHOULD support all profiles defined in mCODE unless the participant does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialized role in clinical or information workflows. For example, a Genomics Laboratory may support GenomicsReport, but not vital signs or staging.

Each mCODE participant MUST publish a FHIR CapabilityStatement listing their supported profiles, by declaring the profile in CapabilityStatement.rest.resource.supportedProfile.

Supporting a profile requires implementation of certain behaviors. In particular, mCODE Data Senders MUST:

1. Mark resources with profile assertions documenting the profile(s) they conform to, by populating meta.profile.
2. Support searching by the _profile parameter for the declared profiles.

These requirements originate from the base FHIR specification, not additional requirements imposed by mCODE. Refer to the [FHIR Documentation on supported profiles](https://www.hl7.org/fhir/profiling.html#CapabilityStatement.rest.resource.supportedProfile) for details.

Additional [conformance requirements from US Core](http://hl7.org/fhir/us/core/capstatements.html) apply to RESTful interactions, searches, and resource formats.

#### Supported Operations

mCODE participants MUST support either push OR pull operations. They MAY support both. They MUST publish a FHIR CapabilityStatement indicating which operations they support.

##### Pull Model

**mCODE Data Senders** implementing Pull support SHALL support the following operations:

1. **List mCODE Patients**. mCODE Data Senders implementing the Pull Model SHALL implement AT LEAST ONE of the following operations UNLESS they are a specialty system that does not implement `CancerPatient` due to unavailable data as described above.

    1. **Preferred:** Identify Patient resources conforming to [CancerPatient](StructureDefinition-mcode-cancer-patient.html) via the `meta.profile` element. This is the only option for systems implementing mCODE for a subset of cancer patients (see below).

        Systems implementing this option SHALL respond to the following request with a Bundle of Patient resources for all mCODE Patients:

            GET [base]/Patient?_profile=http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient

        <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
        <div style="text-align: center;"><img src="mcode-patients-pull-1.svg" alt="UML swimlane diagram showing mCODE Patients operations in the pull model: Option 1, preferred."></div>

    1. **Fallback:** Identify Patient resources conforming to [CancerPatient](StructureDefinition-mcode-cancer-patient.html) by finding associated Conditions with codes in the [Primary or Uncertain Behavior Cancer Disorder Value Set].

        1. Systems implementing this option SHALL respond to the following request with a Bundle of Patient resources for all mCODE Patients, UNLESS [reverse chaining](https://www.hl7.org/fhir/search.html#has) is not at all supported on the system:

                GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs

                # Return Bundle of Patient resources that are referenced in the subset of Condition resources with a `code` in the Primary or Uncertain Behavior Cancer Disorder Value Set

            <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
            <div style="text-align: center;"><img src="mcode-patients-pull-2_1.svg" alt="UML swimlane diagram showing mCODE Patients operations in the pull model: Option 2.1, fallback."></div>

            If the system does not support reverse chaining, the system SHALL support one of the following fallbacks (ordered from most to least preferred).

        1. Use [`_include`](https://www.hl7.org/fhir/search.html#revinclude) to get a Bundle of the relevant `Patient` resources along with the subset of Condition resources with a `code` in [Primary or Uncertain Behavior Cancer Disorder Value Set](ValueSet-mcode-primary-or-uncertain-behavior-cancer-disorder-vs.html) in a single request:

                GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject

            <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
            <div style="text-align: center;"><img src="mcode-patients-pull-2_2.svg" alt="UML swimlane diagram showing mCODE Patients operations in the pull model: Option 2.2, fallback."></div>

        1. Return a Bundle with the subset of Condition resources with a `code` in [Primary or Uncertain Behavior Cancer Disorder Value Set](ValueSet-mcode-primary-or-uncertain-behavior-cancer-disorder-vs.html) in a single request, AND allow the Requestor to retrieve a Bundle of the Patient resources referenced in the first response using [composite search parameters](https://www.hl7.org/fhir/search.html#combining):

                GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs

                GET [base]/Patient?_id=some_patient_id_1,some_patient_id_2,...,some_patient_id_n

            <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
            <div style="text-align: center;"><img src="mcode-patients-pull-2_3.svg" alt="UML swimlane diagram showing mCODE Patients operations in the pull model: Option 2.3, fallback."></div>

2. **Retrieve mCODE Patient Bundle**. mCODE Data Senders SHALL implement the [this operation](OperationDefinition-mcode-get-patient-bundle.html), which retrieves an mCODE Patient Bundle (defined below) for a given Patient ID.

        GET [base]/$mcode-patient-bundle/[id]

    This endpoint SHALL support `start` and `end` parameters which operate the same as in the [`Patient/$everything` operation](https://www.hl7.org/fhir/operation-patient-everything.html).

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;"><img src="mcode-patient-bundle-pull.svg" alt="UML swimlane diagram showing mCODE Patient Bundle operations in the push model"></div>

**mCODE Data Receivers** implementing Pull support SHALL be able to initiate ALL the requests described above. Additionally, they SHALL be able to read and process ALL individual resources returned by the operations above that conform to mCODE profiles identified as supported by their CapabilityStatements.

##### Push Model

mCODE Data Receivers implementing Push support SHALL support the following operations:

1. **Receive mCODE Patients** (defined below). mCODE Data Receivers implementing the Push Model SHALL accept and process a Patient resource sent in the body of a request made to the following endpoint:

        POST [base]/Patient

    Receivers SHALL allow Patient resources to be updated via the following endpoint:

        PUT [base]/Patient/[id]

    Receivers MAY allow Senders to specify an `id` for a new record using ["Update as Create"](https://www.hl7.org/fhir/http.html#upsert).

    The following swimlane diagram depicts the operation described above:

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;"><img src="mcode-patients-push.svg" alt="UML swimlane diagram showing mCODE Patients operations in the push model"></div>

2. **Receive mCODE Patient Bundle**.  mCODE Data Receivers implementing the Push Model SHALL accept and process an mCODE Patient Bundle sent in the body of a request made to the following endpoint.

        POST [base]/Bundle

    Receivers SHALL be able to read and process ALL individual resources contained within an mCODE Patient Bundle that conform to mCODE profiles identified as supported by their CapabilityStatements. The `id` for the Bundle resource should match the `id` of the contained CancerPatient-conforming resource. In other words, there should be a 1:1 relationship between an mCODE Patient Bundle and a CancerPatient-conforming Patient resource.

    Receivers SHALL allow these resources to be updated via an mCODE Patient Bundle sent to the following endpoint, where `[id]` is the same as the `id` element in the contained CancerPatient-conforming resource:

        PUT [base]/Bundle/[id]

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;"><img src="mcode-patient-bundle-push.svg" alt="UML swimlane diagram showing mCODE Patient Bundle operations in the push model"></div>

**mCODE Data Senders** implementing Push support SHALL be able to initiate all the requests described above.

### mCODE Patients

To facilitate conformance testing, the testing software must be able to determine which patients are "mCODE Patients" -- in scope for mCODE. All patients with confirmed cancer diagnoses SHOULD be covered by mCODE. In FHIR terms, these are patients who have a Condition where Condition.code is a member of the value set [`PrimaryOrUncertainBehaviorCancerDisorderVS`](ValueSet-mcode-primary-or-uncertain-behavior-cancer-disorder-vs.html) and `Condition.verificationStatus` is confirmed.

Due to technical, organizational, or legal reasons, mCODE Data Senders MAY exclude some cancer patients from mCODE. In that case, the mCODE Data Sender MUST implement [profile search](https://www.hl7.org/fhir/search.html#profile) and indicate which patients fall into the scope of mCODE by populating `Patient.meta.profile` with the mCODE CancerPatient profile (`http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient`). Patients not explicitly indicated by this method are assumed to be out of scope, independent of any cancer diagnosis.

### mCODE Patient Bundle

An [mCODE Patient Bundle](StructureDefinition-mcode-patient-bundle-definitions.html) is the complete set of data for a particular patient corresponding to the set of supported profiles of an mCODE Data Sender. An mCODE Data Sender MUST be capable of producing a valid mCODE bundle for all of its mCODE patients (as [defined above](#mcode-patients)).

mCODE Patient Bundles SHALL be identified by an `id` value that matches the `id` in the contained CancerPatient-conforming resource.

### mCODE Profiles

The documentation of each mCODE profile includes criteria for which FHIR resources are expected to comply with that profile. For example, in CancerDiseaseStatus, the conformance criteria states that any resource associated with an mCODE patient (as [defined above](#mcode-patients)) that represent an observation of patient's response to cancer treatment SHALL conform to that profile.

Each mCODE profile expresses requirements and expectations for individual mCODE instances in terms of structural constraints and terminology bindings. Any FHIR resources claiming to conform to mCODE must [validate](https://www.hl7.org/fhir/validation.html) against the declared mCODE profile.

### Conformance to US Core

Most mCODE profiles are based on US Core profiles defined in the [US Core Implementation Guide (v3.1.1)](http://hl7.org/fhir/us/core/index.html). For example, the CancerGeneticVariant profile is based on US Core Laboratory Result Observation Profile and CancerPatient is based on the US Core Patient profile. If a resource validates against any of the US Core-based mCODE profiles, it will be in compliance with US Core.

Where US Core does not provide an appropriate base profile, mCODE profiles FHIR resources. An example is CancerDiseaseStatus, based on Observation because US Core does not provide a profile for non-laboratory observations.

### MustSupport Interpretation

The [MustSupport](https://www.hl7.org/fhir/conformance-rules.html#mustSupport) flag indicates that implementation shall provide "meaningful support" for the element, as defined by its implementation guide. The mCODE definitions of MustSupport encompass the [definitions in US Core](http://hl7.org/fhir/us/core/general-guidance.html#must-support). mCODE defines MustSupport as follows:

* **mCODE Data Sender** - MustSupport is interpreted as "must populate". That is, every required and MustSupport element in a supported mCODE profile SHALL be populated if the Data Sender has that data.

* **mCODE Data Receiver** - MustSupport is interpreted as "must display" or "must store". That is, a Data Receiver SHALL be capable of receiving and displaying or storing each required and MustSupport element in an mCODE bundle, provided the corresponding profile has been declared as a "supportedProfile" in the receiver's capability statement.

### Missing/Unknown Data Elements

The handling of missing or unknown elements in mCODE is functionally identical to US Core, specifically:

* In situations where information on a particular data element is not present and the reason for absence is unknown, mCODE Data Senders SHALL NOT include the data elements in the resource instance.
* mCODE Data Receivers SHALL interpret missing data elements within resource instances as data not present in the mCODE Data Sender's system.
* In situations where information on a particular data element is missing and the mCODE Data Sender knows the reason for the absence of data, the Data Sender SHALL send the reason for the missing information. The absence reason value SHOULD come first from the element's value set if it exists or otherwise from the dataAbsentReason extension.
* mCODE Data Receivers SHALL be able to process resource instances containing data elements asserting missing information.

### Required Elements

An mCODE data element is required if any of the following criteria are met:

* The element is a top-level element (a first-level property of the resource) and its minimum cardinality is > 0 in the profile.
* The element not a top-level element (a second-level property or below), its minimum cardinality is > 0, and all elements directly containing that element have minimum cardinality > 0 in the profile.
* The element is not a top-level element, its minimum cardinality is > 0, and its immediate higher-level containing element exists in an _instance_ of the profile.

In other words, a data element may be 1..1, but if it is contained by an optional element, then it is not required unless its containing element is actually present in a given instance of the profile.

mCODE's rules regarding required data elements are the same as <a href="http://hl7.org/fhir/us/core/general-guidance.html#missing-data">US Core's rules</a>. To paraphrase, a Data Sender must provide each required element or an explicit data absent reason for each missing data item, and cannot substitute a nonsense or filler value just to satisfy the data requirement.

[Primary or Uncertain Behavior Cancer Disorder Value Set]: ValueSet-mcode-primary-or-uncertain-behavior-cancer-disorder-vs.html