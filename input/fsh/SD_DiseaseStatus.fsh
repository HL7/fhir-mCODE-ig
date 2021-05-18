Profile:  CancerDiseaseStatus
Parent:   Observation
Id: mcode-cancer-disease-status
Title:    "Cancer Disease Status"
Description:    "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc."
// * insert ReduceText
// * insert ReduceText(referenceRange)
// * insert ReduceText(component)
* extension contains EvidenceType named evidenceType 0..*
* insert NotUsed(specimen)
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* insert NotUsed(hasMember)
* insert NotUsed(component)
* subject 1..1
* code = LNC#97509-4 // "Cancer Disease Progression"
* subject only Reference(CancerPatient)
* focus only Reference(PrimaryCancerCondition or SecondaryCancerCondition or Tumor)
* effective[x] only dateTime
* performer only Reference(USCorePractitioner)
* value[x] only CodeableConcept
* value[x] from ConditionStatusTrendVS (required)
// ALL MUST SUPPORTS
* status and code and subject and effective[x] and value[x] and focus and dataAbsentReason and extension[evidenceType] MS
