
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
* hasMember ^slicing.discriminator.type = #profile // #pattern
* hasMember ^slicing.discriminator.path =  "$this.resolve()" // "$this.resolve().code"
* hasMember ^slicing.rules = #open

RuleSet: DiagnosticReportResultSlicingRules
* result ^slicing.discriminator.type = #pattern
* result ^slicing.discriminator.path = "$this.resolve().code"
* result ^slicing.rules = #open
* result ^slicing.description = "Slice based on the reference profile and code pattern"

RuleSet: BundleEntrySlicingRules
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the entry"

RuleSet: MustSupportOnReference(path, refNumber)
* {path} ^type[0].targetProfile[{refNumber}].extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* {path} ^type[0].targetProfile[{refNumber}].extension[0].valueBoolean = true


/* Example of how the RuleSet is applied:
* basedOn MS
* insert MustSupportOnReference(basedOn, 1)
* insert MustSupportOnReference(basedOn, 3)
*/

RuleSet: NotUsed(path)
* {path} ^short = "Not used in this profile"
* {path} ^definition = "Not used in this profile"

