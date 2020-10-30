Extension: TreatmentIntent
Id:  mcode-treatment-intent
Title: "Treatment Intent"
Description: "The purpose of a treatment."
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* ^context[1].type = #element
* ^context[1].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from TreatmentIntentVS (required)

Extension: TerminationReason
Id:  mcode-termination-reason
Title: "Termination Reason"
Description: "A code explaining an unplanned or premature termination of a plan of treatment, course of medication, or research study."
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* ^context[1].type = #element
* ^context[1].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from TreatmentTerminationReasonVS (required)

Extension: LocationQualifier
Id:  mcode-location-qualifier
Title: "Location Qualifier"
Description: "Body side of the body location, if needed to distinguish from a similar location on the other side of the body."
* ^context[0].type = #element
* ^context[0].expression = "Specimen.collection.bodySite"
* ^context[1].type = #element
* ^context[1].expression = "Procedure.bodySite"
* ^context[2].type = #element
* ^context[2].expression = "Condition.bodySite"
* ^context[3].type = #element
* ^context[3].expression = "Observation.bodySite"
* value[x] only CodeableConcept
* valueCodeableConcept from LocationQualifierVS (required)
/*
Extension: AnatomicalOrientation
Id:  mcode-anatomical-orientation
Title: "Anatomical Orientation"
Description: "AnatomicalOrientation of the body location, if needed to distinguish from a similar location in another orientation."
* value[x] only CodeableConcept
* valueCodeableConcept from AnatomicalOrientationVS (required)

Extension: RelationToLandmark
Id:  mcode-relation-to-landmark
Title: "Relation to Landmark"
Description: "The relationship between a landmark that helps determine a body location and the body location itself. The location relative to a landmark is specified by:
* Specifying the location and type of landmark using a body site code and optional locationQualifier/orientation,
* Specifying the direction from the landmark to the body location, and
* Specifying the distance from the landmark to the body location."
* value[x] 0..0
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
* valueCodeableConcept from LandmarkTypeVS (extensible)

Extension: LandmarkLocation
Id:  mcode-landmark-location
Title: "Landmark Location"
Description: "The body location of the landmark, specified by a location code and optional locationQualifier and orientation."
// change from `code` to BodySiteCode and bind the code to a value set
// Also change BodySiteCode from 0..1 to 1..1
* value[x] 0..0
* extension contains
    BodySiteCode 1..1 and
    LocationQualifier 0..1 // and
//    AnatomicalOrientation 0..*

Extension: BodySiteCode
Id:  mcode-body-site-code
Title: "Body Site Code"
Description: "An anatomical location represented as a code."
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/body-site (example)

Extension: LandmarkToBodyLocationDirection
Id:  mcode-landmark-to-body-location-direction
Title: "Landmark to Body Location Direction"
Description: "The direction from the landmark to the body location of interest, given as a clockface direction or anatomical direction."
* value[x] only CodeableConcept
* valueCodeableConcept from AnatomicalDirectionVS (preferred)

Extension: LandmarkToBodyLocationDistance
Id:  mcode-landmark-to-body-location-distance
Title: "Landmark to Body Location Distance"
Description: "How far the body location of interest is from the given landmark."
* value[x] only Quantity
* valueQuantity from UnitsOfLengthVS (required)
*/