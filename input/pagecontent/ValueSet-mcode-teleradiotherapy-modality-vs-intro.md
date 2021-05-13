
### Mapping Between Vocabularies

The concepts in this value set are drawn in priority order first from SNOMED CT (SCT), second from UMLS Metathesaurus, and lastly, from the [radiotherapy code system][RadiotherapyCS] defined in this Implementation Guide. Missing SNOMED CT codes have been submitted for approval.

The following table shows potential mappings. **This table may not be exhaustive and additional valid mappings may exist.**

| **SNOMED CT Term**             | **UMLS Metathesaurus Term**   | **Radiotherapy Code System**    |
| ---------------|--------------------------------|-----------------------------------|
| 10611004 "Teleradiotherapy protons (procedure)" | C0436226 "Proton Therapy" | not needed   |
| 45643008 "Teleradiotherapy using electrons (procedure)" | C0454077 "Teleradiotherapy using electrons" | not needed   |
| 80347004 "Teleradiotherapy neutrons (procedure)" | C0278623 "High-LET Neutron Therapy" | not needed   |
| Missing [1] | C3494442 "Carbon Ion Radiotherapy" | not needed  |
| Missing [2] | C3539769 "Photon Beam Radiation Therapy" | not needed |
{: .grid }

**Notes:**

1. 312248006 "Heavy ion teletherapy (procedure)" is a broader term, although today, carbon ions are the predominant heavy ions used in EBRT.
2. 448385000 "Megavoltage radiation therapy using photons (procedure)" and 169291001 "X-ray beam therapy (procedure)" are narrower terms and there may be treatment situations involving photons that cannot be described by either term.

{% include markdown-link-references.md %}
