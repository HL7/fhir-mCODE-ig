### Mapping Between Vocabularies

The concepts in this value set are drawn in priority order first from SNOMED CT (SCT), second from UMLS Metathesaurus, and lastly, from the (radiotherapy code system)[RadiotherapyCS] defined in this Implementation Guide. Missing SNOMED CT codes have been submitted for approval.

The following table shows potential mappings. **This table may not be exhaustive and additional valid mappings may exist.**

| **SNOMED CT Term**     | **UMLS Metathesaurus Term**   |  **Radiotherapy Code System** | 
| --------- | ------------------------------ | --------------------------------- |
| none [1] [2]  | none | LDR-TEMP  |
| 169359004 "Internal radiotherapy - permanent seeds (procedure)" | C0436265 "Internal radiotherapy - permanent seeds" | not needed  |
| none | C3897809 "Pulsed-Dose Rate Brachytherapy" | not needed |
|  394902000  "High dose brachytherapy (procedure)"   | C0454270 "High dose brachytherapy"  | not needed |
| 438629002 "High dose rate electronic brachytherapy (procedure)" | C2584639 "High dose rate electronic brachytherapy" | not needed |
| 440252007 "Administration of radiopharmaceutical (procedure)" | C2584813 "Administration of radiopharmaceutical" [3] | not needed |
{: .grid }

**Notes:**

1. The sound-alike term, 228868000 "Low dose rate brachytherapy (observable entity)", should not be mapped because it represents the dose rate given — the actual quantity, not the procedure.
2. The term 271291003 "Temporary implant radiotherapy (procedure)" is broader because it does not specific high or low dose rate.
3. The similar term, C2347889 "Radiopharmaceutical Volume Administered," is unsuitable because it refers to the amount of radiopharmaceutical given to the subject, not the procedure.

{% include markdown-link-references.md %}
