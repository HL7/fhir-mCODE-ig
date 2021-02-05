This implementation guide draws on a variety of formal terminologies (code systems). Three guiding principles in selecting terminologies for mCODE were 

The following table presents the external code systems used in this guide, and their primary purpose:

| Code System | Application | [FHIR IG Publishing](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) support? |
|--------------|-------------|------------------|
| LOINC | Observation and laboratory codes, answer codes | Yes |
| SNOMED-CT | Disorders, body structures, findings, qualifiers | Yes |
| Unified Code for Units of Measure (UCUM) | Units of measure | Yes |
| National Cancer Institute (NCI) Thesaurus | Editions of the AJCC Staging Manual | No |
| ICD-10-CM | Diagnosis codes | Yes |
| ICD-10-PCS | Procedure codes | No |
| ICD-O-3 | Cancer morphology and topology codes | No |
| RxNorm | Medication codes | Yes |
| Current Procedural Terminology (CPT) | Procedure codes | No |
| American Joint Committee on Cancer (AJCC) | Cancer staging codes | No |
| National Center for Biotechnology Information (NCBI) Genetic Testing Registry (GTR) | Genetic test codes | No |
| NCBI ClinVar | Genetic variations | No |
| HUGO Gene Nomenclature Committee (HGNC)  | Gene identification | No |
| Human Genome Variation Society (HGVS) Sequence Variant Nomenclature | Variants in DNA, RNA, and protein sequences | Yes |
| Sequence Ontology | DNA change types | No |
| Office of Management and Budget (OMB) Race and Ethnicity | Race and ethnicity codes | Yes |
| HL7 Terminology Authority  | HL7 V2 and FHIR-specific codes | Yes |
{: .grid }


New code systems were created when no existing code systems were deemed fit for purpose. The following code systems were created:

|  Code System | Application | [FHIR IG Publishing](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) support? |
|--------------|-------------|------------------|
| Radiotherapy Code System | Radiotherapy modalities, techniques, and devices | No |
| Elixhauser Code System | Codes for the comorbidity categories originally defined by Elixhauser, updated by the Agency for Healthcare Research and Quality (AHRQ) Healthcare Cost and Utilization Project (H-CUP) | No |
| Catch Codes | Codes needed for positive identification of certain types of instances | No |
{: .grid }

In the case of radiotherapy, significantly less than 50% of the required concepts could be found in established sources such as SNOMED-CT and NCI Thesaurus. The CodeX FHIR Accelerator radiation oncology stakeholder group, comprised of radiation oncologists, representatives of professional societies, vendors, and information specialists, considered several options. It was decided, at least for trial use, to create a custom code system that could be directly controlled, similar to other medical specialty organizations such as AJCC for cancer staging, NCBI for genetic variants, and HGNC for gene identification. This decision does not rule out future coordination with terminology SDOs.

Similarly, there is no established code system representing the Elixhauser comorbidity categories. In the AHRQ/H-CUP version of Elixhauser, "depression" is defined as a set of 18 ICD-10-CM codes. SNOMED-CT concept 35489007 Depressive disorder is likely similar, but without detailed analysis, there is no assurance the two concepts are the same.

Finally, the "catch code" code system was established as a way to know, positively, what a FHIR resource is supposed to represent in terms of mCODE-defined profiles. This relates to technical issues in FHIR, rather than clinical terminology gaps. More details are found [here][CatchCodeCS].

### Code Systems Defined

* [ElixhauserCategoryCS]
* [RadiotherapyCS]
* [CatchCodeCS]

### Value Sets Defined

* [BrachytherapyModalityVS]
* [BrachytherapyTechiqueVS]
* [BrachytherapyDeviceVS]
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
* [RadiationTargetBodySiteVS]
* [SecondaryCancerDisorderVS]
* [TeleradiotherapyModalityVS]
* [TeleradiotherapyTechniqueVS]
* [TeleradiotherapyDeviceVS]
* [TNMDistantMetastasesCategoryVS]
* [TNMPrimaryTumorCategoryVS]
* [TNMRegionalNodesCategoryVS]
* [TNMStageGroupVS]
* [TreatmentIntentVS]
* [TreatmentTerminationReasonVS]
* [TumorMarkerTestVS]
* [TumorSizeMethodVS]
* [TumorSizeUnitsVS]

{% include markdown-link-references.md %}
