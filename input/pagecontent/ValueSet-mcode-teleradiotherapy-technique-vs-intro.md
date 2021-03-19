### Usage

The following rules apply to this value set:

1. Select the most specific term appropriate for a given situation.
2. Select the term that best describes the technique used, even if that term does not capture every detail of the technique. For example, image-guided intensity-modulated radiation therapy should be reported as IMRT because that category most closely aligns with the actual technique.

### Mapping Between Vocabularies

The concepts in this value set are drawn from SNOMED CT or the [radiotherapy code system][RadiotherapyCS] defined in this Implementation Guide. Additional SNOMED CT codes have been submitted for approval. NCI Thesaurus terms are shown for informational purposes.

The following table shows potential mappings. **This table may not be exhaustive and additional valid mappings may exist.**

| **Radiotherapy Code System** | **SNOMED CT**   | **NCI Thesaurus**   |
| --------- | -------------------- | --------------------- |
| none | 441799006 Intensity modulated radiation therapy (procedure) | C16135 Intensity-Modulated Radiation Therapy |
| VMAT | none | none |
| none | 434131000124108 Three dimensional conformal radiotherapy (procedure) | C16035 3-Dimensional Conformal Radiation Therapy |
| 2D | none [1] | C165189 Conventional Radiotherapy |
| IORT | none [2] | C15623 Intraoperative Radiotherapy |
| PPS | none | none |
| PSS | none | none |
| MIX | none | none |
| IMNT | none | none |
| none | 169317000 Neutron capture therapy (procedure) | C15378 Boron Neutron Capture Therapy |
{: .grid }

**Notes:**

1. 5304008 Conventional X-ray therapy is two-dimensional but more specific in terms of modality
2. 168524008 Radiotherapy - intraoperative control (procedure) is a potential match, but the fully specified name suggests that the concept must involve the act of "control".

{% include markdown-link-references.md %}
