Instance: Operation-mcode-patient-everything
InstanceOf: OperationDefinition
Description: "Gets an [mCODE Patient Bundle](StructureDefinition-mcode-patient-bundle.html) for a specific patient that contains all of that patient's resources that conform to mCODE Profiles."
Usage: #definition

* id = "mcode-patient-everything"
* name = "fetch-mCODE-patient-bundle"
* title = "Fetch mCODE Patient Bundle for a given Patient"
* status = #draft
* kind = #operation
* code = #mcode-everything
* system = false
* type = false
* instance = true
* resource[0] = #Patient

// Parameter: Patient ID
* parameter[0].name = #id
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "Patient ID"
* parameter[0].type = #string

// Parameter: Start
* parameter[1].name = #start
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "The date range relates to filtering by date for a subset of resources in the Bundle. If no start date is provided, all records prior to the end date are in scope. Filtering is inclusive (i.e., if `start=2020-01-01`, records from January 1, 2020 are in scope)."
* parameter[1].type = #date

// Parameter: End
* parameter[2].name = #end
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "The date range relates to filtering by date for a subset of resources in the Bundle. If no end date is provided, all records subsequent to the start date are in scope.  Filtering is inclusive (i.e., if `end=2020-09-01`, records from September 1, 2020 are in scope)."
* parameter[2].type = #date

// Output
* parameter[3].name = #return
* parameter[3].use = #out
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "A Bundle conforming to [`MCODEPatientBundle`](StructureDefinition-mcode-patient-bundle.html)."
* parameter[3].type = #Bundle