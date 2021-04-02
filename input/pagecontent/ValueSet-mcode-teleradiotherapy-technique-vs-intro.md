### Usage

The following rules apply to this value set:

1. Select the most specific term appropriate for a given situation.
2. Select the term that best describes the technique used, even if that term does not capture every detail of the technique. For example, image-guided intensity-modulated radiation therapy should be reported as IMRT because that category most closely aligns with the actual technique.

### Mapping Between Vocabularies

The concepts in this value set are drawn in priority order first from SNOMED CT (SCT), second from NCI Thesaurus, and lastly, from the [radiotherapy code system][RadiotherapyCS] defined in this Implementation Guide. Additional SNOMED CT codes have been submitted for approval.

The following table shows potential mappings. **This table may not be exhaustive and additional valid mappings may exist.**

| **Radiotherapy Code System** | **SNOMED CT**   | **NCI Thesaurus**   |
| --------- | -------------------- | --------------------- |
| not needed | 441799006 "Intensity modulated radiation therapy (procedure)" | C16135 "Intensity-Modulated Radiation Therapy" |
| not needed | none | UMLS#C3489631 |
| 3D | none [1] | none [1] |
| not needed | none [2] | C165189 "2D Conventional Radiotherapy" |
| not needed  | 168524008 "Radiotherapy - intraoperative control (procedure)" | C15623 "Intraoperative Radiotherapy" |
| PPS | none | none |
| PSS | none | none |
| MIX | none | none |
| not needed | 169317000 "Neutron capture therapy (procedure)" | C15378 "Boron Neutron Capture Therapy" [3] |
{: .grid }

**Notes:**

1. SCT#434131000124108 "Three dimensional conformal radiotherapy (procedure)" and NCIT#C16035 "3-Dimensional Conformal Radiation Therapy" are not matches because use of three-dimensional imaging in radiotherapy planning does not necessarily imply conformal dose distribution.
2. SCT#5304008 "Conventional X-ray therapy" implies two-dimensional, but is too specific in terms of modality
3. Superficially more specific, but because boron is the most common neutron capture agent, this is an acceptable match in many cases.

{% include markdown-link-references.md %}
