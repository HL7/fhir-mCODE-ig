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

ValueSet: CancerBodyLocationVS
Id: mcode-cancer-body-location-vs
Title: "Cancer Body Location Value Set"
Description:  "Codes describing the location(s) of primary or secondary cancer. The value set includes all codes from the SNOMED CT body structure hierarchy (codes descending from 123037004 'Body Structure'). The cancer body location may also be expressed using ICD-O-3 topography codes, however, those codes are not included here due to intellectual property restrictions. These topography terms have four-character codes that run from C00.0 to C80.9 [ref](https://apps.who.int/iris/bitstream/handle/10665/96612/9789241548496_eng.pdf). Only SNOMED CT and ICD-O-3 are considered conformant."
* include codes from system SCT where concept is-a #123037004  "Body Structure"
* include codes from system ICDO3  // currently no way to filter to just topology codes (that I know of)

/* 
ValueSet:  AnatomicalOrientationVS
Title: "Anatomical Orientation Value Set"
Description:  "Terms that specify anatomical orientation."
* codes from system SCT where concept is-a #272424004 "Relative sites (qualifier value)"
*/

ValueSet:   ConditionStatusTrendVS
Id: mcode-condition-status-trend-vs
Title: "Condition Status Trend Value Set"
Description:  "How patient's given disease, condition, or ability is trending."
* SCT#260415000 "Not detected (qualifier)"
* SCT#268910001 "Patient's condition improved (finding)"
* SCT#359746009 "Patient's condition stable (finding)"
* SCT#271299001 "Patient's condition worsened (finding)"
* SCT#709137006 "Patient condition undetermined (finding)"

ValueSet: CancerDiseaseStatusEvidenceTypeVS
Id: mcode-cancer-disease-status-evidence-type-vs
Title: "Cancer Disease Status Evidence Type Value Set"
Description:  "The type of evidence backing up the clinical determination of cancer progression. The code '* SCT#252416005 Histopathology test (procedure)' is intended to be used when there is a biopsy that contributes evidence of the cancer disease status."
* SCT#363679005 "Imaging (procedure)"
* SCT#252416005 "Histopathology test (procedure)"
* SCT#711015009 "Assessment of symptom control (procedure)"
* SCT#5880005   "Physical examination procedure (procedure)"
* SCT#386344002 "Laboratory data interpretation (procedure)"

ValueSet:   CancerStagingSystemVS
Id: mcode-cancer-staging-system-vs
Title: "Cancer Staging System Value Set"
Description:    "System used for staging. If the staging system is AJCC Version 8, use the NCI thesaurus code C146985 (AJCC Cancer Staging Manual 8th Edition) in its place. This is because SNOMED does not have an equivalent concept for AJCC Version 8 at this time."
* SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* SCT#258235000 "International Union Against Cancer (tumor staging)"

ValueSet: TNMStageGroupVS
Id: mcode-tnm-stage-group-vs
Title: "TNM Stage Group Value Set"
Description: "This value set is intended to contain allowable values for Stage Group, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.

*AJCC terminology: examples of stage groups include 'Stage 0' and 'Stage IIA'. The full set of stage groups, as well rules on how to assign a stage group, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API.

* SNOMED CT has content representing stage group under the hierarchy of 261612004 'Stages', such as 258215001 'Stage 1' and 261614003 'Stage2A'. In addition, SNOMED CT may not have complete TNM staging terminology and may require supplementation with codes from another controlled vocabulary (e.g. NCI Thesaurus)."
* codes from system AJCC

ValueSet: TNMPrimaryTumorCategoryVS
Id: mcode-tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Category Value Set"
Description: "This value set is intended to contain allowable values for the T category, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.

* AJCC terminology: examples of T categories include 'cTX', used when the tumor primary tumor cannot be evaluated, 'pT0', denoting there is no evidence of a primary tumor, and 'pTis', referencing carcinoma in situ (with some cancer-specific exceptions). Other T categories refer to increasing size of the primary tumor. Please note allowable T categories may vary between clinical and pathologic classifications. The full set of allowable clinical and pathologic T categories, along with its current descriptions, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API.

* SNOMED CT has content related to the T category under the hierarchy of 385356007 'Tumor stage finding', such as 23351008 'T1 category' and 261650005 'Tumor stage T1c'. If using SNOMED CT to store T category findings, the use of codes that do not contain descriptions of the categories, such as the examples provided, is encouraged, as stage finding codes in SNOMED CT may not be up-to-date with current AJCC guidance. Note that SNOMED CT codes do not always make a distinction between clinical and pathological classifications (e.g. cT1 and pT1 may be represented by the same SNOMED CT code 23351008 'T1 category'). In addition, SNOMED CT may not have complete TNM staging terminology and may require supplementation with codes from another controlled vocabulary (e.g. NCI Thesaurus)."
* codes from system AJCC

