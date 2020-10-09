
#### mCODE Roles

Two roles are defined:

* **mCODE Data Sender** - a participant in exchange of mCODE data who provides mCODE data in response to a data query or autonomously pushes mCODE data to an mCODE receiver. The data sender does not have to be the originator of the data it possesses.
* **mCODE Data Receiver** - a participant in exchange of mCODE data who accepts mCODE data from an mCODE Data Sender.

#### Capability Statements

TBD

#### mCODE Patients

To facilitate conformance testing, the testing software must be able to determine which patients are included under mCODE. All patients with confirmed cancer diagnoses SHOULD BE covered by mCODE. In FHIR terms, these are patients who have a Condition where Condition.code is a member of the value set `PrimaryOrUncertainBehaviorCancerDisorderVS` and `Condition.verificationStatus` is confirmed.

Due to technical, organizational, or legal reasons, mCODE Data Senders MAY exclude some cancer patients from mCODE. If that is the case, the mCODE Data Sender MUST indicate which patients fall into the scope of mCODE by populating `Patient.meta.profile` with the mCODE CancerPatient profile (`http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient`) AND implementing [profile search](https://www.hl7.org/fhir/search.html#profile).

To restate, for mCODE testing purposes, the following patients are assumed to be in scope:

1. All patients having a confirmed cancer diagnosis, if the mCODE Data Provider by policy does not populate Patient.meta.profile or support _profile search; or,
2. The subset of cancer patients explicitly indicated as conforming to the mCODE CancerPatient profile in meta.profile.

#### mCODE Bundle

The mCODE Bundle is the complete set of data defined by mCODE for a particular patient. An mCODE Data Sender MUST be capable of producing a valid mCODE bundle for all of its mCODE patients (as defined above).

#### mCODE Profiled Resources

The documentation with each mCODE profile includes criteria for which FHIR resources are expected to comply with that profile. For example, in CancerDiseaseStatus, it states that any Observation associated with an mCODE patient (as defined above) and using LOINC code 88040-1 and SHALL conform to that profile.

#### Conformance to US Core

Most mCODE profiles are based on US Core profiles defined in the [US Core Implementation Guide (v3.1.1)](http://hl7.org/fhir/us/core/index.html). For example, the CancerGeneticVariant profile is based on US Core Laboratory Result Observation Profile and CancerPatient is based on the US Core Patient profile. As such, if a resource validates against an mCODE profile, automatically it will be in compliance with US Core.

Where US Core does not provide an appropriate base profile, mCODE profiles FHIR resources. Examples include such as CancerRelatedMedicationStatement (based on MedicationStatement) and CancerDiseaseStatus (based on Observation). In the latter case, US Core does not provide a profile for non-laboratory observations. In these cases, resources only need to conform to the mCODE profiles.

#### "Must Support" Interpretation

The [MustSupport](https://www.hl7.org/fhir/conformance-rules.html#mustSupport) flag indicates that implementation shall provide "meaningful support" for the element, as defined by its implementation guide. In mCODE, there are two sources of MustSupport elements: flags inherited from US Core, and flags defined in mCODE. To conform to US Core, the MustSupport elements inherited from US Core must follow the interpretation of MustSupport [defined in US Core](http://hl7.org/fhir/us/core/general-guidance.html#must-support).

Elements defined as MustSupport in mCODE do not follow the US Core rules. MustSupport elements defined in mCODE shall be interpreted as follows:

* **mCODE Data Sender** - MustSupport is interpreted as "must populate". That is, every MustSupport element in a profiled mCODE resource SHALL to be provided to an mCODE Data Receiver if the data sender has that data.
* **mCODE Data Receiver** - MustSupport is interpreted as "must display" or "must store". SHALL be capable of receiving and diplaying each required and MustSupport element in mCODE, if the profile has been declared as a "supportedProfile" in the receiver's <a href="http://hl7.org/fhir/R4/capabilitystatement.html" target="_blank">capability statement</a>.
    
Unfortunately, FHIR does not have the ability to track the source of MustSupport flags, and the only way to know where a MustSupport flag is defined is by direct comparison of US Core and mCODE profiles.

#### Required Elements

An mCODE data element is required if any of the following criteria are met:

* The element is a top-level element (a first-level property of the resource) and its minimum cardinality is &gt; 0 in the profile.
* The element not a top-level element (a second-level property or below), its minimum cardinality is &gt; 0, and all elements directly containing that element have minimum cardinality &gt; 0 in the profile.
 * The element is not a top-level element, its minimum cardinality is &gt; 0, and its immediate higher-level containing element exists in an <em>instance</em> of the profile.

In other words, a data element may be 1..1, but if it is contained by an optional element, then it is not required unless its containing element is actually present in a given instance of the profile.

mCODE's rules regarding required data elements are the same as <a href="http://hl7.org/fhir/us/core/general-guidance.html#missing-data">US Core's rules</a>. To paraphrase those rules, a Data Sender must provide each required element or an explicit data absent reason for each missing data item.

#### Minimum Requirement for "mCODE Conformance"
The mCODE IG outlines conformance requirements and expectations for individual mCODE instances in terms of structural constraints and terminology bindings. Any FHIR resources claiming to conform to mCODE must [validate](https://www.hl7.org/fhir/validation.html) against the declared mCODE profile.

At present, there are no additional conformance rules on what mCODE data is to be collected, by whom, and when, or when that data is to be exchanged. mCODE Data Senders and Data Receivers may choose the subset of mCODE resources they support, according to their business needs. For example, a Genomics Laboratory may support GenomicsReport, but not vital signs or staging.  
<a href="http://hl7.org/fhir/R4/capabilitystatement.html" target="_blank">FHIR capability statements</a> describe the capabilities of actual implementation or requirements of a desired solution. This IG does not include sample capability statements. The expectation is to use implementation experience collected during the STU period to model the different types of actors (such as medical oncologist, radiologist, genomics laboratory, etc.), and define appropriate capability statements for each, including search parameters and operations.

#### Potential for International Version of mCODE

Although the current version of mCODE is US-specific, there is a potential for an international version of mCODE. If interested, please contact one of the authors.
