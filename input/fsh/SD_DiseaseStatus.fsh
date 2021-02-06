Profile:  CancerDiseaseStatus
Parent:   Observation
Id:       mcode-cancer-disease-status
Title:    "Cancer Disease Status"
Description:    "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc."
* extension contains EvidenceType named evidenceType 0..*
* specimen ^short = "Not used in this profile"
* device ^short = "Not used in this profile"
* referenceRange ^short = "Not used in this profile"
* hasMember ^short = "Not used in this profile"
* component ^short = "Not used in this profile"
* subject 1..1
* code = LNC#88040-1 //"Response to cancer treatment"
* subject only Reference(CancerPatient)
* focus only Reference(PrimaryCancerCondition or SecondaryCancerCondition or Tumor)
* effective[x] only dateTime
* performer only Reference(USCorePractitioner)
* value[x] only CodeableConcept
* value[x] from ConditionStatusTrendVS (required)
// ALL MUST SUPPORTS
* status and code and subject and effective[x] and value[x] and focus and dataAbsentReason and extension[evidenceType] MS
