Extension: ComorbidConditionCode
Id: mcode-comorbid-condition-code
Title:  "Comorbid Condition Code"
Description: "An extension for representing the condition code corresponding to the named comorbid condition."
* . ^short = "Comorbid Condition Code"
* . ^definition = "An extension for representing the condition code corresponding to the named comorbid condition."
* extension 0..0
* value[x] only CodeableConcept

Extension: ComorbidConditionReference
Id: mcode-comorbid-condition-reference
Title:  "Comorbid Condition Reference"
Description: "An extension for representing a reference to a condition resource corresponding to the named comorbid condition."
* . ^short = "Comorbid Condition Code"
* . ^definition = "An extension for representing a reference to a condition resource corresponding to the named comorbid condition."
* extension 0..0
* value[x] only Reference(Condition)

Extension: EvidenceType
Id: mcode-evidence-type
Title: "Evidence Type"
Description: "Categorization of the kind of evidence used as input to the clinical judgment. This corresponds to both the S and O in SOAP."
* . ^short = "Evidence Type"
* . ^definition = "Categorization of the kind of evidence used as input to the clinical judgment. This corresponds to both the S and O in SOAP."
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* extension 0..0
* value[x] only CodeableConcept
* value[x] from CancerDiseaseStatusEvidenceTypeVS (required)

Extension: HistologyMorphologyBehavior
Id: mcode-histology-morphology-behavior
Title: "Histology-Morphology-Behavior"
Description: "An extension describing the morphologic and behavioral characteristics of the cancer."
* . ^short = "Histology-Morphology-Behavior"
* . ^definition = "An extension describing the morphologic and behavioral characteristics of the cancer." 
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* extension 0..0
* value[x] only CodeableConcept
* value[x] from HistologyMorphologyBehaviorVS (extensible)

Extension: LocationQualifier
Id:  mcode-location-qualifier
Title: "Location Qualifier"
Description: "Qualifier to refine the anatomical location. These include qualifiers for laterality, relative location, directionality, number, and plane."
* . ^short = "Location Qualifier"
* . ^definition = "Qualifier to refine the anatomical location. These include qualifiers for laterality, relative location, directionality, number, and plane."
* ^context[0].type = #element
* ^context[0].expression = "Specimen.collection.bodySite"
* ^context[1].type = #element
* ^context[1].expression = "Procedure.bodySite"
* ^context[2].type = #element
* ^context[2].expression = "Condition.bodySite"
* ^context[3].type = #element
* ^context[3].expression = "Observation.bodySite"
* extension 0..0
* value[x] only CodeableConcept
* value[x] from LocationQualifierVS (required)

Extension: RelatedPrimaryCancerCondition
Id: mcode-related-primary-cancer-condition
Title: "Related Primary Cancer Condition"
Description: "A reference to the primary cancer condition that provides context for this resource."
* . ^short = "Related Primary Cancer Condition"
* . ^definition = "A reference to the primary cancer condition that provides context for this resource."
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* extension 0..0
* value[x] only Reference(PrimaryCancerCondition)

Extension: TerminationReason
Id:  mcode-termination-reason
Title: "Termination Reason"
Description: "A code explaining an unplanned or premature termination of a plan of treatment, course of medication, or research study."
* . ^short = "Termination Reason"
* . ^definition = "A code explaining an unplanned or premature termination of a plan of treatment, course of medication, or research study."
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* ^context[1].type = #element
* ^context[1].expression = "Procedure"
* extension 0..0
* value[x] only CodeableConcept
* value[x] from TreatmentTerminationReasonVS (required)


Extension: TreatmentIntent
Id:  mcode-treatment-intent
Title: "Treatment Intent"
Description: "The purpose of a treatment."
* . ^short = "Treatment Intent"
* . ^definition = "The purpose of a treatment."
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* ^context[1].type = #element
* ^context[1].expression = "Procedure"
* extension 0..0
* value[x] only CodeableConcept
* value[x] from TreatmentIntentVS (required)


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
* value[x] from LandmarkTypeVS (extensible)

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

Extension: RadiationDose
Id: mcode-radiation-dose
Title:  "Radiation Dose"
Description: "Information related to the dose of radiation received in a RadiationProcedure, including the dose per fraction, the number of fractions delivered, and the total radiation dose delivered."
* value[x] 0..0
* extension contains
    RadiationDosePerFraction 0..1 and
    RadiationFractionsDelivered 0..1 and
    TotalRadiationDoseDelivered 0..1

Extension: RadiationDosePerFraction
Id: mcode-radiation-dose-per-fraction
Title: "Radiation Dose Per Fraction"
Description: "The amount of radiation administered during a single session (fraction) of radiation therapy therapy."
* value[x] only Quantity
* valueQuantity = UCUM#cGy

Extension: RadiationFractionsDelivered
Id: mcode-radiation-fractions-delivered
Title: "Radiation Fractions Delivered"
Description: "Records the total number of treatment sessions (fractions) administered during the first course of therapy. Corresponds to LOINC 21950-2 'Number of radiation treatment' [sic]."
* value[x] only Quantity
* valueQuantity = UCUM#1

Extension: TotalRadiationDoseDelivered
Id: mcode-total-radiation-dose-delivered
Title: "Total Radiation Dose Delivered"
Description: "The total amount of radiation dose delivered for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only Quantity
* valueQuantity = UCUM#cGy

*/
