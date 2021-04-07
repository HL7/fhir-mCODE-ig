Extension: ComorbidConditionCode
Id: mcode-comorbid-condition-code
Title:  "Specific Condition Code for Comorbidity"
Description: "An extension for representing a specific condition code corresponding to the comorbid condition category."
* value[x] only CodeableConcept
* value[x] ^short = "Code for a specific condition in the named comorbidity category."

Extension: ComorbidConditionReference
Id: mcode-comorbid-condition-reference
Title:  "Specific Condition Reference for Comorbidity"
Description: "An extension for representing a reference to a condition resource corresponding to the comorbid condition category."
* value[x] only Reference(Condition)

Extension: ConditionRelated
Id: mcode-condition-related
Title:  "Condition related to resource"
Description: "The resource has an unspecified relationship with a Condition."
* value[x] only Reference(Condition)

Extension: EvidenceType
Id: mcode-evidence-type
Title: "Evidence Type"
Description: "Categorization of the kind of evidence used as input to the clinical judgment. This corresponds to both the S and O in SOAP."
* insert ExtensionContext(Observation)
* value[x] only CodeableConcept
* value[x] from CancerDiseaseStatusEvidenceTypeVS (required)

Extension: HistologyMorphologyBehavior
Id: mcode-histology-morphology-behavior
Title: "Histology-Morphology-Behavior"
Description: "An extension describing the morphologic and behavioral characteristics of the cancer."
* insert ExtensionContext(Condition)
* value[x] only CodeableConcept
* value[x] from HistologyMorphologyBehaviorVS (required)

Extension: LocationQualifier
Id: mcode-location-qualifier
Title: "Location Qualifier"
Description: "Qualifier to refine an body location. These include qualifiers for laterality, relative location, directionality, number, and plane."
* insert ExtensionContext(Specimen.collection.bodySite)
* insert ExtensionContext(Procedure.bodySite)
* insert ExtensionContext(Condition.bodySite)
* insert ExtensionContext(Observation.bodySite)
* value[x] only CodeableConcept
* value[x] from BodyLocationQualifierVS (required)

Extension: TreatmentTerminationReason
Id: mcode-treatment-termination-reason
Title: "Termination Reason"
Description: "A code explaining an unplanned or premature termination of a plan of treatment, course of medication, or research study."
* insert ExtensionContext(MedicationRequest)
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept
* value[x] from TreatmentTerminationReasonVS (required)


Extension: TreatmentIntent
Id: mcode-treatment-intent
Title: "Treatment Intent"
Description: "The purpose of a treatment."
* insert ExtensionContext(MedicationRequest)
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept
* value[x] from TreatmentIntentVS (required)

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"