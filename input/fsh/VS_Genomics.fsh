ValueSet:    ClinVarVS
Id: mcode-clinvar-vs
Title: "ClinVar Value Set"
Description: "Value set of human genetic variants, drawn from [ClinVar](https://www.ncbi.nlm.nih.gov/clinvar/). The codes in this value set refer to the ClinVar Variation ID, or the identifier for the variant or set of variants that were interpreted. [Source: NCBI ClinVar Data Dictionary](https://www.ncbi.nlm.nih.gov/projects/clinvar/ClinVarDataDictionary.pdf)"
* codes from system CLINVAR

ValueSet:  HGNCVS
Id: mcode-hgnc-vs
Title: "HUGO Gene Nomenclature Committee Gene Names Value Set"
Description: "HUGO Gene Nomenclature Committee Gene Names Value Set"
* codes from system HGNC

ValueSet: HGVSVS
Id: mcode-hgvs-vs
Title: "Human Genome Variation Society Sequence Variant Nomenclature Value Set"
Description: "HGVS nomenclature is used to report and exchange information regarding variants found in DNA, RNA, and protein sequences."
* codes from system HGVS

ValueSet: DNAChangeTypeVS
Id: mcode-dna-change-type-vs
Title: "DNA Change Type Value Set"
Description: "DNA Change Type of a variant"
* include codes from system SO where concept descendent-of #SO:0002072

ValueSet: MolecularConsequenceVS
Id: molecular-consequence-vs
Title: "Molecular Consequence Value Set"
Description: "Changes in a structural features of a sequence due to the observed variant."
* include codes from system SO where concept descendent-of #SO:0001537

ValueSet: TumorMarkerTestVS
Id: mcode-tumor-marker-test-vs
Title: "Tumor Marker Test Value Set"
Description:    "Codes representing tests for tumor markers. This value set of LOINC codes is not comprehensive and can be extended. Other vocabularies can be used only if the test of interest is not covered by LOINC. Tumor marker tests differ from genetic tests in that they measure levels of protein or other substances produced downstream from RNA protein synthesis."

* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* CC#TMT-OTHER "Other Tumor Marker Test, Specify"
* include codes from system LNC where ancestor = #LP101591-8 // t(15;17)(q24.1;q21.1)(PML,RARA) bcr2
* include codes from system LNC where ancestor = #LP111251-7 // T-cell receptor excision circle
* include codes from system LNC where ancestor = #LP136073-6 // PCA3 score
* include codes from system LNC where ancestor = #LP14040-7 // Cancer Ag 19-9
* include codes from system LNC where ancestor = #LP14329-4 // Choriogonadotropin.beta subunit
* include codes from system LNC where ancestor = #LP14543-0 // Cancer Ag 125
* include codes from system LNC where ancestor = #LP14618-0 // CD30
* include codes from system LNC where ancestor = #LP14649-5 // Calcitonin
* include codes from system LNC where ancestor = #LP14650-3 // Carcinoembryonic
* include codes from system LNC where ancestor = #LP14652-9 // Chromogranin A
* include codes from system LNC where ancestor = #LP14658-6 // Enolase.neuron specific
* include codes from system LNC where ancestor = #LP14665-1 // Gastrin
* include codes from system LNC where ancestor = #LP14694-1 // Somatostatin
* include codes from system LNC where ancestor = #LP14697-4 // Thyroglobulin
* include codes from system LNC where ancestor = #LP14902-8 // Progesterone receptor
* include codes from system LNC where ancestor = #LP14907-7 // Beta-2-Microglobulin
* include codes from system LNC where ancestor = #LP15033-1 // Lactate dehydrogenase
* include codes from system LNC where ancestor = #LP15090-1 // Catecholamines
* include codes from system LNC where ancestor = #LP15097-6 // 5-Hydroxyindoleacetate
* include codes from system LNC where ancestor = #LP15097-6 // 5-Hydroxyindoleacetate
* include codes from system LNC where ancestor = #LP15461-4 // Cancer Ag 15-3
* include codes from system LNC where ancestor = #LP15463-0 // Cancer Ag 242
* include codes from system LNC where ancestor = #LP15464-8 // Cancer Ag 27-29
* include codes from system LNC where ancestor = #LP15465-5 // Cancer Ag 50
* include codes from system LNC where ancestor = #LP15466-3 // Cancer Ag 549
* include codes from system LNC where ancestor = #LP15467-1 // Cancer Ag 72-4
* include codes from system LNC where ancestor = #LP15681-7 // Isocitrate dehydrogenase
* include codes from system LNC where ancestor = #LP157499-7 // UGT1A1 gene.c.A(TA)7TAA(*28)
* include codes from system LNC where ancestor = #LP15990-2 // Fibrin+Fibrinogen fragments
* include codes from system LNC where ancestor = #LP16890-3 // Plasminogen activator urokinase type
* include codes from system LNC where ancestor = #LP17730-0 // Cells.CD33
* include codes from system LNC where ancestor = #LP17751-6 // Cells.CD20
* include codes from system LNC where ancestor = #LP18193-0 // Prostate specific Ag
* include codes from system LNC where ancestor = #LP18274-8 // Cancer Ag DM-70K
* include codes from system LNC where ancestor = #LP18343-1 // CD25
* include codes from system LNC where ancestor = #LP18396-9 // Epidermal growth factor receptor
* include codes from system LNC where ancestor = #LP18515-4 // Cells.CD22
* include codes from system LNC where ancestor = #LP18567-5 // Estrogen receptor
* include codes from system LNC where ancestor = #LP189759-6 // ALK gene rearrangements
* include codes from system LNC where ancestor = #LP19423-0 // Cytokeratin 19
* include codes from system LNC where ancestor = #LP19492-5 // Thiopurine methyltransferase
* include codes from system LNC where ancestor = #LP19666-4 // BRCA1 gene
* include codes from system LNC where ancestor = #LP19732-4 // KRAS gene
* include codes from system LNC where ancestor = #LP20052-4 // CD117
* include codes from system LNC where ancestor = #LP200639-5 // B-cell CD27 & IgD subsets panel
* include codes from system LNC where ancestor = #LP207485-6 // Cells.CD27+IgD-
* include codes from system LNC where ancestor = #LP220351-3 // Programmed cell death ligand 1
* include codes from system LNC where ancestor = #LP248009-5 // Serine-threonine protein kinase B-raf V600E
* include codes from system LNC where ancestor = #LP28442-9 // HER2
* include codes from system LNC where ancestor = #LP28518-6 // Bladder tumor Ag
* include codes from system LNC where ancestor = #LP28728-1 // Nuclear matrix protein 22
* include codes from system LNC where ancestor = #LP28852-9 // Estrogen+Progesterone receptor
* include codes from system LNC where ancestor = #LP31830-0 // Acarboxyprothrombin
* include codes from system LNC where ancestor = #LP31855-7 // BRCA2 gene
* include codes from system LNC where ancestor = #LP35767-0 // Soluble mesothelin related proteins
* include codes from system LNC where ancestor = #LP36040-1 // Alpha-1-Fetoprotein.L3
* include codes from system LNC where ancestor = #LP36464-3 // Microsatellite instability
* include codes from system LNC where ancestor = #LP36477-5 // JAK2 gene.p.Val617Phe
* include codes from system LNC where ancestor = #LP36861-0 // B-cell
* include codes from system LNC where ancestor = #LP36885-9 // DPYD gene
* include codes from system LNC where ancestor = #LP61778-4 // FLT3 gene
* include codes from system LNC where ancestor = #LP62864-1 // FISH
* include codes from system LNC where ancestor = #LP63490-4 // FGFR2 gene+FGFR3 gene
* include codes from system LNC where ancestor = #LP64447-3 // BCR-ABL1 b2a2 fusion protein
* include codes from system LNC where ancestor = #LP93517-8 // Human epididymis protein 4

/* 
* include codes from system LNC where ancestor = #LP101591-8
* include codes from system LNC where ancestor = #LP111251-7
* include codes from system LNC where ancestor = #LP136073-6
* include codes from system LNC where ancestor = #LP14040-7
* include codes from system LNC where ancestor = #LP14329-4
* include codes from system LNC where ancestor = #LP14543-0
* include codes from system LNC where ancestor = #LP14618-0
* include codes from system LNC where ancestor = #LP14649-5
* include codes from system LNC where ancestor = #LP14650-3
* include codes from system LNC where ancestor = #LP14652-9
* include codes from system LNC where ancestor = #LP14658-6
* include codes from system LNC where ancestor = #LP14665-1
* include codes from system LNC where ancestor = #LP14694-1
* include codes from system LNC where ancestor = #LP14697-4
* include codes from system LNC where ancestor = #LP14902-8
* include codes from system LNC where ancestor = #LP14907-7
* include codes from system LNC where ancestor = #LP15033-1
* include codes from system LNC where ancestor = #LP15090-1
* include codes from system LNC where ancestor = #LP15097-6
* include codes from system LNC where ancestor = #LP15097-6
* include codes from system LNC where ancestor = #LP15461-4
* include codes from system LNC where ancestor = #LP15463-0"
* include codes from system LNC where ancestor = #LP15464-8
* include codes from system LNC where ancestor = #LP15465-5
* include codes from system LNC where ancestor = #LP15466-3
* include codes from system LNC where ancestor = #LP15467-1
* include codes from system LNC where ancestor = #LP15681-7
* include codes from system LNC where ancestor = #LP157499-7
* include codes from system LNC where ancestor = #LP15990-2"
* include codes from system LNC where ancestor = #LP16890-3
* include codes from system LNC where ancestor = #LP17730-0
* include codes from system LNC where ancestor = #LP17751-6
* include codes from system LNC where ancestor = #LP18193-0
* include codes from system LNC where ancestor = #LP18274-8
* include codes from system LNC where ancestor = #LP18343-1
* include codes from system LNC where ancestor = #LP18396-9
* include codes from system LNC where ancestor = #LP18515-4
* include codes from system LNC where ancestor = #LP18567-5
* include codes from system LNC where ancestor = #LP189759-6
* include codes from system LNC where ancestor = #LP19423-0
* include codes from system LNC where ancestor = #LP19492-5
* include codes from system LNC where ancestor = #LP19666-4
* include codes from system LNC where ancestor = #LP19732-4
* include codes from system LNC where ancestor = #LP20052-4
* include codes from system LNC where ancestor = #LP200639-5
* include codes from system LNC where ancestor = #LP207485-6
* include codes from system LNC where ancestor = #LP220351-3
* include codes from system LNC where ancestor = #LP248009-5
* include codes from system LNC where ancestor = #LP28442-9
* include codes from system LNC where ancestor = #LP28518-6
* include codes from system LNC where ancestor = #LP28728-1
* include codes from system LNC where ancestor = #LP28852-9
* include codes from system LNC where ancestor = #LP31830-0
* include codes from system LNC where ancestor = #LP31855-7
* include codes from system LNC where ancestor = #LP35767-0
* include codes from system LNC where ancestor = #LP36040-1
* include codes from system LNC where ancestor = #LP36464-3
* include codes from system LNC where ancestor = #LP36477-5
* include codes from system LNC where ancestor = #LP36861-0
* include codes from system LNC where ancestor = #LP36885-9
* include codes from system LNC where ancestor = #LP61778-4
* include codes from system LNC where ancestor = #LP62864-1
* include codes from system LNC where ancestor = #LP62864-1
* include codes from system LNC where ancestor = #LP63490-4
* include codes from system LNC where ancestor = #LP64447-3
* include codes from system LNC where ancestor = #LP93517-8
*/

