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

ValueSet: CancerBodyLocationVS
Id: mcode-cancer-body-location-vs
Title: "Cancer Body Location Value Set"
Description:  "Codes describing the location(s) of primary or secondary cancer. The value set includes all codes from the SNOMED CT body structure hierarchy (codes descending from 123037004 'Body Structure'). The cancer body location may also be expressed using ICD-O-3 topography codes, however, those codes are not included here due to intellectual property restrictions. These topography terms have four-character codes that run from C00.0 to C80.9 [ref](https://apps.who.int/iris/bitstream/handle/10665/96612/9789241548496_eng.pdf). Only SNOMED CT and ICD-O-3 are considered conformant."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system SCT where concept is-a #123037004  "Body Structure"
* include codes from system ICDO3  // currently no way to filter to just topology codes (that I know of)

ValueSet:   ConditionStatusTrendVS
Id: mcode-condition-status-trend-vs
Title: "Condition Status Trend Value Set"
Description:  "How patient's given disease, condition, or ability is trending."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#281900007 "No abnormality detected (finding)" // better than SCT#260415000 "Not detected (qualifier)"
* SCT#268910001 "Patient's condition improved (finding)"
* SCT#359746009 "Patient's condition stable (finding)"
* SCT#271299001 "Patient's condition worsened (finding)"
* SCT#709137006 "Patient condition undetermined (finding)"

ValueSet: CancerDiseaseStatusEvidenceTypeVS
Id: mcode-cancer-disease-status-evidence-type-vs
Title: "Cancer Disease Status Evidence Type Value Set"
Description:  "The type of evidence backing up the clinical determination of cancer progression." 
// The code '252416005 Histopathology test (procedure)' is intended to be used when there is a biopsy that contributes evidence of the cancer disease status.
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#363679005 "Imaging (procedure)"
* SCT#108257001 "Anatomic pathology procedure (procedure)" // Broader than SCT#252416005 "Histopathology test (procedure), include microscopy."
* SCT#711015009 "Assessment of symptom control (procedure)"
* SCT#5880005   "Physical examination procedure (procedure)"
* SCT#386344002 "Laboratory data interpretation (procedure)"

ValueSet:   CancerStagingSystemVS
Id: mcode-cancer-staging-system-vs
Title: "Cancer Staging System Value Set"
Description:    "System used for staging."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* SCT#258235000 "International Union Against Cancer (tumor staging)"

ValueSet: TNMStageGroupVS
Id: mcode-tnm-stage-group-vs
Title: "TNM Stage Group Value Set"
Description: "This value set is intended to contain allowable values for Stage Group, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used.

*AJCC terminology: examples of stage groups include 'Stage 0' and 'Stage IIA'. The full set of stage groups, as well rules on how to assign a stage group, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API."
* codes from system AJCC

ValueSet: TNMPrimaryTumorCategoryVS
Id: mcode-tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Category Value Set"
Description: "This value set is intended to contain allowable values for the T category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used.

* AJCC terminology: examples of T categories include 'cTX', used when the tumor primary tumor cannot be evaluated, 'pT0', denoting there is no evidence of a primary tumor, and 'pTis', referencing carcinoma in situ (with some cancer-specific exceptions). Other T categories refer to increasing size of the primary tumor. Please note allowable T categories may vary between clinical and pathologic classifications. The full set of allowable clinical and pathologic T categories, along with its current descriptions, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API."
* codes from system AJCC

ValueSet: TNMRegionalNodesCategoryVS
Id: mcode-tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Category Value Set"
Description: "This value set is intended to contain allowable values for the N category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used.

* AJCC terminology: examples of N categories include 'cN0', indicating no evidence of lymph node involvement, and 'pN1', indicating regional lymph node involvement to a small extent, with specific thresholds for the lymph node groups and number of lymph nodes involved. Other N categories refer to increasing lymph node involvement. Please note allowable N categories may vary between clinical and pathologic classifications. The full set of allowable clinical and pathologic N categories, along with its current descriptions, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API."
* include codes from system AJCC

ValueSet: TNMDistantMetastasesCategoryVS
Id: mcode-tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Category Value Set"
Description: "This value set is intended to contain allowable values for the M category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used.

* AJCC terminology: examples of M categories include 'cM0', denoting there is no evidence of distant metastases, and 'pM1', an indication that the cancer has metasticized. The full set of allowable clinical and pathologic M categories, along with its current descriptions, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API."
* codes from system AJCC

ValueSet: CancerRelatedSurgicalProcedureVS
Id: mcode-cancer-related-surgical-procedure-vs
Title: "Cancer-Related Surgical Procedure Value Set"
Description: "Includes surgical procedure codes from SNOMED CT, ICD-10-PCS and CPT. The value set may be a superset of cancer surgery codes, but narrowing the set further risks eliminating potentially useful and relevant codes."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. Current Procedural Terminology (CPT) is copyright 2020 American Medical Association. All rights reserved"
* include codes from system SCT where concept is-a #387713003 "Surgical procedure (procedure)"
* include codes from system CPT
* include codes from system ICD10PCS


ValueSet:       TumorMarkerTestVS
Id: mcode-tumor-marker-test-vs
Description:    "Codes representing tests for tumor markers. This value set of LOINC codes is not comprehensive and can be extended. LOINC codes are preferred. Other vocabularies can be used only if the test of interest is not covered by LOINC.

