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
* include codes from system SCT where concept is-a #363679005 "Imaging (procedure)"   
* include codes from system SCT where concept is-a #108257001 "Anatomic pathology procedure (procedure)" // Broader than SCT#252416005 "Histopathology test (procedure), include microscopy."
* include codes from system SCT where concept is-a #711015009 "Assessment of symptom control (procedure)"
* include codes from system SCT where concept is-a #5880005   "Physical examination procedure (procedure)"
* include codes from system SCT where concept is-a #386344002 "Laboratory data interpretation (procedure)"


ValueSet: CancerRelatedSurgicalProcedureVS
Id: mcode-cancer-related-surgical-procedure-vs
Title: "Cancer-Related Surgical Procedure Value Set"
Description: "Includes surgical procedure codes from SNOMED CT, ICD-10-PCS and CPT. The value set may be a superset of cancer surgery codes, but narrowing the set further risks eliminating potentially useful and relevant codes."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. Current Procedural Terminology (CPT) is copyright 2020 American Medical Association. All rights reserved"
* include codes from system SCT where concept is-a #387713003 "Surgical procedure (procedure)"
* include codes from system CPT
* include codes from system ICD10PCS


ValueSet: BodyLocationQualifierVS
Id: mcode-body-location-qualifier-vs
Title: "Body Location Qualifier Value Set"
Description: "Qualifiers to refine a body structure or location. These include qualifiers for laterality, relative location, directionality, number, and plane."
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


ValueSet:		ProcedureIntentVS
Id: mcode-procedure-intent-vs
Title: "Procedure Intent Value Set"
Description:	"The purpose of a procedure."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#373808002 "Curative - procedure intent"
* SCT#363676003 "Palliative - procedure intent"
* SCT#399707004 "Supportive - procedure intent"
* SCT#261004008 "Diagnostic intent"
* SCT#129428001 "Preventive - intent"
* SCT#429892002 "Guidance intent"
* SCT#360156006 "Screening - procedure intent"
* SCT#447295008 "Forensic intent"

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
* SCT#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* SCT#104157003 "Light microscopy (procedure)"
// Physical exam
* SCT#5880005 "Physical examination procedure (procedure)"
// Diagnostic imaging
* SCT#16310003 "Diagnostic ultrasonography (procedure)"
* SCT#113091000 "Magnetic resonance imaging (procedure)"
* SCT#77477000 "Computerized axial tomography (procedure)"
* SCT#82918005 "Positron emission tomography (procedure)"       
* SCT#363680008 "Radiographic imaging procedure (procedure)"
// Other Imaging.  If one of the above doesn't cut it.
* SCT#363679005 "Imaging (procedure)"  
// * include codes from system LNC where concept is-a #LP29684-5

