Instance: mcode-patient-everything
InstanceOf: OperationDefinition
Description: "Gets an [mCODE Patient Bundle](StructureDefinition-mcode-patient-bundle.html) for a specific patient that contains all of that patient's resources that conform to mCODE Profiles."
Usage: #definition

* name = "Fetch_mCODE_patient_bundle"
* title = "Fetch mCODE Patient Bundle for a given Patient"
* status = #draft
* kind = #operation
* code = #mcode-everything
* system = false
* type = false
* instance = true
* resource[0] = #Patient

// Parameter: Patient ID
* parameter[+].name = #id
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Patient ID"
* parameter[=].type = #string

// Parameter: Start
* parameter[+].name = #start
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The date range relates to filtering by date for a subset of resources in the Bundle. If no start date is provided, all records prior to the end date are in scope. Filtering is inclusive (i.e., if `start=2020-01-01`, records from January 1, 2020 are in scope)."
* parameter[=].type = #date

// Parameter: End
* parameter[+].name = #end
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The date range relates to filtering by date for a subset of resources in the Bundle. If no end date is provided, all records subsequent to the start date are in scope.  Filtering is inclusive (i.e., if `end=2020-09-01`, records from September 1, 2020 are in scope)."
* parameter[=].type = #date

// Output
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A Bundle conforming to [`MCODEPatientBundle`](StructureDefinition-mcode-patient-bundle.html)."
* parameter[=].type = #Bundle