FHIR implementation note: At the current time, profiles for the specific LOINC tests mentioned here do not exist."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LNC#1695-6		"5-Hydroxyindoleacetate [Mass/time] in 24 hour Urine"
* LNC#31203-3		"5-Hydroxyindoleacetate [Mass/volume] in 24 hour Urine"
* LNC#1692-3		"5-Hydroxyindoleacetate [Mass/volume] in Cerebral spinal fluid"
* LNC#1693-1		"5-Hydroxyindoleacetate [Mass/volume] in Serum or Plasma"
* LNC#1694-9		"5-Hydroxyindoleacetate [Mass/volume] in Urine"
* LNC#72820-4		"5-Hydroxyindoleacetate [Mass/volume] in Urine by Confirmatory method"
* LNC#14573-0		"5-Hydroxyindoleacetate [Moles/time] in 24 hour Urine"
* LNC#25971-3		"5-Hydroxyindoleacetate [Moles/volume] in 24 hour Urine"
* LNC#47544-2		"5-Hydroxyindoleacetate [Moles/volume] in Cerebral spinal fluid"
* LNC#74769-1		"5-Hydroxyindoleacetate [Moles/volume] in Platelet rich plasma"
* LNC#50149-4		"5-Hydroxyindoleacetate [Moles/volume] in Serum or Plasma"
* LNC#15009-4		"5-Hydroxyindoleacetate [Moles/volume] in Urine"
* LNC#12172-3		"5-Hydroxyindoleacetate [Presence] in 24 hour Urine" // no profile
* LNC#48168-9		"5-Hydroxyindoleacetate [Presence] in Urine"  // no profile
* LNC#11145-0       "5-Hydroxyindoleacetate/​Creatinine [Mass Ratio] in Urine"
* LNC#44909-0       "5-Hydroxyindoleacetate and Creatinine [Interpretation] in Urine"
* LNC#10459-6		"Alpha-1-Fetoprotein Ag [Presence] in Tissue by Immune stain"
* LNC#11207-8		"Alpha-1-Fetoprotein [Mass/volume] in Body fluid"
* LNC#1833-3		"Alpha-1-Fetoprotein [Mass/volume] in Cerebral spinal fluid"
* LNC#54348-8		"Alpha-1-Fetoprotein [Mass/volume] in Cord blood"
* LNC#49761-0		"Alpha-1-Fetoprotein [Mass/volume] in Peritoneal fluid"
* LNC#49762-8		"Alpha-1-Fetoprotein [Mass/volume] in Pleural fluid"
* LNC#1834-1		"Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma"
* LNC#83073-7		"Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma by Immunoassay"
* LNC#19173-4		"Alpha-1-Fetoprotein [Moles/volume] in Pleural fluid"
* LNC#19177-5		"Alpha-1-Fetoprotein [Moles/volume] in Serum or Plasma"
* LNC#31993-9		"Alpha-1-Fetoprotein [Presence] in Serum or Plasma"  // no profile
* LNC#44910-8		"Alpha-1-Fetoprotein [Units/volume] in Body fluid"
* LNC#59564-5		"Alpha-1-Fetoprotein [Units/volume] in Cerebral spinal fluid"
* LNC#19172-6		"Alpha-1-Fetoprotein [Units/volume] in Pleural fluid"
* LNC#19176-7		"Alpha-1-Fetoprotein [Units/volume] in Serum or Plasma"
* LNC#83072-9		"Alpha-1-Fetoprotein [Units/volume] in Serum or Plasma by Immunoassay"
* LNC#41274-2		"Alpha-1-Fetoprotein interpretation in Serum or Plasma"  // no profile
* LNC#49246-2		"Alpha-1-Fetoprotein interpretation in Serum or Plasma Narrative"  // no profile
* LNC#49585-3		"Alpha-1-Fetoprotein multiple of the median cutoff [Multiple of the median] in Serum or Plasma"
* LNC#53962-7		"Alpha-1-fetoprotein.tumor marker [Mass/volume] in Serum or Plasma"
* LNC#53960-1		"Alpha-1-fetoprotein.tumor marker [Moles/volume] in Serum or Plasma"
* LNC#53961-9		"Alpha-1-fetoprotein.tumor marker [Units/volume] in Serum or Plasma"
* LNC#10873-8		"Beta-2-Microglobulin [Mass/time] in 24 hour Urine"
* LNC#54356-1		"Beta-2-Microglobulin [Mass/volume] in 24 hour Urine"
* LNC#48166-3		"Beta-2-Microglobulin [Mass/volume] in Body fluid"
* LNC#1951-3		"Beta-2-Microglobulin [Mass/volume] in Cerebral spinal fluid"
* LNC#49081-3		"Beta-2-Microglobulin [Mass/volume] in Dialysis fluid"
* LNC#88711-7		"Beta-2-Microglobulin [Mass/volume] in Peritoneal dialysis fluid"
* LNC#59217-0		"Beta-2-Microglobulin [Mass/volume] in Peritoneal fluid"
* LNC#59218-8		"Beta-2-Microglobulin [Mass/volume] in Pleural fluid"
* LNC#1952-1		"Beta-2-Microglobulin [Mass/volume] in Serum or Plasma"
* LNC#87708-4		"Beta-2-Microglobulin [Mass/volume] in Serum or Plasma --post dialysis"
* LNC#83078-6		"Beta-2-Microglobulin [Mass/volume] in Serum or Plasma by Immunoassay"
* LNC#1953-9		"Beta-2-Microglobulin [Mass/volume] in Urine"
* LNC#83077-8		"Beta-2-Microglobulin [Mass/volume] in Urine by Immunoassay"
* LNC#56662-0		"Beta-2-Microglobulin [Moles/time] in 24 hour Urine"
* LNC#50824-2		"Beta-2-Microglobulin [Moles/volume] in 24 hour Urine"
* LNC#39458-5		"Beta-2-Microglobulin [Moles/volume] in Body fluid"
* LNC#32301-4		"Beta-2-Microglobulin [Moles/volume] in Cerebral spinal fluid"
* LNC#14626-6		"Beta-2-Microglobulin [Moles/volume] in Serum"
* LNC#76484-5		"Beta-2-Microglobulin [Moles/volume] in Serum or Plasma"
* LNC#32302-2		"Beta-2-Microglobulin [Moles/volume] in Urine"
* LNC#43919-0		"Beta-2-Microglobulin [Presence] in Cerebral spinal fluid"  // no profile
* LNC#43818-4		"Beta-2-Microglobulin [Presence] in Serum"  // no profile
* LNC#43819-2		"Beta-2-Microglobulin [Presence] in Urine"  /// no profile
* LNC#83076-0		"Beta-2-Microglobulin [Units/volume] in Serum or Plasma by Immunoassay"
* LNC#83079-4		"Beta-2-Microglobulin [Units/volume] in Urine by Immunoassay"
* LNC#10467-9		"Beta-2-Microglobulin amyloid Ag [Presence] in Tissue by Immune stain"   // no profile
* LNC#54355-3		"Beta-2-Microglobulin in CSF/Beta-2-Microglobulin in serum"
* LNC#56786-7		"Beta-2-Microglobulin.tumor marker [Mass/volume] in Serum"
* LNC#2006-5		"Cancer Ag 125 [Presence] in Serum or Plasma"
* LNC#48677-9		"Cancer Ag 125 [Presence] in Tissue by Immune stain"
* LNC#11210-2		"Cancer Ag 125 [Units/volume] in Body fluid"
* LNC#15156-3		"Cancer Ag 125 [Units/volume] in Body fluid by Dilution"
* LNC#50775-6		"Cancer Ag 125 [Units/volume] in Cerebral spinal fluid"
* LNC#68923-2		"Cancer Ag 125 [Units/volume] in Pericardial fluid"
* LNC#59040-6		"Cancer Ag 125 [Units/volume] in Peritoneal dialysis fluid"
* LNC#40618-1		"Cancer Ag 125 [Units/volume] in Peritoneal fluid"
* LNC#19165-0       "Cancer Ag 125 [Units/volume] in Pleural fluid"
* LNC#10334-1       "Cancer Ag 125 [Units/volume] in Serum or Plasma"
* LNC#15157-1       "Cancer Ag 125 [Units/volume] in Serum or Plasma by Dilution"
* LNC#83082-8       "Cancer Ag 125 [Units/volume] in Serum or Plasma by Immunoassay"
* LNC#2007-3        "Cancer Ag 15-3 [Presence] in Serum or Plasma"
* LNC#29153-4       "Cancer Ag 15-3 [Units/volume] in Body fluid"
* LNC#50776-4       "Cancer Ag 15-3 [Units/volume] in Cerebral spinal fluid"
* LNC#50777-2       "Cancer Ag 15-3 [Units/volume] in Pericardial fluid"
* LNC#50778-0       "Cancer Ag 15-3 [Units/volume] in Peritoneal fluid"
* LNC#19186-6       "Cancer Ag 15-3 [Units/volume] in Pleural fluid"
* LNC#6875-9        "Cancer Ag 15-3 [Units/volume] in Serum or Plasma"
* LNC#83083-6       "Cancer Ag 15-3 [Units/volume] in Serum or Plasma by Immunoassay"
* LNC#2009-9        "Cancer Ag 19-9 [Presence] in Serum or Plasma"
* LNC#26924-1       "Cancer Ag 19-9 [Units/volume] in Body fluid"
* LNC#50779-8       "Cancer Ag 19-9 [Units/volume] in Cerebral spinal fluid"
* LNC#50780-6       "Cancer Ag 19-9 [Units/volume] in Pericardial fluid"
* LNC#50781-4       "Cancer Ag 19-9 [Units/volume] in Peritoneal fluid"
* LNC#19163-5       "Cancer Ag 19-9 [Units/volume] in Pleural fluid"
* LNC#24108-3       "Cancer Ag 19-9 [Units/volume] in Serum or Plasma"
* LNC#83084-4       "Cancer Ag 19-9 [Units/volume] in Serum or Plasma by Immunoassay"
* LNC#2012-3        "Cancer Ag 27-29 [Presence] in Serum or Plasma"
* LNC#50782-2       "Cancer Ag 27-29 [Units/volume] in Cerebral spinal fluid"
* LNC#19187-4       "Cancer Ag 27-29 [Units/volume] in Pleural fluid"
* LNC#17842-6       "Cancer Ag 27-29 [Units/volume] in Serum or Plasma"
* LNC#12515-3       "Carcinoembryonic Ag [Mass/volume] in Body fluid"
* LNC#2037-0        "Carcinoembryonic Ag [Mass/volume] in Cerebral spinal fluid"
* LNC#40621-5       "Carcinoembryonic Ag [Mass/volume] in Pericardial fluid"
* LNC#40622-3       "Carcinoembryonic Ag [Mass/volume] in Peritoneal fluid"
* LNC#19169-2       "Carcinoembryonic Ag [Mass/volume] in Pleural fluid"
* LNC#2038-8        "Carcinoembryonic Ag [Mass/volume] in Semen"
* LNC#2039-6        "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma"
* LNC#83085-1       "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma by Immunoassay"
* LNC#19170-0       "Carcinoembryonic Ag [Moles/volume] in Pleural fluid"
* LNC#19167-6       "Carcinoembryonic Ag [Moles/volume] in Serum or Plasma"
* LNC#10469-5       "Carcinoembryonic Ag [Presence] in Tissue by Immune stain"
* LNC#19168-4       "Carcinoembryonic Ag [Units/volume] in Pleural fluid"
* LNC#10560-1       "Carcinoembryonic Ag [Units/volume] in Semen"
* LNC#19166-8       "Carcinoembryonic Ag [Units/volume] in Serum or Plasma"
* LNC#85337-4       "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* LNC#40556-3       "Estrogen receptor Ag [Presence] in Tissue by Immune stain"
* LNC#16112-5       "Estrogen receptor [Interpretation] in Tissue"
* LNC#14130-9       "Estrogen receptor [Moles/mass] in Tissue"
* LNC#85310-1       "Estrogen receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain"
* LNC#10480-2       "Estrogen+Progesterone receptor Ag [Presence] in Tissue by Immune stain"
* LNC#39004-7       "Epidermal growth factor receptor Ag [Presence] in Tissue"
* LNC#32581-1	    "Epidermal growth factor receptor Ag [Presence] in Tissue by Immune stain"
* LNC#42782-3	    "Epidermal growth factor receptor.phosphorylated Ag [Presence] in Tissue by Immune stain"
* LNC#48676-1       "HER2 [Interpretation] in Tissue"
* LNC#32996-1       "HER2 [Mass/volume] in Serum"
* LNC#42914-2       "HER2 [Mass/volume] in Serum by Immunoassay"
* LNC#85318-4       "HER2 [Presence] in Breast cancer specimen by FISH"
* LNC#85319-2       "HER2 [Presence] in Breast cancer specimen by Immune stain"
* LNC#51981-9       "HER2 [Presence] in Serum by Immunoassay"
* LNC#31150-6       "HER2 [Presence] in Tissue by FISH"
* LNC#72383-3       "HER2 [Presence] in Tissue by Immunoassay"
* LNC#72382-5       "HER2 [Units/volume] in Tissue by Immunoassay"
* LNC#18474-7       "HER2 Ag [Presence] in Tissue by Immune stain"
* LNC#49683-6       "HER2 gene copy number/Chromosome 17 copy number in Tissue by FISH"
* LNC#74860-8       "HER2 gene copy number/nucleus in Tissue by FISH"
* LNC#74885-5       "HER2 panel - Tissue by FISH"
* LNC#83054-7       "PD-L1 by clone 22C3 [Interpretation] in Tissue by Immune stain Narrative"
* LNC#83052-1       "PD-L1 by clone 22C3 [Presence] in Tissue by Immune stain"
* LNC#83056-2       "PD-L1 by clone 28-8 [Interpretation] in Tissue by Immune stain Narrative"
* LNC#83055-4       "PD-L1 by clone 28-8 [Presence] in Tissue by Immune stain"
* LNC#83057-0       "PD-L1 by clone SP142 [Presence] in Tissue by Immune stain"
* LNC#83053-9       "Cells.programmed cell death ligand 1/100 viable tumor cells in Tissue by Immune stain. (source: LOINC)"
* LNC#85339-0       "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* LNC#40557-1       "Progesterone receptor Ag [Presence] in Tissue by Immune stain"
* LNC#16113-3       "Progesterone receptor [Interpretation] in Tissue"
* LNC#10861-3       "Progesterone receptor [Mass/mass] in Tissue"
* LNC#31207-4       "Progesterone receptor [Moles/mass] in Tissue"
* LNC#85331-7       "Progesterone receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain"
* LNC#47738-0       "Prostate specific Ag [Mass/volume] in Body fluid"
* LNC#59230-3       "Prostate specific Ag [Mass/volume] in Cerebral spinal fluid"
* LNC#59223-8       "Prostate specific Ag [Mass/volume] in Peritoneal fluid"
* LNC#59221-2       "Prostate specific Ag [Mass/volume] in Pleural fluid"
* LNC#19199-9       "Prostate specific Ag [Mass/volume] in Semen"
* LNC#2857-1        "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* LNC#35741-8       "Prostate specific Ag [Mass/volume] in Serum or Plasma by Detection limit <= 0.01 ng/mL"
* LNC#83112-3       "Prostate specific Ag [Mass/volume] in Serum or Plasma by Immunoassay"
* LNC#34611-4       "Prostate specific Ag [Mass/volume] in Urine"
* LNC#19200-5       "Prostate specific Ag [Moles/volume] in Semen"
* LNC#19197-3       "Prostate specific Ag [Moles/volume] in Serum or Plasma"
* LNC#10508-0       "Prostate specific Ag [Presence] in Tissue by Immune stain"
* LNC#19198-1       "Prostate specific Ag [Units/volume] in Semen"
* LNC#19195-7       "Prostate specific Ag [Units/volume] in Serum or Plasma"
* LNC#15325-4       "Prostate specific Ag/Prostate volume calculated"
* LNC#15323-9       "Prostate specific Ag/Prostate volume calculated from height, width and length"
* LNC#15324-7       "Prostate specific Ag/Prostate volume calculated from planimetry"

