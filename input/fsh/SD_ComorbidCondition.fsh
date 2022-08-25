Profile: Comorbidities
Parent: USCoreClinicalTest  // an Observation, not a condition
Id: mcode-comorbidities
Title: "Comorbidities Profile"
Description: "General structure for capturing comorbid conditions with respect to a primary ('index') condition. The specific set of comorbidities of interest are linked through the hasMember."
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
// The design also must satisfy Rule us-core-2: 'If there is no component or hasMember element then either a value[x] or a data absent reason must be present'. We will use a data absent reason. 
* value[x] 0..0
* dataAbsentReason 1..1
* dataAbsentReason = AbsentReason#not-permitted "Not Permitted"
// Indicate MS and NotUsed elements
* extension and extension[comorbidConditionPresent] and extension[comorbidConditionAbsent] and status and code and subject and focus and effective[x] MS
* insert NotUsed(bodySite)
* insert NotUsed(specimen)
* insert NotUsed(device)
* insert NotUsed(hasMember)
* insert NotUsed(component)

