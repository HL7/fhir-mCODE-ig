### Background

Radiotherapy is a directed treatment that targets a specific areas or volumes in or on the body. The RadiotherapyVolume profile describes these areas or volumes in terms of a BodyStructure resource. The code list of anatomic structures and location qualifiers applicable to RadiotherapyVolume follows the recommendations of the American Association of Physicists in Medicine (AAPM) [Task Group 263 report on Standardizing Nomenclatures in Radiation Oncology](https://www.aapm.org/pubs/reports/RPT_263.pdf).

Volumes are further classified according to their type, including the following [Burnet et al., 2004](https://dx.doi.org/10.1102%2F1470-7330.2004.0054):

* Gross tumour volume (GTV) - what can be seen, palpated or imaged
* Clinical target volume (CTV) - the GTV plus a margin accounting for sub-clinical disease spread which therefore cannot be fully imaged
* Planning target volume (PTV) - a geometric concept designed to ensure that the radiotherapy dose is actually delivered to the CTV
* Organs at Risk (OR or OAR) - critical normal tissue structures that should be protected against excessive radiation

### Usage

This profile describes the concepts of GTV, CTV, PTV and OARs in terms of a BodyStructure resource. Using a stand-alone resource to describe a radiotherapy volume has several benefits:

1. It permits reuse of the same body volume in planning, executing, and reporting a radiotherapy treatment, as opposed to repeating the same elements in multiple places.
2. It provides a single source of truth for a radiotherapy volume.
3. It fits the intended purpose of the BodyStructure resource and allows attachment of images and other textual and coded information that could be needed to fully describe a radiotherapy volume.

The disadvantage of separating the radiotherapy volume is that it is not in the same resource as the modality, technique, and dose information, but overall, the above advantages are felt to outweigh this disadvantage.

### Limitations

A known limitation of the RadiotherapyVolume is that it accepts only one coded location. This limitation stems from the base BodyStructure resource. As a result, a compound volume (such as prostate plus seminal vesicles) cannot be represented. If this presents a serious limitation in practice, an extension with additional pairs (location, location qualifiers) will be required.

### Conformance

BodyStructure resources whose morphology has a code from the value set [RadiotherapyVolumeTypeVS] MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}
