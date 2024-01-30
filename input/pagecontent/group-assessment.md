The mCODE **Assessment** group contains information related to the patient's general health, before and during treatment.

### Comorbidities

Comorbidities are important in the prognosis and treatment of cancer. Any existing or new conditions can be designated as comorbidities.

### Performance Assessments

mCODE supports the [Eastern Cooperative Oncology Group (ECOG) Performance Status](https://ecog-acrin.org/resources/ecog-performance-status), [Karnofsky Performance Status (KPS)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3722041/), [Lansky Play Performance Status](https://pubmed.ncbi.nlm.nih.gov/4027922/), and [Deauville Assessment](https://www.ncbi.nlm.nih.gov/books/NBK65726/table/CDR0000062933__831/). Because performance assessments may be performed more than once over a period of time, multiple instances may exist for a single patient.

### Laboratory Tests

Many laboratory tests could be relevant to an individual with cancer. mCODE includes results from two common laboratory panels, the Complete Blood Count (CBC) (Automatic or Manual Differential) and Comprehensive Metabolic Panel (CMP). In practice, there are many variations on these panels, as exemplified by [this list of various CBCs](https://search.loinc.org/searchLOINC/search.zul?query=CBC). The individual LOINC codes of interest to mCODE are broadly any that may be part of various CBC and CMP panels.

CBC and CMP results can be reported as individual laboratory observations or as panels, using the DiagnosticReport resource. Individual laboratory results must conform to the [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html). Several examples of laboratory result reporting are given in the [US Core IG](http://hl7.org/fhir/us/core/index.html). For example, see this [erythrocytes laboratory reporting example](http://hl7.org/fhir/us/core/Observation-erythrocytes.html).

If DiagnosticReports are submitted, they must conform to [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html). Examples of [CBC reporting](http://hl7.org/fhir/us/core/DiagnosticReport-cbc.html) and [CMP reporting](http://hl7.org/fhir/us/core/DiagnosticReport-metabolic-panel.html) are given in the [US Core IG](http://hl7.org/fhir/us/core/index.html).

Beyond the requirements of US Core, under [Clinical Laboratory Improvement Amendments (CLIA)](https://www.cms.gov/Regulations-and-Guidance/Legislation/CLIA/index.html?redirect=/clia) regulations, laboratory tests must include information on the performing technologist, performing laboratory, and performing laboratory medical director. These three roles would ideally appear as [slices](https://www.hl7.org/fhir/profiling.html#slicing) on Observation.performer and/or DiagnosticReport.performer. However, slicing requires a [discriminator](https://www.hl7.org/fhir/profiling.html#discriminator), a field that can be checked to determine whether a resource found in Observation.performer or DiagnosticReport.performer corresponds to the performing technologist or the performing laboratory medical director. While the performing laboratory can be determined by its resource type, in the current design of FHIR, there is no indicator that would discriminate the roles of the two Practitioner participants.

### Vital Signs

Vital signs are measurements of the most essential, or "vital" body functions. For mCODE, blood pressure, body height, body weight, and body surface area are believed to be most critical to assessment and treatment. Instead of defining its own profiles, mCODE mostly uses the [FHIR R4 vital sign profile](http://hl7.org/fhir/R4/observation-vitalsigns.html), which is incorporated into [US Core](http://hl7.org/fhir/us/core/index.html). However, mCODE does define its own profile for [BodySurfaceArea]. As of Version 3.2, US Core defines its own set of vital signs profiles. These profiles are derived from the same FHIR base vital sign profile. mCODE accepts vital sign data conforming to either FHIR or US Core profiles. Examples of height, weight, and blood pressure are given in both sources.

### History of Metastatic Disease

Recurrences and unrelated cancers sometimes occur years after previous metastatic disease, for example, in the case of an adult with history of childhood leukemia. The details of the previous disease may be unavailable, but the fact that the patient had cancer previously may be clinically significant. The profile [HistoryOfMetastaticCancer] provides a method of recording this fact in the absence of other details.

### Profiles

* [BodySurfaceArea]
* [Comorbidities]
* [DeauvilleScale]
* [ECOGPerformanceStatus]
* [FHIR Vital Signs](https://www.hl7.org/fhir/observation-vitalsigns.html)
* [HistoryOfMetastaticCancer]
* [KarnofskyPerformanceStatus]
* [LanskyPlayPerformanceStatus]
* [US Core Vital Signs](https://hl7.org/fhir/us/core/4.0.0/StructureDefinition-us-core-vital-signs.html) (version 4.0 and higher)
* [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html)
* [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html)

### Value Sets

* [ECOG performance status] (external)
* [HistoryOfMetastaticMalignantNeoplasmVS]
* [Karnofsky performance status] (external)
* [LanskyPlayPerformanceStatusVS]

{% include markdown-link-references.md %}
