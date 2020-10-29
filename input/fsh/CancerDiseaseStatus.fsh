Profile:  CancerDiseaseStatus
Parent:   Observation
Id:       mcode-cancer-disease-status
Title:    "Cancer Disease Status"
Description:    "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc.

Note: The LOINC code chosen to represent this observation (LOINC 88040-1, Response to cancer treatment) does not precisely match the meaning of this profile, but it is the closest available LOINC code at the present time. The code is more granular than the definition of this profile because cancer disease status is observable regardless of whether the patient is under treatment. However, in the context of a patient undergoing treatment (the primary use case of mCODE), disease status and response to treatment are synonomous. The plan is to request a new LOINC code that represents cancer disease status, as defined here, and replace the current LOINC code with the new code before normative publication of mCODE.

Conformance statement:

Observation resources associated with an mCODE patient with Observation.code LOINC 88040-1 MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form."

* extension contains EvidenceType named evidenceType 0..*
* status and code and subject and effective[x] and valueCodeableConcept MS
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* subject 1..1
* code = LNC#88040-1 //"Response to cancer treatment"
* subject only Reference(CancerPatient)
* focus only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* effective[x] only dateTime or Period
* performer only Reference(USCorePractitioner)
* value[x] only CodeableConcept
* valueCodeableConcept from ConditionStatusTrendVS (required)

Extension: EvidenceType
Id: mcode-evidence-type
Title: "Evidence Type"
Description: "Categorization of the kind of evidence used as input to the clinical judgment. This corresponds to both the S and O in SOAP."
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only CodeableConcept
* valueCodeableConcept from CancerDiseaseStatusEvidenceTypeVS (required)
