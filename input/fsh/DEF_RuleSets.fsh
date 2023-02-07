RuleSet: ObservationComponentSlicingRules
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"

RuleSet: CategorySlicingRules
* category 1.. MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing requires the given value but allows additional categories"
* category contains requiredCategory 1..1

RuleSet: SliceReferenceOnProfile(path)
* {path} ^slicing.discriminator.type = #profile
* {path} ^slicing.discriminator.path = "$this.resolve()"
* {path} ^slicing.rules = #open
* {path} ^slicing.description = "Slicing based on profile conformance of the referenced resource."

RuleSet: BundleSlice(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}
//* entry[{name}].resource.meta.profile = Canonical({class})

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
//* component[{sliceName}].dataAbsentReason MS

RuleSet: SNOMEDCopyrightForVS
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

RuleSet: LOINCCopyrightForVS
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

RuleSet: BodySiteQualifierAndLaterality(path)
// path is the bodySite element that gets the qualifier and laterality extension
// may just be bodySite for elements at the top level
* {path}.extension contains
     BodyLocationQualifier named locationQualifier 0..*   and
     LateralityQualifier named lateralityQualifier 0..1
* {path}.extension[locationQualifier] ^short = "General location qualifier (excluding laterality) for this bodySite"
* {path}.extension[locationQualifier] ^definition = "General location qualifier (excluding laterality) for this bodySite"
* {path}.extension[lateralityQualifier] ^short = "Laterality qualifier for this bodySite"
* {path}.extension[lateralityQualifier] ^definition = "Laterality qualifier for this bodySite"
