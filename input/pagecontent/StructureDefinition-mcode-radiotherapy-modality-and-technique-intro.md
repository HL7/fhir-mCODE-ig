### Usage

Extension capturing modality and technique of a given radiotherapy procedure. For definitions, see the [Radiotherapy Glossary](glossary.html) page.

Allowed combinations of modality and technique are shown here and enforced by invariants:

| **Treatment Type** |  **Modality**           |      **Technique**       |
| ---------------| ------------------------ | ------------------------ |
| All | UNC (.text required)   | Not constrained                 |
| External Beam Radiotherapy | Photons                 | IMRT, VMAT, 3D, 2D, IORT, FLASH, UNC (.text required) |
| External Beam Radiotherapy| Electrons                | 3D, 2D, IORT, FLASH, UNC (.text required)      |
| External Beam Radiotherapy| Neutrons                 | 3D, NCT, UNC (.text required)                  |
| External Beam Radiotherapy| Carbon Ions              | PPS, PSS, PS, UNC (.text required)           |
| External Beam Radiotherapy| Protons                  | PPS, PSS, PS, FLASH, UNC (.text required)    |
| Brachytherapy | Internal radiotherapy – permanent seeds | Interstitial, UNC (.text required) |
| Brachytherapy| Low Dose Rate using temporary source | Intracavitary, Interstitial, Surface, UNC (.text required) |
| Brachytherapy| Pulsed Dose Rate | Intracavitary, Interstitial, UNC (.text required) |
| Brachytherapy| High Dose Rate  | Intracavitary, IMB, Interstitial, Intravascular, Intraluminal, IORT, Surface, UNC (.text required) |
| Brachytherapy| High dose rate electronic  | Intracavitary, IMB, Interstitial, Intraluminal, IORT, Surface, UNC (.text required) |
| Brachytherapy| Radiopharmaceutical  | Oral, Intravascular, Intracavitary, Interstitial, UNC (.text required) |

It will not always be possible for systems to map modalities and techniques to the coded values defined here, since the system may have been configured with a local codesystem, or the values may have been recorded as a text string.  In order to enable systems to produce mCODE-conformant data, an "un-encoded" value ([HL7 Codesystem NullFlavor](https://terminology.hl7.org/CodeSystem-v3-NullFlavor.html) value 'UNC') is included in the value sets for both modality and technique.  If the "un-encoded" value is used, a text literal that specifies the value SHALL be provided in the `.text` element of the CodeableConcept. This requirement is enforced by an invariant.
{: .grid }

Technique Acronyms:

| **Acronym** |  **Meaning** |
| ---------------|------------ |
| IMRT | Intensity Modulated Radiation Therapy |
| VMAT | Volumetric Modulated Arc Therapy|
| 3D | Three Dimensional Planning  |
| 2D | Two Dimensional Planning  |
| IORT | Intraoperative Radiation Therapy |
| NCT | Neutron Capture Therapy|
| PS | Particle Scanning other than PSS |
| PPS | Particle Spot Scanning|
| PSS | Particle Passive Scattering |
| FLASH | Ultra high dose rate radiotherapy |
| UNC | "Un-encoded" value.  |
{: .grid }

### Conformance


{% include markdown-link-references.md %}
