### Data Dictionary

The Data Dictionary presents mCODE's content in a format that may be more accessible than the default FHIR artifact pages. The Data Dictionary is a Excel spreadsheet that lists mCODE data elements and some details about them. If there is a discrepancy between the Data Dictionary and the FHIR artifacts, the FHIR artifacts are taken as the source of truth.

The DD intentionally omits certain elements in FHIR that are not expected to be implemented. Please be aware of the following:

* **Profiles not shown in data dictionary:** Not all profiles used by mCODE are included in the Data Dictionary. mCODE uses external profiles for vital signs and routine laboratory results. These profiles are not included in the Data Dictionary because they are defined externally to mCODE.

* **Data elements not shown in data dictionary:** Only elements marked as "Must Support"(MS) are included in data dictionary. These are elements that implementers may be expected to provide meaningful support for; see [Must Support Obligations](conformance-profiles.html#must-support-obligations) for more information. Some of the MS elements are inherited from US Core.

Download links:

* [Current mCODE Data Dictionary - STU 2 (Excel download)](data-dictionary/mCODEDataDictionary-STU2.xlsx)
* [Former mCODE Data Dictionary - STU 1 (Excel download)](data-dictionary/mCODEDataDictionary-STU1.xlsx)

### Data Dictionary Differential

The Data Dictionary Differential provides a detailed comparison between mCODE STU 1 and mCODE STU 2.

The Data Dictionary Differential is provided for convenience in understanding the changes between STU 1 and STU 2, and is not a formal part of the specification.

Download link:

* [mCODE Data Dictionary Differential STU2 versus STU1 (Excel download)](data-dictionary/mCODEDataDictionary-STU2-vs-STU1.xlsx)

### Other Download Links

* [Full Specification (zip)](full-ig.zip)
* [Package (tgz)](package.tgz)
* [JSON Definitions (zip)](definitions.json.zip)
* [JSON Examples (zip)](examples.json.zip)
* [XML Definitions (zip)](definitions.xml.zip)
* [XML Examples (zip)](examples.ttl.zip)
* [Turtle Definitions](definitions.ttl.zip)
