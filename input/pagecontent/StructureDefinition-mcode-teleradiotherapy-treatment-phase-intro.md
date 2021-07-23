
### Usage

A phase describes one series of equivalent fractions and all volumes treated by a phase are involved in all fractions of that phase. Therefore, fraction counting in a Phase is for that Phase on a Procedure level, not per volume, and should not differ between volumes affected in the same phase. This contrasts with the Course Summary, which summarizes contributions from one or more phases, and documents for each volume separately the number of fractions that the volume was treated. In the Course Summary the number of delivered fractions may differ between volumes, because each volume may have received contributions from different phases or different combinations of phases.

The following table shows valid combinations of modality and technique for external beam radiotherapy. They are not enforced in the profile. Other combinations and additional techniques may be possible. The modality is represented by `mcode-radiotherapy-modality` extension, technique using the `mcode-radiotherapy-technique` extension.

| **External Beam Modality** | **Technique**          |
| ------------------------ | ------------------------ |
| Photons                  | IMRT, VMAT, 3D, 2D, IORT |
| Electrons                | 3D, 2D, IORT, COMP       |
| Neutrons                 | 3D, NCT                  |
| Carbon Ions              | PPS, PSS, MIX            |
| Protons                  | PPS, PSS, MIX            |
{: .grid }

**Key:**

* 3D: Three Dimensional
* IMRT: Intensity Modulated Radiotherapy
* VMAT: Volumetric Modulated Arc Therapy
* IORT: Intraoperative radiotherapy
* PPS: Particle Passive Scattering technique
* PSS: Particle Spot Scanning technique
* MIX: Mixed Beam radiation therapy
* NCT: Neutron Capture Therapy

### Conformance

Procedure resources whose code is `mcode-teleradiotherapy-treatment-phase` (code system `http://hl7.org/fhir/us/mcode/CodeSystem/mcode-resource-identifier-cs`) MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [mCODE patient] that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}