Profile: TumorSize 
Parent:  Observation
Id: mcode-tumor-size
Title: "Tumor Size Profile"
Description:  "Records the dimensions of a tumor"
// LOINC code indicating this is a tumor size observation
* ^extension[FMM].valueInteger = 3
* code = LNC#21889-1 //"Size Tumor"
* subject ^short = "The patient whose tumor was measured."
* subject ^definition = "The patient whose tumor was measured. SHALL be a `Patient` resource conforming to `CancerPatient`."
* subject 1..1
* subject only Reference(CancerPatient)
* focus 0..1
* focus only Reference(Tumor)
* focus ^short = "Identifies a tumor that has NOT been removed from the body"
* focus ^definition = "Reference to a BodyStructure resource conforming to Tumor."
* focus ^comment = "Use **only** when the tumor **has not** been removed from the body. If the tumor has been removed, use `specimen` instead and leave `focus` empty."
* specimen only Reference(HumanSpecimen)
* specimen ^short = "Identifies a tumor that has been removed from the body"
* specimen ^definition = "Reference to a Specimen resource consistent with HumanSpecimen with type = http://terminology.hl7.org/CodeSystem/v2-0487#TUMOR."
* specimen ^comment = "Use specimen **only** when the tumor **has** been removed from the body. If the tumor has been not removed, use `focus` instead and leave `specimen` empty."
* obeys must-have-focus-or-specimen-invariant
* method from TumorSizeMethodVS (extensible)
* method ^short = "Method for measuring the tumor"
* method ^definition = "Method for measuring the tumor"
* method ^comment = "Tumors are typically measured via gross pathology after excision, or via diagnostic imaging or physical exam prior to removal. If `specimen` is set, `method` is expected to be a \"gross pathology\" code. If `focus` is set, `method` is expected to be a type of diagnostic imaging or physical exam."
* insert ObservationComponentSlicingRules
// Require 1 dimension; the additional dimensions are optional
* insert CreateComponent(tumorLongestDimension, 1, 1)
* insert CreateComponent(tumorOtherDimension, 0, 2)
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
// Group the MustSupports to make it easier to see what's what
* subject and code and effective[x] and component and method and specimen and focus MS
* insert NotUsed(value[x])

// This invariant has been exhaustively tested with the FHIR validator
Invariant: must-have-focus-or-specimen-invariant
Description: "Either `focus` OR `specimen` MUST be populated"
Expression: "(focus.exists() or specimen.exists()) and (focus.exists() and specimen.exists()).not()"
Severity: #error


// OPEN QUESTION: How do we indicate that a tracked tumor has been surgically removed? Some sort of status? Specimen.active is the only possibility in BodyStructure, but the definition doesn't lend itself to this purpose.
Profile: Tumor
Parent:  BodyStructure
Id: mcode-tumor
Title: "Tumor Profile"
Description:  "Identifies a tumor that has not been removed from the body. Whenever possible, a single resource conforming to this profile will be used to track a tumor over time (as opposed to creating new Tumor-conforming BodyStructure resources each time that tumor is measured). Use HumanSpecimen to represent the tumor after removal from the body."
* ^extension[FMM].valueInteger = 3
* patient only Reference(CancerPatient)
* patient ^definition = "The patient associated with this tumor."
// The purpose of this profile is to uniquely identify a tumor, so it follows that there must be at least one identifier value provided
* identifier ^short = "Stable identifier(s) for this tumor"
* identifier ^definition = "Stable identifier(s) for this specific tumor. The identifiers MUST be unique within the context of the referenced `CancerPatient`."
* identifier ^comment = "If applicable, an identifier should correspond to the physical tag inserted into the tumor during a procedure that is used for tracking the tumor by radiology and pathology."
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice containing at least one tumor identifier"
* identifier contains bodyStructureIdentifier 1..*
* identifier[bodyStructureIdentifier] only BodyStructureIdentifier
* identifier[bodyStructureIdentifier] ^short = "A persistent identifier of this tumor."
* identifier[bodyStructureIdentifier] ^definition = "A persistent identifier used to identify and track the tumor over time. The identifier must be unique in the context of the patient."
* morphology = SCT#367651003 "Malignant neoplasm of primary, secondary, or uncertain origin (morphologic abnormality)"
// This VS is used for the primary/secondary cancer conditions; rule set here for consistency with these profiles.
* location from CancerBodyLocationVS (extensible)
* location 1..1 // Tumor is meaningless without a location; parent profile is 0..1
* locationQualifier from BodyLocationAndLateralityQualifierVS (required)
// Related cancer condition
* extension contains RelatedCondition named relatedCondition 0..1
* extension[relatedCondition].value[x] only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* extension[relatedCondition] ^short = "Reference to cancer condition associated with this tumor"
* extension[relatedCondition] ^definition = "Associates this tumor with a cancer condition. This could be a causal association (e.g., this is believed to be the primary tumor causing the cancer) or a different type of relationship (e.g., this tumor is a metastasis)"
// Gather MS in one place
* identifier and location and morphology and locationQualifier and patient and extension and extension[relatedCondition] and extension[relatedCondition].value[x] MS

Profile: BodyStructureIdentifier
Parent: Identifier
Id: mcode-body-structure-identifier
Title: "Body Structure Identifier Profile"
Description: "An identifier that designates a body structure such as a tumor and can be used for tracking the structure over time."
* ^extension[FMM].valueInteger = 3
* type = http://hl7.org/fhir/resource-types#BodyStructure
* value 1..1
* use = #usual

/* Commenting out MultifocalTumor observation for now
Issues to consider further:
1) Does this rise to the level of "minimal"?
2) You were missing Observation.code that says what is being observed.
3) Is this an Observation or a Condition? Conditions are uni-valued findings, while Observations need a question (code) and an answer set (value[x]). Observations on a HumanSpecimen are not Conditions although it is arguable that a multifocal tumor in the body could be modeled as a Condition.
4) If this is modeled as an Observation, then what is the question and what are the possible answers? Are we playing Jeopardy where the answer is "multi-focal"? Or is the question something about morphology, and "multi-focal" is among the possible answers?
5) I know we convinced ourselves otherwise, but we shouldn't forget the option of allowing a value set for Tumor.morphology (perhaps by slicing Tumor.morphology and fixing the first code.)

Profile: MultifocalTumor
Parent: USCoreClinicalTest
Id: mcode-multifocal-tumor
Title: "Multifocal Tumor Observation Profile"
Description: "Identifies multiple [Tumor](StructureDefinition-mcode-tumor.html) or [HumanSpecimen](StructureDefinition-mcode-tumor-specimen.html)-conforming resources as part of a multifocal tumor."
* ^status = #draft
* ^experimental = true
* valueCodeableConcept = SCT#399506006 "Multifocal tumor (finding)"
* focus only Reference(Tumor or HumanSpecimen)
* focus MS
* focus ^short = "References individual masses that comprise the multifocal tumor"
* focus ^definition = "If [Tumor](StructureDefinition-mcode-tumor.html) or [HumanSpecimen](StructureDefinition-mcode-tumor-specimen.html) are used to represent this multifocal tumor, or are used to represent multiple masses that comprise the multifocal tumor, they SHOULD be referenced here. If the same tumor is represented by both [Tumor](StructureDefinition-mcode-tumor.html) and [HumanSpecimen](StructureDefinition-mcode-tumor-specimen.html) at the time the multifocal observation was made, both resources SHOULD be referenced in `focus`."
* subject only Reference(CancerPatient)
* subject MS
* status MS
* effective[x] only dateTime
* effective[x] MS
*/