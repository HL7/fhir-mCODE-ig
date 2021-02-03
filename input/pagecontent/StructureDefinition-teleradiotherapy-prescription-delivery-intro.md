
### Usage

The following table shows valid combinations of modality, technique, and device for external beam radiotherapy. They are not enforced in the profile. Other combinations and additional techniques may be possible. The modality is represented by Procedure.code, technique using the radiotherapyTechnique extension, and device by Procedure.usedCode.

| **External Beam Modality (Radiation Type)** | **Technique (Delivery Method)** | **Delivery Device** |
| ------------------- | ------------------ | --------------------- |
| Photons  | IMRT, VMAT   | LINAC, RLINAC, MRLINAC, ROBOTIC|
| Photons  | 3D   | LINAC, RLINAC, MRLINAC, ROBOTIC, IsotopeMS, kV |
| Photons  | 2D   | LINAC, KV   |
| Photons  | IORT | LINAC, NGLINAC      |
| Electrons| 3D   | LINAC, RLINAC, ROBOTIC, MULTI   |
| Electrons| 2D, IORT| LINAC       |
| Electrons| COMP   |     |
| Protons  | PPS, PSS, MIX |     |
| Carbon   | PPS, PSS, MIX |     |
| Neutrons | 3D, IMNT, NCT   |     |
{: .grid }

**Key:**

* IMRT: Intensity Modulated Radiation Therapy
* VMAT: Volumetric Modulated Radiation Therapy
* IORT: Intraoperative radiation therapy
* PPS: Particle Passive Scattering
* PSS: Particle Spot Scanning
* IMNT: Intensity Modulated Neutron Therapy
* NCT: Neutron Capture Therapy
* LINAC: Gantry based delivery with linear accelerator based source
* RLINAC: Ring Gantry based delivery with linear accelerator based source, e.g., Ethos, Tomotherapy
* NGLINAC: Non-gantry based linac, e.g. specialty devices used for IORT, e.g., Mobetron
* MRLINAC: Gantry based delivery with linear accelerator based source with onboard MRI for patient positioning
* ROBOTIC: Multiple axis (other than MLCs) are moved under electronic control during delivery of dose from a single beam with linear accelerator based source, e.g., CyberKnife
* MULTI: Multisource radiation use of multiple sources at different positions using linear accelerator-based source
* KV: Non-megavoltage, electronically generated photons
* MIX: Both photon and particle-based beams are used to deliver the therapeutic dose

### Conformance

Procedure resources associated with an mCODE patient whose code comes from the TeleradiotherapyModalityVS value set MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.

