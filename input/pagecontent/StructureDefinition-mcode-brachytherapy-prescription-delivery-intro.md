### Usage

The following table shows valid combinations of modality, technique, and device for brachytherapy. They are not enforced in the profile. Other combinations and additional techniques may be possible. The modality is represented by `Procedure.code`, technique using the `procedure-method` extension. Devices used during the procedure, but not remaining after, such as catheters and high-dose devices, are to be recorded in `Procedure.usedCode`. Devices implanted or removed during surgery should be recorded as a reference to a Device resource in `Procedure.focalDevice.manipulated`. The code for the implanted device type code is recorded in the `Device.type` element on the referenced Device. The referenced device should conform to the [BrachytherapyImplantableDevice] profile.


| **Brachytherapy Modality**  | **Technique (Delivery Method)**| **Device Type**  |
| ----------------------------- | ------------------------------ | -------------------------- |
| Low Dose Rate | Intracavitary| Tandem, Cylinder, Ovoids, Ring |
| Low Dose Rate | Interstitial - Permanent | Seeds  |
| Low Dose Rate | Interstitial - Temporary | Catheter |
| Low Dose Rate | Surface - Temporary| Eye Plaque |
| Pulse Dose Rate | Intracavitary| Tandem, Cylinder, Ovoids, Ring,  Catheter  |
| Pulse Dose Rate | Interstitial | Catheter, Hybrid (e.g., ring+tandem+needles) |
| Pulse Dose Rate | Intravascular, Intraluminal, IORT  | Catheter |
| High Dose Rate  | Intracavitary, Intracavitary - IMB | Tandem, Cylinder, Ovoids, Ring,  Catheter  |
| High Dose Rate  | Interstitial | Catheter, Hybrid (e.g., ring+tandem+needles) |
| High Dose Rate  | Intravascular, Intraluminal, IORT  | Catheter |
| High Dose Rate  | Surface  | Catheter, Eye Plaque |
| Electronic  | Intracavitary, Intracavitary - IMB | Tandem, Cylinder, Ovoids, Ring,  Catheter  |
| Electronic  | Interstitial, Intraluminal, Surface, IORT  | Catheter, Hybrid (e.g., ring+tandem+needles) |
| Radiopharmaceutical  | Oral, Intravascular, Intracavitary, Interstitial | Targeted, NonTargeted  |
{: .grid }

**Key:**

* IORT: Intraoperative radiation therapy
* IMB: Intensity Modulated Brachytherapy

### Conformance

Procedure resources associated with an mCODE patient whose code comes from the BrachytherapyModalityVS value set MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.

{% include markdown-link-references.md %}