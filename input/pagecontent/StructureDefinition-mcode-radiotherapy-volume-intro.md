### Background
Radiotherapy is a directed treatment that targets a specific areas or volumes in or on the body. The RadiotherapyVolume profile describes these areas or volumes in terms of a BodyStructure resource. Using a standalone resource permits reuse of the same body volume in planning, executing, and reporting a radiotherapy treatment, as opposed to repeating the same elements in multiple places.

The code list of anatomic structures and location qualifiers applicable to RadiotherapyVolume follows the recommendations of the American Association of Physicists in Medicine (AAPM) [Task Group 263 report on Standardizing Nomenclatures in Radiation Oncology](https://www.aapm.org/pubs/reports/RPT_263.pdf). Volumes are further classified according to their type, including the following [Burnet et al., 2004](https://dx.doi.org/10.1102%2F1470-7330.2004.0054):

* Gross tumour volume (GTV) - what can be seen, palpated or imaged
* Clinical target volume (CTV) - the GTV plus a margin accounting for sub-clinical disease spread which therefore cannot be fully imaged
* Planning target volume (PTV) - a geometric concept designed to ensure that the radiotherapy dose is actually delivered to the CTV
* Organs at Risk (OR or OAR) - critical normal tissue structures that should be protected against excessive radiation

An additional volume types referenced by [ICRU62](https://www.icru.org/report/prescribing-recording-and-reporting-photon-beam-therapy-report-62/)
is the term Internal Target Volume (ITV), represents a volume encompassing the CTV with an internal margin compensating for patient movement.  As defined by [Ezhil et al](https://ro-journal.biomedcentral.com/articles/10.1186/1748-717X-4-4) the Internal Gross Tumor Volume (IGTV) represents the GTV with an internal margin to compensate for all movements.

### Usage
The treatment location should be expressed using the anatomical concepts in the American Association of Physicists in Medicine (AAPM) [Task Group 263 report on Standardizing Nomenclatures in Radiation Oncology](https://www.aapm.org/pubs/reports/RPT_263.pdf), expressed using SNOMED CT. The mapping from AAPM TG263 concepts to SNOMEDCT codes  ([RadiotherapyTreatmentLocationVS]) and qualifiers ([RadiotherapyTreatmentLocationQualifierVS]) can be found in this [spreadsheet](TG263_Nomenclature_to_SNOMEDCT_Codes_and_Qualifiers.xlsx). An excerpt of this spreadsheet is shown below.
For example, if the treatment location was the Left Breast, with TG263 primary name Breast_L, the location would be expressed by using the SNOMEDCT  `76752008` (Breast structure (body structure))  for location, and `7771000` (Left) for the locationQualifier.

![Excerpt from TG263 to SNOMED mapping](TG263mapping.png)

### Limitations

A known limitation of the RadiotherapyVolume is that it accepts only one coded location. This limitation stems from the base BodyStructure resource. As a result, a compound volume (such as prostate plus seminal vesicles) cannot be represented. If this presents a serious limitation in practice, an extension with additional pairs (location, location qualifiers) will be required.

### Conformance

BodyStructure resources whose morphology has a code from the value set [RadiotherapyVolumeTypeVS] MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}
