### Laboratory Tests

Many laboratory tests could be relevant to an individual with cancer. mCODE includes results from two common laboratory panels, the Complete Blood Count (CBC) (Automatic or Manual Differential) and Comprehensive Metabolic Panel (CMP). In practice, there are many variations on these panels, as exemplified by [this list of various CBCs](https://search.loinc.org/searchLOINC/search.zul?query=CBC). The individual LOINC codes of interest to mCODE are broadly any that may be part of various CBC and CMP panels.  

CBC and CMP results can be reported as individual laboratory observations or as panels, using the DiagnosticReport resource. Individual laboratory results must conform to the [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html). Several examples of laboratory result reporting are given in the [US Core IG](http://hl7.org/fhir/us/core/index.html). For example, see this [erythrocytes laboratory reporting example](http://hl7.org/fhir/us/core/Observation-erythrocytes.html).

If DiagnosticReports are submitted, they must conform to [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html). Examples of [CBC reporting](http://hl7.org/fhir/us/core/DiagnosticReport-cbc.html) and [CMP reporting](http://hl7.org/fhir/us/core/DiagnosticReport-metabolic-panel.html) are given in the [US Core IG](http://hl7.org/fhir/us/core/index.html).

Beyond the requirements of US Core, under [Clinical Laboratory Improvement Amendments (CLIA)](https://www.cms.gov/Regulations-and-Guidance/Legislation/CLIA/index.html?redirect=/clia) regulations, laboratory tests must include information on the performing technologist, performing laboratory, and performing laboratory medical director. These three roles would ideally appear as [slices](https://www.hl7.org/fhir/profiling.html#slicing) on Observation.performer and/or DiagnosticReport.performer. However, slicing requires a [discriminator](https://www.hl7.org/fhir/profiling.html#discriminator), a field that can be checked to determine whether a resource found in Observation.performer or DiagnosticReport.performer corresponds to the performing technologist or the performing laboratory medical director. While the performing laboratory can be determined by its resource type, in the current design of FHIR, there is no indicator that would discriminate the roles of the two Practitioner participants.

### Tumor Marker Tests

Tumor markers are key prognostic factors in calculating cancer staging, identifying treatment options, and monitoring progression of disease. For example, an abnormal increase in prostate-specific antigen (PSA) levels is a prognostic factor for prostate cancer. Other tumor markers include estrogen receptor (ER) status, progesterone receptor (PR) status, carcinoembryonic antigen (CEA) levels, among others. mCODE distinguishes tumor marker tests from sequencing-based genomic tests measured at the DNA, RNA, or chromosomal level. The latter are addressed in the [Genomics](group-genomics.html) section.

mCODE includes single FHIR profile, [TumorMarkerTest], for all labs involving serum and tissue-based tumor markers. This is less than ideal, since without specifying units of measure or answer sets on a per-test basis, reporting could vary. However, given the large number of tumor marker tests, creating individual profiles was judged impractical.

### Vital Signs

Vital signs are measurements of the most essential, or "vital" body functions. For mCODE, blood pressure, body height, and body weight are believed to be most critical to assessment and treatment. Instead of defining its own profiles, mCODE uses the [FHIR R4 vital sign profile](http://hl7.org/fhir/R4/observation-vitalsigns.html), which is incorporated into [US Core Version 3.0 and 3.1](http://hl7.org/fhir/us/core/index.html). As of Version 3.2, US Core defines its own set of vital signs profiles. These profiles are derived from the same FHIR base vital sign profile. mCODE accepts vital sign data conforming to either FHIR or US Core profiles. Examples of height, weight, and blood pressure are given in both sources.

### Profiles

* [FHIR Vital Signs](https://www.hl7.org/fhir/observation-vitalsigns.html)
* [US Core Vital Signs](http://hl7.org/fhir/us/core/2021Jan/StructureDefinition-us-core-vital-signs.html) (version 3.2 and higher)
* [TumorMarkerTest]

### Value Set

* [TumorMarkerTestVS]

{% include markdown-link-references.md %}
