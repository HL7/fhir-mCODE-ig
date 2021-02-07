Profile: TumorSize
Parent:  Observation
Id: mcode-tumor-size
Title: "Tumor Size"
Description:  "Records the dimensions of a tumor"
* ^status = #draft
* ^experimental = true

// LOINC code indicating this is a tumor size
* code = LNC#21889-1 //"Size Tumor"
* code MS

* subject ^short = "The patient whose tumor was measured."
* subject ^definition = "The patient whose tumor was measured. SHALL be a `Patient` resource conforming to `CancerPatient`."
* subject 1..1 MS
* subject only Reference(CancerPatient)

// TODO: Set rule such that either specimen OR focus must be non-null, but one MUST be null
* focus 0..1
* focus only Reference(Tumor)
* focus ^short = "Use ONLY when tumor HAS NOT been removed from the body"
* focus ^definition = "Reference to a BodyStructure resource conforming to Tumor."
* focus ^comment = "Use **only** when the tumor **has not** been removed from the body. If the tumor has been removed, use `specimen` instead and leave `focus` empty."
* focus MS

* specimen ^short = "Use ONLY when tumor HAS been removed from the body"
* specimen ^definition = "Reference to a BodyStructure resource conforming to Tumor."
* specimen ^comment = "Use **only** when the tumor **has** been removed from the body. If the tumor has been not removed, use `focus` instead and leave `specimen` empty."
* specimen MS

* method from TumorSizeMethodVS (extensible)
* method ^short = "Method for measuring the tumor"
* method ^definition = "Method for measuring the tumor"
* method ^comment = "Tumors are typically measured via gross pathology after excision, or via diagnostic imaging or physical exam prior to removal. `TumorSizeMethodVS` provides LOINC codes for these measurement methods. Therefore, if `specimen` is set, `method` is expected to be a \"gross pathology\" code. If `focus` is set, `method` is expected to be a type of diagnostic imaging or physical exam."
* method MS

* component MS
* insert ObservationComponentSlicingRules
// Require 1 dimension; the additional dimensions are optional
* component contains
    tumorLongestDimension 1..1 MS and
    tumorOtherDimension 0..2 MS

* component[tumorLongestDimension] ^short = "Longest tumor dimension (cm or mm)"
* component[tumorLongestDimension] ^definition = "The longest tumor dimension in cm or mm."
* component[tumorLongestDimension].code = LNC#33728-7 // "Size.maximum dimension in Tumor"
* component[tumorLongestDimension].value[x] only Quantity
* component[tumorLongestDimension].valueQuantity from TumorSizeUnitsVS (required)

* component[tumorOtherDimension] ^short = "2nd or 3rd tumor dimension (cm or mm)"
* component[tumorOtherDimension] ^definition = "The second or third tumor dimension in cm or mm."
* component[tumorOtherDimension] ^comment = "Additional tumor dimensions should be ordered from largest to smallest."
* component[tumorOtherDimension].code = LNC#33729-5 // "Size additional dimension in Tumor"
* component[tumorOtherDimension].value[x] only Quantity
* component[tumorOtherDimension].valueQuantity from TumorSizeUnitsVS (required)


Profile: Tumor
Parent:  BodyStructure
Id: mcode-tumor
Title: "Tumor"
Description:  "Identifies a tumor. Whenever possible, a single resource conforming to this profile will be used to track a tumor over time (as opposed to creating new Tumor-conforming BodyStructure resources each time that tumor is measured)."
* ^status = #draft
* ^experimental = true
// The purpose of this profile is to uniquely identify a tumor, so it follows that there must be at least one identifier value provided
* identifier 1.. MS
* identifier ^short = "Stable identifier of this specific tumor"
* identifier ^definition = "Stable identifier of this specific tumor, should be unique within the referenced `CancerPatient`."
* identifier ^comment = "If applicable, this should correspond to the physical tag inserted into the tumor during a procedure that is used for tracking the tumor by radiology and pathology."
// This VS is used to define the morphology of primary and secondary cancer; rule set here for consistency with these profiles.
* morphology from HistologyMorphologyBehaviorVS (required)
* morphology obeys tumor-other-morphology-invariant
* morphology MS
// This VS is used for the primary/secondary cancer conditions; rule set here for consistency with these profiles.
* location from CancerBodyLocationVS (extensible)
* location 1..1 MS // Tumor is meaningless without a location; parent profile is 0..1
* patient only Reference(CancerPatient)


Invariant: tumor-other-morphology-invariant
Description: "If the code representing 'Other histology morphology behavior, specify' is used, a second code from outside the original value set must be present. The second code MUST NOT represent a concept in or subsumed by any concept in the original value set."
Expression: "coding.where(code = 'HMB-OTHER').exists() implies coding.where(code != 'HMB-OTHER' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-histology-morphology-behavior-vs').not()).exists()"
Severity: #error


// Based on UnitsOfLengthVS, but limited to just mm and cm. In theory we could just use UnitsOfLengthVS if we don't care about restricting to just cm/mm.
ValueSet:        TumorSizeUnitsVS
Id: mcode-tumor-size-units-vs
Title:           "Units of tumor size value set"
Description:     "Acceptable units for measuring tumor size"
* UCUM#mm        "Millimeter"
* UCUM#cm        "Centimeter"
* ^status = #draft
* ^experimental = true


ValueSet:        TumorSizeMethodVS
Id: mcode-tumor-size-method-vs
Title:           "Methods for measuring tumor size"
Description:     "Methods for measuring tumor size"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LNC#24419-4 "Pathology report gross observation"
* LNC#29544-4 "Physical findings"
* LNC#18748-4 "Diagnostic imaging study"
* ^status = #draft
* ^experimental = true
