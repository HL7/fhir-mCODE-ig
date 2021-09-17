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
