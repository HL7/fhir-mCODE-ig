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
    ConditionSlice 0..1

* rest.resource[PatientSlice].type = #Patient (exactly)
* rest.resource[BundleSlice].type = #Bundle (exactly)
* rest.resource[ConditionSlice].type = #Condition (exactly)

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-receiver-push
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the requirements for an mCODE Data Receiver in the Push model"
* status = #draft
* experimental = true
* name = "mCODEReceiver_push"
* title = "mCODE Data Receiver - Push"
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* description = "Defines the additional requirements for the mCODE Data Receiver implementing the Push model"
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"

* rest[serverSlice].mode = #server

// Support for `POST [base]/Patient` and `PUT [base]/Patient/[id]`
* rest[serverSlice].resource[PatientSlice].type = #Patient
* rest[serverSlice].resource[PatientSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

* rest[serverSlice].resource[PatientSlice].interaction[0].code = #create
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[PatientSlice].interaction[1].code = #update
* rest[serverSlice].resource[PatientSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[1].extension.valueCode = #SHALL

// Support for `POST [base]/Bundle` and `PUT [base]/Bundle/[id]`
* rest[serverSlice].resource[BundleSlice].type = #Bundle
* rest[serverSlice].resource[BundleSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle"

* rest[serverSlice].resource[BundleSlice].interaction[0].code = #create
* rest[serverSlice].resource[BundleSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[BundleSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[BundleSlice].interaction[1].code = #update
* rest[serverSlice].resource[BundleSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[BundleSlice].interaction[1].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-push
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the requirements for an mCODE Data Sender in the Push model"
* status = #draft
* experimental = true
* name = "mCODESender_push"
* title = "mCODE Data Sender - Push"
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* description = "Defines the additional requirements for the mCODE Data Sender implementing the Push model"
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"

* rest[clientSlice].mode = #client

// Support for `POST [base]/Patient` and `PUT [base]/Patient/[id]`
* rest[clientSlice].resource[PatientSlice].type = #Patient
* rest[clientSlice].resource[PatientSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

* rest[clientSlice].resource[PatientSlice].interaction[0].code = #create
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[PatientSlice].interaction[1].code = #update
* rest[clientSlice].resource[PatientSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[1].extension.valueCode = #SHALL

// Support for `POST [base]/Bundle` and `PUT [base]/Bundle/[id]`
* rest[clientSlice].resource[BundleSlice].type = #Bundle
* rest[clientSlice].resource[BundleSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle"

* rest[clientSlice].resource[BundleSlice].interaction[0].code = #create
* rest[clientSlice].resource[BundleSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[BundleSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[BundleSlice].interaction[1].code = #update
* rest[clientSlice].resource[BundleSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[BundleSlice].interaction[1].extension.valueCode = #SHALL

///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-sender-pull
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the requirements for an mCODE Data Sender in the Pull model"
* status = #draft
* experimental = true
* name = "mCODESender_pull"
* title = "mCODE Data Sender - Pull"
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* description = "Defines the additional requirements for the mCODE Data Sender implementing the Pull model"
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"

* rest[serverSlice].mode = #server

* rest[serverSlice].resource[PatientSlice].type = #Patient
* rest[serverSlice].resource[PatientSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"


// GET [base]/Patient/[id] - KEEP IN SYNC with mcode-sender-pull-fallback
// TODO: is this the correct way to specify this? Do I need an additional `searchParam` to specify `[id]`?
// TODO: this API operation is not described in `conformance.md`
* rest[serverSlice].resource[PatientSlice].interaction[0].code = #read
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL


// GET [base]/Patient/_profile=...
* rest[serverSlice].resource[PatientSlice].interaction[1].code = #search-type
* rest[serverSlice].resource[PatientSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[1].extension.valueCode = #SHALL
* rest[serverSlice].resource[PatientSlice].interaction[1].documentation = "Note that this is documented as SHALL...UNLESS on the [Conformance page](conformance.html). Systems that meet the criteria to not implement this operation should use `mcode-sender-pull-fallback` instead of this CapabilityStatement."

* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_profile"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #token
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL


// GET [base]/$mcode-patient-bundle/[id] - KEEP IN SYNC with mcode-sender-pull-fallback
* rest[serverSlice].operation[0].name = "mcode-patient-bundle"
* rest[serverSlice].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[serverSlice].operation[0].extension.url = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[serverSlice].operation[0].extension.valueCode = #SHALL


Instance: mcode-sender-pull-fallback
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the fallback requirements for an mCODE Data Sender in the Pull model, as described on the [Conformance page](conformance.html)."
* status = #draft
* experimental = true
* name = "mCODESender_pull_fallback"
* title = "mCODE Data Sender - Pull (fallback)"
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* description = "Defines the fallback requirements for the mCODE Data Sender implementing the Pull model"
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"

* rest[serverSlice].mode = #server

* rest[serverSlice].resource[PatientSlice].type = #Patient
* rest[serverSlice].resource[PatientSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"


// GET [base]/Patient/[id] - KEEP IN SYNC with mcode-sender-pull-fallback
// GET [base]/Patient?_id=some_patient_id_1,some_patient_id_2,...,some_patient_id_n
// TODO: is this the correct way to specify this? Do I need an additional `searchParam` to specify `[id]`?
// TODO: this API operation is not described in `conformance.md`
* rest[serverSlice].resource[PatientSlice].interaction[0].code = #read
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL


// GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* rest[serverSlice].resource[PatientSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHOULD
* rest[serverSlice].resource[PatientSlice].interaction[0].documentation = "Note that this is documented as SHALL...UNLESS on the [Conformance page](conformance.html). Please refer there to determine which of the `Patient`-related operations should be implemented."

* rest[serverSlice].resource[PatientSlice].searchParam[0].name = "_has:Condition:subject:code:in"
* rest[serverSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL


// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject
// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* rest[serverSlice].resource[ConditionSlice].type = #Condition
* rest[serverSlice].resource[ConditionSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

* rest[serverSlice].resource[ConditionSlice].interaction[0].code = #search-type
* rest[serverSlice].resource[ConditionSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].interaction[0].extension.valueCode = #SHOULD
* rest[serverSlice].resource[ConditionSlice].interaction[0].documentation = "Note that this is documented as SHALL...UNLESS on the [Conformance page](conformance.html). Please refer there to determine which of the `Patient`-related operations should be implemented."

* rest[serverSlice].resource[ConditionSlice].searchParam[0].name = "code:in"
* rest[serverSlice].resource[ConditionSlice].searchParam[0].type = #uri
* rest[serverSlice].resource[ConditionSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].searchParam[0].extension.valueCode = #SHALL

* rest[serverSlice].resource[ConditionSlice].searchParam[1].name = "_include"
* rest[serverSlice].resource[ConditionSlice].searchParam[1].type = #uri
* rest[serverSlice].resource[ConditionSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[serverSlice].resource[ConditionSlice].searchParam[1].extension.valueCode = #SHOULD // Marked as SHOULD to support both of the GET requests described above


// GET [base]/$mcode-patient-bundle/[id] - KEEP IN SYNC with mcode-sender-pull
* rest[serverSlice].operation[0].name = "mcode-patient-bundle"
* rest[serverSlice].operation[0].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[serverSlice].operation[0].extension.url = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[serverSlice].operation[0].extension.valueCode = #SHALL


///////////////////////////////////////////////////////////////////////////////////////////////////

Instance: mcode-receiver-pull
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the requirements for an mCODE Data Sender in the Pull model"
* status = #draft
* experimental = true
* name = "mCODEReceiver_pull"
* title = "mCODE Data Receiver - Pull"
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* description = "Defines the additional requirements for the mCODE Data Receiver implementing the Pull model"
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"

* rest[clientSlice].mode = #client

* rest[clientSlice].resource[PatientSlice].type = #Patient
* rest[clientSlice].resource[PatientSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"


// GET [base]/Patient/[id] - KEEP IN SYNC with mcode-sender-pull-fallback
// TODO: is this the correct way to specify this? Do I need an additional `searchParam` to specify `[id]`?
// TODO: this API operation is not described in `conformance.md`
* rest[clientSlice].resource[PatientSlice].interaction[0].code = #read
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL


// GET [base]/Patient/_profile=...
* rest[clientSlice].resource[PatientSlice].interaction[1].code = #search-type
* rest[clientSlice].resource[PatientSlice].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[1].extension.valueCode = #SHALL
* rest[clientSlice].resource[PatientSlice].interaction[1].documentation = "Note that this is documented as SHALL...UNLESS on the [Conformance page](conformance.html). Systems that meet the criteria to not implement this operation should use `mcode-sender-pull-fallback` instead of this CapabilityStatement."

* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_profile"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #token
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL


// GET [base]/$mcode-patient-bundle/[id] - KEEP IN SYNC with mcode-sender-pull-fallback
* rest[clientSlice].operation[0].name = "mcode-patient-bundle"
* rest[clientSlice].operation[0].definition = "OperationDefinition/mcode-get-patient-bundle"
* rest[clientSlice].operation[0].extension.url = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[clientSlice].operation[0].extension.valueCode = #SHALL


Instance: mcode-receiver-pull-fallback
InstanceOf: MCodeCapabilityStatement
Usage: #definition
Description: "Defines the fallback requirements for an mCODE Data Receiver in the Pull model, as described on the [Conformance page](conformance.html)."
* status = #draft
* experimental = true
* name = "mCODEReceiver_push_fallback"
* title = "mCODE Data Receiver - Pull (fallback)"
* date = "2020-10-30T07:15:00.000000-04:00"
* kind = #requirements
* description = "Defines the fallback requirements for the mCODE Data Receivers implementing the Pull model"
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* implementationGuide = "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode"

* rest[clientSlice].mode = #client

* rest[clientSlice].resource[PatientSlice].type = #Patient
* rest[clientSlice].resource[PatientSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"


// GET [base]/Patient/[id] - KEEP IN SYNC with mcode-sender-pull-fallback
// GET [base]/Patient?_id=some_patient_id_1,some_patient_id_2,...,some_patient_id_n
// TODO: is this the correct way to specify this? Do I need an additional `searchParam` to specify `[id]`?
// TODO: this API operation is not described in `conformance.md`
* rest[clientSlice].resource[PatientSlice].interaction[0].code = #read
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_id"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL


// GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* rest[clientSlice].resource[PatientSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].interaction[0].extension.valueCode = #SHOULD
* rest[clientSlice].resource[PatientSlice].interaction[0].documentation = "Note that this is documented as SHALL...UNLESS on the [Conformance page](conformance.html). Please refer there to determine which of the `Patient`-related operations should be implemented."

* rest[clientSlice].resource[PatientSlice].searchParam[0].name = "_has:Condition:subject:code:in"
* rest[clientSlice].resource[PatientSlice].searchParam[0].type = #uri
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[PatientSlice].searchParam[0].extension.valueCode = #SHALL


// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject
// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs
* rest[clientSlice].resource[ConditionSlice].type = #Condition
* rest[clientSlice].resource[ConditionSlice].supportedProfile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"

* rest[clientSlice].resource[ConditionSlice].interaction[0].code = #search-type
* rest[clientSlice].resource[ConditionSlice].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].interaction[0].extension.valueCode = #SHOULD
* rest[clientSlice].resource[ConditionSlice].interaction[0].documentation = "Note that this is documented as SHALL...UNLESS on the [Conformance page](conformance.html). Please refer there to determine which of the `Patient`-related operations should be implemented."

* rest[clientSlice].resource[ConditionSlice].searchParam[0].name = "code:in"
* rest[clientSlice].resource[ConditionSlice].searchParam[0].type = #uri
* rest[clientSlice].resource[ConditionSlice].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].searchParam[0].extension.valueCode = #SHALL

* rest[clientSlice].resource[ConditionSlice].searchParam[1].name = "_include"
* rest[clientSlice].resource[ConditionSlice].searchParam[1].type = #uri
* rest[clientSlice].resource[ConditionSlice].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[clientSlice].resource[ConditionSlice].searchParam[1].extension.valueCode = #SHOULD // Marked as SHOULD to support both of the GET requests described above


// GET [base]/$mcode-patient-bundle/[id] - KEEP IN SYNC with mcode-sender-pull
* rest[clientSlice].operation[0].name = "mcode-patient-bundle"
* rest[clientSlice].operation[0].definition = "OperationDefinition/mcode-get-patient-bundle"
* rest[clientSlice].operation[0].extension.url = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-get-patient-bundle"
* rest[clientSlice].operation[0].extension.valueCode = #SHALL