ValueSet: TNMRegionalNodesCategoryVS
Id: mcode-tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Category Value Set"
Description: "This value set is intended to contain allowable values for the N category, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.

* AJCC terminology: examples of N categories include 'cN0', indicating no evidence of lymph node involvement, and 'pN1', indicating regional lymph node involvement to a small extent, with specific thresholds for the lymph node groups and number of lymph nodes involved. Other N categories refer to increasing lymph node involvement. Please note allowable N categories may vary between clinical and pathologic classifications. The full set of allowable clinical and pathologic N categories, along with its current descriptions, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API.

* SNOMED CT has content related to the N category under the hierarchy of 385382003 'Node category finding', such as 5856006 'N3 category' and 277672002 'Node stage N1a'. If using SNOMED CT to store N category findings, the use of codes that do not contain descriptions of the categories, such as the examples provided, is encouraged, as stage finding codes in SNOMED CT may not be up-to-date with current AJCC guidance. Note that SNOMED CT codes do not always make a distinction between clinical and pathological classifications (e.g. 'cN1' and 'pN1' may be represented by the same SNOMED CT code 53623008 'N1 category'). In addition, SNOMED CT may not have complete TNM staging terminology and may require supplementation with codes from another controlled vocabulary (e.g. NCI Thesaurus)."
* codes from system AJCC

ValueSet: TNMDistantMetastasesCategoryVS
Id: mcode-tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Category Value Set"
Description: "This value set is intended to contain allowable values for the M category, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.

* AJCC terminology: examples of M categories include 'cM0', denoting there is no evidence of distant metastases, and 'pM1', an indication that the cancer has metasticized. The full set of allowable clinical and pathologic M categories, along with its current descriptions, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API.

* SNOMED CT: The SNOMED CT US Edition has content related to the M category under the hierarchy of 385380006 'Metastasis category finding', such as 30893008 'M0 category' and 443841006 'pM1a category'. If using SNOMED CT to store M category findings, the use of codes that do not contain descriptions of the categories, such as the examples provided, is encouraged, as stage finding codes in SNOMED CT may not be up-to-date with current AJCC guidance. Note that SNOMED CT codes do not always make a distinction between clinical and pathological classifications (e.g. 'cM0' and 'pM0' may be represented by the same SNOMED CT code 30893008 'M0 category'). In addition, SNOMED CT may not have complete TNM staging terminology and may require supplementation with codes from another controlled vocabulary (e.g. NCI Thesaurus)."
* codes from system AJCC

ValueSet: CancerRelatedSurgicalProcedureVS
Id: mcode-cancer-related-surgical-procedure-vs
Title: "Cancer-Related Surgical Procedure Value Set"
Description: "Includes selected SNOMED CT codes that may be used in the treatment of cancer tumors. Codes from ICD-10-PCS and CPT are acceptable. CPT codes are not listed here due to intellectual property restrictions. ICD-10-PCS codes are not listed because of a limitation in the FHIR Implementation Guide publisher. For CPT and ICD-10-PCS, only codes representing surgical procedures should be used. 

