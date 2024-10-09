Rather than offer a separate staging profile for each stage system type, this profile can support any stage system type. Based on the code selected for Observation.code slice, the Table below provides the preferred valuesets for Observation.method and Observation.value[x]. If the value for Observation.method is "N/A", it means no specific method values have been identified.

| `Observation.code` | `Observation.method` ValueSet  | `Observation.value[x]` ValueSet |
|---------|--------------------|--------------------------|
| SNOMED 385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)" | FIGOStagingMethodVS | FIGOStageValueVS |
| NCI Thesaurus C141212 "Binet Stage" | N/A | BinetStageValueVS |
| NCI Thesaurus C141207 "Rai Stage" | RaiStagingMethodVS | RaiStageValueVS |
| SNOMED 385388004 "Lymphoma stage (observable entity)" | LymphomaStagingMethodVS | LymphomaStageValueVS |
| SNOMED 106243009 "Breslow depth staging for melanoma of skin (observable entity)" | N/A | BreslowDepthStageValueVS |
| SNOMED 103419001 "Clark melanoma level of invasion of excised malignant melanoma of skin (observable entity)" | N/A | ClarkLevelValueVS |
| NCI Thesaurus C139007 "International Staging System Stage" | N/A | MyelomaISSValueVS |
| NCI Thesaurus C141392 "RISS Stage" | N/A | MyelomaRISSValueVS |
| SNOMED 409720004 "International neuroblastoma staging system stage (observable entity)" | N/A | NeuroblastomaINSSValueVS |
| NCI Thesaurus C133427 "International Neuroblastoma Risk Group Staging System" | N/A | NeuroblastomaINRGSSValueVS |
| SNOMED 385377005 "Gleason grade finding for prostatic cancer (finding)" | N/A | GleasonGradeGroupValueVS |
| SNOMED 405916000 "Intergroup rhabdomyosarcoma study post-surgical clinical group (observable entity)" | N/A | RhabdomyosarcomaClinicalGroupValueVS |
| SNOMED 405931009 "National Wilms Tumor Study Group Stage (observable entity)" | N/A | WilmsTumorStageValueVS |
| SNOMED 1342413004 "International Intraocular Retinoblastoma Classification (tumor staging)" | N/A | InternationalRetinoblastomaStageValueVS |
| NCI Thesaurus C198190 "Childhood Hepatoblastoma by Toronto Guidelines v2 Stage, Tier 2" | N/A | 

{: .grid }

Some staging systems use specific prognostic factors, represented by the component data element. Based on the code selected for Observation.code slice, the Table below provides the preferred codes and valuesets for Observation.component.code and Observation.component.value[x].

| `Observation.code` | `Observation.component.code`  | `Observation.code.value[x]` ValueSet |
|---------|--------------------|--------------------------|
| SNOMED 385388004 "Lymphoma stage (observable entity)" | SNOMED 106252000 "Staging classification for lymphoma (tumor staging)" | LymphomaStageValueModifierVS |
| SNOMED 385388004 "Lymphoma stage (observable entity)" | SNOMED 277366005 "Nature of staging values (qualifier value)" | ClinOrPathModifierVS |
| SNOMED 385388004 "Lymphoma stage (observable entity)" | SNOMED 260873006 "Bulky disease status (attribute)" | LymphomaStageBulkyModifierVS |
{: .grid }


### Conformance

Observation resources associated with an [in-scope patient] representing cancer stage information SHALL conform to this profile.


{% include markdown-link-references.md %}