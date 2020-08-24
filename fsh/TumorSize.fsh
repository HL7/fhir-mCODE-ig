Profile: TumorSize
Parent:  Observation
Id: mcode-tumor-size
Title: "Tumor size"
Description:  "Records the dimensions of a tumor"
* ^status = #draft
* ^experimental = true

// If tumor is physically removed from the body, use `specimen` to reference it
// If the tumor is still in the body, use Observation.focus
// TODO Set rule such that either specimen OR focus must be non-null, but one MUST be null
* focus 0..1
* focus only Reference(Tumor)

// Require that the tumor size is associated with an mCODE cancer patient
* subject 1..1 MS
* subject only Reference(CancerPatient)

// QUESTION: is there a way to require either focus OR subject to be specified?

// LOINC code indicatign this is a tumor size
* code = LNC#21889-1 "Size Tumor"
* code MS

// Store tumor size in component with 3 valueCodableConcepts for each tumor dimension
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
// Require 1 dimension; the other 2 are optional
* component contains
    tumorLongestDimension 1..1 MS and
    tumorDimension2 0..1 and
    tumorDimension3 0..1

* component[tumorLongestDimension] ^short = "Longest tumor dimension (cm or mm)"
* component[tumorLongestDimension] ^definition = "The longest tumor dimension in cm or mm."
* component[tumorLongestDimension].code = LNC#33728-7 "Size.maximum dimension in Tumor"
* component[tumorLongestDimension].value[x] only Quantity
* component[tumorLongestDimension].valueQuantity from TumorSizeUnitsVS (required)

* component[tumorDimension2] ^short = "2nd tumor dimension (cm or mm)"
* component[tumorDimension2] ^definition = "The 2nd tumor dimension in cm or mm."
* component[tumorDimension2].code = SCT#372300005 "Tumor size, dimension 2 (observable entity)"
* component[tumorDimension2].value[x] only Quantity
* component[tumorDimension2].valueQuantity from TumorSizeUnitsVS (required)

* component[tumorDimension3] ^short = "3rd tumor dimension (cm or mm)"
* component[tumorDimension3] ^definition = "The 3rd tumor dimension in cm or mm."
* component[tumorDimension3].code = SCT#372301009 "Tumor size, dimension 3 (observable entity)"
* component[tumorDimension3].value[x] only Quantity
* component[tumorDimension3].valueQuantity from TumorSizeUnitsVS (required)



Profile: Tumor
Parent:  BodyStructure
Id: mcode-tumor
Title: "Tumor"
Description:  "Identifies a tumor"
* ^status = #draft
* ^experimental = true

// The purpose of this profile is to uniquely identify a tumor, so it follows that there must be at least one identifier value provided
* identifier 1.. MS

// This VS is used to define the morphology of primary and secondary cancer; rule set here for consistency with these profiles.
* morphology from HistologyMorphologyBehaviorVS (required)
* morphology MS

// This VS is used for the primary/secondary cancer conditions; rule set here for consistency with these profiles.
* location from CancerBodyLocationVS (required)
* location 1..1 MS // Tumor is meaningless without a location; parent profile is 0..1

* patient only Reference(CancerPatient)



// Based on UnitsOfLengthVS, but limited to just mm and cm. In theory we could just use UnitsOfLengthVS if we don't care about restricting to just cm/mm.
ValueSet:        TumorSizeUnitsVS
Id:              mcode-tumor-size-units-vs
Title:           "Units of tumor size value set"
Description:     "Units of tumor size (cm or mm)"
* UCUM#mm        "Millimeter"
* UCUM#cm        "Centimeter"
* ^status = #draft
* ^experimental = true