Conformance note: If an ICD-10-PCS code is used, and a semantically equivalent SNOMED CT code is available, the resulting FHIR Procedure instance will not be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/index.html)."
* SCT#174337000    "Destruction of lesion of anus"
* SCT#49264007    "Excision of lesion of anus"
* SCT#119894003    "Anus excision"
* SCT#24265000    "Operation on anus [NOS]"
* SCT#48185007    "Destruction of lesion of urinary bladder"
* SCT#108034003    "Urinary bladder excision"
* SCT#112902005    "Partial urinary cystectomy"
* SCT#63016009    "Total resection of urinary bladder"
* SCT#64063003    "Radical Cystectomy"
* SCT#287716007    "Urinary bladder reconstruction"
* SCT#52224004    "Pelvic exenteration"
* SCT#287723008   "Cystectomy - dome of bladder"
* SCT#14861000    "Operation on bladder [NOS]"
* SCT#18734000    "Local destruction of lesion of joint"
* SCT#68471001    "Excision of lesion of bone"
* SCT#112705001    "Musculoskeletal system amputation"
* SCT#57168000    "Operation on bone [NOS]"
* SCT#68829005    "Destruction of lesion of breast"
* SCT#64368001    "Partial mastectomy"
* SCT#70183006    "Subcutaneous mastectomy"
* SCT#172043006    "Simple mastectomy"
* SCT#406505007    "Modified radical mastectomy"
* SCT#384723003    "Radical mastectomy"
* SCT#359740003    "Extended radical mastectomy"
* SCT#69031006    "Excision of breast tissue"
* SCT#392090004    "Operation on breast [NOS]"
* SCT#31197001    "Destruction of lesion of cervix"
* SCT#36384005    "Excision of lesion of uterine cervix"
* SCT#116140006    "Total hysterctomy"
* SCT#236886002    "Hysterectomy"
* SCT#116142003    "Radical hysterectomy"
* SCT#406044008    "Pelvic Exenteration"
* SCT#112916000    "Operation on cervix [NOS]"
* SCT#48659009   "Destruction of lesion of uterus"
* SCT#236884004    "Excision of uterine polyp"
* SCT#387643005    "Partial hysterectomy"
//* SCT#116140006    "Total hysterctomy" - duplicate
//* SCT#116142003    "Radical hysterectomy" - duplicate
//* SCT#236886002    "Hysterectomy" - duplicate 
//* SCT#406044008    "Pelvic exentration" - duplicate
* SCT#79876008    "Operation on uterus  [NOS]"
* SCT#18243008    "Destruction of lesion of esophagus"
* SCT#386553005    "Excision of esophageal lesion"
* SCT#3980006    "Subtotal resection of esophagus"
* SCT#14072009    "Total esophagectomy"
* SCT#76443003    "Total esophagectomy with gastropharyngostomy"
* SCT#45900003    "Esophagectomy"
* SCT#48114000    "Operation on esophagus [NOS]"
* SCT#52785004    "Destruction of lesion of kidney"
* SCT#69762004    "Excision of lesion of kidney"
* SCT#81516001    "Partial nephrectomy"
* SCT#175905003    "Total nephrectomy"
* SCT#116033007    "Radical nephrectomy"
* SCT#175898006    "Kidney operation  [NOS]"
* SCT#78923006    "Destruction of lesion of larynx"
* SCT#88623004    "Excision of lesion of larynx"
* SCT#80513001    "Partial laryngectomy"
* SCT#66478002    "Total laryngectomy"
* SCT#60041003    "Laryngopharyngectomy"
* SCT#72791001    "Laryngectomy"
* SCT#387636004    "Operation on larynx [NOS]"
* SCT#5415002    "Destruction of lesion of liver"
* SCT#174431000    "Wedge resecton of liver"
* SCT#85946004    "Lobectomy of liver"
* SCT#15257006    "Lobectomy of liver with partial exivision of adjacent lobes"
* SCT#107963000    "Liver excision"
* SCT#13580001000004101   "Excision of tumor of liver"
* SCT#27280000    "Liver transplant w/recipient hepatectomy"
* SCT#4974007    "Operation on liver [NOS]"
* SCT#450608000    "Destruction of lesion of lung"
* SCT#119746007    "Lung excision"
* SCT#173170008    "Bilobectomy of lung"
* SCT#359623004    "Total lobectomy of lung"
* SCT#49795001    "Total pneumonectomy"
* SCT#91596000    "Complete excision of lung with mediastinal dissection"
//* SCT#119746007    "Operation on lung [NOS]" - duplicate
* SCT#230859007    "Destruction of brain tumor"
* SCT#230810008    "Excision of tumor of brain meninges"
* SCT#446103006    "Partial excision of lesion of brain"
* SCT#17537007    "Resection of spinal cord"
* SCT#447115003    "Total excision of lesion of brain tissue"
* SCT#67402009    "Partial lobectomy of brain"
* SCT#171443003    "Total lobectomy of brain"
* SCT#70586009    "Operation on brain [NOS]"
* SCT#177018009    "Open destruction of lesion of ovary"
* SCT#35887003    "Excision of lesion of ovary"
* SCT#116028008    "Salpingo-oophorectomy"
* SCT#29827000    "Bilateral salpingectomy w/oophorectomy"
* SCT#78698008    "Unilateral salpingo-oophorectomy"
* SCT#446526009    "Debulking of neoplasm of ovary"
* SCT#55853002    "Pelvic exenteration, female"
* SCT#64887002    "Operation on ovary [NOS]"
* SCT#414158004    "Excisional biopsy of pancreas"
* SCT#287847009    "Partial pancreatectomy"
* SCT#69036001    "Total pancreaticoduodenectomy"
* SCT#9524002    "Total pancreatectomy"
* SCT#265459006    "Pancreaticoduodenectomy with distal gastrectomy"
* SCT#33149006    "Pancreatectomy"
* SCT#29630005    "Operation on pancreas [NOS]"
* SCT#10522005    "Destruction of lesion of salivary gland"
* SCT#37804007    "Excision of lesion of parotid gland"
* SCT#81870009    "Parotidectomy"
* SCT#11150009    "Partial parotidectomy"
* SCT#13358001    "Complete parotidectomy"
* SCT#173486005    "Radical excision of parotid gland"
* SCT#58456002    "Operation on parotid gland [NOS]"
* SCT#107923001    "Pharynx destructive procedure"
* SCT#3786007    "Excision of lesion of pharynx"
* SCT#51265002    "Pharyngectomy"
* SCT#232546000    "Total pharyngolaryngectomy"
* SCT#303621003    "Total pharyngectomy"
* SCT#23136006    "Operation on pharynx [NOS]"
* SCT#450514003    "Endoscopic destruction of lesion of prostate"
* SCT#90199006    "Transurethral prostactomy"
* SCT#30426000    "Subtotal prostactomy"
* SCT#26294005    "Radical prostatectomy"
* SCT#65111004    "Pelvic exenteration, male"
* SCT#90470006    "Prostactomy"
* SCT#741007    "Operation on prostate [NOS]"
* SCT#177975003    "Destruction of lesion of mesentery of colon"
* SCT#87279008    "Excision of lesion of colon"
* SCT#43075005    "Partial resection of colon"
* SCT#307656000    "Subtotal colectomy with ileosigmoid anastomosis"
* SCT#26390003    "Total  colectomy"
* SCT#174059005    "Excision of colon and rectum"
* SCT#82874003    "Operation on colon [NOS]"
* SCT#52838002    "Destruction of lesion of rectum"
* SCT#79764004    "Excision of lesion of rectum"
* SCT#82035006    "Resection of polyp"
* SCT#116237003    "Excisional biopsy of lesion of rectum by transanal approach"
* SCT#307009004    "Wedge resection of rectum"
* SCT#86789002    "Abdominoperineal pull through procedure"
* SCT#235364003    "Total Proctectomy"
//* SCT#26390003    "Total  colectomy" - duplicate
//* SCT#174059005    "Excision of colon and rectum" - duplicate
* SCT#118841000    "Operation on rectosigmoid [NOS]"
//* SCT#52838002    "Destruction of lesion of rectum" - duplicate
//* SCT#79764004    "Excision of lesion of rectum" - duplicate
//* SCT#82035006    "Resection of polyp" - duplicate
//* SCT#116237003    "Excisional biopsy of lesion of rectum by transanal approach"
//* SCT#307009004    "Wedge resection of rectum" - duplicate
//* SCT#86789002    "Abdominoperineal pull through procedure" - duplicate
//* SCT#235364003    "Total Proctectomy" - duplicate
//* SCT#174059005    "Excision of colon and rectum" - duplicate
* SCT#74971002    "Operation on rectum [NOS]"
* SCT#87031008    "Destruction of lesion of skin"
* SCT#67373001    "Local excision of skin"
* SCT#35646002    "Excision of lesion of skin"
* SCT#177302005    "Wide excision of skin lesion"
* SCT#81723002    "Amputation"
* SCT#392011001    "Operation on skin [NOS]"
* SCT#31468007    "Destruction of lesion of spleen"
* SCT#67097003    "Partial splenectomy"
* SCT#174776001    "Total splenectomy"
* SCT#234319005    "Splenectomy"
* SCT#59300005    "Operation on spleen [NOS]"
* SCT#45189000    "Destruction of lesion of stomach"
* SCT#32327002    "Excision of lesion of stomach"
* SCT#49209004    "Subtotal gastrectomy"
* SCT#26452005    "Total gastrectomy"
* SCT#24431004    "Esophagoduodenostomy w/complete gastrectomy"
* SCT#287816003    "Radical gastrectomy"
* SCT#438338008    "Total gastrecomy w/extended lymphadencectomy"
* SCT#53442002    "Excision of stomach structure"
* SCT#16453004    "Operation on stomach [NOS]"
* SCT#12807004    "Destruction of lesion of testis"
* SCT#176430002    "Excision of lesion of testis"
* SCT#120001005    "Testis excision"
* SCT#396692006    "Radical Orchiectomy"
* SCT#236334001    "Total Orchiectomy"
* SCT#71657006    "Operation on testis [NOS]"
* SCT#20470003    "Destructive procedure on thyroid gland"
* SCT#171988007    "Excision of lesion of thyroid gland"
* SCT#13619001    "Thyroidectomy"
* SCT#24443003    "Total thyroidectomy"
* SCT#30956003    "Subtotal thyroidectomy"
* SCT#15463004    "Operation on thyroid gland [NOS]"

