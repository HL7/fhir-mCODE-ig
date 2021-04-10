### Usage

The following rules apply to this value set:

1. Select the most specific term appropriate for a given situation.
2. Select the term that best describes the technique used, even if that term does not capture every detail of the technique. For example, image-guided intensity-modulated radiation therapy should be reported as IMRT because that category most closely aligns with the actual technique.

### Mapping Between Vocabularies

The concepts in this value set are drawn in priority order first from SNOMED CT (SCT), then from UMLS Metathesaurus, and lastly, from the [radiotherapy code system][RadiotherapyCS] defined in this Implementation Guide. Missing SNOMED CT codes have been submitted for approval.

The following table shows potential mappings. **This table may not be exhaustive and additional valid mappings may exist.**

| **SNOMED CT Term**   | **UMLS Metathesaurus Term**     | **Radiotherapy Code System** |
| -------------------- | -------------------- | --------------------- |
| 441799006 "Intensity modulated radiation therapy (procedure)" |  C1512814 "Radiotherapy, Intensity-Modulated" | not needed |
| missing | C3489631 "Volumetric-Modulated Arc Therapy" | not needed |
| missing [1] | none [1] | 3D "Three dimensional" |
| missing [2] | C5236971 "2D Conventional Radiotherapy" | not needed |
| 168524008 "Radiotherapy - intraoperative control (procedure)" | C0436205 "Radiotherapy - intraoperative control" | not needed |
| missing | none | PPS "Particle Passive Scattering" |
| missing | none | PSS "Particle Spot Scanning" |
| nmissing | none | MIX "Mixed" |
| 169317000 "Neutron capture therapy (procedure)" | C0162505 "Boron Neutron Capture Therapy" [3] | not needed |
{: .grid }

**Notes:**

1. SCT#434131000124108 "Three dimensional conformal radiotherapy (procedure)" and UMLS#C0600521 "Radiotherapy, Conformal" are not matches because use of three-dimensional imaging in radiotherapy planning does not necessarily imply conformal dose distribution.
2. SCT#5304008 "Conventional X-ray therapy" implies two-dimensional, but is too specific in terms of modality.
3. Although superficially more specific, this is an acceptable match in many cases because boron is the most common neutron capture agent.

{% include markdown-link-references.md %}
