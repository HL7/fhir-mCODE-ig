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
Description:  "Identifies a tumor that has not been removed from the body. Whenever possible, a single resource conforming to this profile will be used to track a tumor over time (as opposed to creating new Tumor-conforming BodyStructure resources each time that tumor is measured). Use [TumorSpecimen](StructureDefinition-mcode-tumor-specimen.html) to represent the tumor after removal from the body."
* ^status = #draft
* ^experimental = true
// The purpose of this profile is to uniquely identify a tumor, so it follows that there must be at least one identifier value provided
* identifier 1.. MS
* identifier ^short = "Stable identifier of this specific tumor"
* identifier ^definition = "Stable identifier of this specific tumor, should be unique within the referenced `CancerPatient`."
* identifier ^comment = "If applicable, this should correspond to the physical tag inserted into the tumor during a procedure that is used for tracking the tumor by radiology and pathology."
* morphology = SCT#367651003 "Malignant neoplasm of primary, secondary, or uncertain origin (morphologic abnormality)"
// This VS is used for the primary/secondary cancer conditions; rule set here for consistency with these profiles.
* location from CancerBodyLocationVS (extensible)
* location 1..1 MS // Tumor is meaningless without a location; parent profile is 0..1
* locationQualifier from LocationQualifierVS (example)

* patient only Reference(CancerPatient)

* extension contains ConditionRelated named conditionAssociatedWithTumor 0..1 MS
* extension[conditionAssociatedWithTumor].value[x] only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* extension[conditionAssociatedWithTumor] ^short = "Reference to cancer condition associated with this tumor"
* extension[conditionAssociatedWithTumor] ^definition = "Associates this tumor with a cancer condition. This could be a causal association (e.g., this is believed to be the primary tumor causing the cancer) or a different type of relationship (e.g., this tumor is a metastasis "



Invariant: tumor-other-morphology-invariant
Description: "If the code representing 'Other histology morphology behavior, specify' is used, a second code from outside the original value set must be present. The second code MUST NOT represent a concept in or subsumed by any concept in the original value set."
Expression: "coding.where(code = 'HMB-OTHER').exists() implies coding.where(code != 'HMB-OTHER' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-histology-morphology-behavior-vs').not()).exists()"
Severity: #error



CodeSystem: TumorIdentifierCS
Id: mcode-tumor-identifier-cs
Title: "mCODE Tumor Identifier Code"
Description: "Code used to specify that a given identifier is for a tumor."
* #tumor-identifier

Profile: TumorSpecimen
Parent: Specimen
Id: mcode-tumor-specimen
Title: "Tumor Specimen"
Description: "Represents a tumor after it has been removed from the body. Prior to excision, use [Tumor](StructureDefinition-mcode-tumor.html) (a BodyStructure) instead. If this tumor was represented by [Tumor](StructureDefinition-mcode-tumor.html) while still in the body, use `identifier` to associate with that resource."
* ^status = #draft
* ^experimental = true
* type = SCT#108369006 "Neoplasm (morphologic abnormality)"
* subject only Reference(CancerPatient)
* collection.bodySite MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing by code to identify tumor identifier"
* identifier contains tumorIdentifier 0..* MS
* identifier[tumorIdentifier].type.coding.code = TumorIdentifierCS#tumor-identifier
* identifier[tumorIdentifier] ^short = "Identifier to associate this resource with a specific Tumor"
* identifier[tumorIdentifier] ^definition = "To associate this with a specific BodyStructure conforming to the Tumor profile, add an identifier with a value that matches a persistent identifier from `BodyStructure.identifier.value` that is unique in the context of the Patient."
* identifier[tumorIdentifier].type.coding.code ^short = "Fixed to \"tumor-identifier\""
* identifier[tumorIdentifier].value 1..1 MS
* identifier[tumorIdentifier].value ^short = "Identifer matching Tumor's identifier value"
* identifier[tumorIdentifier].value ^definition = "If this Specimen is a tumor that was represented by a BodyStructure resource conforming to [Tumor](StructureDefinition-mcode-tumor.html) before removal, this value MUST match an `identifier` value from that BodyStructure resource that is persistent over time and unique with in the context of the Patient."
* extension contains ConditionRelated named conditionAssociatedWithTumor 0..1 MS
* extension[conditionAssociatedWithTumor].value[x] only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* extension[conditionAssociatedWithTumor] ^short = "Reference to the cancer condition associated with this tumor"
* extension[conditionAssociatedWithTumor] ^definition = "Associates this tumor with a cancer condition."