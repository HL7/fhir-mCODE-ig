### Mapping Between Vocabularies

The concepts in this value set are drawn in priority order first from SNOMED CT (SCT), second from UMLS Metathesaurus, and lastly, from the (radiotherapy code system][RadiotherapyCS] defined in this Implementation Guide. Missing SNOMED CT codes have been submitted for approval.

The following table shows potential mappings. **This table may not be exhaustive and additional valid mappings may exist.**

| **SNOMED CT Term**     | **UMLS Metathesaurus Term**   |  **Radiotherapy Code System** | 
| --------- | ------------------------------ | --------------------------------- |
| none [1] [2]  | none [3] | LDR-TEMP  |
| none [1] [4] | none [3] | LDR-PERM  |
| none | C3897809 "Pulsed-Dose Rate Brachytherapy" | not needed |
|  394902000  "High dose brachytherapy (procedure)"   | C0454270 "High dose brachytherapy"  | not needed |
| 438629002 "High dose rate electronic brachytherapy (procedure)" | C2584639 "High dose rate electronic brachytherapy" | not needed |
| 440252007 "Administration of radiopharmaceutical (procedure)" | C2584813 "Administration of radiopharmaceutical" [5] | not needed |
{: .grid }

**Notes:**

1. The sound-alike term, 228868000 "Low dose rate brachytherapy (observable entity)", should not be mapped because it represents the dose rate given — the actual quantity, not the procedure.
2. The term 271291003 "Temporary implant radiotherapy (procedure)" is broader because it does not specific high or low dose rate.
3. The term C0454271 "Low-Dose Rate Brachytherapy" is broader.
4. The term 469780009 "Manual brachytherapy source, permanent implant (physical object)" is unsuitable because it refers to the physical object implanted, not the procedure.
5. The similar term, C2347889 "Radiopharmaceutical Volume Administered," is unsuitable because it refers to the amount of radiopharmaceutical given to the subject, not the procedure.

{% include markdown-link-references.md %}
