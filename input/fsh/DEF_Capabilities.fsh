Profile: MCodeCapabilityStatement
Parent: CapabilityStatement
Title: "mCODE Capability Statement"
Description: "A Capability Statement for mCODE"

// Based on pattern from https://github.com/HL7/fhir-saner/blob/master/fsh/CapabilityStatements.fsh
* rest ^slicing.discriminator.type = #value
* rest ^slicing.discriminator.path = "mode"
* rest ^slicing.rules = #open
* rest ^slicing.description = "Slice based on the rest.mode pattern"
* rest contains clientSlice 0..1 and serverSlice 0..1
* rest[clientSlice].mode = #client (exactly)
* rest[serverSlice].mode = #server (exactly)

* rest.resource ^slicing.discriminator.type = #value
* rest.resource ^slicing.discriminator.path = "type"
* rest.resource ^slicing.rules = #open
* rest.resource ^slicing.description = "Slice based on the rest.resource.type pattern"
* rest.resource contains
    PatientSlice 0..1 and
    BundleSlice 0..1 and
    ConditionSlice 0..1 and
    GroupSlice 0..1

* rest.resource[PatientSlice].type = #Patient (exactly)
* rest.resource[BundleSlice].type = #Bundle (exactly)
* rest.resource[ConditionSlice].type = #Condition (exactly)
* rest.resource[GroupSlice].type = #Group (exactly)

///////////////////////////////////////////////////////////////////////////////////////////////////

// Common rules used in all CapabilityStatements below
RuleSet: mCODECapabilityStatementRules
* status = #draft
* experimental = true
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"