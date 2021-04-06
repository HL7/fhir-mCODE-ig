### Mapping Between Vocabularies

The concepts in this value set are drawn from SNOMED CT or the [radiotherapy code system][RadiotherapyCS] defined in this Implementation Guide. Additional SNOMED CT codes have been submitted for approval. NCI Thesaurus terms are shown for informational purposes.

The following table shows potential mappings. **This table may not be exhaustive and additional valid mappings may exist.**

| **Radiotherapy Code System** | **SNOMED CT**                  | **NCI Thesaurus**                 |
| --------- | ------------------------------ | --------------------------------- |
| LDR-TEMP  | none [1] [2]  | none [3] |
| LDR-PERM  | none [1] [4] | none [3] |
| not needed | none | C116542 "Pulsed-Dose Rate Brachytherapy" |
| not needed |  394902000  "High dose brachytherapy (procedure)"   | C15651 "High dose brachytherapy"  |
| not needed | 438629002 "High dose rate electronic brachytherapy (procedure)" | none   |
| not needed | 440252007 "Administration of radiopharmaceutical (procedure)" | none [5] |
{: .grid }

**Notes:**

1. The sound-alike term, SCT#228868000 "Low dose rate brachytherapy (observable entity)", should not be mapped because it represents the dose rate given — the actual quantity, not the procedure.
2. The term SCT#271291003 "Temporary implant radiotherapy (procedure)" is broader because it does not specific high or low dose rate.
3. The term NCIT#C85254 "Low-Dose Rate Brachytherapy" is broader.
4. The term SCT#469780009 "Manual brachytherapy source, permanent implant (physical object)" is unsuitable because it refers to the physical object implanted, not the procedure.
5. The sound-alike term, NCIT#C69290 "Radiopharmaceutical Volume Administered," is unsuitable because it refers to the amount of radiopharmaceutical given to the subject, not the procedure.

{% include markdown-link-references.md %}
