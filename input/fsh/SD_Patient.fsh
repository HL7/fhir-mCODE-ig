Profile: CancerPatient
Parent: USCorePatient
Id: mcode-cancer-patient
Title: "Cancer Patient Profile"
Description: "A patient who has been diagnosed with or is receiving medical treatment for a malignant growth or tumor. The only difference between CancerPatient and [US Core Patient](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) is that Patient.deceased is a [must-support](https://www.hl7.org/fhir/profiling.html#mustsupport) element in mCODE. Must-support is an instruction to implementers of FHIR clients and servers, rather than a constraint on data structure. Any Patient resource complying with US Core Patient Profile will also comply with CancerPatient."
* ^extension[FMM].valueInteger = 5
* deceased[x] MS
* extension[us-core-birthsex] MS
* . MS

Profile: CancerResearchSubject
Parent: ResearchSubject
Id: mcode-cancer-research-subject
Title: "Cancer Research Subject Profile"
Description: "A patient participating or who has participated in a clinical study for cancer."
* ^extension[FMM].valueInteger = 5
* extension contains ReasonOffStudy named reasonOffStudy 0..1 MS
* status and study MS

Profile: MedicalHistory
Parent: Observation
Id: mcode-medical-history
Title: "Medical History Profile"
Description: "General structure for capturing medical history. The user can use this profile in two ways: (1) free-form, listing any condition they wish to highlight as significant medical history, or (2) use disease categories."
* ^extension[FMM].valueInteger = 1
* code = SCT#417662000 // History of clinical finding in subject (situation)
* focus only Reference(PrimaryCancerCondition)
* focus ^short = "The Index Condition"
* focus ^definition = "Medical history conditions are typically defined with respect to a specific 'index' condition." 
* subject only Reference(CancerPatient)
* subject ^definition = "The patient whose medical history is recorded."
// We cannot use hasMember because that element does not allow Reference(Condition) or CodeableConcept as a type
// We cannot use component because that element does not allow References of any type
// Therefore, we need extensions to record the comorbid conditions
* extension contains RelatedCondition named pastMedicalConditionPresent 0..*
* extension contains RelatedConditionAbsent named pastMedicalConditionAbsent 0..*
// Indicate MS and NotUsed elements
* extension and extension[pastMedicalConditionPresent] and extension[pastMedicalConditionAbsent] and status and code and subject and focus and effective[x] MS
* insert NotUsed(bodySite)
* insert NotUsed(specimen)
* insert NotUsed(device)
* insert NotUsed(hasMember)
* insert NotUsed(component)
* insert NotUsed(method)
