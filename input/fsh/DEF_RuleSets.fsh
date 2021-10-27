RuleSet: ObservationComponentSlicingRules
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"

RuleSet: CategorySlicingRules
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing requires the given value but allows additional categories"

RuleSet: ObservationHasMemberSlicingRules
* hasMember ^slicing.discriminator.type = #pattern  // #profile
* hasMember ^slicing.discriminator.path = "$this.resolve().code"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Slicing based on referenced resource code attribute."

RuleSet: DiagnosticReportResultSlicingRules
* result ^slicing.discriminator.type = #pattern
* result ^slicing.discriminator.path = "$this.resolve().code"
* result ^slicing.rules = #open
* result ^slicing.description = "Slice based on the reference profile and code pattern"

/* MustSupportOnReference applies an MS flag to a selected reference. For example in Reference(Patient or Practitioner), an MS can be put on Practitioner without a MS on Patient. In some cases, this might better than using an "only" rule
For example, given that Practitioner is element [1] in the element "recorder":
* insert MustSupportOnReference(recorder, 1)
*/
RuleSet: MustSupportOnReference(path, refIndex)
* {path} ^type[0].targetProfile[{refIndex}].extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* {path} ^type[0].targetProfile[{refIndex}].extension[0].valueBoolean = true

RuleSet: NotUsed(path)
* {path} ^short = "Not used in this profile"
* {path} ^definition = "Not used in this profile"

RuleSet: CreateComponent(sliceName, min, max)
* component contains {sliceName} {min}..{max} MS
* component[{sliceName}].code MS
* component[{sliceName}].value[x] MS
* component[{sliceName}].dataAbsentReason MS  // US Core wants dataAbsentReason retained

RuleSet: CreateComorbidityComponent(sliceName)
* component contains {sliceName} 0..1 MS
* component[{sliceName}].code MS
* component[{sliceName}].value[x] MS
* component[{sliceName}].dataAbsentReason MS
* component[{sliceName}].extension MS
* component[{sliceName}].extension[conditionCode] MS
* component[{sliceName}].extension[conditionReference] MS

RuleSet: BundleSlice(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}
* entry[{name}].resource.meta.profile = Canonical({class})

RuleSet: SNOMEDCTCopyrightForVS
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
