Profile: TumorSize
Parent:  Observation
Id: mcode-tumor-size
Title: "Tumor size"
Description:  "Records the dimensions of a tumor"

// If tumor is physically removed from the body, use `specimen` to reference it
// QUESTION: Note that this is redundant with the Observation profile -- is it best practice to leave this in to be explicit, or omit?
* specimen 0..1

// If the tumor is still in the body, use Observation.focus
* focus 0..1
* focus only Reference(BodyStructure)
// QUESTION: do we need a specific "Tumor" profile based on BodyStructure, or is BodyStructure sufficient? I looked at the profile for BodyStructure and it seemed ok superficially, but it's hard to know for sure without trying to make some instances (which I can do).

// Require that the tumor size is associated with an mCODE cancer patient
* subject 1..1
* subject only Reference(CancerPatient)

// QUESTION: is there a way to require either focus OR subject to be specified?

// LOINC code indicatign this is a tumor size
* code = LNC#21889-1 "Size Tumor"

// Store tumor size in component with 3 valueCodableConcepts for each tumor dimension, plus a 4th for size of gross tumor bed
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
// Require 1 dimension; the other 2 are optional
* component contains
    tumorLongestDimension 1..1 MS and
    tumorDimension2 0..1 MS and
    tumorDimension3 0..1 MS // and
    // SizeOfGrossTumorBed 0..1 MS
* component[tumorLongestDimension] ^short = "Longest tumor dimension (cm or mm)"
* component[tumorLongestDimension] ^definition = "The longest tumor dimension in cm or mm."
* component[tumorLongestDimension].code = LNC#33728-7 "Size.maximum dimension in Tumor"
* component[tumorLongestDimension].value[x] only Quantity
* component[tumorLongestDimension].valueQuantity from TumorSizeUnitsVS (required)

* component[tumorDimension2] ^short = "2nd tumor dimension (cm or mm)"
* component[tumorDimension2] ^definition = "The 2nd tumor dimension in cm or mm."
// Could also presumably use  SCT#372300005 "Tumor size, dimension 2 (observable entity)" for this -- what's the thoughts on mixing LOINC and SNOMED?
* component[tumorDimension2].code = LNC#33729-5 "Size additional dimension in Tumor"
* component[tumorDimension2].value[x] only Quantity
* component[tumorDimension2].valueQuantity from TumorSizeUnitsVS (required)

* component[tumorDimension3] ^short = "3rd tumor dimension (cm or mm)"
* component[tumorDimension3] ^definition = "The 3rd tumor dimension in cm or mm."
// Likewise, SCT#372301009 "Tumor size, dimension 3 (observable entity)"
* component[tumorDimension3].code = LNC#33729-5 "Size additional dimension in Tumor"
* component[tumorDimension3].value[x] only Quantity
* component[tumorDimension3].valueQuantity from TumorSizeUnitsVS (required)

// No LOINC code that I could find for this
// * component[SizeOfGrossTumorBed] ^short = "Gross tumor bed size (cm or mm)"
// * component[SizeOfGrossTumorBed] ^definition = "The gross tumor bed size in cm or mm."
// * component[SizeOfGrossTumorBed].code = TBD
// * component[SizeOfGrossTumorBed].value[x] only Quantity
// * component[SizeOfGrossTumorBed].valueQuantity 0..1
// * component[SizeOfGrossTumorBed].valueQuantity from TumorSizeUnitsVS (required)

// Properties that are inherited from Observation but don't make sense for this profile
* bodySite 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* interpretation 0..0
* category 0..0

// Based on UnitsOfLengthVS, but limited to just mm and cm. In theory we could just use UnitsOfLengthVS if we don't care about restricting to just cm/mm.
ValueSet:        TumorSizeUnitsVS
Id:              mcode-tumor-size-units-vs
Title:           "Units of tumor size value set"
Description:     "Units of tumor size (cm or mm)"
* UCUM#mm        "Millimeter"
* UCUM#cm        "Centimeter"