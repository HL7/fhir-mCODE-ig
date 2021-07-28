This implementation guide draws on a number of formal terminologies (code systems). Several guiding principles were applied in selecting terminologies for mCODE:

1. Fit for purpose
2. Conformance with US Core and FHIR
3. Commonly used in real world practice

The following table presents the external code systems (and naming conventions) adopted in mCODE, and their primary purpose:

| Code System | Application | [FHIR IG Publishing](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) support? | HL7 Canonical |
|--------------|-------------|------------------|-----|
| AJCC | Cancer staging codes | No | Missing |
| CPT | Procedure codes | No | <http://www.ama-assn.org/go/cpt> |
| HGNC | Gene identification | No | <http://www.genenames.org>  |
| HGVS | Sequence variant nomenclature | Yes | <http://varnomen.hgvs.org> |
| HTA  | Various HL7 V2 and FHIR-specific codes | Yes | <http://terminology.hl7.org> |
| ICD-O-3 | Cancer morphology and topology codes | No | <http://terminology.hl7.org/CodeSystem/icd-o-3> |
| ICD-10-CM | Diagnosis codes | Yes | <http://hl7.org/fhir/sid/icd-10-cm> |
| ICD-10-PCS | Procedure codes | No | <http://www.cms.gov/Medicare/Coding/ICD10> |
| LOINC | Observation and laboratory codes, answer codes | Yes | <http://loinc.org> |
| NCBI GTR | Genetic test codes | No | Missing |
| NCBI ClinVar | Genetic variations | No | Missing |
| RxNorm | Medication codes | Yes | <http://www.nlm.nih.gov/research/umls/rxnorm> |
| Sequence Ontology | DNA change types | No | Missing |
| SNOMED CT | Disorders, body structures, findings, qualifiers | Yes | <http://snomed.info/sct> |
| UCUM | Units of measure | Yes | <http://unitsofmeasure.org> |
{: .grid }


**Key:**

* AJCC - American Joint Committee on Cancer
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
  * NCBI GTR - Genetic Testing Registry
  * NCBI ClinVar - Not an acronym
* RxNorm - From National Library of Medicine (US)
* SNOMED CT - Systematized Nomenclature of Medicine Clinical Terms
* UCUM - Unified Code for Units of Measure
* UMLS - Unified Medical Language System Metathesaurus

### Local Code Systems

New code systems were created when no existing code systems were deemed fit for purpose. The following code systems were created (none of which have IG publishing support):

|  Code System | Application |
|--------------|-------------|
| Elixhauser Code System | Codes for comorbidity categories |
| Catch Codes | Codes for positive identification of FHIR instances |
| Resource Identifier Codes | Codes describing resource types |
{: .grid }

These systems are described below:

#### Radiotherapy Code System

Not all required concepts exist in established sources such as SNOMED CT and UMLS. A local code system was created for the missing codes, at the same time requests were made to SNOMED CT for new terms to fill these gaps.

#### Elixhauser Code System

For the purposes of mCODE, comorbidities are classified using the [Elixhauser system](https://www.hcup-us.ahrq.gov/toolssoftware/comorbidityicd10/comorbidity_icd10.jsp). This is a somewhat arbitrary choice, and other systems such as Charlson could have been selected, and profiles and value sets would have to change accordingly.

There is no established code system that represents the 30+ Elixhauser comorbidity categories. For example, there are no SNOMED CT concepts for Elixhauser categories such as "Liver disease, mild", "Renal failure, moderate", or "Thyroid disorders other than hypothyroidism". In some cases there are SNOMED CT disorder codes that superficially correspond to Elixhauser categories, such as congestive heart failure (SCTID: 42343007). However, the SNOMED codes subsumed under that code do not necessarily correspond to the disorders included in the Elixhauser CHF category. This is a subtle difference, and perhaps not clinically meaningful. However, there is no obvious or automatic equivalence between the set of disorders in each Elixhauser comorbidity category and the set of disorders subsumed in a SNOMED CT hierarchy. If Charlson or another comorbidity index were used, the same issue would arise. Feedback is welcomed.

More discussion is found [here][ComorbiditiesElixhauser].

#### Catch Codes

The "catch code" code system was established to represent "Other, specify: ___________" as often offered as the last in a list of choices. In addition, this approach prevents certain FHIR validation problems that would result from use of extensible bindings. A detailed explanation is found [here][CatchCodeCS].

#### Resource Identifier Codes

Certain resources, particularly in the radiotherapy area, are missing appropriate LOINC codes. Local codes have been defined to fill this gap, at least temporarily.

**Links:**

* [All code systems defined in mCODE](artifacts.html#terminology-code-systems)
* [All value sets defined in mCODE](artifacts.html#terminology-value-sets)

{% include markdown-link-references.md %}
