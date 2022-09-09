```
Instance: john-anyperson-chf
InstanceOf: USCoreConditionProblemsHealthConcernsProfile
Title: "john-anyperson-chf"
Description: "Example of comorbid condition (congestive heart failure) present"
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension.valueDateTime = "2019-04-01"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code = http://hl7.org/fhir/sid/icd-10-cm#I50.32 "Chronic diastolic (congestive) heart failure"
* subject = Reference(cancer-patient-john-anyperson)
* asserter = Reference(us-core-practitioner-kyle-anydoc)
```