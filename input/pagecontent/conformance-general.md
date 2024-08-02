
This section outlines requirements and recommendations for mCODE participants. The conformance verbs - SHALL, SHOULD, and MAY - are defined in [FHIR Conformance Rules](http://hl7.org/fhir/R4/conformance-rules.html). MUST, MUST NOT, SHALL NOT, and REQUIRED are to be interpreted as described in [RFC 2119](https://tools.ietf.org/html/rfc2119). 

### mCODE Participant Roles

Two roles for **mCODE Participants** are defined:

* **mCODE Data Sender** - a participant in exchange of mCODE data who provides mCODE data in response to a data query or autonomously pushes mCODE data to an mCODE receiver. The Data Sender does not have to be the originator of the data it possesses. The Data Sender role is similar to a [US Core Responder](https://www.hl7.org/fhir/us/core/#us-core-actors), except the data sent is not assumed to be a response to a query.
* **mCODE Data Receiver** - a participant in exchange of mCODE data who accepts mCODE data from an mCODE Data Sender. The Data Receiver may receive data as part of a predetermined workflow, or initiate the exchange via a query or on a regular basis via subscription. The Receiver role is similar to a [US Core Requestor](https://www.hl7.org/fhir/us/core/#us-core-actors), except the data does not have to be explicitly requested.

This IG currently only provides CapabilityStatements and documentation for "pull" (query-response) architectures, however, regardless how exchanges occur, all participants SHALL follow the conformance requirements in this IG, **except** those specifically identified as applying only to pull architectures.

### "SHALL" Requirements for Conformance

mCODE participants SHALL meet the following requirements for conformance:

1. [Identify in-scope patients](#identify-in-scope-patients)
1. [Follow conformance requirements for supported profiles](#follow-conformance-requirements-for-supported-profiles)
1. [Populate and meaningfully process mCODE resources](#populate-and-meaningfully-process-mcode-resources)
1. [Support querying mCODE-conforming resources](#support-querying-mcode-conforming-resources)
1. [Publish a CapabilityStatement identifying supported profiles and operations](#publish-a-capabilitystatement-identifying-supported-profiles-and-operations)
1. [Support US Core conformance requirements](#support-us-core-conformance-requirements)


#### Identify In-Scope Patients

To facilitate conformance testing, testing software must be able to determine which patients are "in-scope" (meaning cancer patients whose data is presented or exchanged with the intention of conforming to mCODE). In general, all patients with confirmed cancer diagnoses SHOULD be covered by mCODE, but mCODE provides several ways to identify this group of in-scope patients. See the [Identifying In-Scope Patients](conformance-patients.html) page for details.

#### Follow Conformance Requirements for Supported Profiles

The information produced and consumed by mCODE participants is defined by a set of profiles. Both Senders and Receivers must conform to the expectations set by these profiles. See the [Profile Conformance](conformance-profiles.html) page for details.

#### Populate and Meaningfully Process mCODE Resources

mCODE Senders MUST be able to populate data elements Must-Support (MS) obligations, for all profiles they support (as declared in their CapabilityStatement). Receivers MUST be able to meaningfully process elements with MS obligations for each profile they support (as declared in their CapabilityStatement). "Able to Populate" and "Meaningfully Process" have particular meanings, as discussed on the [Profile Conformance](conformance-profiles.html) page.

#### Support Querying mCODE-Conforming Resources

mCODE defines operations that Senders and Receivers use to exchange mCODE information. In a "pull" (query-response) architecture, Senders SHALL support the requests below for retrieving all resources conforming to a given mCODE Profile, UNLESS they do not support the profile at all (see ["Support All mCODE Profiles"](#support-all-mcode-profiles) below). For more details on the conformance requirements for Senders and Receivers, see [Profile Conformance](conformance-profiles.html).

Note that the requests below may return resources associated with patients who are not [in-scope patients]. These resources MAY not conform to mCODE profiles.

* Patient
  * [CancerPatient]\: see [Identifying In-Scope Patients](conformance-patients.html) for the options to retrieve all conforming resources
  * [HumanSpecimen]\: Depends on type, for example: `GET [base]/Specimen?type=http://terminology.hl7.org/CodeSystem/v2-0487|TUMOR` (note that `TUMOR` must be capitalized)
  * [MCODEPatientBundle]\: see [Support the mCODE Bundle](#support-the-mcode-patient-bundle)
  * [MCODEPatientGroup]\: n/a

* Disease
  * Diagnosis
    * [PrimaryCancerCondition]\: `GET [base]/Condition?category=http://snomed.info/sct|372087000` (preferred form)
    * [PrimaryCancerCondition]\: `GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs` (alternate form)
    * [SecondaryCancerCondition]\: `GET [base]/Condition?category=http://snomed.info/sct|128462008` (preferred form)
    * [SecondaryCancerCondition]\: `GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/CancerStageTypeVS` (alternate form)
  * Staging
    * Note: This single query returns all resources compliant with the profiles [CancerStage], [TNMStageGroup], [TNMPrimaryTumorCategory], [TNMRegionalNodesCategory], and [TNMDistantMetastasesCategory]:
    * [CancerStage]\: `GET [base]/Observation?category= http://snomed.info/sct|385356007` (preferred form)
    * [CancerStage]\: `GET [base]/Observation?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-cancer-stage-type-vs` (alternate form)
  * Characterization
    * [TumorMarkerTest]\: `GET [base]/Observation?category=http://snomed.info/sct|250724005` (preferred form)
    * [TumorMarkerTest]\: `GET [base]/Observation?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-tumor-marker-test-vs` (alternate form)

* Assessment
  * [Comorbidities]\: `GET [base]/Observation?code=http://snomed.info/sct|398192003`
  * [ECOGPerformanceStatus]\: `GET [base]/Observation?code=http://loinc.org|89247-1`
  * [KarnofskyPerformanceStatus]\: `GET [base]/Observation?code=http://loinc.org|89243-0`
  * [FHIR Vital Signs](https://www.hl7.org/fhir/observation-vitalsigns.html) and [US Core Vital Signs](https://hl7.org/fhir/us/core/3.2.0/StructureDefinition-us-core-vital-signs.html): `GET [base]/Observation?category=vital-signs`
  * [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html): `GET [base]/DiagnosticReport?category=LAB` (note that `LAB` must be capitalized)
  * [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html): `GET [base]/Observation?category=laboratory`

* Genomics
  * [GenomicVariant]\: `GET [base]/Observation?code=http://loinc.org|69548-6`
  * [HumanSpecimen]\: Resources referenced in the `specimen` element in resources conforming to [GenomicVariant] or [GenomicsReport]
  * [GenomicsReport]\: `GET [base]/DiagnosticReport?code=http://loinc.org|81247-9`
  * [GenomicRegionStudied]\: `GET [base]/Observation?code=http://loinc.org|53041-0`

* Treatment
  * Medication
    * [CancerRelatedMedicationRequest]\: Resources conforming to this profile MAY be identified by (1) a code from [CancerDisorderVS] in the `reasonCode` element, and/or (2) a reference to a resource conforming to [PrimaryCancerCondition] or [SecondaryCancerCondition] in the `reasonReference` element. Because these elements are not required, these criteria may not identify all conforming resources.
    * [CancerRelatedMedicationAdministration]\: Same as [CancerRelatedMedicationRequest] as described above.
  * Surgery
    * [CancerRelatedSurgicalProcedure]\: `GET [base]/Procedure?code=http://snomed.info/sct|387713003` will identify all surgical procedures. `Procedure.code` is extensibly bound to [CancerRelatedSurgicalProcedureVS], so further filtering to include only Procedures with `code` in this value set will identify some but not necessarily all cancer-related surgical procedures.
  * Radiotherapy
    * [RadiotherapyCourseSummary]\: `GET [base]/Procedure?code=mcode-radiotherapy-course-summary`

* Outcome
  * [CancerDiseaseStatus]\: `GET [base]/Observation?code=http://loinc.org|88040-1`
  * [Tumor]\: Not identifiable as there are no required elements with fixed values or required value sets in this profile. Note that `BodyStructure.morphology` is fixed to `http://snomed.info/sct|367651003`, but this is not a required element. This may therefore be used to identify some but not all BodyStructure resources conforming to this profile.
  * [TumorSize]\: `GET [base]/Observation?code=http://loinc.org|21889-1`

#### Publish a CapabilityStatement Identifying Supported Profiles and Operations

Each mCODE participant SHALL publish a FHIR CapabilityStatement listing their supported profiles, by declaring the profile in `CapabilityStatement.rest.resource.supportedProfile`. The CapabilityStatement SHALL be returned in response to a `GET [base]/metadata` request.

ALL mCODE participants SHALL at minimum support the [CancerPatient] and [PrimaryCancerCondition] profiles.

#### Support US Core Conformance Requirements

Additional [conformance requirements from US Core](https://hl7.org/fhir/us/core/general-requirements.html) apply to RESTful interactions, searches, and resource formats in mCODE. mCODE "inherits" all US Core conformance requirements. US Core provides base profiles for many (but not all) mCODE profiles, outlines expectations for handling of missing or unknown data elements, and outlines how to associate provenance information associated with collection, transfer, and updating clinical information.

International users of mCODE may find US Core an impediment to implementation. Application of mCODE to other countries is open to further discussion.

### "SHOULD" Recommendations for Conformance

mCODE participants SHOULD meet the following requirements for conformance:

1. [Support all mCODE Profiles](#support-all-mcode-profiles)
1. [Support the mCODE Patient Bundle](#support-the-mcode-patient-bundle)

#### Support All mCODE Profiles

In addition to supporting the core profiles as described above, mCODE participants SHOULD support all profiles defined in mCODE UNLESS the participant does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialized role in clinical or information workflows. For example, a genomics laboratory may support [GenomicsReport], but not vital signs or staging.

Participants SHOULD also support the non-mCODE-specific profiles that are considered part of an [mCODE Patient Bundle][MCODEPatientBundle], such as [blood pressure](http://hl7.org/fhir/StructureDefinition/bp).

#### Support the mCODE Patient Bundle

The [mCODE Patient Bundle][MCODEPatientBundle] provides a mechanism to retrieve cancer-related resources for an in-scope Patient. Participants SHOULD support this CapabilityStatement ([sender][mcode-sender-patient-bundle]/[receiver][mcode-receiver-patient-bundle]) for the [mcode-patient-everything] operation, which retrieves an mCODE Patient Bundle for a given Patient ID.

    GET [base]/Patient/[id]/$mcode-everything

This endpoint SHALL support `start` and `end` parameters and MAY support the `_since`, `_type`, and `_count` parameters, which operate the same as in the [`Patient/[id]/$everything` operation](https://www.hl7.org/fhir/operation-patient-everything.html). The _since parameter is provided to support periodic queries to obtain additional information that has changed about the patient since the last query.

For some types of resources, such as vital signs, a large number of resources may exist. Senders may use their discretion to select the resources that are most relevant, e.g., a subset of the vital signs that were recorded. Alternatively, servers may refuse to serve the request and indicate that the client asked for too much data (see [OperationOutcome](https://www.hl7.org/fhir/operationoutcome.html)). To limit the number of included resources, callers MAY specify a `_count` parameter that pages through the results.

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div style="text-align: center;">{%include mcode-patient-bundle-pull.svg%}</div>

mCODE Patient Bundles SHALL be identified by an `id` value that matches the `id` in the contained CancerPatient-conforming resource.

#### Use `meta.profile` to Signal Conformance

Participants SHOULD populate `meta.profile` elements for all resources to indicate which profiles the resources claim to conform to. Servers SHOULD also implement [profile search](https://www.hl7.org/fhir/search.html#profile), which allows participants to query using the `_profile` parameter to return resources conforming to the profiles declared in `meta.profile`.

Profile search and population of `meta.profile` originate as "SHALL" requirements in the base FHIR specification; they are not additional requirements imposed by mCODE. However, in practice, few implementations have followed these requirements. Refer to the [FHIR Documentation on supported profiles](https://www.hl7.org/fhir/profiling.html#CapabilityStatement.rest.resource.supportedProfile) for details.

### Capability Statements

* **Receiver**
  * [mcode-receiver-patient-bundle]
* **Sender**
  * [mcode-sender-patient-bundle]

### Operations

* [mcode-patient-everything]

{% include markdown-link-references.md %}