ValueSet:   GeneticSpecimenTypeVS
Id: mcode-genetic-specimen-type-vs
Title: "Genetic Specimen Type Value Set"
Description:    "The type of specimen analyzed in a genetic test. The values are taken from code system http://terminology.hl7.org/CodeSystem/v2-0487, and represent a subset of HL7 Version 2 Table 0487 (http://hl7.org/fhir/v2/0487)."
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
* SPTY#VITF      "Vitreous Fluid"
* SPTY#WND       "Wound"


ValueSet:  RadiationProcedureVS
Id: mcode-radiation-procedure-vs
Title: "Radiation Procedure Value Set"
Description:    "Codes describing radiation therapy procedures. The value set includes a limited set of radiation modality codes from SNOMED CT, however, ICD-10-PCS code from Section D (Radiation Therapy) and appropriate CPT radiation procedure codes are also considered compliant. CPT codes are not explicitly included due to licensing restrictions. ICD-10-PCS codes are not included explicitly because they are not currently supported by the FHIR IG Publishing tool."

* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#448385000	"Megavoltage radiation therapy using photons (procedure)"
* SCT#45643008	"Teleradiotherapy using electrons (procedure)"
* SCT#10611004    "Teleradiotherapy protons (procedure)"
* SCT#80347004	"Teleradiotherapy neutrons (procedure)"
* SCT#152198000	"Brachytherapy (procedure)"


