### Usage

Rather than offer a separate staging profiles for each type of cancer staging (also called domain – e.g., gynecologic FIGO stage, leukemia Binet stage, Melanoma Breslow stage, etc.), this profile can support many different staging categories. The Staging Domain can be specified in a CodeableConcept in the CancerStage.category slice. Based on the code selected for CancerStage.code slice, the Table below provides the valuesets to use for CancerStage.method and CancerStage.value[x] along with their bindings (e.g., required or extensible). If the value for CancerStage.method is "N/A", it means no specific method values have been identified.

Lymphoma and TNM staging are handled separately in [Lymphoma Stage Profile](StructureDefinition-mcode-lymphoma-stage.html) and [TNM Stage Group Profile](StructureDefinition-mcode-tnm-stage-group.html), respectively.

#### Cancer Staging Domains

| Domain | CancerStage.code | CancerStage.value | CancerStage.method |
| ------ | ---------------- | ----------------- | ------------------ |
| Gynecologic FIGO Stage | system: [http://snomed.info/sct](http://snomed.info/sct)<br />code: 385361009 | [FIGO Stage Value Set (extensible)](ValueSet-mcode-figo-stage-value-vs.html) | [FIGO Staging Method Value Set (extensible)](ValueSet-mcode-figo-staging-method-vs.html) |
| Leukemia Binet Stage | system: [http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl](http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl)<br />code: C141212 | [Binet Stage Value Set (extensible)](ValueSet-mcode-binet-stage-value-vs.html) | N/A |
| Leukemia RAI Stage | system: [http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl](http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl)<br />code: C141207 | [Rai Stage Value Set (extensible)](ValueSet-mcode-rai-stage-value-vs ) | [Rai Staging System Value Set (required)](ValueSet-mcode-rai-staging-method-vs.html) |
| Melanoma Breslow Stage | system: [http://snomed.info/sct](http://snomed.info/sct)<br />code: 106243009 | [Breslow Depth Stage Value Set (required)](ValueSet-mcode-breslow-depth-stage-value-vs.html) | N/A |
| Melanoma Clark Level | system: [http://snomed.info/sct](http://snomed.info/sct)<br />code: 103419001 | [Clark Level Value Set (required)](ValueSet-mcode-clark-level-value-vs.html) | N/A |
| Myeloma ISS Stage | system: [http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl](http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl)<br />code: C139007 | [International Staging System (ISS) for Myeloma Stage Value Set (extensible)](ValueSet-mcode-myeloma-iss-stage-value-vs.html) | N/A |
| Myeloma RISS Stage | system: [http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl](http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl)<br />code: C141392 | [Revised International Staging System (ISS) for Multiple Myeloma Stage Value Set (extensible)](ValueSet-mcode-myeloma-riss-stage-value-vs.html) | N/A |
| Neuroblastoma INSS Stage | system: [http://snomed.info/sct](http://snomed.info/sct)<br />code: 409720004 | [International Neuroblastoma Staging System (INSS) for Neuroblastoma Stage Value Set (required)](ValueSet/mcode-neuroblastoma-inss-value-vs.html) | N/A |
| Neuroblastoma INRGSS Stage | system: [http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl](http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl)<br />code: C133427 | [International Neuroblastoma Risk Group Staging System (INRGSS) for Neuroblastoma Risk Assessment Value Set (extensible)](ValueSet-mcode-neuroblastoma-INRGSS-value-vs.html) | N/A |
| Prostate Gleason Stage | system: [http://snomed.info/sct](http://snomed.info/sct)<br />code: 385377005 | [Gleason Grade Value Set (required)](ValueSet-mcode-gleason-grade-group-value-vs.html) | N/A |
| Rhabdomyosarcoma Clinical Group Stage | system: [http://snomed.info/sct](http://snomed.info/sct)<br />code: 405916000 | [Rhabdomyosarcoma Clinical Group Value Set](ValueSet-mcode-rhabdomyosarcoma-clinical-group-value-vs.html) | N/A |
| Wilms Tumor Stage | system: [http://snomed.info/sct](http://snomed.info/sct)<br />code: 405931009 | [Wilms Tumor Stage Value Set (required)](ValueSet-mcode-wilms-tumor-stage-value-vs.html) | [Wilms Tumor Body Site Value Set (extensible)](ValueSet-mcode-wilms-tumor-body-site-vsCOG.html) |
{:.grid}