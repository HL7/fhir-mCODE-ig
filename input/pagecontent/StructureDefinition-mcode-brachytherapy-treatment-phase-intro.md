### Usage
A phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same treatment volume or volumes. Because of their spatial relationship or the technique used, all treatment volumes do not necessarily receive the same total dose during a phase.

The following table shows valid combinations of modality and technique for brachytherapy. They are not enforced in the profile. Other combinations and additional techniques may be possible. The modality is represented by `mcode-brachytherapy-modality` extension, technique using the `mcode-brachytherapy-technique` extension.

<!--Devices used during the procedure, but not remaining after, such as catheters and high-dose devices, are to be recorded in `Procedure.usedCode`. Devices implanted or removed during surgery should be recorded as a reference to a Device resource in `Procedure.focalDevice.manipulated`. The code for the implanted device type is recorded in the `Device.type` element on the referenced Device. The referenced device should conform to the [BrachytherapyImplantableDevice] profile.-->

*NEW*

| **Brachytherapy Modality**  | **Technique (Delivery Method)**|
| ----------------------------- | ------------------------------ |
| Internal radiotherapy – permanent seeds | Intracavitary |
| Low Dose Rate | Intracavitary, Interstitial, Surface |
| Low Dose Rate using temp rad source | Intracavitary, Interstitial, Surface |
| Pulsed Dose Rate | Intracavitary, Interstitial, Intravascular, Intraluminal, Radiotherapy-intraoperative control(IORT) |
| High Dose Rate  | Intracavitary, Intensity-modulated intercavitary (IMB), Interstitial, Intravascular, Intraluminal, Radiotherapy-intraoperative control(IORT), Surface |
| High dose rate electronic  | Intracavitary, Intensity-modulated intercavitary (IMB), Interstitial, Intraluminal, Radiotherapy-intraoperative control(IORT), Surface |
| Radiopharmaceutical  | Oral, Intravascular, Intracavitary, Interstitial |
| ----------------------------- | ------------------------------ |
{: .grid }

*OLD*

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

* IORT: Intraoperative radiation therapy (SCT#168524008 Radiotherapy - intraoperative control)
* IMB: Intensity Modulated Intercavitary Brachytherapy

### Conformance

Procedure resources whose code is `mcode-brachytherapy-treatment-phase` (code system `http://hl7.org/fhir/us/mcode/CodeSystem/mcode-resource-identifier-cs`) MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [mCODE patient] that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}