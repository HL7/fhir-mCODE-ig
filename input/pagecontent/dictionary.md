### Data Dictionary Content

The Data Dictionary (DD) presents mCODE's content in a format that may be more accessible than the default FHIR artifact pages. The DD is an Excel spreadsheet that lists mCODE data elements and some details about them. If there is a discrepancy between the Data Dictionary and the FHIR artifacts, the FHIR artifacts are taken as the source of truth.

The DD intentionally omits certain elements in FHIR that are not expected to be implemented. Please be aware of the following:

* **Profiles not shown in the DD:** Not all profiles used by mCODE are included in the Data Dictionary. mCODE uses external profiles for vital signs and routine laboratory results. These profiles are not included in the DD because they are defined externally to mCODE.

* **Data elements not shown in the DD:** Only elements marked as "Must Support"(MS) are included in data dictionary. These are elements that implementers may be expected to provide meaningful support for; see [Profile-Level Conformance Expectations](conformance-profiles.html#profile-level-conformance-expectations) for more information. Some of the MS elements are inherited from US Core.

Downloads:

* [STU 3 mCODE Data Dictionary (Excel download)](data-dictionary/mCODEDataDictionary-STU3.xlsx)
* [STU 2.1 mCODE Data Dictionary (Excel download)](https://hl7.org/fhir/us/mcode/mCODEDataDictionary-STU2.1.xlsx)


### Data Dictionary Differential

The Data Dictionary Differential (DDD) provides a detailed comparison between mCODE STU 3 and mCODE STU 2.1. The DDD is provided for convenience in understanding the changes between STU 3 and STU 2.1, and is not a formal part of the specification.

Download link:

* [mCODE Data Dictionary Differential STU3 versus STU2.1 (Excel download)](data-dictionary/mCODEDataDictionary-STU3-vs-STU2.1.xlsx)