Instance: SearchParameter-patients-by-profile
InstanceOf: SearchParameter
Title: "Search by _profile in Patients"
* status = #draft
* experimental = true
* url = "http://hl7.org/fhir/us/mcode/SearchParameter/SearchParameter-patients-by-profile"
* description = "This SearchParameter enables query of patients by meta.profile to identify resources conforming to CancerPatient."
* name = "patients-by-profile"
* code = #_profile
* base[0] = #Encounter
* type = #token
* expression = "hospitalization.dispositionCode"

* xpath = "f:hospitalization/f:dispositionCode"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true