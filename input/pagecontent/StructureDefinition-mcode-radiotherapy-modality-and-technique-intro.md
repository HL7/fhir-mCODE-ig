### Usage

Extension capturing modality and technique of a given radiotherapy procedure. For definitions, see the [Radiotherapy Glossary](glossary.html) page.

Allowed combinations of modality and technique are shown here and enforced by invariants:

| **Treatment Type** |  **Modality**           |      **Technique**       |
| ---------------| ------------------------ | ------------------------ |
| All | Other (.text required)   | Not constrained                 |
| External Beam Radiotherapy | Photons                 | IMRT, VMAT, 3D, 2D, IORT, FLASH, Other (.text required) |
| External Beam Radiotherapy| Electrons                | 3D, 2D, IORT, FLASH, Other (.text required)      |
| External Beam Radiotherapy| Neutrons                 | 3D, NCT, Other (.text required)                  |
| External Beam Radiotherapy| Carbon Ions              | PPS, PSS, PS, Other (.text required)           |
| External Beam Radiotherapy| Protons                  | PPS, PSS, PS, FLASH, Other (.text required)    |
| Brachytherapy | Internal radiotherapy – permanent seeds | Interstitial, Other (.text required) |
| Brachytherapy| Low Dose Rate using temporary source | Intracavitary, Interstitial, Surface, Other (.text required) |
| Brachytherapy| Pulsed Dose Rate | Intracavitary, Interstitial, Other (.text required) |
| Brachytherapy| High Dose Rate  | Intracavitary, IMB, Interstitial, Intravascular, Intraluminal, IORT, Surface, Other (.text required) |
| Brachytherapy| High dose rate electronic  | Intracavitary, IMB, Interstitial, Intraluminal, IORT, Surface, Other (.text required) |
| Brachytherapy| Radiopharmaceutical  | Oral, Intravascular, Intracavitary, Interstitial, Other (.text required) |

Since it will not always be possible to map modalities and techniques to coded values, an "other" value is allowed for both.   
If the code for 'other' is used (i.e., SNOMED CT 74964007), a text literal that specifies the value SHALL be provided in the `.display` element of the CodeableConcept. This requirement is enforced by an invariant.
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