ValueSet:       RadiationTargetBodySiteVS
Id: mcode-radiation-target-body-site-vs
Title: "Radiation Target Body Site Value Set"
Description:    "Codes for body sites that can be targets of radiation therapy. This list of sites is based on Commission on Cancer’s 'Standards for Oncology Registry Entry  - STORE 2018'. This value set contains SNOMED CT equivalent terms."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#81105003       "Cervical lymph node group (body structure)"
* SCT#196374005       "Entire lymph node of thorax (body structure)"
* SCT#81105003       "Cervical lymph node group (body structure)"
* SCT#196374005       "Entire lymph node of thorax (body structure)"
* SCT#245269009       "Axillary lymph node group (body structure)"
* SCT#245265003       "Supraclavicular lymph node group (body structure)"
* SCT#245282001       "Internal mammary lymph node group (body structure)"
* SCT#245284000       "Abdominal lymph node group (body structure)"
* SCT#245294005       "Pelvic lymph node group (body structure)"
* SCT#245284000       "Abdominal lymph node group (body structure)"
* SCT#245294005       "Pelvic lymph node group (body structure)"
* SCT#59441001       "Structure of lymph node (body structure)"
* SCT#244486005       "Entire eye (body structure)"
* SCT#56329008       "Pituitary structure (body structure)"
* SCT#12738006       "Brain structure (body structure)"
* SCT#119235005       "Brain part (body structure)"
* SCT#2748008       "Spinal cord structure (body structure)"
* SCT#71836000       "Nasopharyngeal structure (body structure)"
* SCT#74262004       "Oral cavity structure (body structure)"
* SCT#31389004       "Oropharyngeal structure (body structure)"
* SCT#4596009       "Laryngeal structure (body structure)"
* SCT#81502006       "Hypopharyngeal structure (body structure)"
* SCT#2095001       "Nasal sinus structure (body structure)"
* SCT#385294005       "Salivary gland structure (body structure)"
* SCT#69748006       "Thyroid structure (body structure)"
* SCT#361355005       "Entire head and neck (body structure)"
* SCT#181216001       "Entire lung (body structure)"
* SCT#71400007       "Mesothelium structure (body structure)"
* SCT#302551006       "Entire thorax (body structure)"
* SCT#181131000       "Entire breast (body structure)"
* SCT#119184005       "Breast part (body structure)"
* SCT#78904004       "Chest wall structure (body structure)"
* SCT#181245004       "Entire esophagus (body structure)"
* SCT#69695003       "Stomach structure (body structure)"
* SCT#30315005       "Small intestinal structure (body structure)"
* SCT#71854001       "Colon structure (body structure)"
* SCT#34402009       "Rectum structure (body structure)"
* SCT#53505006       "Anal structure (body structure)"
* SCT#10200004       "Liver structure (body structure)"
* SCT#34707002       "Biliary tract structure (body structure)"
* SCT#28231008       "Gallbladder structure (body structure)"
* SCT#15776009       "Pancreatic structure (body structure)"
* SCT#113345001       "Abdominal structure (body structure)"
* SCT#302512001       "Entire urinary bladder (body structure)"
* SCT#119221008       "Bladder part (body structure)"
* SCT#64033007       "Kidney structure (body structure)"
* SCT#87953007       "Ureteric structure (body structure)"
* SCT#181422007       "Entire prostate (body structure)"
* SCT#119231001       "Prostate part (body structure)"
* SCT#13648007       "Urethral structure (body structure)"
* SCT#18911002       "Penile structure (body structure)"
* SCT#40689003       "Testis structure (body structure)"
* SCT#20233005       "Scrotal structure (body structure)"
* SCT#15497006       "Ovarian structure (body structure)"
* SCT#31435000       "Fallopian tube structure (body structure)"
* SCT#35039007       "Uterine structure (body structure)"
* SCT#71252005       "Cervix uteri structure (body structure)"
* SCT#76784001       "Vaginal structure (body structure)"
* SCT#45292006       "Vulval structure (body structure)"
* SCT#89546000       "Bone structure of cranium (body structure)"
* SCT#44300000       "Entire vertebral column (body structure)"
* SCT#16982005       "Shoulder region structure (body structure)"
* SCT#113197003       "Bone structure of rib (body structure)"
* SCT#29836001       "Hip region structure (body structure)"
* SCT#46633002       "Entire bony pelvis (body structure)"
* SCT#12921003       "Pelvic structure (body structure)"
* SCT#48566001       "Bone structure of extremity (body structure)"
* SCT#39937001       "Skin structure (body structure)"
* SCT#87784001       "Soft tissues (body structure)"
* SCT#38266002       "Entire body as a whole (body structure)"
// no concept for hemibody


