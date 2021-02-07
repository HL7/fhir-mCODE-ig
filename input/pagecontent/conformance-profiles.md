
### Conforming with mCODE Profiles

Each [mCODE profile](artifacts.html#1) includes conformance criteria describing which resources MUST or SHOULD conform to mCODE profiles. For example, in [CancerDiseaseStatus], the conformance criteria states that any resource associated with an mCODE Patient (as [defined above](#identify-mcode-patients)) that represent an observation of patient's response to cancer treatment MUST conform to that profile.

Each mCODE profile expresses requirements and expectations for individual mCODE instances in terms of structural constraints and terminology bindings. Any FHIR resources claiming to conform to mCODE MUST [validate](https://www.hl7.org/fhir/validation.html) against the declared mCODE profile.


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

{% include markdown-link-references.md %}
