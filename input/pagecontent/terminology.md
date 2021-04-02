This implementation guide draws on a number of formal terminologies (code systems). Several guiding principles were applied in selecting terminologies for mCODE:

1. Fit for purpose
2. Conformance with US Core and FHIR
3. Commonly used in real world practice

The following table presents the external code systems (and naming conventions) adopted in mCODE, and their primary purpose:

| Code System | Application | [FHIR IG Publishing](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) support? | HL7 Canonical URL? |
|--------------|-------------|------------------|
| LOINC | Observation and laboratory codes, answer codes | Yes | Yes |
| SNOMED CT | Disorders, body structures, findings, qualifiers | Yes |
| UCUM | Units of measure | Yes | Yes |
| UMLS | Staging systems, radiotherapy | No | Yes |
| ICD-10-CM | Diagnosis codes | Yes | Yes |
| ICD-10-PCS | Procedure codes | No | Yes |
| ICD-O-3 | Cancer morphology and topology codes | No | Yes |
| RxNorm | Medication codes | Yes | Yes |
| CPT | Procedure codes | No | Yes |
| AJCC | Cancer staging codes | No | No |
| NCBI GTR | Genetic test codes | No | No |
| NCBI ClinVar | Genetic variations | No | No |
| HGNC | Gene identification | No | Yes |
| HGVS | Sequence variant nomenclature | Yes | Yes |
| Sequence Ontology | DNA change types | No | No |
| HL7 Terminology Authority  | Various HL7 V2 and FHIR-specific codes | Yes | Yes |
{: .grid }


**Key:**

* LOINC - Logical Observation Identifiers Names and Codes
* SNOMED CT - Systematized Nomenclature of Medicine Clinical Terms
* UCUM - Unified Code for Units of Measure
* NCI - National Cancer Institute (US)
* ICD - International Classification of Diseases (World Health Organization)
  * ICD-10-CM - Clinical Modification, 10th revision
  * ICD-10-PCS - Procedure Coding System, 10th revision
  * ICD-O-3 - Oncology, 3rd revision
* RxNorm - From National Library of Medicine (US)
* CPT - Current Procedural Terminology (American Medical Association)
* AJCC - American Joint Committee on Cancer
* NCBI - National Center for Biotechnology Information (National Institutes of Health) (US)
  * NCBI GTR - Genetic Testing Registry
* HGNC - Human Genome Organisation (HUGO) Gene Nomenclature Committee
* HGVS - Human Genome Variation Society
* OMB - Office of Management and Budget (US)

### Local Code Systems

New code systems were created when no existing code systems were deemed fit for purpose. The following code systems were created (none of which have IG publishing support):

|  Code System | Application |
|--------------|-------------|
| Radiotherapy Code System | Radiotherapy modalities, techniques, and body sites |
| Elixhauser Code System | Codes for comorbidity categories |
| Catch Codes | Codes for positive identification of FHIR instances |
| Resource Identifier Codes | Codes describing types of instances, to be used in the 'code' element |
{: .grid }

####

In the case of radiotherapy, not all required concepts exist in established sources such as SNOMED CT and NCI Thesaurus. A local code system was created for the missing codes, at the same time requests were made to SNOMED CT for new terms to fill these gaps.

Similarly, there is no established code system that represents the 30+ Elixhauser comorbidity categories. Although it would be preferable to use existing code systems to identify these categories, there is no terminology with terms for each comorbidity category. For example, there are no SNOMED CT concepts for "Liver disease, mild", "Renal failure, moderate", or "Thyroid disorders other than hypothyroidism". Note that the issue here is not to find disorder codes, but rather, to have codes representing the _categories themselves_.

Finally, the "catch code" code system was established as a way to know, positively, what a FHIR resource is supposed to represent in terms of mCODE-defined profiles. This relates to technical issues in FHIR, rather than clinical terminology gaps. A detailed explanation is found [here][CatchCodeCS].

**Links:**

* [All code systems defined in mCODE](http://build.fhir.org/ig/HL7/fhir-mCODE-ig/branches/master/artifacts.html#terminology-code-systems)
* [All value sets defined in mCODE](http://build.fhir.org/ig/HL7/fhir-mCODE-ig/branches/master/artifacts.html#terminology-value-sets)

{% include markdown-link-references.md %}
