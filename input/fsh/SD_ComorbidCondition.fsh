Profile: Comorbidities
Parent: Observation  // an Observation, not a condition
Id: mcode-comorbidities
Title: "Comorbidities Profile"
Description: "General structure for capturing comorbid conditions with respect to a primary ('index') condition. The specific set of comorbidities appear in extensions."
* ^extension[FMM].valueInteger = 1
* code = SCT#398192003 // Co-morbid conditions (finding) 
* focus only Reference(Condition)
* focus ^short = "The Index Condition"
* focus ^definition = "The comorbid conditions may be defined with respect to a specific 'index' condition. For example, the US Centers for Disease Control (CDC) has a list of comorbid conditions important to COVID-19. In this case, the focus would be COVID-19 and the comorbid condition categories would be those called out by CDC, namely obesity, renal disease, respiratory disease, etc."
* subject only Reference(CancerPatient)
* subject ^definition = "The patient whose comorbidities are recorded."
// We cannot use hasMember because that element does not allow Reference(Condition) or CodeableConcept as a type
// We cannot use component because that element does not allow References of any type
// Therefore, we need extensions to record the comorbid conditions
* extension contains RelatedCondition named comorbidConditionPresent 0..*
* extension contains RelatedConditionAbsent named comorbidConditionAbsent 0..*
// Indicate MS and NotUsed elements
* extension and extension[comorbidConditionPresent] and extension[comorbidConditionAbsent] and status and code and subject and focus and effective[x] MS
* insert NotUsed(bodySite)
* insert NotUsed(specimen)
* insert NotUsed(device)
/* Design options considered and rejected
* 1. Why not use component?
*    Component does not support references, and we would like to 
*    give users the option of either a condition code or Reference(Condition)
* 2. Why not use hasMember?
*    hasMember is a Reference, but cannot reference Conditions 
*    (it is limited to Reference(Observation | QuestionnaireResponse | MolecularSequence))
*/
* insert NotUsed(hasMember)
* insert NotUsed(component)

/*
Profile: ComorbiditiesResponse
Parent: USCoreQuestionnaireResponseProfile
Id: mcode-comorbidities-response
Title: "Comorbidities Questionnaire Response Profile"
Description: "General structure for capturing comorbid conditions with respect to a primary ('index') condition. The specific set of comorbidities present and absent appear in results."
* ^extension[FMM].valueInteger = 1
* questionnaire = Canonical(mcode-comorbidities-questionnaire)
* subject only Reference(CancerPatient)
* item.answer.value[x] only Coding or Reference(Condition) 


Instance: mcode-comorbidities-questionnaire
InstanceOf: SDCBaseQuestionnaire
Title: "Comorbidities Questionnaire Profile"
Description: "Questionnaire concerning a cancer patient's comorbidities."
* name = "ComorbidityQuestionnaire"
* subjectType = #Patient
* url = "http://hl7.org/fhir/us/mcode/Questionnaire/mcode-comorbidities-questionnaire"
* code = SCT#398192003 "Co-morbid conditions (finding)"
* status = #active
* item[0]
  * linkId = "indexConditionReference"
  * text = "What is the primary index condition that these comorbidities relate to?"
  * required = true
  * repeats = false
  * type = #reference
* item[1]
  * linkId = "comorbidConditionsPresent"
  * text = "List comorbid conditions present"
  * required = false
  * repeats = true
  * type = #group
  * item[0]
    * linkId = "comorbidConditionPresentReference"
    * text = "Reference to comorbid condition present"
    * required = false
    * repeats = true
    * type = #reference
  * item[1]
    * linkId = "comorbidConditionPresentCoding"
    * text = "Code for comorbid condition present"
    * required = false
    * repeats = true
    * type = #open-choice
* item[2]
  * linkId = "comorbidConditionsAbsent"
  * text = "Codes of comorbid conditions explicitly NOT present"
  * required = false
  * repeats = true
  * type = #open-choice
   
*/