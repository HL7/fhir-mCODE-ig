This implementation guide draws on a number of formal terminologies (code systems). Several guiding principles were applied in selecting terminologies for mCODE:

1. Fit for purpose
2. Conformance with US Core and FHIR
3. Commonly used in practice

The following table presents the external code systems (and naming conventions) adopted in mCODE, and their primary purpose:

| Code System | Application | [FHIR IG Publishing](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) support? |
|--------------|-------------|------------------|
| LOINC | Observation and laboratory codes, answer codes | Yes |
| SNOMED CT | Disorders, body structures, findings, qualifiers | Yes |
| UCUM | Units of measure | Yes |
| NCI Thesaurus | Editions of the AJCC Staging Manual | No |
| ICD-10-CM | Diagnosis codes | Yes |
| ICD-10-PCS | Procedure codes | No |
| ICD-O-3 | Cancer morphology and topology codes | No |
| RxNorm | Medication codes | Yes |
| CPT | Procedure codes | No |
| AJCC | Cancer staging codes | No |
| NCBI GTR | Genetic test codes | No |
| NCBI ClinVar | Genetic variations | No |
| HGNC | Gene identification | No |
| HGVS | Sequence variant nomenclature | Yes |
| Sequence Ontology | DNA change types | No |
| OMB Race and Ethnicity | Race and ethnicity codes | Yes |
| HL7 Terminology Authority  | HL7 V2 and FHIR-specific codes | Yes |
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

New code systems were created when no existing code systems were deemed fit for purpose. The following code systems were created:

|  Code System | Application | [FHIR IG Publishing](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) support? |
|--------------|-------------|------------------|
| Radiotherapy Code System | Radiotherapy modalities, techniques, and devices | No |
| Elixhauser Code System | Codes for comorbidity categories | No |
| Catch Codes | Codes for positive identification of FHIR instances | No |
| Resource Identifier Codes | Codes describing types of instances, to be used in the 'code' element | No |
{: .grid }

In the case of radiotherapy, significantly less than 50% of the required concepts exist in established sources such as SNOMED CT and NCI Thesaurus. The CodeX FHIR Accelerator radiation oncology stakeholder group, comprised of radiation oncologists, representatives of professional societies, vendors, and information specialists, considered several options. It was decided, at least for trial use, to create a custom code system that could be directly controlled, similar to other medical specialty organizations such as AJCC for cancer staging, NCBI for genetic variants, and HGNC for gene identification. This decision does not rule out future coordination with terminology SDOs.

Similarly, there is no established code system that represents the 30+ Elixhauser comorbidity categories. These are codes that identify a _category_ of comorbidity, such as "Drug abuse". Although it would be preferable to use existing code systems to identify these categories, there is no terminology with terms for each comorbidity category. For example, there are no SNOMED CT concepts for "Liver disease, mild", "Renal failure, moderate", or "Thyroid disorders other than hypothyroidism". Note that the issue here is not to find disorder codes that fit the categories, but rather, to have codes that represent the _categories themselves_.

Finally, the "catch code" code system was established as a way to know, positively, what a FHIR resource is supposed to represent in terms of mCODE-defined profiles. This relates to technical issues in FHIR, rather than clinical terminology gaps. A detailed explanation is found [here][CatchCodeCS].

### Code Systems Defined

* [ComorbiditiesElixhauserCS]
* [RadiotherapyCS]
* [CatchCodeCS]
* [ResourceIdentifierCS]

### Value Sets Defined

* [BrachytherapyModalityVS]
* [BrachytherapyTechniqueVS]
* [CancerBodyLocationVS]
* [CancerDiseaseStatusEvidenceTypeVS]
* [CancerDisorderVS]
* [CancerRelatedSurgicalProcedureVS]
* [CancerStagingSystemVS]
* [ClinVarVS]
* [ConditionStatusTrendVS]
* [DNAChangeTypeVS]
* [ElixhauserAIDSVS]
* [ElixhauserAlcoholAbuseVS]
* [ElixhauserBloodLossAnemiaVS]
* [ElixhauserCancerLeukemiaVS]
* [ElixhauserCancerLymphomaVS]
* [ElixhauserCancerMetastaticVS]
* [ElixhauserCancerSolidTumorInSituVS]
* [ElixhauserCancerSolidTumorMalignantVS]
* [ElixhauserCerebrovascularDiseaseVS]
* [ElixhauserChronicPulmonaryDiseaseVS]
* [ElixhauserCoagulationDeficiencyVS]
* [ElixhauserCongestiveHeartFailureVS]
* [ElixhauserDeficiencyAnemiaVS]
* [ElixhauserDementiaVS]
* [ElixhauserDepressionVS]
* [ElixhauserDiabetesComplicatedVS]
* [ElixhauserDiabetesUncomplicatedVS]
* [ElixhauserDrugAbuseVS]
* [ElixhauserHypertensionComplicatedVS]
* [ElixhauserHypertensionUncomplicatedVS]
* [ElixhauserHypothyroidismVS]
* [ElixhauserLiverDiseaseMildVS]
* [ElixhauserLiverDiseaseSevereVS]
* [ElixhauserNeurologicalMovementDisorderVS]
* [ElixhauserNeurologicalSeizureDisorderVS]
* [ElixhauserObesityVS]
* [ElixhauserOtherNeurologicalVS]
* [ElixhauserOtherThyroidDisorderVS]
* [ElixhauserParalysisVS]
* [ElixhauserPeripheralVascularDiseaseVS]
* [ElixhauserPsychosisVS]
* [ElixhauserPulmonaryCirculationDisorderVS]
* [ElixhauserRenalFailureModerateVS]
* [ElixhauserRenalFailureSevereVS]
* [ElixhauserRheumatoidArthritisVS]
* [ElixhauserUlcerVS]
* [ElixhauserValvularDiseaseVS]
* [ElixhauserWeightLossVS]
* [GeneticSpecimenTypeVS]
* [HGNCVS]
* [HGVSVS]
* [HistologyMorphologyBehaviorVS]
* [LocationQualifierVS]
* [PresentAbsentUnknownVS]
* [PrimaryOrUncertainBehaviorCancerDisorderVS]
* [RadiotherapyBodySiteVS]
* [SecondaryCancerDisorderVS]
* [TeleradiotherapyModalityVS]
* [TeleradiotherapyTechniqueVS]
* [TNMDistantMetastasesCategoryVS]
* [TNMPrimaryTumorCategoryVS]
* [TNMRegionalNodesCategoryVS]
* [CancerStageGroupVS]
* [TreatmentIntentVS]
* [TreatmentTerminationReasonVS]
* [TumorMarkerTestVS]
* [TumorSizeMethodVS]
* [TumorSizeUnitsVS]

{% include markdown-link-references.md %}