ValueSet:   GeneticSpecimenTypeVS
Id: mcode-genetic-specimen-type-vs
Title: "Genetic Specimen Type Value Set"
Description:    "The type of specimen analyzed in a genetic test. The values are taken from code system http://terminology.hl7.org/CodeSystem/v2-0487, and represent a subset of HL7 Version 2 Table 0487 (http://hl7.org/fhir/v2/0487).  The most specific term available should be used."
* SPTY#AMN       "Amniotic fluid"
* SPTY#BIFL      "Bile Fluid"
* SPTY#BLD       "Whole blood"
* SPTY#BLDA      "Blood arterial"
* SPTY#BLDCO     "Cord blood"
* SPTY#BLDV      "Blood venous"
* SPTY#BON       "Bone"
* SPTY#CSERU     "Serum, Convalescent"
* SPTY#CSF       "Cerebral spinal fluid"
* SPTY#CVM       "Cervical Mucus"
* SPTY#DUFL      "Duodenal fluid"
* SPTY#FBLOOD    "Blood, Fetal"
* SPTY#FGA       "Fluid, Abdomen"
* SPTY#GENV      "Genital vaginal"
* SPTY#HYDC      "Fluid, Hydrocele"
* SPTY#JNTFLD    "Fluid, Joint"
* SPTY#KIDFLD    "Fluid, Kidney"
* SPTY#LSAC      "Fluid, Lumbar Sac"
* SPTY#MAR       "Marrow"
* SPTY#PAFL      "Pancreatic fluid"
* SPTY#PCFL      "Fluid, Pericardial"
* SPTY#PLC       "Placenta"
* SPTY#PLR       "Pleural fluid (thoracentesis fluid)"
* SPTY#SAL       "Saliva"
* SPTY#SKN       "Skin"
* SPTY#SMN       "Seminal fluid"
* SPTY#SNV       "Fluid, synovial (Joint fluid)"
* SPTY#SPT       "Sputum"
* SPTY#TISS      "Tissue"
* SPTY#TUMOR     "Tumor"
* SPTY#VITF      "Vitreous Fluid"
* SPTY#WND       "Wound"
* SPTY#UR        "Urine"           // FHIR-32827
* SPTY#STL       "Stool = Fecal"   // FHIR-32827
* SPTY#OTH       "Source, Other"   // FHIR-32827


ValueSet: TumorMarkerTestExtensionalVS
Id: mcode-tumor-marker-test-extensional-vs
Title: "Tumor Marker Test Extensional Value Set"
Description:    "Codes representing tests for tumor markers. This extensional value set of LOINC codes is not comprehensive and can be extended. Other vocabularies can be used only if the test of interest is not covered by LOINC. Tumor marker tests differ from genetic tests in that they measure levels of protein or other substances produced downstream from RNA protein synthesis."

* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
// * CC#TMT-OTHER "Other Tumor Marker Test, Specify"
* LNC#62320-7 // T-cell receptor excision circle [#/volume] in DBS by NAA with probe detection
* LNC#92006-6 // T-cell receptor excision circle [Cycle Threshold #] in DBS
* LNC#92007-4 // T-cell receptor excision circle [Z-score] in DBS
* LNC#92008-2 // T-cell receptor excision circle [Multiple of the median] in DBS
* LNC#69361-4 // PCA3 score in Urine by Molecular genetics method
* LNC#69362-2 // PCA3 score in Urine Qualitative by Molecular genetics method
* LNC#19163-5 // Cancer Ag 19-9 [Units/volume] in Pleural fluid
* LNC#2009-9 // Cancer Ag 19-9 [Presence] in Serum or Plasma
* LNC#24108-3 // Cancer Ag 19-9 [Units/volume] in Serum or Plasma
* LNC#26924-1 // Cancer Ag 19-9 [Units/volume] in Body fluid
* LNC#50779-8 // Cancer Ag 19-9 [Units/volume] in Cerebral spinal fluid
* LNC#50780-6 // Cancer Ag 19-9 [Units/volume] in Pericardial fluid
* LNC#50781-4 // Cancer Ag 19-9 [Units/volume] in Peritoneal fluid
* LNC#83084-4 // Cancer Ag 19-9 [Units/volume] in Serum or Plasma by Immunoassay
* LNC#97750-4 // Cancer Ag 19-9 [Units/volume] in Aspirate
* LNC#14041-8 // Choriogonadotropin.beta subunit [Units/volume] in Cerebral spinal fluid
* LNC#19174-2 // Choriogonadotropin.beta subunit [Units/volume] in Amniotic fluid
* LNC#19175-9 // Choriogonadotropin.beta subunit [Moles/volume] in Amniotic fluid
* LNC#20415-6 // Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma by Immunoassay (EIA) 3rd IS
* LNC#2111-3 // Choriogonadotropin.beta subunit [Moles/volume] in Serum or Plasma
* LNC#2113-9 // Choriogonadotropin.beta subunit [Mass/time] in 24 hour Urine
* LNC#2114-7 // Choriogonadotropin.beta subunit [Moles/volume] in Urine
* LNC#21198-7 // Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma
* LNC#29154-2 // Choriogonadotropin.beta subunit [Units/volume] in Body fluid
* LNC#43799-6 // Choriogonadotropin.beta subunit [Presence] in Specimen
* LNC#43800-2 // Choriogonadotropin.beta subunit [Presence] in Cerebral spinal fluid
* LNC#55868-4 // Choriogonadotropin.beta subunit [Multiple of the median] in Serum or Plasma
* LNC#55869-2 // Choriogonadotropin.beta subunit [Mass/volume] in Serum or Plasma
* LNC#56497-1 // Choriogonadotropin.beta subunit [Units] in 24 hour Urine
* LNC#66762-6 // Choriogonadotropin.beta subunit [Units/volume] in Pleural fluid
* LNC#66763-4 // Choriogonadotropin.beta subunit [Units/volume] in Peritoneal fluid
* LNC#10334-1 // Cancer Ag 125 [Units/volume] in Serum or Plasma
* LNC#11210-2 // Cancer Ag 125 [Units/volume] in Body fluid
* LNC#15156-3 // Cancer Ag 125 [Units/volume] in Body fluid by Dilution
* LNC#15157-1 // Cancer Ag 125 [Units/volume] in Serum or Plasma by Dilution
* LNC#19165-0 // Cancer Ag 125 [Units/volume] in Pleural fluid
* LNC#2006-5 // Cancer Ag 125 [Presence] in Serum or Plasma
* LNC#40618-1 // Cancer Ag 125 [Units/volume] in Peritoneal fluid
* LNC#48677-9 // Cancer Ag 125 [Presence] in Tissue by Immune stain
* LNC#50775-6 // Cancer Ag 125 [Units/volume] in Cerebral spinal fluid
* LNC#59040-6 // Cancer Ag 125 [Units/volume] in Peritoneal dialysis fluid
* LNC#68923-2 // Cancer Ag 125 [Units/volume] in Pericardial fluid
* LNC#83082-8 // Cancer Ag 125 [Units/volume] in Serum or Plasma by Immunoassay
* LNC#97743-9 // Cancer Ag 125 [Units/volume] in Aspirate
* LNC#15035-9 // Calcitonin [Moles/volume] in Serum or Plasma
* LNC#1992-7 // Calcitonin [Mass/volume] in Serum or Plasma
* LNC#47369-4 // Calcitonin [Mass/volume] in Body fluid
* LNC#75709-6 // Calcitonin [Mass/volume] in Lymph node fine needle aspirate
* LNC#25587-7 // Chromogranin A [Moles/volume] in Serum or Plasma
* LNC#30169-7 // Chromogranin A [Units/volume] in Serum or Plasma by Immunoassay
* LNC#53047-7 // Chromogranin A [Mass/volume] in Body fluid
* LNC#59220-4 // Chromogranin A [Units/volume] in Pleural fluid
* LNC#59226-1 // Chromogranin A [Units/volume] in Peritoneal fluid
* LNC#59227-9 // Chromogranin A [Units/volume] in Cerebral spinal fluid
* LNC#59241-0 // Chromogranin A [Units/volume] in Body fluid
* LNC#9811-1 // Chromogranin A [Mass/volume] in Serum or Plasma
* LNC#15060-7 // Enolase.neuron specific [Mass/volume] in Serum or Plasma
* LNC#19193-2 // Enolase.neuron specific [Units/volume] in Serum or Plasma
* LNC#19194-0 // Enolase.neuron specific [Units/volume] in Pleural fluid
* LNC#2225-1 // Enolase.neuron specific [Enzymatic activity/volume] in Serum or Plasma
* LNC#44802-7 // Enolase.neuron specific [Mass/volume] in Cerebral spinal fluid
* LNC#47053-4 // Enolase.neuron specific [Mass/volume] in Cerebral spinal fluid by Immunoassay
* LNC#48138-2 // Enolase.neuron specific [Mass/volume] in Serum or Plasma by Radioimmunoassay (RIA)
* LNC#48164-8 // Enolase.neuron specific [Mass/volume] in Body fluid
* LNC#57371-7 // Enolase.neuron specific [Mass/volume] in Serum or Plasma by Immunoassay
* LNC#68939-8 // Enolase.neuron specific [Mass/volume] in Pleural fluid
* LNC#68952-1 // Enolase.neuron specific [Mass/volume] in Pericardial fluid
* LNC#69560-1 // Enolase.neuron specific [Mass/volume] in Peritoneal fluid
* LNC#97744-7 // Enolase.neuron specific [Mass/volume] in Aspirate
* LNC#15072-2 // Gastrin [Moles/volume] in Serum or Plasma
* LNC#2333-3 // Gastrin [Mass/volume] in Serum or Plasma
* LNC#2960-3 // Somatostatin [Presence] in Plasma
* LNC#2961-1 // Somatostatin [Mass/volume] in Plasma
* LNC#49792-5 // Somatostatin [Moles/volume] in Plasma
* LNC#14918-7 // Thyroglobulin [Moles/volume] in Serum or Plasma
* LNC#3013-0 // Thyroglobulin [Mass/volume] in Serum or Plasma
* LNC#53920-5 // Thyroglobulin [Mass/volume] in Lymph node fine needle aspirate
* LNC#53922-1 // Thyroglobulin [Mass/volume] in Tissue fine needle aspirate
* LNC#97640-7 // Thyroglobulin [Moles/volume] in Tissue fine needle aspirate
* LNC#10861-3 // Progesterone receptor [Mass/mass] in Tissue
* LNC#16113-3 // Progesterone receptor [Interpretation] in Tissue
* LNC#31207-4 // Progesterone receptor [Moles/mass] in Tissue
* LNC#10873-8 // Beta-2-Microglobulin [Mass/time] in 24 hour Urine
* LNC#14626-6 // Beta-2-Microglobulin [Moles/volume] in Serum
* LNC#1951-3 // Beta-2-Microglobulin [Mass/volume] in Cerebral spinal fluid
* LNC#1952-1 // Beta-2-Microglobulin [Mass/volume] in Serum or Plasma
* LNC#1953-9 // Beta-2-Microglobulin [Mass/volume] in Urine
* LNC#32301-4 // Beta-2-Microglobulin [Moles/volume] in Cerebral spinal fluid
* LNC#32302-2 // Beta-2-Microglobulin [Moles/volume] in Urine
* LNC#39458-5 // Beta-2-Microglobulin [Moles/volume] in Body fluid
* LNC#43818-4 // Beta-2-Microglobulin [Presence] in Serum
* LNC#43819-2 // Beta-2-Microglobulin [Presence] in Urine
* LNC#43919-0 // Beta-2-Microglobulin [Presence] in Cerebral spinal fluid
* LNC#48166-3 // Beta-2-Microglobulin [Mass/volume] in Body fluid
* LNC#49081-3 // Beta-2-Microglobulin [Mass/volume] in Dialysis fluid
* LNC#50824-2 // Beta-2-Microglobulin [Moles/volume] in 24 hour Urine
* LNC#54356-1 // Beta-2-Microglobulin [Mass/volume] in 24 hour Urine
* LNC#56662-0 // Beta-2-Microglobulin [Moles/time] in 24 hour Urine
* LNC#59217-0 // Beta-2-Microglobulin [Mass/volume] in Peritoneal fluid
* LNC#59218-8 // Beta-2-Microglobulin [Mass/volume] in Pleural fluid
* LNC#76484-5 // Beta-2-Microglobulin [Moles/volume] in Serum or Plasma
* LNC#83076-0 // Beta-2-Microglobulin [Units/volume] in Serum or Plasma by Immunoassay
* LNC#83077-8 // Beta-2-Microglobulin [Mass/volume] in Urine by Immunoassay
* LNC#83078-6 // Beta-2-Microglobulin [Mass/volume] in Serum or Plasma by Immunoassay
* LNC#83079-4 // Beta-2-Microglobulin [Units/volume] in Urine by Immunoassay
* LNC#88711-7 // Beta-2-Microglobulin [Mass/volume] in Peritoneal dialysis fluid
* LNC#11053-6 // Lactate dehydrogenase [Enzymatic activity/volume] in Red Blood Cells
* LNC#14403-0 // Lactate dehydrogenase [Enzymatic activity/volume] in Gastric fluid
* LNC#14803-1 // Lactate dehydrogenase [Enzymatic activity/volume] in Body fluid by Lactate to pyruvate reaction
* LNC#14804-9 // Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction
* LNC#14805-6 // Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Pyruvate to lactate reaction
* LNC#17041-5 // Lactate dehydrogenase [Presence] in Urine
* LNC#2527-0 // Lactate dehydrogenase [Enzymatic activity/volume] in Amniotic fluid
* LNC#2528-8 // Lactate dehydrogenase [Enzymatic activity/volume] in Cerebral spinal fluid
* LNC#2529-6 // Lactate dehydrogenase [Enzymatic activity/volume] in Body fluid
* LNC#2530-4 // Lactate dehydrogenase [Enzymatic activity/volume] in Pleural fluid
* LNC#2531-2 // Lactate dehydrogenase [Enzymatic activity/volume] in Peritoneal fluid
* LNC#2532-0 // Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma
* LNC#2533-8 // Lactate dehydrogenase [Enzymatic activity/volume] in Synovial fluid
* LNC#2534-6 // Lactate dehydrogenase [Enzymatic activity/volume] in Urine
* LNC#32324-6 // Lactate dehydrogenase [Enzymatic activity/volume] in Specimen
* LNC#33367-4 // Lactate dehydrogenase [Enzymatic activity/volume] in Pericardial fluid
* LNC#47678-8 // Lactate dehydrogenase [Enzymatic activity/volume] in 24 hour Urine
* LNC#47863-6 // Lactate dehydrogenase [Enzymatic activity/time] in 24 hour Urine
* LNC#57664-5 // Lactate dehydrogenase [Enzymatic activity/volume] in Semen
* LNC#5921-2 // Lactate dehydrogenase [Enzymatic activity/volume] in Dialysis fluid
* LNC#60017-1 // Lactate dehydrogenase [Enzymatic activity/volume] in Body fluid by Pyruvate to lactate reaction
* LNC#60018-9 // Lactate dehydrogenase [Enzymatic activity/volume] in Pericardial fluid by Pyruvate to lactate reaction
* LNC#60019-7 // Lactate dehydrogenase [Enzymatic activity/volume] in Pericardial fluid by Lactate to pyruvate reaction
* LNC#60020-5 // Lactate dehydrogenase [Enzymatic activity/volume] in Peritoneal fluid by Pyruvate to lactate reaction
* LNC#60021-3 // Lactate dehydrogenase [Enzymatic activity/volume] in Pleural fluid by Pyruvate to lactate reaction
* LNC#60022-1 // Lactate dehydrogenase [Enzymatic activity/volume] in Pleural fluid by Lactate to pyruvate reaction
* LNC#60023-9 // Lactate dehydrogenase [Enzymatic activity/volume] in Cerebral spinal fluid by Pyruvate to lactate reaction
* LNC#60024-7 // Lactate dehydrogenase [Enzymatic activity/volume] in Cerebral spinal fluid by Lactate to pyruvate reaction
* LNC#68387-0 // Lactate dehydrogenase [Enzymatic activity/volume] in Peritoneal fluid by Lactate to pyruvate reaction
* LNC#68452-2 // Lactate dehydrogenase [Enzymatic activity/volume] in Synovial fluid by Pyruvate to lactate reaction
* LNC#68453-0 // Lactate dehydrogenase [Enzymatic activity/volume] in Synovial fluid by Lactate to pyruvate reaction
* LNC#81430-1 // Lactate dehydrogenase [Enzymatic activity/volume] in Peritoneal dialysis fluid by Lactate to pyruvate reaction
* LNC#15036-7 // Catecholamines [Moles/time] in 24 hour Urine
* LNC#2055-2 // Catecholamines [Mass/volume] in Blood
* LNC#2056-0 // Catecholamines [Mass/volume] in Plasma
* LNC#2057-8 // Catecholamines [Mass/volume] in Urine
* LNC#2058-6 // Catecholamines [Mass/time] in 24 hour Urine
* LNC#32000-2 // Catecholamines [Mass/volume] in 24 hour Urine
* LNC#32161-2 // Catecholamines [Presence] in 24 hour Urine
* LNC#34260-0 // Catecholamines [Moles/volume] in 24 hour Urine
* LNC#34261-8 // Catecholamines [Moles/volume] in Urine
* LNC#38446-1 // Catecholamines [Mass/time] in 72 hour Urine
* LNC#44078-4 // Catecholamines [Interpretation] in Urine
* LNC#44838-1 // Catecholamines [Interpretation] in Plasma
* LNC#49256-1 // Catecholamines [Interpretation] in Urine Narrative
* LNC#49257-9 // Catecholamines [Interpretation] in Plasma Narrative
* LNC#55830-4 // Catecholamines [Moles/volume] in Cerebral spinal fluid
* LNC#55831-2 // Catecholamines [Moles/volume] in Body fluid
* LNC#59787-2 // Catecholamines [Moles/volume] in Plasma
* LNC#12172-3 // 5-Hydroxyindoleacetate [Presence] in 24 hour Urine
* LNC#14573-0 // 5-Hydroxyindoleacetate [Moles/time] in 24 hour Urine
* LNC#15009-4 // 5-Hydroxyindoleacetate [Moles/volume] in Urine
* LNC#1692-3 // 5-Hydroxyindoleacetate [Mass/volume] in Cerebral spinal fluid
* LNC#1693-1 // 5-Hydroxyindoleacetate [Mass/volume] in Serum or Plasma
* LNC#1694-9 // 5-Hydroxyindoleacetate [Mass/volume] in Urine
* LNC#1695-6 // 5-Hydroxyindoleacetate [Mass/time] in 24 hour Urine
* LNC#25971-3 // 5-Hydroxyindoleacetate [Moles/volume] in 24 hour Urine
* LNC#31203-3 // 5-Hydroxyindoleacetate [Mass/volume] in 24 hour Urine
* LNC#47544-2 // 5-Hydroxyindoleacetate [Moles/volume] in Cerebral spinal fluid
* LNC#48168-9 // 5-Hydroxyindoleacetate [Presence] in Urine
* LNC#50149-4 // 5-Hydroxyindoleacetate [Moles/volume] in Serum or Plasma
* LNC#72820-4 // 5-Hydroxyindoleacetate [Mass/volume] in Urine by Confirmatory method
* LNC#74769-1 // 5-Hydroxyindoleacetate [Moles/volume] in Platelet rich plasma
* LNC#12172-3 // 5-Hydroxyindoleacetate [Presence] in 24 hour Urine
* LNC#14573-0 // 5-Hydroxyindoleacetate [Moles/time] in 24 hour Urine
* LNC#15009-4 // 5-Hydroxyindoleacetate [Moles/volume] in Urine
* LNC#1692-3 // 5-Hydroxyindoleacetate [Mass/volume] in Cerebral spinal fluid
* LNC#1693-1 // 5-Hydroxyindoleacetate [Mass/volume] in Serum or Plasma
* LNC#1694-9 // 5-Hydroxyindoleacetate [Mass/volume] in Urine
* LNC#1695-6 // 5-Hydroxyindoleacetate [Mass/time] in 24 hour Urine
* LNC#25971-3 // 5-Hydroxyindoleacetate [Moles/volume] in 24 hour Urine
* LNC#31203-3 // 5-Hydroxyindoleacetate [Mass/volume] in 24 hour Urine
* LNC#47544-2 // 5-Hydroxyindoleacetate [Moles/volume] in Cerebral spinal fluid
* LNC#48168-9 // 5-Hydroxyindoleacetate [Presence] in Urine
* LNC#50149-4 // 5-Hydroxyindoleacetate [Moles/volume] in Serum or Plasma
* LNC#72820-4 // 5-Hydroxyindoleacetate [Mass/volume] in Urine by Confirmatory method
* LNC#74769-1 // 5-Hydroxyindoleacetate [Moles/volume] in Platelet rich plasma
* LNC#19186-6 // Cancer Ag 15-3 [Units/volume] in Pleural fluid
* LNC#2007-3 // Cancer Ag 15-3 [Presence] in Serum or Plasma
* LNC#29153-4 // Cancer Ag 15-3 [Units/volume] in Body fluid
* LNC#50776-4 // Cancer Ag 15-3 [Units/volume] in Cerebral spinal fluid
* LNC#50777-2 // Cancer Ag 15-3 [Units/volume] in Pericardial fluid
* LNC#50778-0 // Cancer Ag 15-3 [Units/volume] in Peritoneal fluid
* LNC#6875-9 // Cancer Ag 15-3 [Units/volume] in Serum or Plasma
* LNC#83083-6 // Cancer Ag 15-3 [Units/volume] in Serum or Plasma by Immunoassay
* LNC#97749-6 // Cancer Ag 15-3 [Units/volume] in Aspirate
* LNC#2011-5 // Cancer Ag 242 [Presence] in Serum or Plasma
* LNC#17842-6 // Cancer Ag 27-29 [Units/volume] in Serum or Plasma
* LNC#19187-4 // Cancer Ag 27-29 [Units/volume] in Pleural fluid
* LNC#2012-3 // Cancer Ag 27-29 [Presence] in Serum or Plasma
* LNC#50782-2 // Cancer Ag 27-29 [Units/volume] in Cerebral spinal fluid
* LNC#2013-1 // Cancer Ag 50 [Presence] in Serum or Plasma
* LNC#34256-8 // Cancer Ag 50 [Units/volume] in Serum or Plasma
* LNC#19189-0 // Cancer Ag 549 [Units/volume] in Serum or Plasma
* LNC#19190-8 // Cancer Ag 549 [Units/volume] in Pleural fluid
* LNC#2014-9 // Cancer Ag 549 [Presence] in Serum or Plasma
* LNC#17843-4 // Cancer Ag 72-4 [Units/volume] in Serum or Plasma
* LNC#19164-3 // Cancer Ag 72-4 [Units/volume] in Pleural fluid
* LNC#2015-6 // Cancer Ag 72-4 [Presence] in Serum or Plasma
* LNC#34161-0 // Cancer Ag 72-4 [Units/volume] in Body fluid
* LNC#47012-0 // Cancer Ag 72-4 [Presence] in Tissue by Immune stain
* LNC#68924-0 // Cancer Ag 72-4 [Units/volume] in Peritoneal fluid
* LNC#68925-7 // Cancer Ag 72-4 [Units/volume] in Cerebral spinal fluid
* LNC#68926-5 // Cancer Ag 72-4 [Units/volume] in Pericardial fluid
* LNC#2506-4 // Isocitrate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma
* LNC#72508-5 // UGT1A1 gene c.A(TA)7TAA(*28) [Presence] in Blood or Tissue by Molecular genetics method
* LNC#13054-2 // Fibrin+Fibrinogen fragments [Units/volume] in Urine
* LNC#29991-7 // Fibrin+Fibrinogen fragments [Mass/volume] in Serum by Latex agglutination
* LNC#30009-5 // Fibrin+Fibrinogen fragments [Mass/volume] in Serum
* LNC#30226-5 // Fibrin+Fibrinogen fragments [Mass/volume] in Platelet poor plasma
* LNC#3251-6 // Fibrin+Fibrinogen fragments [Units/volume] in Platelet poor plasma by Latex agglutination
* LNC#3252-4 // Fibrin+Fibrinogen fragments [Units/volume] in Serum by Latex agglutination
* LNC#48592-0 // Fibrin+Fibrinogen fragments [Titer] in Platelet poor plasma by Latex agglutination
* LNC#21464-3 // Plasminogen activator urokinase type [Presence] in Tissue
* LNC#5984-0 // Plasminogen activator urokinase type [Units/volume] in Urine
* LNC#5985-7 // Plasminogen activator urokinase type [Units/volume] in Platelet poor plasma
* LNC#21015-3 // CD33 cells [#/volume] in Blood
* LNC#74837-6 // CD20 cells [#/volume] in Specimen
* LNC#9558-8 // CD20 cells [#/volume] in Blood
* LNC#10508-0 // Prostate specific Ag [Presence] in Tissue by Immune stain
* LNC#19195-7 // Prostate specific Ag [Units/volume] in Serum or Plasma
* LNC#19197-3 // Prostate specific Ag [Moles/volume] in Serum or Plasma
* LNC#19198-1 // Prostate specific Ag [Units/volume] in Semen
* LNC#19199-9 // Prostate specific Ag [Mass/volume] in Semen
* LNC#19200-5 // Prostate specific Ag [Moles/volume] in Semen
* LNC#2857-1 // Prostate specific Ag [Mass/volume] in Serum or Plasma
* LNC#34611-4 // Prostate specific Ag [Mass/volume] in Urine
* LNC#35741-8 // Prostate specific Ag [Mass/volume] in Serum or Plasma by Detection limit <= 0.01 ng/mL
* LNC#47738-0 // Prostate specific Ag [Mass/volume] in Body fluid
* LNC#59221-2 // Prostate specific Ag [Mass/volume] in Pleural fluid
* LNC#59223-8 // Prostate specific Ag [Mass/volume] in Peritoneal fluid
* LNC#59230-3 // Prostate specific Ag [Mass/volume] in Cerebral spinal fluid
* LNC#83112-3 // Prostate specific Ag [Mass/volume] in Serum or Plasma by Immunoassay
* LNC#13127-6 // Cancer Ag DM/70K [Units/volume] in Serum or Plasma
* LNC#13659-8 // Epidermal growth factor receptor [Mass/mass] in Tissue
* LNC#14050-9 // Epidermal growth factor receptor [Moles/mass] in Tissue
* LNC#21013-8 // CD22 cells [#/volume] in Blood
* LNC#14130-9 // Estrogen receptor [Moles/mass] in Tissue
* LNC#16112-5 // Estrogen receptor [Interpretation] in Tissue
* LNC#78205-2 // ALK gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78210-2 // ALK gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#19182-5 // Cytokeratin 19 [Units/volume] in Serum or Plasma
* LNC#19183-3 // Cytokeratin 19 [Units/volume] in Pleural fluid
* LNC#25390-6 // Cytokeratin 19 [Mass/volume] in Serum or Plasma
* LNC#48163-0 // Cytokeratin 19 [Mass/volume] in Body fluid
* LNC#56787-5 // Cytokeratin 19 [Units/volume] in Urine
* LNC#68927-3 // Cytokeratin 19 [Mass/volume] in Peritoneal fluid
* LNC#68928-1 // Cytokeratin 19 [Mass/volume] in Cerebral spinal fluid
* LNC#68929-9 // Cytokeratin 19 [Mass/volume] in Pericardial fluid
* LNC#68938-0 // Cytokeratin 19 [Mass/volume] in Pleural fluid
* LNC#97748-8 // Cytokeratin 19 [Mass/volume] in Aspirate
* LNC#21563-2 // Thiopurine methyltransferase [Enzymatic activity/volume] in Red Blood Cells
* LNC#43421-7 // Thiopurine methyltransferase [Enzymatic activity/mass] in Red Blood Cells
* LNC#53819-9 // Thiopurine methyltransferase [Enzymatic activity/volume] in Blood
* LNC#79468-5 // Thiopurine methyltransferase [Enzymatic activity/substance] in Red Blood Cells
* LNC#91141-2 // TPMT activity in RBC by production of 6-MMP
* LNC#91142-0 // TPMT activity in RBC by production of 6-MMP riboside
* LNC#91143-8 // TPMT activity in RBC by production of 6-MTG riboside
* LNC#83059-6 // KRAS gene [VCF] in Cancer specimen by Sequencing
* LNC#80717-2 // B-cell CD27 and IgD subsets panel - Blood
* LNC#85299-6 // BRAF V600E mutant protein [Presence] in Cancer specimen by Immune stain
* LNC#32996-1 // HER2 [Mass/volume] in Serum
* LNC#42914-2 // HER2 [Mass/volume] in Serum by Immunoassay
* LNC#48676-1 // HER2 [Interpretation] in Tissue
* LNC#51981-9 // HER2 [Presence] in Serum by Immunoassay
* LNC#72382-5 // HER2 [Units/volume] in Tissue by Immunoassay
* LNC#72383-3 // HER2 [Presence] in Tissue by Immunoassay
* LNC#85319-2 // HER2 [Presence] in Breast cancer specimen by Immune stain
* LNC#28078-4 // Bladder tumor Ag [Presence] in Urine by Immunoassay
* LNC#28551-0 // Bladder tumor Ag [Units/volume] in Urine by Immunoassay
* LNC#31729-7 // Bladder tumor Ag [Presence] in Urine
* LNC#31730-5 // Bladder tumor Ag [Units/volume] in Urine
* LNC#80386-6 // Bladder tumor Ag [Presence] in Urine by Rapid immunoassay
* LNC#31134-0 // Nuclear matrix protein 22 [Units/volume] in Urine
* LNC#50666-7 // Nuclear matrix protein 22 [Presence] in Urine
* LNC#34444-0 // Acarboxyprothrombin [Mass/volume] in Serum or Plasma
* LNC#93768-0 // Acarboxyprothrombin [Units/volume] in Serum or Plasma
* LNC#41292-4 // Soluble mesothelin related proteins [Moles/volume] in Serum or Plasma
* LNC#43368-0 // Microsatellite instability [Identifier] in Tissue by Molecular genetics method Nominal
* LNC#62862-8 // Microsatellite instability [Presence] in Tissue by Immune stain
* LNC#81695-9 // Microsatellite instability [Interpretation] in Cancer specimen Qualitative
* LNC#43399-5 // JAK2 gene p.Val617Phe [Presence] in Blood or Tissue by Molecular genetics method
* LNC#72333-8 // JAK2 gene p.Val617Phe [Presence] in Bone marrow by Molecular genetics method
* LNC#31150-6 // ERBB2 gene duplication [Presence] in Tissue by FISH
* LNC#48674-6 // Genetic diseases [Identifier] in Blood or Tissue by FISH Nominal
* LNC#48684-5 // X and Y chromosome [Interpretation] in Blood or Marrow by FISH--post bone marrow transplant
* LNC#48730-6 // X linked heterotaxy [Identifier] in Blood or Tissue by FISH Narrative
* LNC#49028-4 // Microdeletion syndromes [Identifier] in Blood or Tissue by FISH Nominal
* LNC#49039-1 // Subtelomere analysis [Identifier] in Blood or Tissue by FISH Nominal
* LNC#49040-9 // Subtelomere analysis [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#49063-1 // Microdeletion syndromes in Specimen by FISH Nominal
* LNC#49683-6 // ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH
* LNC#50020-7 // Microdeletion syndromes in Blood or Tissue by FISH
* LNC#50659-2 // Chromosome analysis.interphase [Interpretation] in Bone marrow by FISH Narrative
* LNC#50684-0 // Chromosome analysis.interphase [Interpretation] in Blood by FISH Narrative
* LNC#51867-0 // t(9;22)(q34.1;q11)(ABL1,BCR) fusion transcript in Blood or Tissue by FISH
* LNC#53628-4 // 20q chromosome deletion [Identifier] in Blood or Tissue by FISH Nominal
* LNC#55192-9 // Chromosome analysis.interphase [Interpretation] in Amniotic fluid by FISH Narrative
* LNC#55193-7 // Chromosome analysis.interphase [Interpretation] in Chorionic villus sample by FISH Narrative
* LNC#56030-0 // Karyotype [Identifier] in Urine by FISH Narrative
* LNC#56144-9 // CHIC2 gene 4q12 deletion in Blood or Tissue by FISH
* LNC#57038-2 // Chromosome 12 aneuploidy in Amniotic fluid or Chorionic villus sample by FISH Nominal
* LNC#57317-0 // Chromosome 13+18+21+X+Y aneuploidy in Amniotic fluid or Chorionic villus sample by FISH Nominal
* LNC#57318-8 // Chromosome 13+18+21+X+Y aneuploidy in Blood or Tissue by FISH Nominal
* LNC#57453-3 // Chromosome 18 aneuploidy in Amniotic fluid or Chorionic villus sample by FISH Nominal
* LNC#57454-1 // Chromosome 13 aneuploidy in Amniotic fluid or Chorionic villus sample by FISH Nominal
* LNC#57802-1 // Chromosome analysis.interphase [Interpretation] in Blood or Marrow by FISH Narrative
* LNC#57906-0 // 9p21 chromosome deletion [Identifier] in Blood or Tissue by FISH Nominal
* LNC#59050-5 // Chromosome analysis.interphase [Interpretation] in Specimen by FISH Narrative
* LNC#59267-5 // Karyotype [Identifier] in Blood or Tissue by FISH Narrative
* LNC#62344-7 // Chromosome analysis.metaphase panel - Blood by FISH
* LNC#62345-4 // Chromosome analysis.interphase panel - Blood by FISH
* LNC#62346-2 // Chromosome analysis.interphase panel - Amniotic fluid by FISH
* LNC#62347-0 // Chromosome analysis.prenatal panel by FISH
* LNC#62354-6 // Chromosome analysis.metaphase panel - Amniotic fluid by FISH
* LNC#62367-8 // Chromosome analysis panel by FISH
* LNC#63068-1 // TOP2A gene copy number/Chromosome 17 copy number in Tissue by FISH
* LNC#63070-7 // TOP2A gene 17q21-22 deletion and duplication mutation analysis [Presence] in Tissue by FISH
* LNC#66950-7 // MALT1 18q21 gene rearrangements in Blood or Tissue by FISH
* LNC#72652-1 // Subtelomere analysis.long arm [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#72653-9 // Subtelomere analysis.short arm [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#72654-7 // SNRPN gene 15q11 deletion and duplication mutation analysis [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72725-5 // t(11;14)(q13.2;q32)(MYEOV,IGH) fusion transcript [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72726-3 // t(4;14)(p16;q32)(FGFR3,IGH) fusion transcript [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72728-9 // Del(13)(q14) [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72824-6 // Del(17)(p13) [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72827-9 // dic(9;20)(p11-13;q11)(wcp9+,wcp20+) [Identifier] in Blood or Tissue by FISH Nominal
* LNC#73558-9 // Staphylococcus aureus and Staphylococcus sp.coagulase negative rRNA [Identifier] by FISH in Positive blood culture
* LNC#73749-4 // 4p16.3 chromosome deletion [Identifier] in Blood or Tissue by FISH Nominal
* LNC#73750-2 // RAI1 gene 17p11.2 deletion and duplication mutation analysis [Identifier] in Blood or Tissue by FISH Nominal
* LNC#73751-0 // 5p15.2 (5p-) chromosome deletion [Identifier] in Blood or Tissue by FISH Nominal
* LNC#73961-5 // Escherichia coli and Klebsiella pneumoniae and Pseudomonas aeruginosa rRNA [Identifier] by FISH in Positive blood culture
* LNC#73962-3 // Candida sp rRNA [Identifier] by FISH in Positive blood culture
* LNC#73963-1 // Enterococcus faecalis and other enterococcus sp rRNA [Identifier] by FISH in Positive blood culture
* LNC#74034-0 // MAML2 11q21 gene rearrangements in Tissue by FISH
* LNC#74860-8 // ERBB2 gene copy number/nucleus in Tissue by FISH
* LNC#74861-6 // Chromosome 17 copy number/nucleus in Tissue by FISH
* LNC#74885-5 // ERBB2 gene (HER2) duplication associated observations panel - Tissue by FISH
* LNC#76065-2 // 6p25 and 6q23 and 11q and 8q24 and 9p21 chromosome partial aneuploidy in Blood or Tissue by FISH
* LNC#77030-5 // t(1;19)(q23.3;p13.3)(PBX1,TCF3) fusion transcript in Blood or Tissue by FISH
* LNC#77031-3 // t(15;17)(q24.1;q21.1)(PML,RARA) fusion transcript in Blood or Tissue by FISH
* LNC#77032-1 // t(8;14)(q24;q32)(MYC,IGH) fusion transcript in Blood or Tissue by FISH
* LNC#77033-9 // t(14;16)(q32;q23)(IGH,MAF) fusion transcript in Blood or Tissue by FISH
* LNC#77034-7 // inv(16)(p13.1;q22.1)(MYH11,CBFB) fusion transcript in Blood or Tissue by FISH
* LNC#77035-4 // t(14;18)(q32;q21)(IGH,MALT1) fusion transcript in Blood or Tissue by FISH
* LNC#77036-2 // t(11;18)(q21;q21)(BIRC3,MALT1) fusion transcript in Blood or Tissue by FISH
* LNC#77037-0 // t(11;14)(q13;q32)(CCND1,IGH) fusion transcript in Blood or Tissue by FISH
* LNC#77038-8 // t(14;18)(q32;q21.3)(IGH,BCL2) fusion transcript in Blood or Tissue by FISH
* LNC#77039-6 // t(12;21)(p13;q22.3)(ETV6,RUNX1) fusion transcript in Blood or Tissue by FISH
* LNC#77040-4 // t(8;21)(q22;q22.3)(RUNX1T1,RUNX1) fusion transcript in Blood or Tissue by FISH
* LNC#77041-2 // inv(3)(q21;q26.2)+t(3;3)(q21;q26.2)(PSMD2,MECOM) fusion transcript in Blood or Tissue by FISH
* LNC#77042-0 // t(6;9)(p22;q34)(DEK,NUP214) fusion transcript in Blood or Tissue by FISH
* LNC#77666-6 // Methicillin resistance mecA mRNA [Presence] by FISH in Positive blood culture
* LNC#78201-1 // 4q12 chromosome region rearrangements [Identifier] in Blood or Tissue by FISH Nominal
* LNC#78202-9 // 9q34 chromosome region deletion [Presence] in Blood or Tissue by FISH
* LNC#78203-7 // BCL6 gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78204-5 // CCND1 gene duplication [Presence] in Blood or Tissue by FISH
* LNC#78205-2 // ALK gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78206-0 // 4q12 chromosome region rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78207-8 // 9q34 chromosome region deletion [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78208-6 // BCL6 gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78209-4 // CCND1 gene duplication [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78210-2 // ALK gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78211-0 // Cells.4q12 chromosome region rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78212-8 // Cells.9q34 chromosome region deletion/Cells counted in Blood or Tissue by FISH
* LNC#78213-6 // Cells.BCL6 gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78214-4 // Cells.CCND1 gene duplication/Cells counted in Blood or Tissue by FISH
* LNC#78215-1 // MYC gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78216-9 // TRA+TRD gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78217-7 // RARA gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78218-5 // BCL2 gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78219-3 // MLL gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78220-1 // PDGFRB gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78221-9 // IGH gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78222-7 // MYC gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78223-5 // TRA+TRD gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78224-3 // RARA gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78225-0 // BCL2 gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78226-8 // MLL gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78227-6 // PDGFRB gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78228-4 // IGH gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78229-2 // Cells.MYC gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78230-0 // Cells.RARA gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78231-8 // Cells.TRA+TRD gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78232-6 // Cells.BCL2 gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78233-4 // Cells.ALK gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78234-2 // Cells.MLL gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78235-9 // Cells.PDGFRB gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78236-7 // Cells.IGH gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78237-5 // Chromosome 8 copy number/nucleus in Blood or Tissue by FISH
* LNC#78238-3 // Chromosome 3 copy number/nucleus in Blood or Tissue by FISH
* LNC#78245-8 // MYB gene deletion [Presence] in Blood or Tissue by FISH
* LNC#78342-3 // MYB gene deletion [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78343-1 // Cells.MYB gene deletion/Cells counted in Blood or Tissue by FISH
* LNC#78915-6 // FGFR1 gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78916-4 // FGFR1 gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78917-2 // Cells.FGFR1 gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#79206-9 // inv(2)(p21;p23)(EML4,ALK) fusion transcript [Presence] in Blood or Tissue by FISH
* LNC#81710-6 // PTEN gene [Presence] in Cancer specimen by FISH
* LNC#81746-0 // Chromosome region 17p13.1 deletion in Blood or Tissue by FISH
* LNC#81747-8 // Chromosome region 6q22 rearrangements in Tissue by FISH
* LNC#81748-6 // Chromosome region Yp11.3 deletion AndOr rearrangement in Blood or Tissue by FISH
* LNC#81749-4 // Chromosome region 13q14 deletion in Bone marrow by FISH
* LNC#81751-0 // Chromosome 17p13.1 deletion and 14q32 rearrangements in Bone marrow by FISH
* LNC#81752-8 // Chromosome region 1q21 duplication in Bone marrow by FISH
* LNC#82238-7 // Chromosome region 15q11-13 deletion and duplication mutation analysis in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82239-5 // Chromosome region 16p13.3 deletion in Blood or Tissue by FISH
* LNC#82240-3 // Chromosome region 16p13.3 deletion in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82241-1 // Chromosome region 17p11.2 deletion in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82242-9 // Chromosome region 17p13.3 deletion in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82243-7 // Chromosome region 17p13.3 deletion in Blood or Tissue by FISH
* LNC#82244-5 // Chromosome region 1p36 deletion in Blood or Tissue by FISH
* LNC#82245-2 // Chromosome region 22q11.2 deletion and duplication mutation analysis in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82246-0 // Chromosome region 22q11.2 deletion and duplication mutation analysis in Blood or Tissue by FISH
* LNC#82247-8 // Chromosome region 7q11.23 deletion in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82248-6 // Chromosome region 7q11.23 deletion in Blood or Tissue by FISH
* LNC#82249-4 // Chromosome region 8q23.3-24.13 deletion in Blood or Tissue by FISH
* LNC#82250-2 // Chromosome region 1p subtelomere and 1p36 deletion and 1q25 rearrangement in Blood or Tissue by FISH
* LNC#82251-0 // Chromosome 3 and 7 and 17 aneuploidy and chromosome region 9p21 deletion in Urine by FISH
* LNC#82253-6 // JAG1 gene deletion in Blood or Tissue by FISH
* LNC#82256-9 // Chromosome 12 trisomy and chromosome region 11q22.3 and 13q14 and 17p13.1 deletion in Blood or Tissue by FISH
* LNC#82257-7 // SRY gene deletion in Blood or Tissue by FISH
* LNC#82258-5 // Subtelomere analysis in Bone marrow by FISH
* LNC#82295-7 // Chromosome region Xp22.33 AndOr Yp11.32 deletion and duplication mutation analysis in Blood or Tissue by FISH
* LNC#82597-6 // Chromosome painting analysis in Blood or Tissue by FISH
* LNC#84912-5 // Cells.chromosome region 5q31 deletion/Cells counted in Bone marrow by FISH
* LNC#84913-3 // Cells.chromosome 12 trisomy/Cells counted in Blood or Tissue by FISH
* LNC#84914-1 // Cells.chromosome region 13q14 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84915-8 // Cells.chromosome region 11q22.3 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84916-6 // Cells.chromosome region 17p13.1 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84917-4 // Chromosome Y aneuploidy [Presence] in Amniotic fluid or Chorionic villus sample by FISH
* LNC#84918-2 // Chromosome X aneuploidy [Presence] in Amniotic fluid or Chorionic villus sample by FISH
* LNC#84919-0 // Chromosome 21 aneuploidy [Presence] in Amniotic fluid or Chorionic villus sample by FISH
* LNC#84920-8 // Cells.chromosome region 5q31 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84921-6 // Cells.chromosome region 7q31 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84922-4 // Cells.chromosome 7 monosomy/Cells counted in Blood or Tissue by FISH
* LNC#85318-4 // ERBB2 gene duplication [Presence] in Breast cancer specimen by FISH
* LNC#86239-1 // Cells.chromosome 3 monosomy/Cells counted in Cancer specimen by FISH
* LNC#87436-2 // Chromosome X and Y aneuploidy in Blood or Tissue by FISH
* LNC#90043-1 // t(14;20)(q32;q12)(IGH,MAFB) fusion transcript in Blood or Tissue by FISH
* LNC#90926-7 // MET gene amplification in Blood or Tissue by FISH
* LNC#90927-5 // RET gene rearrangements in Blood or Tissue by FISH
* LNC#92905-9 // Chromosome 7 copy number/nucleus in Blood or Tissue by FISH
* LNC#92906-7 // MET gene copy number/nucleus in Blood or Tissue by FISH
* LNC#92907-5 // MET gene copy number/Chromosome 7 copy number in Blood or Tissue by FISH
* LNC#93796-1 // MYCN gene amplification in Blood or Tissue by FISH
* LNC#93797-9 // MYCN gene copy number/Chromosome 2 copy number in Tissue by FISH
* LNC#93798-7 // MYCN gene copy number/nucleus in Tissue by FISH
* LNC#93799-5 // Chromosome 2 copy number/nucleus in Tissue by FISH
* LNC#93800-1 // 1p/1q chromosome deletion [# Ratio] in Tissue by FISH
* LNC#93801-9 // Chromosome 1 polysomy [Presence] in Tissue by FISH
* LNC#93802-7 // 19q/19p chromosome deletion [# Ratio] in Tissue by FISH
* LNC#93803-5 // Chromosome 19 polysomy [Presence] in Tissue by FISH
* LNC#93804-3 // Chromosome 12 copy number/nucleus in Tissue by FISH
* LNC#93805-0 // MDM2 gene copy number/nucleus in Tissue by FISH
* LNC#93806-8 // EWSR1 gene rearrangements in Tissue by FISH
* LNC#93807-6 // FOXO1 gene rearrangements in Tissue by FISH
* LNC#93808-4 // MDM2 gene amplification in Tissue by FISH
* LNC#93809-2 // MDM2 gene copy number/Chromosome 12 copy number in Tissue by FISH
* LNC#93810-0 // SS18 gene rearrangements in Tissue by FISH
* LNC#94338-1 // Chromosome 13+15+16+18+21+22+X+Y aneuploidy in Products of Conception by FISH
* LNC#95069-1 // Chromosome 1q and 9 and 11 and 15 aneuploidy and 13q deletion in Bone marrow by FISH
* LNC#95070-9 // Chromosome 9 and 11 and 15 aneuploidy in Bone marrow by FISH
* LNC#95071-7 // Chromosome region 14q32 rearrangements in Bone marrow by FISH
* LNC#95551-8 // Chromosome region 17p11.2 deletion in Blood or Tissue by FISH
* LNC#95552-6 // 4p16.3 chromosome deletion in Blood or Tissue by FISH
* LNC#95553-4 // 5p15.2 (5p-) chromosome deletion [Identifier] in Blood or Tissue by FISH
* LNC#95779-5 // TFE3 gene rearrangements in Tissue by FISH
* LNC#95780-3 // TFEB gene rearrangements in Tissue by FISH
* LNC#95783-7 // ETV6 gene rearrangements in Blood or Marrow by FISH
* LNC#95784-5 // FGFR2 gene rearrangements in Tissue by FISH
* LNC#96494-0 // ABL1 and ABL2 and PDGFRB gene rearrangements in Blood or Tissue by FISH
* LNC#96495-7 // ABL2 gene rearrangements in Blood or Tissue by FISH
* LNC#96893-3 // ERBB2 gene duplication in Tumor by FISH
* LNC#98014-4 // Plasma cell proliferation analysis in Bone marrow by FISH
* LNC#31150-6 // ERBB2 gene duplication [Presence] in Tissue by FISH
* LNC#48674-6 // Genetic diseases [Identifier] in Blood or Tissue by FISH Nominal
* LNC#48684-5 // X and Y chromosome [Interpretation] in Blood or Marrow by FISH--post bone marrow transplant
* LNC#48730-6 // X linked heterotaxy [Identifier] in Blood or Tissue by FISH Narrative
* LNC#49028-4 // Microdeletion syndromes [Identifier] in Blood or Tissue by FISH Nominal
* LNC#49039-1 // Subtelomere analysis [Identifier] in Blood or Tissue by FISH Nominal
* LNC#49040-9 // Subtelomere analysis [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#49063-1 // Microdeletion syndromes in Specimen by FISH Nominal
* LNC#49683-6 // ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH
* LNC#50020-7 // Microdeletion syndromes in Blood or Tissue by FISH
* LNC#50659-2 // Chromosome analysis.interphase [Interpretation] in Bone marrow by FISH Narrative
* LNC#50684-0 // Chromosome analysis.interphase [Interpretation] in Blood by FISH Narrative
* LNC#51867-0 // t(9;22)(q34.1;q11)(ABL1,BCR) fusion transcript in Blood or Tissue by FISH
* LNC#53628-4 // 20q chromosome deletion [Identifier] in Blood or Tissue by FISH Nominal
* LNC#55192-9 // Chromosome analysis.interphase [Interpretation] in Amniotic fluid by FISH Narrative
* LNC#55193-7 // Chromosome analysis.interphase [Interpretation] in Chorionic villus sample by FISH Narrative
* LNC#56030-0 // Karyotype [Identifier] in Urine by FISH Narrative
* LNC#56144-9 // CHIC2 gene 4q12 deletion in Blood or Tissue by FISH
* LNC#57038-2 // Chromosome 12 aneuploidy in Amniotic fluid or Chorionic villus sample by FISH Nominal
* LNC#57317-0 // Chromosome 13+18+21+X+Y aneuploidy in Amniotic fluid or Chorionic villus sample by FISH Nominal
* LNC#57318-8 // Chromosome 13+18+21+X+Y aneuploidy in Blood or Tissue by FISH Nominal
* LNC#57453-3 // Chromosome 18 aneuploidy in Amniotic fluid or Chorionic villus sample by FISH Nominal
* LNC#57454-1 // Chromosome 13 aneuploidy in Amniotic fluid or Chorionic villus sample by FISH Nominal
* LNC#57802-1 // Chromosome analysis.interphase [Interpretation] in Blood or Marrow by FISH Narrative
* LNC#57906-0 // 9p21 chromosome deletion [Identifier] in Blood or Tissue by FISH Nominal
* LNC#59050-5 // Chromosome analysis.interphase [Interpretation] in Specimen by FISH Narrative
* LNC#59267-5 // Karyotype [Identifier] in Blood or Tissue by FISH Narrative
* LNC#62344-7 // Chromosome analysis.metaphase panel - Blood by FISH
* LNC#62345-4 // Chromosome analysis.interphase panel - Blood by FISH
* LNC#62346-2 // Chromosome analysis.interphase panel - Amniotic fluid by FISH
* LNC#62347-0 // Chromosome analysis.prenatal panel by FISH
* LNC#62354-6 // Chromosome analysis.metaphase panel - Amniotic fluid by FISH
* LNC#62367-8 // Chromosome analysis panel by FISH
* LNC#63068-1 // TOP2A gene copy number/Chromosome 17 copy number in Tissue by FISH
* LNC#63070-7 // TOP2A gene 17q21-22 deletion and duplication mutation analysis [Presence] in Tissue by FISH
* LNC#66950-7 // MALT1 18q21 gene rearrangements in Blood or Tissue by FISH
* LNC#72652-1 // Subtelomere analysis.long arm [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#72653-9 // Subtelomere analysis.short arm [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#72654-7 // SNRPN gene 15q11 deletion and duplication mutation analysis [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72725-5 // t(11;14)(q13.2;q32)(MYEOV,IGH) fusion transcript [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72726-3 // t(4;14)(p16;q32)(FGFR3,IGH) fusion transcript [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72728-9 // Del(13)(q14) [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72824-6 // Del(17)(p13) [Identifier] in Blood or Tissue by FISH Nominal
* LNC#72827-9 // dic(9;20)(p11-13;q11)(wcp9+,wcp20+) [Identifier] in Blood or Tissue by FISH Nominal
* LNC#73558-9 // Staphylococcus aureus and Staphylococcus sp.coagulase negative rRNA [Identifier] by FISH in Positive blood culture
* LNC#73749-4 // 4p16.3 chromosome deletion [Identifier] in Blood or Tissue by FISH Nominal
* LNC#73750-2 // RAI1 gene 17p11.2 deletion and duplication mutation analysis [Identifier] in Blood or Tissue by FISH Nominal
* LNC#73751-0 // 5p15.2 (5p-) chromosome deletion [Identifier] in Blood or Tissue by FISH Nominal
* LNC#73961-5 // Escherichia coli and Klebsiella pneumoniae and Pseudomonas aeruginosa rRNA [Identifier] by FISH in Positive blood culture
* LNC#73962-3 // Candida sp rRNA [Identifier] by FISH in Positive blood culture
* LNC#73963-1 // Enterococcus faecalis and other enterococcus sp rRNA [Identifier] by FISH in Positive blood culture
* LNC#74034-0 // MAML2 11q21 gene rearrangements in Tissue by FISH
* LNC#74860-8 // ERBB2 gene copy number/nucleus in Tissue by FISH
* LNC#74861-6 // Chromosome 17 copy number/nucleus in Tissue by FISH
* LNC#74885-5 // ERBB2 gene (HER2) duplication associated observations panel - Tissue by FISH
* LNC#76065-2 // 6p25 and 6q23 and 11q and 8q24 and 9p21 chromosome partial aneuploidy in Blood or Tissue by FISH
* LNC#77030-5 // t(1;19)(q23.3;p13.3)(PBX1,TCF3) fusion transcript in Blood or Tissue by FISH
* LNC#77031-3 // t(15;17)(q24.1;q21.1)(PML,RARA) fusion transcript in Blood or Tissue by FISH
* LNC#77032-1 // t(8;14)(q24;q32)(MYC,IGH) fusion transcript in Blood or Tissue by FISH
* LNC#77033-9 // t(14;16)(q32;q23)(IGH,MAF) fusion transcript in Blood or Tissue by FISH
* LNC#77034-7 // inv(16)(p13.1;q22.1)(MYH11,CBFB) fusion transcript in Blood or Tissue by FISH
* LNC#77035-4 // t(14;18)(q32;q21)(IGH,MALT1) fusion transcript in Blood or Tissue by FISH
* LNC#77036-2 // t(11;18)(q21;q21)(BIRC3,MALT1) fusion transcript in Blood or Tissue by FISH
* LNC#77037-0 // t(11;14)(q13;q32)(CCND1,IGH) fusion transcript in Blood or Tissue by FISH
* LNC#77038-8 // t(14;18)(q32;q21.3)(IGH,BCL2) fusion transcript in Blood or Tissue by FISH
* LNC#77039-6 // t(12;21)(p13;q22.3)(ETV6,RUNX1) fusion transcript in Blood or Tissue by FISH
* LNC#77040-4 // t(8;21)(q22;q22.3)(RUNX1T1,RUNX1) fusion transcript in Blood or Tissue by FISH
* LNC#77041-2 // inv(3)(q21;q26.2)+t(3;3)(q21;q26.2)(PSMD2,MECOM) fusion transcript in Blood or Tissue by FISH
* LNC#77042-0 // t(6;9)(p22;q34)(DEK,NUP214) fusion transcript in Blood or Tissue by FISH
* LNC#77666-6 // Methicillin resistance mecA mRNA [Presence] by FISH in Positive blood culture
* LNC#78201-1 // 4q12 chromosome region rearrangements [Identifier] in Blood or Tissue by FISH Nominal
* LNC#78202-9 // 9q34 chromosome region deletion [Presence] in Blood or Tissue by FISH
* LNC#78203-7 // BCL6 gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78204-5 // CCND1 gene duplication [Presence] in Blood or Tissue by FISH
* LNC#78205-2 // ALK gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78206-0 // 4q12 chromosome region rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78207-8 // 9q34 chromosome region deletion [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78208-6 // BCL6 gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78209-4 // CCND1 gene duplication [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78210-2 // ALK gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78211-0 // Cells.4q12 chromosome region rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78212-8 // Cells.9q34 chromosome region deletion/Cells counted in Blood or Tissue by FISH
* LNC#78213-6 // Cells.BCL6 gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78214-4 // Cells.CCND1 gene duplication/Cells counted in Blood or Tissue by FISH
* LNC#78215-1 // MYC gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78216-9 // TRA+TRD gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78217-7 // RARA gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78218-5 // BCL2 gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78219-3 // MLL gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78220-1 // PDGFRB gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78221-9 // IGH gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78222-7 // MYC gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78223-5 // TRA+TRD gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78224-3 // RARA gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78225-0 // BCL2 gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78226-8 // MLL gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78227-6 // PDGFRB gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78228-4 // IGH gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78229-2 // Cells.MYC gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78230-0 // Cells.RARA gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78231-8 // Cells.TRA+TRD gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78232-6 // Cells.BCL2 gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78233-4 // Cells.ALK gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78234-2 // Cells.MLL gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78235-9 // Cells.PDGFRB gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78236-7 // Cells.IGH gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#78237-5 // Chromosome 8 copy number/nucleus in Blood or Tissue by FISH
* LNC#78238-3 // Chromosome 3 copy number/nucleus in Blood or Tissue by FISH
* LNC#78245-8 // MYB gene deletion [Presence] in Blood or Tissue by FISH
* LNC#78342-3 // MYB gene deletion [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78343-1 // Cells.MYB gene deletion/Cells counted in Blood or Tissue by FISH
* LNC#78915-6 // FGFR1 gene rearrangements [Presence] in Blood or Tissue by FISH
* LNC#78916-4 // FGFR1 gene rearrangements [Interpretation] in Blood or Tissue by FISH Narrative
* LNC#78917-2 // Cells.FGFR1 gene rearrangements/Cells counted in Blood or Tissue by FISH
* LNC#79206-9 // inv(2)(p21;p23)(EML4,ALK) fusion transcript [Presence] in Blood or Tissue by FISH
* LNC#81710-6 // PTEN gene [Presence] in Cancer specimen by FISH
* LNC#81746-0 // Chromosome region 17p13.1 deletion in Blood or Tissue by FISH
* LNC#81747-8 // Chromosome region 6q22 rearrangements in Tissue by FISH
* LNC#81748-6 // Chromosome region Yp11.3 deletion AndOr rearrangement in Blood or Tissue by FISH
* LNC#81749-4 // Chromosome region 13q14 deletion in Bone marrow by FISH
* LNC#81751-0 // Chromosome 17p13.1 deletion and 14q32 rearrangements in Bone marrow by FISH
* LNC#81752-8 // Chromosome region 1q21 duplication in Bone marrow by FISH
* LNC#82238-7 // Chromosome region 15q11-13 deletion and duplication mutation analysis in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82239-5 // Chromosome region 16p13.3 deletion in Blood or Tissue by FISH
* LNC#82240-3 // Chromosome region 16p13.3 deletion in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82241-1 // Chromosome region 17p11.2 deletion in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82242-9 // Chromosome region 17p13.3 deletion in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82243-7 // Chromosome region 17p13.3 deletion in Blood or Tissue by FISH
* LNC#82244-5 // Chromosome region 1p36 deletion in Blood or Tissue by FISH
* LNC#82245-2 // Chromosome region 22q11.2 deletion and duplication mutation analysis in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82246-0 // Chromosome region 22q11.2 deletion and duplication mutation analysis in Blood or Tissue by FISH
* LNC#82247-8 // Chromosome region 7q11.23 deletion in Amniotic fluid or Chorionic villus sample by FISH
* LNC#82248-6 // Chromosome region 7q11.23 deletion in Blood or Tissue by FISH
* LNC#82249-4 // Chromosome region 8q23.3-24.13 deletion in Blood or Tissue by FISH
* LNC#82250-2 // Chromosome region 1p subtelomere and 1p36 deletion and 1q25 rearrangement in Blood or Tissue by FISH
* LNC#82251-0 // Chromosome 3 and 7 and 17 aneuploidy and chromosome region 9p21 deletion in Urine by FISH
* LNC#82253-6 // JAG1 gene deletion in Blood or Tissue by FISH
* LNC#82256-9 // Chromosome 12 trisomy and chromosome region 11q22.3 and 13q14 and 17p13.1 deletion in Blood or Tissue by FISH
* LNC#82257-7 // SRY gene deletion in Blood or Tissue by FISH
* LNC#82258-5 // Subtelomere analysis in Bone marrow by FISH
* LNC#82295-7 // Chromosome region Xp22.33 AndOr Yp11.32 deletion and duplication mutation analysis in Blood or Tissue by FISH
* LNC#82597-6 // Chromosome painting analysis in Blood or Tissue by FISH
* LNC#84912-5 // Cells.chromosome region 5q31 deletion/Cells counted in Bone marrow by FISH
* LNC#84913-3 // Cells.chromosome 12 trisomy/Cells counted in Blood or Tissue by FISH
* LNC#84914-1 // Cells.chromosome region 13q14 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84915-8 // Cells.chromosome region 11q22.3 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84916-6 // Cells.chromosome region 17p13.1 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84917-4 // Chromosome Y aneuploidy [Presence] in Amniotic fluid or Chorionic villus sample by FISH
* LNC#84918-2 // Chromosome X aneuploidy [Presence] in Amniotic fluid or Chorionic villus sample by FISH
* LNC#84919-0 // Chromosome 21 aneuploidy [Presence] in Amniotic fluid or Chorionic villus sample by FISH
* LNC#84920-8 // Cells.chromosome region 5q31 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84921-6 // Cells.chromosome region 7q31 deletion/Cells counted in Blood or Tissue by FISH
* LNC#84922-4 // Cells.chromosome 7 monosomy/Cells counted in Blood or Tissue by FISH
* LNC#85318-4 // ERBB2 gene duplication [Presence] in Breast cancer specimen by FISH
* LNC#86239-1 // Cells.chromosome 3 monosomy/Cells counted in Cancer specimen by FISH
* LNC#87436-2 // Chromosome X and Y aneuploidy in Blood or Tissue by FISH
* LNC#90043-1 // t(14;20)(q32;q12)(IGH,MAFB) fusion transcript in Blood or Tissue by FISH
* LNC#90926-7 // MET gene amplification in Blood or Tissue by FISH
* LNC#90927-5 // RET gene rearrangements in Blood or Tissue by FISH
* LNC#92905-9 // Chromosome 7 copy number/nucleus in Blood or Tissue by FISH
* LNC#92906-7 // MET gene copy number/nucleus in Blood or Tissue by FISH
* LNC#92907-5 // MET gene copy number/Chromosome 7 copy number in Blood or Tissue by FISH
* LNC#93796-1 // MYCN gene amplification in Blood or Tissue by FISH
* LNC#93797-9 // MYCN gene copy number/Chromosome 2 copy number in Tissue by FISH
* LNC#93798-7 // MYCN gene copy number/nucleus in Tissue by FISH
* LNC#93799-5 // Chromosome 2 copy number/nucleus in Tissue by FISH
* LNC#93800-1 // 1p/1q chromosome deletion [# Ratio] in Tissue by FISH
* LNC#93801-9 // Chromosome 1 polysomy [Presence] in Tissue by FISH
* LNC#93802-7 // 19q/19p chromosome deletion [# Ratio] in Tissue by FISH
* LNC#93803-5 // Chromosome 19 polysomy [Presence] in Tissue by FISH
* LNC#93804-3 // Chromosome 12 copy number/nucleus in Tissue by FISH
* LNC#93805-0 // MDM2 gene copy number/nucleus in Tissue by FISH
* LNC#93806-8 // EWSR1 gene rearrangements in Tissue by FISH
* LNC#93807-6 // FOXO1 gene rearrangements in Tissue by FISH
* LNC#93808-4 // MDM2 gene amplification in Tissue by FISH
* LNC#93809-2 // MDM2 gene copy number/Chromosome 12 copy number in Tissue by FISH
* LNC#93810-0 // SS18 gene rearrangements in Tissue by FISH
* LNC#94338-1 // Chromosome 13+15+16+18+21+22+X+Y aneuploidy in Products of Conception by FISH
* LNC#95069-1 // Chromosome 1q and 9 and 11 and 15 aneuploidy and 13q deletion in Bone marrow by FISH
* LNC#95070-9 // Chromosome 9 and 11 and 15 aneuploidy in Bone marrow by FISH
* LNC#95071-7 // Chromosome region 14q32 rearrangements in Bone marrow by FISH
* LNC#95551-8 // Chromosome region 17p11.2 deletion in Blood or Tissue by FISH
* LNC#95552-6 // 4p16.3 chromosome deletion in Blood or Tissue by FISH
* LNC#95553-4 // 5p15.2 (5p-) chromosome deletion [Identifier] in Blood or Tissue by FISH
* LNC#95779-5 // TFE3 gene rearrangements in Tissue by FISH
* LNC#95780-3 // TFEB gene rearrangements in Tissue by FISH
* LNC#95783-7 // ETV6 gene rearrangements in Blood or Marrow by FISH
* LNC#95784-5 // FGFR2 gene rearrangements in Tissue by FISH
* LNC#96494-0 // ABL1 and ABL2 and PDGFRB gene rearrangements in Blood or Tissue by FISH
* LNC#96495-7 // ABL2 gene rearrangements in Blood or Tissue by FISH
* LNC#96893-3 // ERBB2 gene duplication in Tumor by FISH
* LNC#98014-4 // Plasma cell proliferation analysis in Bone marrow by FISH
* LNC#49490-6 // BCR-ABL1 b2a2 fusion protein [Presence] in Blood or Tissue by Molecular genetics method
* LNC#55180-4 // Human epididymis protein 4 [Moles/volume] in Serum or Plasma
* LNC#96044-3 // Human epididymis protein 4 [Mass/volume] in Serum or Plasma