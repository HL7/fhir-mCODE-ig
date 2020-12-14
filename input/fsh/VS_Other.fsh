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

CodeSystem: OtherSpecifyCS
Id: mcode-other-specify-code-system
Title: "Other Specify Code System"
Description: "A code system containing codes signifying a value set has been extended, using an 'Other ____, Specify' approach."
* #OtherPrimaryCancerCondition "Other Primary Cancer Condition, Specify" "Code to be used for concepts not represented elsewhere in the value set. Specify the desired concept as an additional coding."
* #OtherSecondaryCancerCondition "Other Secondary Cancer Condition, Specify" "Code to be used for concepts not represented elsewhere in the value set. Specify the desired concept as an additional coding."
* #OtherTumorMarkerTest "Other Tumor Marker Test, Specify" "Code to be used for concepts not represented elsewhere in the value set. Specify the desired concept as an additional coding."
* #OtherCancerDisorder "Other Cancer Disorder, Specify" "Code to be used for concepts not represented elsewhere in the value set. Specify the desired concept as an additional coding."
* #OtherHistologyMorphologyBehavior "Other Histology Morphology Behavior, Specify" "Code to be used for concepts not represented elsewhere in the value set. Specify the desired concept as an additional coding."

ValueSet:       TumorMarkerTestVS
Id: mcode-tumor-marker-test-vs
Description:    "Codes representing tests for tumor markers. This value set of LOINC codes is not comprehensive and can be extended. Other vocabularies can be used only if the test of interest is not covered by LOINC. Tumor marker tests differ from genetic tests in that they measure levels of protein or other substances produced downstream from RNA protein synthesis."

* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* OtherSpecifyCS#OtherTumorMarkerTest "Other Tumor Marker Test, Specify"
* include codes from system LNC where ancestor in "LP101591-8, LP111251-7, LP136073-6, LP14040-7, LP14329-4, LP14543-0, LP14618-0, LP14649-5, LP14650-3, LP14652-9, LP14658-6 , LP14665-1  , LP14694-1, LP14697-4, LP14902-8, LP14907-7, LP15033-1, LP15090-1, LP15097-6, LP15097-6, LP15461-4, LP15463-0, LP15464-8, LP15465-5, LP15466-3, LP15467-1, LP15681-7, LP157499-7, LP15990-2, LP16890-3, LP17730-0, LP17751-6, LP18193-0, LP18274-8, LP18343-1, LP18396-9, LP18515-4, LP18567-5, LP189759-6, LP19423-0, LP19492-5, LP19666-4, LP19732-4, LP20052-4, LP200639-5, LP207485-6, LP220351-3, LP248009-5, LP28442-9, LP28518-6, LP28728-1, LP28852-9, LP31830-0, LP31855-7, LP35767-0, LP36040-1, LP36464-3, LP36477-5, LP36861-0, LP36885-9, LP61778-4, LP62864-1, LP62864-1, LP63490-4, LP64447-3, LP93517-8"

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
