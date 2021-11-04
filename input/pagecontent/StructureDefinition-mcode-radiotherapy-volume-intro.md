### Background

Radiotherapy is a directed treatment that targets a specific volume (three dimensional shape) in the body. According to [Burnet et al., 2004](https://dx.doi.org/10.1102%2F1470-7330.2004.0054): "There are three main volumes in radiotherapy planning. The first is the position and extent of gross tumour, i.e. what can be seen, palpated or imaged; this is known as the gross tumour volume (GTV).… The second volume contains the GTV, plus a margin for sub-clinical disease spread which therefore cannot be fully imaged; this is known as the clinical target volume (CTV).… The CTV is important because this volume must be adequately treated to achieve cure. The third volume, the planning target volume (PTV), allows for uncertainties in planning or treatment delivery. It is a geometric concept designed to ensure that the radiotherapy dose is actually delivered to the CTV. Radiotherapy planning must always consider critical normal tissue structures, known as organs at risk (ORs or OARs). In some specific circumstances, it is necessary to add a margin analogous to the PTV margin around an OR to ensure that the organ cannot receive a higher-than-safe dose; this gives a planning organ at risk volume. This applies to an organ such as the spinal cord, where damage to a small amount of normal tissue would produce a severe clinical manifestation."

### Usage

This profile describes the concepts of GTV, CTV, PTV and OARs in terms of a BodyStructure resource. Using a stand-alone resource to describe a radiotherapy volume has several benefits:

1. It uses an existing FHIR Resource, and avoids creation of a complex extension.
2. It permits reuse of the same body volume in planning, executing, and reporting a radiotherapy treatment, as opposed to repeating the same elements in multiple places.
3. There is a single source of truth for a radiotherapy volume.
4. The use of BodyStructure fits the intended purpose of the BodyStructure resource and allows attachment of images and other textual and coded information that could be needed to fully describe a radiotherapy volume.

The disadvantage of separating the radiotherapy volume is that it is not in the same resource as the modality, technique, and dose information, but overall, the above advantages are felt to outweigh this disadvantage.

### Limitations

A known limitation of the RadiotherapyVolume is that it accepts only one coded location. This limitation stems from the base BodyStructure resource. As a result, a compound volume (such as prostate plus seminal vesicles) cannot be represented. If this presents a serious limitation in practice, an extension with additional pairs (location, location qualifiers) will be required.

### Conformance

BodyStructure resources whose morphology has a code from the value set [RadiotherapyVolumeTypeVS] MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [in-scope patient] that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}
