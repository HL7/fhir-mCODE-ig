
### Usage

The following table shows valid combinations of modality and technique for external beam radiotherapy. They are not enforced in the profile. Other combinations and additional techniques may be possible. The modality is represented by `mcode-radiotherapy-modality` extension, technique using the `mcode-radiotherapy-technique` extension.

| **External Beam Modality** | **Technique** |
| ------------------- | ------------------ |
| Photons  | IMRT, VMAT, 3D, 2D, IORT |
| Electrons| 3D, 2D, IORT, COMP |
| Protons  | PPS, PSS, MIX |
| Carbon   | PPS, PSS, MIX |
| Neutrons | 3D, IMNT, NCT |
{: .grid }

**Key:**

* IMRT: Intensity Modulated Radiation Therapy
* VMAT: Volumetric Modulated Radiation Therapy
* IORT: Intraoperative radiation therapy
* PPS: Particle Passive Scattering
* PSS: Particle Spot Scanning
* IMNT: Intensity Modulated Neutron Therapy
* NCT: Neutron Capture Therapy

### Conformance

Procedure resources associated with an mCODE patient whose code is EBRT (code system http://terminology.hl7.org/CodeSystem/radiotherapy) MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.
