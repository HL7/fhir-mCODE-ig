### Usage

A phase describes one series of equivalent fractions and all volumes treated by a phase are involved in all fractions of that phase. Therefore, fraction counting in a Phase is for that Phase on a Procedure level, not per volume, and should not differ between volumes affected in the same phase. This contrasts with the Course Summary, which summarizes contributions from one or more phases, and documents for each volume separately the number of fractions that the volume was treated. In the Course Summary the number of delivered fractions may differ between volumes, because each volume may have received contributions from different phases or different combinations of phases.

The following table shows valid combinations of modality and technique for brachytherapy. They are not enforced in the profile. Other combinations and additional techniques may be possible. The modality is represented by `mcode-radiotherapy-modality` extension, technique using the `mcode-radiotherapy-technique` extension.

<!--Devices used during the procedure, but not remaining after, such as catheters and high-dose devices, are to be recorded in `Procedure.usedCode`. Devices implanted or removed during surgery should be recorded as a reference to a Device resource in `Procedure.focalDevice.manipulated`. The code for the implanted device type is recorded in the `Device.type` element on the referenced Device. The referenced device should conform to the [BrachytherapyImplantableDevice] profile.-->


| **Brachytherapy Modality**  | **Possible Brachytherapy Techniques**|
| ----------------------------- | ------------------------------ |
| Low dose rate - temporary source | Intracavitary, Interstitial, Surface |
| Low dose rate - permanent source | Intracavitary, Interstitial, Surface |
| Pulsed dose rate | Intracavitary, Interstitial, Intravascular, Intraluminal, IORT|
| High dose rate | Intracavitary, IMB, Interstitial, Intravascular, Intraluminal, IORT, Surface |
| Electronic | Intracavitary, IMB, Interstitial, Intraluminal, Surface, IORT |
| Radiopharmaceutical  | Oral, Intravascular, Intracavitary, Interstitial |
{: .grid }

**Key:**

* IORT: Intraoperative radiation therapy 
* IMB: Intensity Modulated Brachytherapy

### Conformance

Procedure resources whose code is `mcode-brachytherapy-treatment-phase` (code system `http://hl7.org/fhir/us/mcode/CodeSystem/mcode-resource-identifier-cs`) MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [mCODE patient] that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}