
### Mapping from Other Vocabularies

The modalities in this value set are drawn from the [radiotherapy code system][RadiotherapyCS] defined in this Implementation Guide. Existing terminology systems do not have all the necessary codes.

The following table shows mappings from SNOMED CT and NCI Thesaurus to teleradiotherapy modality codes. More specific (child) terms in the respective hierarchies also can be mapped to the code in the leftmost column. **This table may not be exhaustive and additional valid mappings may exist.**

| **Code As**    | **SNOMED CT Term**             | **NCI Thesaurus Term**            |
| ---------------|--------------------------------|-----------------------------------|
| PROTON    | 10611004 Teleradiotherapy protons (procedure) | C66897 Proton Beam Radiation Therapy |
| ELECTRON  | 45643008 Teleradiotherapy using electrons (procedure) | C15650 Electron Beam Therapy |
| NEUTRON   | 80347004 Teleradiotherapy neutrons (procedure) | C15440 High-LET Neutron Therapy |
| CARBON    | none [1] | C160816 Carbon Ion Radiation Therapy |
| PHOTON    | none [2] | C93337 High-energy Photon Therapy _or_ C104914 Photon Beam Radiation Therapy |
{: .grid }

**Notes:**

1. 312248006 Heavy ion teletherapy (procedure) is a broader term, although today, carbon ions are the predominant heavy ions used in EBRT.
2. 448385000 Megavoltage radiation therapy using photons (procedure) and 169291001 X-ray beam therapy (procedure) are narrower terms and there may be treatment situations involving photons that cannot be described by either term.

{% include markdown-link-references.md %}
