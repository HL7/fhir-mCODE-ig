### Usage

Extension capturing modality and technique of a given radiotherapy procedure.

Allowed combinations of modality and technique are shown here and enforced by invariants:

| **Treatment Type** |  **Modality**           |      **Technique**       |
| ---------------| ------------------------ | ------------------------ |
| External Beam Radiotherapy | Photons                 | IMRT, VMAT, 3D, 2D, IORT |
| External Beam Radiotherapy| Electrons                | 3D, 2D, IORT      |
| External Beam Radiotherapy| Neutrons                 | 3D, NCT                  |
| External Beam Radiotherapy| Carbon Ions              | PPS, PSS           |
| External Beam Radiotherapy| Protons                  | PPS, PSS           |
| Brachytherapy | Internal radiotherapy – permanent seeds | Interstitial |
| Brachytherapy| Low Dose Rate using temp rad source | Intracavitary, Interstitial, Surface |
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
| PPS | Particle Spot Scanning|
| PSS | Particle Passive Scattering |
{: .grid }

### Conformance


{% include markdown-link-references.md %}
