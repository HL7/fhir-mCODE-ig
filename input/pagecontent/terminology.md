This implementation guide draws on a number of formal terminologies (code systems). Several guiding principles were applied in selecting terminologies for mCODE:

1. Fit for purpose
2. Conformance with US Core and FHIR
3. Commonly used in real world practice

The following table presents the external code systems (and naming conventions) adopted in mCODE, and their primary purpose:

| Code System | Application | [FHIR IG Publishing](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) support? | HL7 Canonical [1] | Proposed HTA, if different [2] |
|--------------|-------------|------------------|------------------|----------------------|
| CPT | Procedure codes | No | <http://www.ama-assn.org/go/cpt> |  |
| HGNC | Gene identification | No | <http://www.genenames.org>  |  |
| HGVS | Sequence variant nomenclature | Yes | <http://varnomen.hgvs.org> | OID: 2.16.840.1.113883.6.282 |
| HTA  | Various HL7 V2 and FHIR-specific codes | Yes | <http://terminology.hl7.org> |  |
| ICD-O-3 | Cancer morphology and topology codes | No | <http://terminology.hl7.org/CodeSystem/icd-o-3> |  |
| ICD-10-CM | Diagnosis codes | Yes | <http://hl7.org/fhir/sid/icd-10-cm> |  |
| ICD-10-PCS | Procedure codes | No | <http://www.cms.gov/Medicare/Coding/ICD10> |  |
| LOINC | Observation and laboratory codes, answer codes | Yes | <http://loinc.org> |  |
| NCBI GTR | Genomic test codes | No | Missing | <https://www.ncbi.nlm.nih.gov/gtr/> |
| NCBI ClinVar | Genomic variations | No | Missing | Missing |
| NCIT | Cancer terminology | No | http://ncithesaurus-stage.nci.nih.gov | http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl |
| RxNorm | Medication codes | Yes | <http://www.nlm.nih.gov/research/umls/rxnorm> |  |
| Sequence Ontology | DNA change types | No | Missing | <http://www.sequenceontology.org/> |
| SNOMED CT | Disorders, body structures, findings, qualifiers | Yes | <http://snomed.info/sct> |  |
| UCUM | Units of measure | Yes | <http://unitsofmeasure.org> |  |
{: .grid }

[1] [Official HL7 Terminology (v2.1.0: Release)](https://terminology.hl7.org/codesystems.html)

[2] [HL7 Terminology Authority Recommendation (as of 1 Nov 2021)](https://confluence.hl7.org/display/TA/External+Terminologies+-+Information)

**Key:**

* CPT - Current Procedural Terminology (American Medical Association)
* HGNC - Human Genome Organisation (HUGO) Gene Nomenclature Committee
* HGVS - Human Genome Variation Society
* HTA - HL7 Terminology Authority
* ICD - International Classification of Diseases (World Health Organization)
  * ICD-O-3 - Oncology, 3rd revision
  * ICD-10-CM - Clinical Modification, 10th revision
  * ICD-10-PCS - Procedure Coding System, 10th revision
* LOINC - Logical Observation Identifiers Names and Codes
* NCBI - National Center for Biotechnology Information (National Institutes of Health) (US)
  * NCBI GTR - Genomic Testing Registry
  * NCBI ClinVar - Not an acronym
* NCIT - National Cancer Institute Thesaurus
* RxNorm - From National Library of Medicine (US)
* SNOMED CT - Systematized Nomenclature of Medicine Clinical Terms
* UCUM - Unified Code for Units of Measure
* UMLS - Unified Medical Language System Metathesaurus

### Local Code Systems

Local code systems `SnomedRequestedCS` and ` ComorbidConditionCS` are provided for terms submitted but not yet published and/or approved by LOINC and SNOMED. It is expected that the local codes will be replaced with approved LOINC and SNOMED terms in a future technical correction to the STU2 IG. Where codes have already been assigned by SNOMED, but not yet published, those codes are used as local codes to reduce future changes. In other cases, the submission numbers are used as the local codes.

For the purposes of mCODE, comorbidities are classified using the [Elixhauser system](https://www.hcup-us.ahrq.gov/toolssoftware/comorbidityicd10/comorbidity_icd10.jsp). This is a somewhat arbitrary choice, and other systems such as Charlson could have been selected, and profiles and value sets would have to change accordingly.

One set of LOINC submissions deals with the 30+ Elixhauser comorbidity categories. Currently, there are no LOINC codes for Elixhauser categories such as "Liver disease, mild", "Renal failure, moderate", or "Thyroid disorders other than hypothyroidism". In some cases, not all, there are SNOMED CT disorder codes that superficially correspond to Elixhauser categories, such as congestive heart failure (SCTID: 42343007). However, the SNOMED codes subsumed under that code do not necessarily correspond to the disorders included in the Elixhauser category. Therefore, new codes are needed. More discussion is found [here][ComorbiditiesElixhauser].

**Links:**

* [Code systems defined in mCODE](codesystems.html)
* [Value sets used in mCODE](valuesets.html)

{% include markdown-link-references.md %}
