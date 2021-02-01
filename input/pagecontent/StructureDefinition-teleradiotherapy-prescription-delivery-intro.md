
### Usage

The following table shows valid combinations of modality, technique, and device for external beam radiotherapy. They are not enforced in the profile. Other combinations and additional techniques may be possible. The modality is represented by Procedure.code, technique using the radiotherapyTechnique extension, and device by Procedure.usedCode.

| **External Beam Modality (Radiation Type)** | **Technique (Delivery Method)** | **Delivery Device**                            |
| ------------------------------------------- | ------------------------------- | ---------------------------------------------- |
| Photons                                     | IMRT, VMAT                      | LINAC, RLINAC, MRLINAC, ROBOTIC                |
| Photons                                     | 3D                              | LINAC, RLINAC, MRLINAC, ROBOTIC, IsotopeMS, kV |
| Photons                                     | 2D                              | LINAC, kV                                      |
| Photons                                     | IORT                            | LINAC, NGLINAC                                 |
| Electrons                                   | 3D                              | LINAC, RLINAC, ROBOTIC, MS                     |
| Electrons                                   | 2D, IORT                        | LINAC                                          |
| Electrons                                   | Compensator                     |                                                |
| Protons                                     | PPS, PSS, Mixed                 |                                                |
| Carbon                                      | PPS, PSS, Mixed                 |                                                |
| Neutrons                                    | 3D, IMNT, NCT                   |                                                |
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
* MS: Multisource radiation use of multiple sources at different positions using linear accelerator-based source
* kV: Non-megavoltage, electronically generated photons
* Mixed: Both Photon and Particle based beams are used to deliver the therapeutic dose

### Conformance

TBD

<br>
