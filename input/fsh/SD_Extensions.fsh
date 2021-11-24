Extension: ComorbidConditionCode
Id: mcode-comorbid-condition-code
Title:  "Comorbid Condition Code Extension"
Description: "An extension for representing a specific condition code corresponding to the comorbid condition category."
* value[x] only CodeableConcept
* value[x] ^short = "Code for a specific condition in the named comorbidity category."
* value[x] 1..1

Extension: ComorbidConditionReference
Id: mcode-comorbid-condition-reference
Title:  "Comorbid Condition Reference Extension"
Description: "An extension for representing a reference to a condition resource corresponding to the comorbid condition category."
* value[x] only Reference(Condition)
* value[x] 1..1

Extension: RelatedCondition
Id: mcode-related-condition
Title:  "Related Condition Extension"
Description: "The resource has an unspecified relationship with a Condition."
* value[x] only Reference(Condition)
* value[x] 1..1

Extension: CancerDiseaseStatusEvidenceType
Id: mcode-cancer-disease-status-evidence-type
Title: "Cancer Disease Status Evidence Type Extension"
Description: "Categorization of the kind of evidence contributing to a clinical judgment on cancer disease progression."
* insert ExtensionContext(Observation)
* value[x] only CodeableConcept
* value[x] from CancerDiseaseStatusEvidenceTypeVS (required)
* value[x] 1..1

Extension: HistologyMorphologyBehavior
Id: mcode-histology-morphology-behavior
Title: "Histology-Morphology-Behavior Extension"
Description: "An extension describing the morphologic and behavioral characteristics of the cancer."
* insert ExtensionContext(Condition)
* value[x] only CodeableConcept
* value[x] from HistologyMorphologyBehaviorVS (extensible)
* value[x] 1..1

Extension: BodyLocationQualifier
Id: mcode-body-location-qualifier
Title: "Body Location Qualifier Extension"
Description: "Qualifier to refine an body location. These include qualifiers for relative location, directionality, number, and plane, and exclude qualifiers for laterality."
// FHIR-xxxx
// * insert ExtensionContext(Specimen.collection.bodySite)
// * insert ExtensionContext(Procedure.bodySite)
// * insert ExtensionContext(Condition.bodySite)
// * insert ExtensionContext(Observation.bodySite)
* value[x] only CodeableConcept
* value[x] from BodyLocationQualifierVS (required)
* value[x] 1..1

Extension: LateralityQualifier
Id: mcode-laterality-qualifier
Title: "Laterality Qualifier Extension"
Description: "Qualifier to specify laterality."
// * insert ExtensionContext(Specimen.collection.bodySite)
// * insert ExtensionContext(Procedure.bodySite)
// * insert ExtensionContext(Condition.bodySite)
// * insert ExtensionContext(Observation.bodySite)
* value[x] only CodeableConcept
* value[x] from LateralityQualifierVS (required)
* value[x] 1..1

Extension: TreatmentTerminationReason
Id: mcode-treatment-termination-reason
Title: "Treatment Termination Reason Extension"
Description: "A code explaining the unplanned or premature termination, or normal completion, of a plan of treatment, course of medication, or research study."
//* insert ExtensionContext(MedicationRequest) - removed as per FHIR-32243
//* insert ExtensionContext(Procedure)         - removed as per FHIR-32243
* value[x] only CodeableConcept
* value[x] from TreatmentTerminationReasonVS (required)
* value[x] 1..1

Extension: ProcedureIntent
Id: mcode-procedure-intent
Title: "Procedure Intent Extension"
Description: "The purpose of a treatment, medication, or procedure."
//* insert ExtensionContext(MedicationRequest) - removed as per FHIR-32243
//* insert ExtensionContext(Procedure)         - removed as per FHIR-32243
* value[x] only CodeableConcept
* value[x] from ProcedureIntentVS (required)
* value[x] 1..1

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"
