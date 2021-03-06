ValueSet: CancerBodyLocationVS
Id: mcode-cancer-body-location-vs
Title: "Cancer Body Location Value Set"
Description:  "Codes describing the location(s) of primary or secondary cancer. The value set includes all codes from the SNOMED CT body structure hierarchy (codes descending from 123037004 'Body Structure'). The cancer body location may also be expressed using ICD-O-3 topography codes, however, those codes are not included here due to intellectual property restrictions. These topography terms have four-character codes that run from C00.0 to C80.9 [ref](https://apps.who.int/iris/bitstream/handle/10665/96612/9789241548496_eng.pdf). Only SNOMED CT and ICD-O-3 are considered conformant."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system SCT where concept is-a #123037004  "Body Structure"
* include codes from system ICDO3  // currently no way to filter down to just topology codes (that I know of)

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


ValueSet: CancerRelatedSurgicalProcedureVS
Id: mcode-cancer-related-surgical-procedure-vs
Title: "Cancer-Related Surgical Procedure Value Set"
Description: "Includes surgical procedure codes from SNOMED CT, ICD-10-PCS and CPT. The value set may be a superset of cancer surgery codes, but narrowing the set further risks eliminating potentially useful and relevant codes."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. Current Procedural Terminology (CPT) is copyright 2020 American Medical Association. All rights reserved"
* include codes from system SCT where concept is-a #387713003 "Surgical procedure (procedure)"
* include codes from system CPT
* include codes from system ICD10PCS


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
Description:  "Values used to describe the reasons for stopping a treatment or episode of care. Includes code for 'treatment completed' as well as codes for unplanned (early) stoppage. Applies to medications and other treatments that take place over a period of time, such as radiation treatments."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#182992009   "Treatment completed (situation)"
* SCT#266721009   "No response to treatment (situation)" // more general than SCT#58848006 "Lack of drug action (finding)"  
* SCT#407563006   "Treatment not tolerated (situation)" // more general than SCT#281647001 "Adverse reaction (disorder)"
* SCT#160932005   "Financial problem (finding)" // more general than 454061000124102 "Unable to afford medication (finding)"
* SCT#105480006   "Refusal of treatment by patient (situation)"  // patient choice or decision
* SCT#184081006   "Patient has moved away (finding)" // better than SCT#107724000 "Patient transfer (procedure)"
* SCT#309846006   "Treatment not available (situation)" 
* SCT#399307001   "Lost to follow-up (finding)" // added by mCODE Exec Council recommendation 2/12/2021


ValueSet:		TreatmentIntentVS
Id: mcode-treatment-intent-vs
Title: "Treatment Intent Value Set"
Description:	"The purpose of a treatment."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#373808002 "Curative - procedure intent"
* SCT#363676003 "Palliative - procedure intent"
* SCT#261004008 "Diagnostic intent"
* SCT#129428001 "Preventive - intent"
* SCT#429892002 "Guidance intent"
* SCT#360156006 "Screening - procedure intent"
* SCT#447295008 "Forensic intent"

//* SCT#399707004 "Supportive - procedure intent" // a bit more general than palliative, but very close in meaning. See https://en.wikipedia.org/wiki/Therapy#Supportive_therapy
//* SCT#360271000 "Prophylaxis - procedure intent"  // redundant with preventive. See https://en.wikipedia.org/wiki/Preventive_healthcare for the (slight) distinction between these terms.
//* SCT#73847000  "Neo-adjuvant - intent"  // relates to timing, not intent
//* SCT#373846009 "Adjuvant - intent"   // relates to timing, not intent
//* SCT#421974008 "Adjunct - intent"  // simply means accompanying or in support of another therapy. It is not an intent.

// Based on UnitsOfLengthVS, but limited to just mm and cm. In theory we could just use UnitsOfLengthVS if we don't care about restricting to just cm/mm.
ValueSet:        TumorSizeUnitsVS
Id:              mcode-tumor-size-units-vs
Title:           "Units of tumor size value set"
Description:     "Acceptable units for measuring tumor size"
* UCUM#mm        "Millimeter"
* UCUM#cm        "Centimeter"

ValueSet:        TumorSizeMethodVS
Id:              mcode-tumor-size-method-vs
Title:           "Methods for measuring tumor size"
Description:     "Code for methods of measuring tumor size, including physical examination, pathology, and imaging."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// Pathology
* SCT#168455000 "Gross pathology (finding)"
* SCT#104157003 "Light microscopy (procedure)"
// Physical exam
* SCT#5880005 "Physical examination procedure (procedure)"
// Diagnostic imaging
* SCT#363679005 "Imaging (procedure)"
* SCT#16310003 "Diagnostic ultrasonography (procedure)"
* SCT#113091000 "Magnetic resonance imaging (procedure)"
* SCT#77477000 "Computerized axial tomography (procedure)"


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
