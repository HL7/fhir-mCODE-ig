### Usage

The following table shows valid combinations of modality and technique for brachytherapy. They are not enforced in the profile. Other combinations and additional techniques may be possible. The modality is represented by `mcode-radiotherapy-modality` extension, technique using the `mcode-radiotherapy-technique` extension.

<!--Devices used during the procedure, but not remaining after, such as catheters and high-dose devices, are to be recorded in `Procedure.usedCode`. Devices implanted or removed during surgery should be recorded as a reference to a Device resource in `Procedure.focalDevice.manipulated`. The code for the implanted device type is recorded in the `Device.type` element on the referenced Device. The referenced device should conform to the [BrachytherapyImplantableDevice] profile.-->


| **Brachytherapy Modality**  | **Technique (Delivery Method)**|
| ----------------------------- | ------------------------------ |
| Low Dose Rate | Intracavitary, Interstitial-Permanent, Interstitial-Temporary, Surface-Temporary |
| Pulse Dose Rate | Intracavitary, Interstitial, Intravascular, Intraluminal, IORT|
| High Dose Rate  | Intracavitary, Intracavitary-IMB, Interstitial, Intravascular, Intraluminal, IORT, Surface |
| Electronic  | Intracavitary, Intracavitary-IMB, Interstitial, Intraluminal, Surface, IORT |
| Radiopharmaceutical  | Oral, Intravascular, Intracavitary, Interstitial |
{: .grid }

**Key:**

* IORT: Intraoperative radiation therapy
* IMB: Intensity Modulated Brachytherapy

### Conformance

Procedure resources associated with an mCODE patient whose code is BRACHY (code system http://hl7.org/fhir/us/mcode/CodeSystem/mcode-radiotherapy-cs) MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.

{% include markdown-link-references.md %}