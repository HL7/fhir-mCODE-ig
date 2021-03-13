### Data Dictionary Content

The Data Dictionary (DD) presents mCODE's content in a format that may be more accessible than the default FHIR artifact pages. The DDis a Excel spreadsheet that lists mCODE data elements and some details about them. If there is a discrepancy between the Data Dictionary and the FHIR artifacts, the FHIR artifacts are taken as the source of truth.

The DD intentionally omits certain elements in FHIR that are not expected to be implemented. Please be aware of the following:

* **Profiles not shown in the DD:** Not all profiles used by mCODE are included in the Data Dictionary. mCODE uses external profiles for vital signs and routine laboratory results. These profiles are not included in the DD because they are defined externally to mCODE.

* **Data elements not shown in the DD:** Only elements marked as "Must Support"(MS) are included in data dictionary. These are elements that implementers may be expected to provide meaningful support for; see [Element Support Obligations](conformance-profiles.html#element-support-obligations) for more information. Some of the MS elements are inherited from US Core.

<div markdown="1" class="note-to-balloters">
The STU 2 DD is somewhat different than the STU 1 version. In STU 1, some data elements were suppressed because they were common to most or all profiles, such as the patient, provider, status, and date. However, the redaction of certain elements proved confusing, so the current DD does not continue this practice. As a result, the STU 2 DD lists significantly more data elements.  Many of the "extra" rows are not new at all, but reflect the inclusion of elements redacted in STU 1.
</div>

Download links:

* [Current mCODE Data Dictionary - STU 2 (Excel download)](data-dictionary/mCODEDataDictionary-STU2.xlsx)
* [Former mCODE Data Dictionary - STU 1 (Excel download)](data-dictionary/mCODEDataDictionary-STU1.xlsx)

### Data Dictionary Differential

The Data Dictionary Differential (DDD) provides a detailed comparison between mCODE STU 1 and mCODE STU 2. The DDD is provided for convenience in understanding the changes between STU 1 and STU 2, and is not a formal part of the specification.

Download link:

* [mCODE Data Dictionary Differential STU2 versus STU1 (Excel download)](data-dictionary/mCODEDataDictionary-STU2-vs-STU1.xlsx)
