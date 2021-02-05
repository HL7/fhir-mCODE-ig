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

* focus 0..1
* focus only Reference(Tumor)
* focus ^short = "Identifies a tumor that has not been excised"
* focus ^definition = "Reference to a BodyStructure resource conforming to Tumor."
* focus ^comment = "Use **only** when the tumor **has not** been removed from the body. If the tumor has been removed, use `specimen` instead and leave `focus` empty."
* focus MS

* specimen ^short = "Identifiers a tumor that has been excised"
* specimen ^definition = "Reference to a BodyStructure resource conforming to Tumor."
* specimen ^comment = "Use **only** when the tumor **has** been removed from the body. If the tumor has been not removed, use `focus` instead and leave `specimen` empty."
* specimen MS

* obeys must-have-focus-or-specimen-invariant

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

// This invariant has been exhaustively tested with the FHIR validator
Invariant: must-have-focus-or-specimen-invariant
Description: "Either `focus` OR `specimen` MUST be populated"
Expression: "(focus.exists() or specimen.exists()) and (focus.exists() and specimen.exists()).not()"
Severity: #error



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

// Use locationQualifier to identify a multifocal tumor, in addition to modifying body site
* locationQualifier from http://hl7.org/fhir/ValueSet/bodystructure-relative-location (example)
* locationQualifier ^short = "Body site modifier, and/or code identifying multifocal tumor"
* locationQualifier ^slicing.discriminator.type = #pattern
* locationQualifier ^slicing.discriminator.path = "$this.resolve().coding.code"
* locationQualifier ^slicing.rules = #open
* locationQualifier ^slicing.description = "Slicing by code to identify multifocal tumors"
* locationQualifier contains multifocalTumor 0..* MS
* locationQualifier[multifocalTumor].coding.code = SCT#524008 "Multifocal (qualifier value)"
* locationQualifier[multifocalTumor] ^short = "Use to identify a multifocal tumor"
* locationQualifier[multifocalTumor].coding.code ^short = "SNOMED 524008 \"Multifocal (qualifier value)\""

Invariant: tumor-other-morphology-invariant
Description: "If the code representing 'Other histology morphology behavior, specify' is used, a second code from outside the original value set must be present. The second code MUST NOT represent a concept in or subsumed by any concept in the original value set."
Expression: "coding.where(code = 'HMB-OTHER').exists() implies coding.where(code != 'HMB-OTHER' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-histology-morphology-behavior-vs').not()).exists()"
Severity: #error


// Based on UnitsOfLengthVS, but limited to just mm and cm. In theory we could just use UnitsOfLengthVS if we don't care about restricting to just cm/mm.
ValueSet:        TumorSizeUnitsVS
Id:              mcode-tumor-size-units-vs
Title:           "Units of tumor size value set"
Description:     "Acceptable units for measuring tumor size"
* UCUM#mm        "Millimeter"
* UCUM#cm        "Centimeter"
* ^status = #draft
* ^experimental = true

ValueSet:        TumorSizeMethodVS
Id:              mcode-tumor-size-method-vs
Title:           "Methods for measuring tumor size"
Description:     "There are 3 broad categories of tumor size measurement methods:

1. Pathology
    - Macroscopic size from pathology report is represented by SCT `168455000` (\"Gross pathology (finding)\")
    - Microscopic size from pathology report is represented by SCT `104157003` (\"Light microscopy (procedure)\")

2. Physical exam, represented by SCT `5880005` (\"Physical examination procedure (procedure)\")

3. Diagnostic imaging, represented by descendants of LOINC part code `LP29684-5` (\"Radiology\")"
* ^status = #draft
* ^experimental = true

// Pathology
* SCT#168455000 "Gross pathology (finding)"
* SCT#104157003 "Light microscopy (procedure)"

// Physical exam
* SCT#5880005 "Physical examination procedure (procedure)"

// Diagnostic imaging
* SCT#363679005 "Imaging (procedure)"
* SCT#16310003 "Diagnostic ultrasonography (procedure)"
* SCT#113091000 "Magnetic resonance imaging (procedure)"
* SCT#77477000 "Computerized axial tomography (procedure)"
* SCT#44491008 "Fluoroscopy (procedure)"