ValueSet:       TumorMarkerTestVS
Id: mcode-tumor-marker-test-vs
Description:    "Codes representing tests for tumor markers. This value set of LOINC codes is not comprehensive and can be extended. LOINC codes are preferred. Other vocabularies can be used only if the test of interest is not covered by LOINC.

FHIR implementation note: At the current time, profiles for the specific LOINC tests mentioned here do not exist."
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


ValueSet:       RadiationProcedureVS
Id: mcode-radiation-procedure-vs
Title: "Radiation Procedure Value Set"
Description:    "Codes describing radiation therapy procedures. The value set includes a limited set of radiation modality codes from SNOMED CT, however, ICD-10-PCS code from Section D (Radiation Therapy) and appropriate CPT radiation procedure codes are also considered compliant. CPT codes are not explicitly included due to licensing restrictions. ICD-10-PCS codes are not included explicitly because they are not currently supported by the FHIR IG Publishing tool.

Conformance note: If an ICD-10-PCS code is used, and a semantically equivalent SNOMED CT or CPT code is available, the resulting Procedure instance will not be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/index.html)."
* SCT#448385000	"Megavoltage radiation therapy using photons (procedure)"
* SCT#45643008	"Teleradiotherapy using electrons (procedure)"
* SCT#10611004    "Teleradiotherapy protons (procedure)"
* SCT#80347004	"Teleradiotherapy neutrons (procedure)"
* SCT#152198000	"Brachytherapy (procedure)"


