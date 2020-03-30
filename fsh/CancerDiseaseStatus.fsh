Profile:  CancerDiseaseStatus
Parent:   Observation
Id:       mcode-cancer-disease-status
Title:    "Cancer Disease Status"
Description:    "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc.

Note: The LOINC code chosen to represent this observation (LOINC 88040-1, Response to cancer treatment) does not precisely match the meaning of this profile, but it is the closest available LOINC code at the present time. It is acknowledged that the disease status is different than the status of the disease due to treatment, although in the context of an oncologist visit, disease status can mean response to treatment for patients under their care. However, the LOINC code 88041-2 is more granular than the definition of the profile because cancer disease status is observable regardless of whether the patient is under treatment. The plan is to request a new LOINC code that represents cancer disease status, as it is defined here, and replace the current LOINC code with the new code before normative publication of mCODE."
* extension contains EvidenceType named evidenceType 0..*
* extension[evidenceType].valueCodeableConcept from CancerDiseaseStatusEvidenceTypeVS (required)
* status, code, subject, effective[x], valueCodeableConcept MS
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* interpretation 0..1
* subject 1..1
* basedOn only Reference(ServiceRequest | MedicationRequest)
* partOf only Reference(MedicationAdministration | MedicationStatement | Procedure)
* code = LNC#88040-1 //"Response to cancer treatment"
* subject only Reference(CancerPatient)
* focus only Reference(CancerConditionParent)
* effective[x] only dateTime or Period
* performer only Reference(USCorePractitioner)
* value[x] only CodeableConcept
* valueCodeableConcept from ConditionStatusTrendVS (required)


Extension: EvidenceType
Title: "Evidence Type"
Id:  mcode-evidence-type
Description: "Categorization of the kind of evidence used as input to the clinical judgment. This corresponds to both the S and O in SOAP."
* value[x] only CodeableConcept