ValueSet: LocationQualifierVS
Id: mcode-location-qualifier-vs
Title: "Location Qualifier Value Set"
Description: "Qualifiers to refine the anatomical location. These include qualifiers for laterality, relative location, directionality, number, and plane."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// Changed to intensional definition 
* include codes from system SCT where concept is-a #106233006 "Topographic Modifier (qualifer)"
* include codes from system SCT where concept is-a #272424004 "Relative Sites (qualifier)"


ValueSet:   TreatmentTerminationReasonVS
Id: mcode-treatment-termination-reason-vs
Title: "Treatment Termination Reason Value Set"
Description:  "Values used to describe the reasons for stopping a treatment. Includes code for 'treatment completed' as well as codes for unplanned (early) stoppage. Applies to medications and other treatments that take place over a period of time, such as radiation treatments."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#182992009   "Treatment completed (situation)"
* SCT#266721009   "No response to treatment (situation)" // more general than SCT#58848006 "Lack of drug action (finding)"  
* SCT#407563006   "Treatment not tolerated (situation)" // more general than SCT#281647001 "Adverse reaction (disorder)"
* SCT#160932005   "Financial problem (finding)" // more general than 454061000124102 "Unable to afford medication (finding)"
* SCT#105480006   "Refusal of treatment by patient (situation)"  // patient choice or decision
* SCT#184081006   "Patient has moved away (finding)" // better than SCT#107724000 "Patient transfer (procedure)"
* SCT#309846006   "Treatment not available (situation)"