ValueSet:       RadiationTargetBodySiteVS
Id: mcode-radiation-target-body-site-vs
Title: "Radiation Target Body Site Value Set"
Description:    "Codes for body sites that can be targets of radiation therapy. This list of sites is based on Commission on Cancer’s 'Standards for Oncology Registry Entry  - STORE 2018'. This value set contains SNOMED CT equivalent terms."
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


/*
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
*/

ValueSet: LateralityVS
Id: mcode-laterality-vs
Title: "Laterality Value Set"
Description: "Body side of the body location, if needed to distinguish from a similar location on the other side of the body."
* SCT#51440002 "Right and left (qualifier value)"
* SCT#399488007 "Midline (qualifier value)"
* SCT#24028007 "Right (qualifier value)"
* SCT#7771000  "Left (qualifier value)"
* SCT#66459002 "Unilateral (qualifier value)"


ValueSet:   TreatmentTerminationReasonVS
Id: mcode-treatment-termination-reason-vs
Title: "Treatment Termination Reason Value Set"
Description:  "Values used to describe the reasons for stopping a treatment. Includes code for 'treatment completed' as well as codes for unplanned (early) stoppage. Applies to medications and other treatments that take place over a period of time, such as radiation treatments."
* SCT#182992009       "Treatment completed (situation)"  // could more generally be 397943006 "Planned (qualifier value)"
* SCT#58848006        "Lack of drug action (finding)"  
// MCODE-106 MK 10-2-2019  replaced SCT#435501000124106 "Medication not effective (finding)"
* SCT#281647001       "Adverse reaction (disorder)"  // more general than 62014003 Adverse reaction to drug
* SCT#160932005       "Financial problem" // better than 454061000124102 "Unable to afford medication (finding)"
* SCT#105480006       "Refusal of treatment by patient"  // patient choice or decision
* SCT#107724000       "Patient transfer"
* SCT#309846006       "Treatment not available"

ValueSet:		TreatmentIntentVS
Id: mcode-treatment-intent-vs
Title: "Treatment Intent Value Set"
Description:	"The purpose of a treatment. The value set includes 'curative' and 'palliative'. Curative is defined as any treatment meant to reduce or control a disease process, even if a 'cure' is not anticipated. Palliative includes treatments meant to reduce symptoms and side effects, such as antiemetics."
* SCT#373808002   "Curative - procedure intent"
* SCT#363676003   "Palliative - procedure intent"

ValueSet:			UnitsOfLengthVS
Id: mcode-units-of-length-vs
Title:              "Units of Length Value Set"
Description:		"Units of measure for length or distance on a human scale."
* UCUM#mm				"Millimeter"
* UCUM#cm				"Centimeter"
* UCUM#m				"Meter"
* UCUM#ft-us			"Foot"
* UCUM#in-us			"Inch"
