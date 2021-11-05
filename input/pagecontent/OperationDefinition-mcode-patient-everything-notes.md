```
Instance: mcode-patient-everything
InstanceOf: OperationDefinition
Title: "mcode-patient-everything"
Description: "Gets an [mCODE Patient Bundle](StructureDefinition-mcode-patient-bundle.html) for a specific patient that contains all of that patient's resources that conform to mCODE Profiles."
Usage: #definition
* url = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
* version = "2.0.0"
* name = "Fetch_mCODE_patient_bundle"
* title = "Fetch mCODE Patient Bundle for a given Patient"
* status = #draft
* kind = #operation
* date = "2021-11-03T17:39:06-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = #mcode-everything
* resource = #Patient
* system = false
* type = false
* instance = true
* parameter[0].name = #id
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Patient ID"
* parameter[=].type = #string
* parameter[+].name = #start
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The date range relates to filtering by date for a subset of resources in the Bundle. If no start date is provided, all records prior to the end date are in scope. Filtering is inclusive (i.e., if `start=2020-01-01`, records from January 1, 2020 are in scope)."
* parameter[=].type = #date
* parameter[+].name = #end
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The date range relates to filtering by date for a subset of resources in the Bundle. If no end date is provided, all records subsequent to the start date are in scope.  Filtering is inclusive (i.e., if `end=2020-09-01`, records from September 1, 2020 are in scope)."
* parameter[=].type = #date
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A Bundle conforming to [`MCODEPatientBundle`](StructureDefinition-mcode-patient-bundle.html)."
* parameter[=].type = #Bundle
```