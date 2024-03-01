//Parent profile//

ValueSet: CancerRiskAssessmentTypeVS
Id: mcode-risk-assessment-type-vs
Title: "Risk Assessment Type Value Set"
Description: "Codes that identify the kind of risk assessment reported in an Observation, necessary to correctly interpret the value associated with a risk assessment Observation. In terms of the SNOMED CT hierarchy, these codes represent observable entities. If the staging system used to determine the stage is not implicit in this code, the staging system must be separately recorded in Observation.method. More specific risk assessment profiles, if available, should be consulted before determining the correct code."
* ^experimental = false
* NCIT#C148010 "Intergroup Rhabdomyosarcoma Study Group Clinical Staging and Grouping System"
* NCIT#C167435 "Leukemia Finding" 

/*
ValueSet: RiskAssessmentMethodVS
Id: pedcan-risk-assessment-method-vs
Title: "Risk Assessment Method Value Set"
Description: "Risk assessment methods"
* ^experimental = false
* insert SNOMEDCopyrightForVS
* NCIT#C177316 "Malignant Germ Cell International Collaborative Risk Classification"
* SCT#1287646007 "International Germ Cell Consensus Classification (tumor staging)"
*/

ValueSet: RiskAssessmentValueVS 
Id: mcode-risk-assessment-vs
Title: "Risk Assessment Value Set"
Description: "A non-exhaustive value set containing codes that result from risk assessments, i.e., the risk level of the cancer."
* ^experimental = false
* insert SNOMEDCopyrightForVS
* SCT#260362008 "Very low (qualifier value)"
* SCT#260360000 "Very high (qualifier value)"
* SCT#723505004 "Low risk (qualifier value)"
* SCT#723509005 "High risk (qualifier value)"
* NCIT#C102402 "Intermediate Risk"
* NCIT#C122457 "Standard Risk Acute Leukemia"
* NCIT#C122458 "High Risk Acute Leukemia"


//Rhabdomyosarcoma//

ValueSet: RhabdomyosarcomaAssessmentValueVS
Id: mcode-rhabdomyosarcoma-assessment-value-vs
Title: "Rhabdomyosarcoma Assessment Value Set"
Description: "Codes in the Rhabdomyosarcoma risk assessment system."
* insert SNOMEDCopyrightForVS
* SCT#723505004 "Low risk (qualifier value)"
* SCT#723509005 "High risk (qualifier value)"
* NCIT#C102402 "Intermediate Risk"
//I couldn't find these values specific to this staging system





//Acute lymphoblastic leukemia//

ValueSet: ALLRiskAssessmentVS
Id: mcode-all-risk-assessment-value-vs
Title: "Acute Lymphoblastic Leukemia (ALL) Risk Assessment Value Set"
Description: "Codes in the ALL risk assessment system."
* ^experimental = false
* NCIT#C122457 "Standard Risk Acute Leukemia"
* NCIT#C122458 "High Risk Acute Leukemia"


/* decided not to include

//Mantle Cell Lymphoma//

ValueSet: LymphomaMIPIRiskAssessmentVS
Id: mcode-lymphoma-MIPI-risk-assessment-value-vs
Title: "Mantle Cell Lymphoma International Prognostic Index Value Set"
Description: "Codes in the Mantle Cell Lymphoma International Prognostic Index."
* NCIT#C137810 "High Risk Mantle Cell Lymphoma International Prognostic Index Combined Biologic Index"
* NCIT#C137809 "High-Intermediate Risk Mantle Cell Lymphoma International Prognostic Index Combined Biologic Index"
* NCIT#C137807 "Low Risk Mantle Cell Lymphoma International Prognostic Index Combined Biologic Index"
* NCIT#C137808 "Low-Intermediate Risk Mantle Cell Lymphoma International Prognostic Index Combined Biologic Index"

*/