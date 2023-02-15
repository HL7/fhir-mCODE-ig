### Usage

Extension capturing modality and technique of a given radiotherapy procedure. For definitions, see the [Radiotherapy Glossary](glossary.html) page.

Allowed combinations of modality and technique are shown here and enforced by invariants:

| **Treatment Type** |  **Modality**           |      **Technique**       |
| ---------------| ------------------------ | ------------------------ |
| External Beam Radiotherapy | Photons                 | IMRT, VMAT, 3D, 2D, IORT, FLASH |
| External Beam Radiotherapy| Electrons                | 3D, 2D, IORT, FLASH      |
| External Beam Radiotherapy| Neutrons                 | 3D, NCT                  |
| External Beam Radiotherapy| Carbon Ions              | PPS, PSS, PS           |
| External Beam Radiotherapy| Protons                  | PPS, PSS, PS, FLASH    |
| Brachytherapy | Internal radiotherapy – permanent seeds | Interstitial |
| Brachytherapy| Low Dose Rate using temporary source | Intracavitary, Interstitial, Surface |
| Brachytherapy| Pulsed Dose Rate | Intracavitary, Interstitial |
| Brachytherapy| High Dose Rate  | Intracavitary, IMB, Interstitial, Intravascular, Intraluminal, IORT, Surface |
| Brachytherapy| High dose rate electronic  | Intracavitary, IMB, Interstitial, Intraluminal, IORT, Surface |
| Brachytherapy| Radiopharmaceutical  | Oral, Intravascular, Intracavitary, Interstitial |
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
