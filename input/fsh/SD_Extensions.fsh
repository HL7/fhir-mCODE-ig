Extension: RelatedCondition
Id: mcode-related-condition
Title:  "Related Condition Extension"
Description: "A condition that has a relationship with the resource."
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept or Reference(Condition) 
* value[x] 1..1

Extension: RelatedConditionAbsent
Id: mcode-related-condition-absent
Title:  "Related Condition Absent Extension"
Description: "A condition that is NOT present, related to the resource."
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] 1..1

Extension: CancerDiseaseStatusEvidenceType
Id: mcode-cancer-disease-status-evidence-type
Title: "Cancer Disease Status Evidence Type Extension"
Description: "Categorization of the kind of evidence contributing to a clinical judgment on cancer disease progression."
* insert ExtensionContext(Observation)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from CancerDiseaseStatusEvidenceTypeVS (required)
* value[x] 1..1

Extension: HistologyMorphologyBehavior
Id: mcode-histology-morphology-behavior
Title: "Histology-Morphology-Behavior Extension"
Description: "An extension describing the morphologic and behavioral characteristics of the cancer."
* insert ExtensionContext(Condition)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from HistologyMorphologyBehaviorVS (extensible)
* value[x] 1..1

Extension: BodyLocationQualifier
Id: mcode-body-location-qualifier
Title: "Body Location Qualifier Extension"
Description: "Qualifier to refine an body location. These include qualifiers for relative location, directionality, number, and plane, and exclude qualifiers for laterality."
// removed as per FHIR-32243
// * insert ExtensionContext(Specimen.collection.bodySite)
// * insert ExtensionContext(Procedure.bodySite)
// * insert ExtensionContext(Condition.bodySite)
// * insert ExtensionContext(Observation.bodySite)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from BodyLocationQualifierVS (required)
* value[x] 1..1

Extension: LateralityQualifier
Id: mcode-laterality-qualifier
Title: "Laterality Qualifier Extension"
Description: "Qualifier to specify laterality."
// removed as per FHIR-32243
// * insert ExtensionContext(Specimen.collection.bodySite)
// * insert ExtensionContext(Procedure.bodySite)
// * insert ExtensionContext(Condition.bodySite)
// * insert ExtensionContext(Observation.bodySite)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from LateralityQualifierVS (required)
* value[x] 1..1

Extension: TreatmentTerminationReason
Id: mcode-treatment-termination-reason
Title: "Treatment Termination Reason Extension"
Description: "A code explaining the unplanned or premature termination, or normal completion, of a plan of treatment, course of medication, or research study."
//* insert ExtensionContext(MedicationRequest) - removed as per FHIR-32243
//* insert ExtensionContext(Procedure)         - removed as per FHIR-32243
* ^extension[FMM].valueInteger = 3
* value[x] only CodeableConcept
* value[x] from TreatmentTerminationReasonVS (required)
* value[x] 1..1

Extension: ProcedureIntent
Id: mcode-procedure-intent
Title: "Procedure Intent Extension"
Description: "The purpose of a treatment, medication, or procedure."
//* insert ExtensionContext(MedicationRequest) - removed as per FHIR-32243
//* insert ExtensionContext(Procedure)         - removed as per FHIR-32243
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from ProcedureIntentVS (required)
* value[x] 1..1

