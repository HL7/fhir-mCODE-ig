// Instance: GetPatientBundleOperation
// InstanceOf: OperationDefinition
// Description: "tbd"
// Usage: #definition

// * id = "mcode-get-patient-bundle"
// * name = "GetPatientBundle"
// * title = "Retrieve a patient bundle"
// * status = #draft
// * kind = #operation
// * code = #mcode-patient-bundle
// * base = "http://hl7.org/fhir/OperationDefinition/Claim-submit"
// * system = true
// * type = false
// * instance = false
// * parameter[0].name = #id
// * parameter[0].use = #in
// * parameter[0].min = 1
// * parameter[0].max = "1"
// * parameter[0].documentation = "Patient id"
// * parameter[0].type = #string
// * parameter[1].name = #return
// * parameter[1].use = #out
// * parameter[1].min = 11
// * parameter[1].max = "1"
// * parameter[1].documentation = "A Bundle containing a single ClaimResponse plus referenced resources."
// * parameter[1].type = #Bundle