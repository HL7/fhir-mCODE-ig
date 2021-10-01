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
<<<<<<< HEAD
* SPTY#STL      "Stool = Fecal"
* SPTY#UR       "Urine"
// * SPTY#ORH      "Other" // value set binding is Extensible, so this is not needed
// # FHIR-32827 - Can we convert this to SNOMEDCT?  Or just say, these are all Tissue.   Not persuasive.
// # SPTY#MISSING  "Brain"
// # SPTY#MISSING   "Eye"
// # SPTY#MISSING  "Heart"
// # SPTY#MISING   "Liver"
// # SPTY#MISSING  "Lung"
// # SPTY#MISSING  "Lymph Node"
// # SPTY#MISSING  "Spleen"
// # SPTY#STL      "Stool = Fecal"
// # SPTY#UR       "Urine"
=======
* SPTY#UR        "Urine"           // FHIR-32827
* SPTY#STL       "Stool = Fecal"   // FHIR-32827
* SPTY#OTH       "Source, Other"   // FHIR-32827
>>>>>>> master
