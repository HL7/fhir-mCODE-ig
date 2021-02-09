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
| Teleradiotherapy Prescription Delivery | yes | US Core Procedure |
| TNM Distant Metastases Category | no | Observation |
| TNM Primary Tumor Category | no | Observation |
| TNM Regional Nodes Category | no | Observation |
| TNM Stage Group | no | Observation |
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

An mCODE data element is required if any of the following criteria are met:

* The element is a top-level element (a first-level property of the resource) and its minimum cardinality is > 0 in the profile.
* The element not a top-level element (a second-level property or below), its minimum cardinality is > 0, and all elements directly containing that element have minimum cardinality > 0 in the profile.
* The element is not a top-level element, its minimum cardinality is > 0, and its immediate higher-level containing element exists in an _instance_ of the profile.

In other words, a data element may be `1..1`, but if it is contained by an optional element, then it is not required unless its containing element is actually present in a given instance of the profile.

For every required element in mCODE, Data Senders MUST either (1) provide data for the element; or (2) follow [US Core's rules](http://hl7.org/fhir/us/core/general-guidance.html#missing-data) for handling missing data for required elements. mCODE Data Senders MUST NOT substitute a nonsense or filler value just to satisfy the cardinality requirement for a required element.

#### Must Support

mCODE follows [US Core version 3.2 interpretation of MustSupport](http://hl7.org/fhir/us/core/2021Jan/conformance-expectations.html#must-support-elements).

{% include markdown-link-references.md %}
