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
Id:  mcode-location-qualifier
Title: "Location Qualifier"
Description: "Qualifier to refine the anatomical location. These include qualifiers for laterality, relative location, directionality, number, and plane."
* insert ExtensionContext(Specimen.collection.bodySite)
* insert ExtensionContext(Procedure.bodySite)
* insert ExtensionContext(Condition.bodySite)
* insert ExtensionContext(Observation.bodySite)
* value[x] only CodeableConcept
* value[x] from LocationQualifierVS (required)

Extension: TerminationReason
Id:  mcode-termination-reason
Title: "Termination Reason"
Description: "A code explaining an unplanned or premature termination of a plan of treatment, course of medication, or research study."
* insert ExtensionContext(MedicationRequest)
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept
* value[x] from TreatmentTerminationReasonVS (required)


Extension: TreatmentIntent
Id:  mcode-treatment-intent
Title: "Treatment Intent"
Description: "The purpose of a treatment."
* insert ExtensionContext(MedicationRequest)
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept
* value[x] from TreatmentIntentVS (required)

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

/* Save for possible future use

Extension: AnatomicalOrientation
Id:  mcode-anatomical-orientation
Title: "Anatomical Orientation"
Description: "AnatomicalOrientation of the body location, if needed to distinguish from a similar location in another orientation."
* value[x] only CodeableConcept
* value[x] from AnatomicalOrientationVS (required)

Extension: RelationToLandmark
Id:  mcode-relation-to-landmark
Title: "Relation to Landmark"
Description: "The relationship between a landmark that helps determine a body location and the body location itself. The location relative to a landmark is specified by:
* Specifying the location and type of landmark using a body site code and optional locationQualifier/orientation,
* Specifying the direction from the landmark to the body location, and
* Specifying the distance from the landmark to the body location."
* value[x] ^short = "Not used in this profile"
* extension contains
    LandmarkType 0..1 and
    LandmarkLocation 0..1 and
    LandmarkToBodyLocationDirection 0..1 and
    LandmarkToBodyLocationDistance 0..1

Extension: LandmarkType
Id:  mcode-landmark-type
Title: "Landmark Type"
Description: "The type of feature that constitutes the landmark, particularly if the landmark is an acquired body structure or physical object."
* value[x] only CodeableConcept
* value[x] from LandmarkTypeVS (extensible)

Extension: LandmarkLocation
Id:  mcode-landmark-location
Title: "Landmark Location"
Description: "The body location of the landmark, specified by a location code and optional locationQualifier and orientation."
// change from `code` to BodySiteCode and bind the code to a value set
// Also change BodySiteCode from 0..1 to 1..1
* value[x] ^short = "Not used in this profile"
* extension contains
    BodySiteCode 1..1 and
    LocationQualifier 0..1 // and
//    AnatomicalOrientation 0..*

Extension: BodySiteCode
Id:  mcode-body-site-code
Title: "Body Site Code"
Description: "An anatomical location represented as a code."
* value[x] only CodeableConcept
* value[x] from http://hl7.org/fhir/ValueSet/body-site (example)

Extension: LandmarkToBodyLocationDirection
Id:  mcode-landmark-to-body-location-direction
Title: "Landmark to Body Location Direction"
Description: "The direction from the landmark to the body location of interest, given as a clockface direction or anatomical direction."
* value[x] only CodeableConcept
* value[x] from AnatomicalDirectionVS (preferred)

Extension: LandmarkToBodyLocationDistance
Id:  mcode-landmark-to-body-location-distance
Title: "Landmark to Body Location Distance"
Description: "How far the body location of interest is from the given landmark."
* value[x] only Quantity
* valueQuantity from UnitsOfLengthVS (required)
*/
