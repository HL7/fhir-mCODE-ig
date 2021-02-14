
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
* hasMember ^slicing.discriminator.path = "$this.resolve().code" // "$this.resolve()" 
* hasMember ^slicing.rules = #closed // this might not be general but good for TNM components
* hasMember ^slicing.description = "Slicing based on referenced resource code attribute."

RuleSet: DiagnosticReportResultSlicingRules
* result ^slicing.discriminator.type = #pattern
* result ^slicing.discriminator.path = "$this.resolve().code"
* result ^slicing.rules = #open
* result ^slicing.description = "Slice based on the reference profile and code pattern"

RuleSet: SliceOnProfile(slicedElementPath, discriminatorPath)
* {slicedElementPath} ^slicing.discriminator.type = #profile
* {slicedElementPath} ^slicing.discriminator.path = "{discriminatorPath}"
* {slicedElementPath} ^slicing.rules = #open
* {slicedElementPath} ^slicing.description = "Slicing based on the profile conformance of the sliced element"

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
* component[{sliceName}].extension ^definition = "-"
* component[{sliceName}].extension ^comment = "-"
* component[{sliceName}].extension ^requirements = "-"
* component[{sliceName}].modifierExtension ^definition = "-"
* component[{sliceName}].modifierExtension ^comment = "-"
* component[{sliceName}].modifierExtension ^requirements = "-"
* component[{sliceName}].modifierExtension 0..0

RuleSet: CreateComorbidityComponent(sliceName)
* component contains {sliceName} 0..1 MS
* component[{sliceName}].code MS
* component[{sliceName}].value[x] MS
* component[{sliceName}].dataAbsentReason MS
* component[{sliceName}].extension MS
* component[{sliceName}].extension[conditionCode] MS
* component[{sliceName}].extension[conditionReference] MS

RuleSet: ReduceText
* extension ^definition = "-"
* extension ^comment = "-"
* extension ^requirements = "-"
* modifierExtension ^definition = "-"
* modifierExtension ^comment = "-"
* modifierExtension ^requirements = "-"
* modifierExtension 0..0 

RuleSet: ReduceText(path)
* {path}.extension ^definition = "-"
* {path}.extension ^comment = "-"
* {path}.extension ^requirements = "-"
* {path}.modifierExtension ^definition = "-"
* {path}.modifierExtension ^comment = "-"
* {path}.modifierExtension ^requirements = "-"
* {path}.modifierExtension 0..0

RuleSet: ReduceText2(path)
* {path}.extension ^definition = "-"
* {path}.extension ^comment = "-"
* {path}.extension ^requirements = "-"