ValueSet:		TreatmentIntentVS
Id: mcode-treatment-intent-vs
Title: "Treatment Intent Value Set"
Description:	"The purpose of a treatment. The value set includes 'curative' and 'palliative'. Curative is defined as any treatment meant to reduce or control a disease process, even if a 'cure' is not anticipated. Palliative includes treatments meant to reduce symptoms and side effects, such as antiemetics."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#373808002   "Curative - procedure intent"
* SCT#363676003   "Palliative - procedure intent"



/* SAVE for possible future use
ValueSet:			UnitsOfLengthVS
Id: mcode-units-of-length-vs
Title:              "Units of Length Value Set"
Description:		"Units of measure for length or distance on a human scale."
* UCUM#mm				"Millimeter"
* UCUM#cm				"Centimeter"
* UCUM#m				"Meter"
* UCUM#[ft_i]			"Feet"
* UCUM#[in_i]			"Inch"


ValueSet: CBCVS
Id: mcode-cbc-vs
Title: "Complete Blood Count Value Set"
Description: "Value set containing the LOINC codes typical of a Complete Blood Count."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LNC#20570-8 "Hematocrit [Volume Fraction] of Blood"  
* LNC#26453-1 "Erythrocytes [#/volume] in Blood"
* LNC#718-7  "Hemoglobin [Mass/volume] in Blood"
* LNC#26515-7 "Platelets [#/volume] in Blood"
* LNC#28539-5 "MCH [Entitic mass]"
* LNC#28540-3 "MCHC [Mass/volume]"
* LNC#28542-9 "Platelet mean volume [Entitic volume] in Blood"
* LNC#30384-2 "Erythrocyte distribution width [Entitic volume]"
* LNC#30385-9 "Erythrocyte distribution width [Ratio]"
* LNC#30428-7 "MCV [Entitic volume]"
* LNC#26464-8 "Leukocytes [#/volume] in Blood"
* LNC#30180-4 "Basophils/100 leukocytes in Blood"
* LNC#26444-0 "Basophils [#/volume] in Blood"
* LNC#34911-8 "Immature basophils/100 leukocytes in Blood"
* LNC#34910-0 "Immature basophils [#/volume] in Blood"
* LNC#26446-5 "Blasts/100 leukocytes in Blood"
* LNC#30376-8 "Blasts [#/volume] in Blood"
* LNC#26450-7 "Eosinophils/100 leukocytes in Blood"
* LNC#26449-9 "Eosinophils [#/volume] in Blood"
* LNC#34913-4 "Immature eosinophils/100 leukocytes in Blood"
* LNC#34912-6 "Immature eosinophils [#/volume] in Blood"
* LNC#30395-8 "Granulocytes/100 leukocytes in Blood"
* LNC#30394-1 "Granulocytes [#/volume] in Blood"
* LNC#35058-7 "Hairy cells/100 leukocytes in Blood"
* LNC#30397-4 "Hairy cells [#/volume] in Blood"
* LNC#26463-0 "Large unstained cells/100 leukocytes in Blood"
* LNC#26462-2 "Large unstained cells [#/volume] in Blood"
* LNC#26471-3 "Leukocytes other/100 leukocytes in Blood"
* LNC#30406-3 "Leukocytes other [#/volume] in Blood"
* LNC#34922-5 "Lymphoblasts/100 leukocytes in Blood"
* LNC#35050-4 "Lymphoblasts [#/volume] in Blood"
* LNC#26478-8 "Lymphocytes/100 leukocytes in Blood"
* LNC#26474-7 "Lymphocytes [#/volume] in Blood"
* LNC#30413-9 "Abnormal lymphocytes/100 leukocytes in Blood"
* LNC#30412-1 "Abnormal lymphocytes [#/volume] in Blood"
* LNC#13046-8 "Variant lymphocytes/100 leukocytes in Blood"
* LNC#26477-0 "Variant lymphocytes [#/volume] in Blood"
* LNC#30420-4 "Large granular lymphocytes/100 leukocytes in Blood"
* LNC#35082-7 "Large granular lymphocytes [#/volume] in Blood"
* LNC#34921-7 "Lymphocytes Plasmacytoid/100 leukocytes in Blood"
* LNC#35039-7 "Lymphocytes Plasmacytoid [#/volume] in Blood"
* LNC#30423-8 "Lymphoma cells/100 leukocytes in Blood"
* LNC#30422-0 "Lymphoma cells [#/volume] in Blood"
* LNC#34915-9 "Malignant cells/100 leukocytes in Blood"
* LNC#34914-2 "Malignant cells [#/volume] in Blood"
* LNC#28541-1 "Metamyelocytes/100 leukocytes in Blood"
* LNC#30433-7 "Metamyelocytes [#/volume] in Blood"
* LNC#34923-3 "Monoblasts/100 leukocytes in Blood"
* LNC#35029-8 "Monoblasts [#/volume] in Blood"
* LNC#26485-3 "Monocytes/100 leukocytes in Blood"
* LNC#26484-6 "Monocytes [#/volume] in Blood"
* LNC#30441-0 "Monocytes Abnormal/100 leukocytes in Blood"
* LNC#30440-2 "Monocytes Abnormal [#/volume] in Blood"
* LNC#34925-8 "Immature monocytes/100 leukocytes in Blood"
* LNC#34924-1 "Immature monocytes [#/volume] in Blood"
* LNC#30445-1 "Myeloblasts/100 leukocytes in Blood"
* LNC#30444-4 "Myeloblasts [#/volume] in Blood"
* LNC#26498-6 "Myelocytes/100 leukocytes in Blood"
* LNC#30446-9 "Myelocytes [#/volume] in Blood"
* LNC#26511-6 "Neutrophils/100 leukocytes in Blood"
* LNC#26499-4 "Neutrophils [#/volume] in Blood"
* LNC#26508-2 "Band form neutrophils/100 leukocytes in Blood"
* LNC#26507-4 "Band form neutrophils [#/volume] in Blood"
* LNC#30450-1 "Neutrophils.hypersegmented/100 leukocytes in Blood"
* LNC#30449-3 "Neutrophils.hypersegmented [#/volume] in Blood"
* LNC#30451-9 "Segmented neutrophils [#/volume] in Blood"
* LNC#26505-8 "Segmented neutrophils/100 leukocytes in Blood"
* LNC#34917-5 "Plasma cell precursor/100 leukocytes in Blood"
* LNC#34916-7 "Plasma cell precursor [#/volume] in Blood"
* LNC#13047-6 "Plasma cells/100 leukocytes in Blood"
* LNC#30458-4 "Plasma cells [#/volume] in Blood"
* LNC#34999-3 "Polymorphonuclear cells/100 leukocytes in Blood"
* LNC#35003-3 "Polymorphonuclear cells [#/volume] in Blood"
* LNC#30465-9 "Prolymphocytes/100 leukocytes in Blood"
* LNC#30464-2 "Prolymphocytes [#/volume] in Blood"
* LNC#30466-7 "Promonocytes/100 leukocytes in Blood"
* LNC#34926-6 "Promonocytes [#/volume] in Blood"
* LNC#26524-9 "Promyelocytes/100 leukocytes in Blood"
* LNC#26523-1 "Promyelocytes [#/volume] in Blood"
* LNC#34919-1 "Sezary cells/100 leukocytes in Blood"
* LNC#34918-3 "Sezary cells [#/volume] in Blood"
* LNC#34992-8 "Smudge cells/100 leukocytes in Blood"
* LNC#34993-6 "Smudge cells [#/volume] in Blood"
* LNC#33255-1 "Cell Fractions/Differential [Interpretation] in Blood"


ValueSet: CMPVS
Id: mcode-cmp-vs
Title: "Comprehensive Metabolic Panel Value Set"
Description: "Value set containing the LOINC codes typical of a Comprehensive Metabolic Panel."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LNC#2345-7 "Glucose [Mass/volume] in Serum or Plasma"
* LNC#3094-0 "Urea nitrogen [Mass/volume] in Serum or Plasma"
* LNC#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* LNC#3097-3 "Urea nitrogen/Creatinine [Mass Ratio] in Serum or Plasma"
* LNC#33914-3 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum or Plasma by Creatinine-based formula (MDRD)"
* LNC#50044-7 "Glomerular filtration rate/1.73 sq M.predicted among females [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* LNC#48642-3 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* LNC#48643-1 "Glomerular filtration rate/1.73 sq M.predicted among blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* LNC#17861-6 "Calcium [Mass/volume] in Serum or Plasma"
* LNC#2885-2 "Protein [Mass/volume] in Serum or Plasma"
* LNC#1751-7 "Albumin [Mass/volume] in Serum or Plasma"
* LNC#10834-0 "Globulin [Mass/volume] in Serum by calculation"
* LNC#1759-0 "Albumin/Globulin [Mass Ratio] in Serum or Plasma"
* LNC#1975-2 "Bilirubin.total [Mass/volume] in Serum or Plasma"
* LNC#6768-6 "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
* LNC#1742-6 "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* LNC#1920-8 "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or PlasmaActive"
* LNC#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* LNC#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* LNC#2075-0 "Chloride [Moles/volume] in Serum or Plasma"
* LNC#1963-8 "Bicarbonate [Moles/volume] in Serum or Plasma"
* LNC#2028-9 "Carbon dioxide, total [Moles/volume] in Serum or Plasma"
* LNC#33037-3 "Anion gap in Serum or Plasma"


ValueSet:       KarnofskyPerformanceStatusVS
Title: "Karnofsky Performance Status Value Set"
Description:    "Value set for Karnofsky Performance Status, with codes for each decade from 100 to 0. Higher scores are associated with better functional status, with 100 representing no symptoms or evidence of disease, and 0 representing death. This value set corresponds to LOINC list LL4986-7"
* LNC#LA29175-9   "KPS 100: Normal; no complaints; no evidence of disease"
* LNC#LA29176-7   "KPS 90: Able to carry on normal activity; minor signs or symptoms of disease"
* LNC#LA29177-5   "KPS 80: Normal activity with effort; some signs or symptoms of disease"
* LNC#LA29178-3   "KPS 70: Cares for self; unable to carry on normal activity or do active work"
* LNC#LA29179-1   "KPS 60: Requires occasional assistance but is able to care for most needs"
* LNC#LA29180-9   "KPS 50: Requires considerable assistance and frequent medical care"
* LNC#LA29181-7   "KPS 40: Disabled; requires special care and assistance"
* LNC#LA29182-5   "KPS 30: Severely disabled; hospitalization is indicated, although death not imminent"
* LNC#LA29183-3   "KPS 20: Very sick; hospitalization necessary; active supportive treatment necessary"
* LNC#LA29184-1   "KPS 10: Moribund; fatal processes progressing rapidly"
* LNC#LA9627-6    "KPS 0: Dead"

ValueSet:       ECOGPerformanceStatusVS
Title: "ECOG Performance Status Value Set"
Description:    "Value set for Eastern Cooperative Oncology Group performance status. Values range from grade 0 (Asymptomatic) to grade 5 (Dead)."
* SCT#425389002   "ECOG Grade 0: Asymptomatic"
* SCT#422512005   "ECOG Grade 1: Symptomatic but completely ambulatory"
* SCT#422894000   "ECOG Grade 2: Symptomatic, <50% in bed during the day"
* SCT#423053003   "ECOG Grade 3: Symptomatic, >50% in bed, but not bedbound"
* SCT#423237006   "ECOG Grade 4: Bedbound"
* SCT#423409001   "ECOG Grade 5: Death"

ValueSet:  AnatomicalDirectionVS
Title: "Anatomical Direction Value Set"
Description:       "Terms that specify anatomical direction."
* codes from system SCT where concept is-a #272424004 "Relative sites (qualifier value)"

ValueSet:       LandmarkTypeVS
Title: "Landmark Type Value Set"
Description:    "The type of feature that constitutes the landmark, for example, particularly if the landmark is an acquired body structure or physical object."
* SCT#361083003       "Normal anatomy (body structure)"
* SCT#341000119102	"Tattoo of skin"	
* SCT#275322007	    "Scar"
* SCT#38033009        "Amputation stump (body structure)"
* SCT#13136005        "Injection site (morphologic abnormality)"
* SCT#43526002        "Operative site (morphologic abnormality)"
* codes from system SCT where concept is-a #40388003 "Implant, device (physical object)"


-------------
* include codes from LNC
* exclude codes from valueset TumorMarkerTestVS
* exclude LNC#53041-0 "DNA region of interest panel"
* exclude LNC#69548-6 "Genetic variant assessment"

LP15101-6 "Hematocrit"
LP14304-7  "Erythrocytes"
LP17689-8   "Erythrocyte mean corpuscular hemoglobin"
LP17695-5   "Erythrocyte mean corpuscular hemoglobin concentration"
LP17698-9   Erythrocyte distribution width
LP15191-7   Erythrocyte mean corpuscular volume
LP14419-3   Leukocytes
LP14328-6   Basophils
LP31542-1   Basophils.immature
LP15100-8   Blasts
LP14539-8   Eosinophils
LP31543-9   Eosinophils.immature
LP18643-4   Granulocytes
LP14038-1   Hairy cells
LP19258-0   Large unstained cell
LP17393-7   Leukocytes other
LP14540-6   Lymphocytes
LP19572-4   Lymphocytes.abnormal
LP15072-9   Lymphocytes.variant
LP15193-3   Lymphocytes.large granular
LP29083-0   Lymphoma cells
LP31549-6   Malignant cells
*/