//Parent//
Profile: CancerRiskAssessment
Id: mcode-cancer-risk-assessment
Parent: Observation
Title: "Cancer Risk Assessment Profile"
Description: "Parent profile for observations regarding cancer risk assessment. Risk assessment is a process used to estimate the risk that a certain event will happen. In medicine, this may include a person’s risk of having a child with a certain condition or disease, such as cancer. It may also be used to estimate the risk of carrying a certain gene mutation (change), or of having an adverse event (unexpected medical problem) in response to certain types of drugs or other substances. A risk assessment may be done by collecting information about a person’s age, sex, personal and family medical history, ethnic background, lifestyle, and other factors and using statistics tools to calculate risk (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/risk-assessment)).

The key elements are the code, method, value, and optionally, prognostic factors referenced in the hasMember element."
* ^abstract = true
* code from CancerRiskAssessmentTypeVS (preferred)
* code ^short = "The type of risk assessment information reported."
* code ^definition = "The kind of risk assessment reported. This element identifies the type of value that is reported in Observation.value and is necessary for the correct interpretation of that value. The distinction between Observation.code and Observation.method is important. Observation.code identifies the kind of risk assessment being reported while Observation.method represents the risk assessment system used to determine the code. Observation.code may imply the risk assessment system. When the risk assessment system is implied by Observation.code, Observation.method is not required. However, when Observation.code does not imply a risk assessment system, then the risk assessment system must be specified in Observation.method. The value (Observation.valueCodeableConcept) may also imply certain things about the kind of risk assessment being reported. However, even if the value is partly or wholly self-identifying, it is not a reliable indicator of the type of risk assessment being reported or the method of assessment. Therefore, Observation.code must in all cases be reported."

/*I don't have any methods picked out right now
* method from RiskAssessmentMethodVS (extensible)
* method ^short = "The risk assessment system used."
* method ^definition = "The risk assessment system or protocol used to determine the risk, risk group, or category of the cancer."
*/

* value[x] only CodeableConcept
* value[x] from RiskAssessmentValueVS (example)
* value[x] ^comment = ""    // suppress QA error on #notes link
* value[x] ^short = "The value of the risk assessment"
* value[x] ^definition = "The classification resulting from the risk evaluation."

* insert NotUsed(device)
* insert NotUsed(referenceRange)
* focus only Reference(PrimaryCancerCondition)
* focus ^short = "The cancer condition associated with risk assessment."
* focus ^definition = "Risk assessments are associated with a particular primary cancer condition. Observation.focus is used to point back to that condition."
* hasMember ^short = "Prognostic factors contributing to risk assessment."
* hasMember ^definition = "References to the prognostic factors affecting the risk assessment."
* subject only Reference(CancerPatient)
* subject ^definition = "The patient associated with risk assessment."
* status and code and subject and effective[x] and value[x] and focus MS

//Rhabdomyosarcoma//

Profile: RhabdomyosarcomaRiskAssessment
Id: mcode-rhabdomyosarcoma-risk-assessment
Parent: CancerRiskAssessment
Title: "Rhabdomyocaroma Risk Assessment Profile"
Description: "Risk assessment for rhabdomyocaroma. The assessment is based on three things - TNM stage, clinical group, and whether cancer cells have a PAX/FOX01 fusion gene."
* ^extension[FMM].valueInteger = 0
* code = NCIT#C148010 // "Intergroup Rhabdomyosarcoma Study Group Clinical Staging and Grouping System"
* value[x] from RhabdomyosarcomaAssessmentValueVS (required)


//Acute lymphoblastic leukemia//

Profile: ALLRiskAssessment
Id: mcode-ALL-risk-assessment
Parent: CancerRiskAssessment
Title: "ALL Risk Assessment Profile"
Description: "Risk assessment for acute lymphoblastic leukemia (ALL)."
* ^extension[FMM].valueInteger = 0
* code = NCIT#C167435 // "Leukemia Finding" 
* value[x] from ALLRiskAssessmentVS (required)



/* decided not to include 
//Mantle Cell Lymphoma//

Profile: LymphomaMIPIRiskAssessment
Id: mcode-lymphoma-mipi-risk-assessment
Parent: CancerRiskAssessment
Title: "Lymphoma MIPI Risk Assessment"
Description: "Risk assessment for mantle cell lymphoma by the International Prognostic Index Profile. A asessment is designed to classify a patient's risk of mantle cell lymphoma progression or relapse and overall survival following therapy. It uses the criteria of patient's age, ECOG performance status, serum LDH activity, WBC count and Ki-67 index to classify patients into low risk, medium risk or high risk groups."
* ^extension[FMM].valueInteger = 0
* code = SCT#763236005 // "Mantle Cell Lymphoma International Prognostic Index (assessment scale)"
* value[x] from LymphomaMIPIRiskAssessmentVS (required)
*/
