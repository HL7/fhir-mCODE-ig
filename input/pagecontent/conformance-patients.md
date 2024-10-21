To facilitate conformance testing, testing software must be able to determine which patients are "in-scope" (meaning cancer patients whose data is presented or exchanged with the intention of conforming to mCODE). In FHIR terms, these are patients who have a Condition where `Condition.code` is a member of the value set [PrimaryCancerDisorderVS] and `Condition.verificationStatus` is confirmed.

However, due to technical, organizational, or legal reasons, mCODE Data Senders MAY exclude some cancer patients from mCODE. In that case, the mCODE Data Sender SHALL define a Group resource to identify ALL in-scope patients in their system. This Group resource SHALL set `Group.code` to `C19700` with code system `http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl` (this is the NCI code for concept "Cancer Patient"). Data Senders that do not exclude any cancer patients from mCODE MAY still populate a Group resource.

All mCODE Data Senders SHALL respond to `GET [base]/Group?code=C19700` with either zero or one Group resource. If no Group resource is returned, all patients with cancer diagnoses (as defined above) will be considered to be in-scope. If a Group resource is returned, patients not referenced in the Group resource are assumed to be out of scope, independent of any cancer diagnosis. This requirement is reflected in ALL CapabilityStatements referenced in this section.

The following CapabilityStatements define the various methods participants can use to identify in-scope Patients. Participants implementing a pull architecture SHALL support at least one of the CapabilityStatements listed from **most to least preferable**, below.

### Patients-in-Group Approach

In this approach, Senders respond to the following request with a Group resource referencing the Patient resources for all in-scope Patients, AND allow the Receiver to retrieve a Bundle of the Patient resources referenced in the first response using [composite search parameters](https://www.hl7.org/fhir/search.html#combining):

    GET [base]/Group?code=C19700

    GET [base]/Patient?_id=some_patient_id_1,some_patient_id_2,...,some_patient_id_n

**CapabilityStatements:**
* Sender: [mcode-sender-patients-in-group]
* Receiver: [mcode-receiver-patients-in-group]

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div style="text-align: center;">{%include patients-in-group.svg%}</div>


### Patients-With-Cancer-Condition Approach

In this approach, Senders respond to the following request with a FHIR Bundle of Patient resources for all in-scope Patients. This method is preferred over the approaches below UNLESS [reverse chaining](https://www.hl7.org/fhir/search.html#has) is entirely unsupported on the system.

    GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs

**Capability Statements:**

* Sender: [mcode-sender-patients-with-cancer-condition]
* Receiver: [mcode-receiver-patients-with-cancer-condition]

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div style="text-align: center;">{%include patients-with-cancer-condition.svg%}</div>


### Patient-Then-Cancer-Conditions Approach

In this approach, Senders can respond to a request using [`_include`](https://www.hl7.org/fhir/search.html#revinclude) to get a Bundle of the relevant Patient resources along with the subset of Condition resources with `Condition.code` in [Primary Cancer Disorder Value Set][PrimaryCancerDisorderVS] in a single request. Preferred over the approach below UNLESS `_include` is entirely unsupported on the system.

    GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject


**Capability Statements:**

* Sender: [mcode-sender-patients-and-cancer-conditions]
* Receiver: [mcode-receiver-patients-and-cancer-conditions]

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div style="text-align: center;">{%include patients-and-cancer-conditions.svg%}</div>


### Conditions-Then-Patients Approach

In this approach, Senders will return a Bundle with the subset of Condition resources with a `code` in the [Primary Cancer Disorder Value Set][PrimaryCancerDisorderVS] in a single request, AND allow the Receiver to retrieve a Bundle of the Patient resources referenced in the first response using [composite search parameters](https://www.hl7.org/fhir/search.html#combining):

    GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs

    GET [base]/Patient?_id=some_patient_id_1,some_patient_id_2,...,some_patient_id_n

**Capability Statements:**

* Sender: [mcode-sender-cancer-conditions-then-patients]
* Receiver: [mcode-receiver-cancer-conditions-then-patients]

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div style="text-align: center;">{%include cancer-conditions-then-patients.svg%}</div>


{% include markdown-link-references.md %}
