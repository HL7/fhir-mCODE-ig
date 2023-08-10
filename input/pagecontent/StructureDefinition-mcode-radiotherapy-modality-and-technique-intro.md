### Usage

Extension capturing modality and technique of a given radiotherapy procedure. For definitions, see the [Radiotherapy Glossary](glossary.html) page.

Allowed combinations of modality and technique are shown here and enforced by invariants:

| **Treatment Type** |  **Modality**           |      **Technique**       |
| ---------------| ------------------------ | ------------------------ |
| All | Un-encoded (.text required)   | Not constrained                 |
| External Beam Radiotherapy | Photons                 | IMRT, VMAT, 3D, 2D, IORT, FLASH, Un-encoded (.text required) |
| External Beam Radiotherapy| Electrons                | 3D, 2D, IORT, FLASH, Un-encoded (.text required)      |
| External Beam Radiotherapy| Neutrons                 | 3D, NCT, Un-encoded (.text required)                  |
| External Beam Radiotherapy| Carbon Ions              | PPS, PSS, PS, Un-encoded (.text required)           |
| External Beam Radiotherapy| Protons                  | PPS, PSS, PS, FLASH, Un-encoded (.text required)    |
| Brachytherapy | Internal radiotherapy – permanent seeds | Interstitial, Un-encoded (.text required) |
| Brachytherapy| Low Dose Rate using temporary source | Intracavitary, Interstitial, Surface, Un-encoded (.text required) |
| Brachytherapy| Pulsed Dose Rate | Intracavitary, Interstitial, Un-encoded (.text required) |
| Brachytherapy| High Dose Rate  | Intracavitary, IMB, Interstitial, Intravascular, Intraluminal, IORT, Surface, Un-encoded (.text required) |
| Brachytherapy| High dose rate electronic  | Intracavitary, IMB, Interstitial, Intraluminal, IORT, Surface, Un-encoded (.text required) |
| Brachytherapy| Radiopharmaceutical  | Oral, Intravascular, Intracavitary, Interstitial, Un-encoded (.text required) |

Since it will not always be possible to map modalities and techniques to coded values, an "un-encoded" value is allowed for both.
If the null flavor for 'un-encoded' is used (i.e., http://terminology.hl7.org/CodeSystem/v3-NullFlavor 'UNC'), a text literal that specifies the value SHALL be provided in the `.text` element of the CodeableConcept. This requirement is enforced by an invariant.
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
{: .grid }

### Conformance


{% include markdown-link-references.md %}
