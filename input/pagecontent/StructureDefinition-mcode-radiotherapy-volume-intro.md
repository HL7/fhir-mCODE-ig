### Background

Radiotherapy is a directed treatment that targets a specific volume (three dimensional shape) in the body. According to [Burnet et al., 2004](https://dx.doi.org/10.1102%2F1470-7330.2004.0054): "There are three main volumes in radiotherapy planning. The first is the position and extent of gross tumour, i.e. what can be seen, palpated or imaged; this is known as the gross tumour volume (GTV)... The second volume contains the GTV, plus a margin for sub-clinical disease spread which therefore cannot be fully imaged; this is known as the clinical target volume (CTV)... The CTV is important because this volume must be adequately treated to achieve cure. The third volume, the planning target volume (PTV), allows for uncertainties in planning or treatment delivery. It is a geometric concept designed to ensure that the radiotherapy dose is actually delivered to the CTV. Radiotherapy planning must always consider critical normal tissue structures, known as organs at risk (ORs or OARs). In some specific circumstances, it is necessary to add a margin analogous to the PTV margin around an OR to ensure that the organ cannot receive a higher-than-safe dose; this gives a planning organ at risk volume. This applies to an organ such as the spinal cord, where damage to a small amount of normal tissue would produce a severe clinical manifestation."

An additional volume types referenced by [ICRU62](https://www.icru.org/report/prescribing-recording-and-reporting-photon-beam-therapy-report-62/)
is the term Internal Target Volume (ITV), "representing the volume encompassing the CTV and the Internal  Margin".  As defined by [Ezhil et al](https://ro-journal.biomedcentral.com/articles/10.1186/1748-717X-4-4) the Internal Gross Tumor Volume (IGTV) represents the GTV with an internal margin to compensate for all movements.

### Usage
This profile described volumes as BodyStructure resources. Each volume can be  characterized by a type such as planning target volume (PTV) or gross tumor volume (GTV) and by the anatomic location.

Using a standalone profile permits reuse of the same body volume in planning, executing, and reporting a radiotherapy treatment, as opposed to repeating the same elements in multiple places.

The treatment location should be expressed using the anatomical concepts in the American Association of Physicists in Medicine (AAPM) [Task Group 263 report on Standardizing Nomenclatures in Radiation Oncology](https://www.aapm.org/pubs/reports/RPT_263.pdf), expressed using SNOMEDCT.   The mapping from AAPM TG263 concepts to SNOMEDCT codes  ([RadiotherapyTreatmentLocationVS]) and qualifiers ([RadiotherapyTreatmentLocationQualifierVS]) can be found in this [spreadsheet](TG263_Nomenclature_to_SNOMEDCT_Codes_and_Qualifiers.xlsx). An excerpt of this spreadsheet is shown below.
For example, if the treatment location was the Left Breast, with TG263 primary name Breast_L, the location would be expressed by using the SNOMEDCT  `76752008` (Breast structure (body structure))  for location, and `7771000` (Left) for the locationQualifier.

![Excerpt from TG263 to SNOMED mapping](TG263mapping.png)

### Limitations

A known limitation of the RadiotherapyVolume is that it accepts only one coded location. This limitation stems from the base BodyStructure resource. As a result, a compound volume (such as prostate plus seminal vesicles) cannot be represented. If this presents a serious limitation in practice, an extension with additional pairs (location, location qualifiers) will be required.

### Conformance

BodyStructure resources whose morphology has a code from the value set [RadiotherapyVolumeTypeVS] MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}
