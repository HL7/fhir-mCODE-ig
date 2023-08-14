// This profile requires an exception from the CGP WG for use of Observation
// In USCore STU6, it could be based on the SimpleObservation profile, but that does not exist in STU5
Profile: HistoryOfMetastaticCancer
Parent: Observation 
Id: mcode-history-of-metastatic-cancer
Title: "History of Metastatic Cancer"
Description: "Records the existence of a past episode of metastatic cancer, for the purpose of long term management and tracking."
* code = HistoryOfMetastaticMalignantNeoplasmVS (required)
* value[x] only boolean // If false indicates no history of metastatic cancer
* value[x] 0..1 MS ?!  // modifies meaning of the observation
* value[x] ^defaultValueBoolean = true   // If absent, value is true.  

ValueSet: HistoryOfMetastaticMalignantNeoplasmVS
Id: mcode-history-of-metastatic-malignant-neoplasm-vs
Title: "History of Metastatic Malignant Neoplasm Value Set"
Description: "Values defining history of metastatic cancer."
* insert SNOMEDCopyrightForVS
// WHen code is issued, this VS should include the new code AND its children
// * include codes from system SCT where concept is-a #1287652008 "History of metastatic malignant neoplasm (situation)"
* include codes from system SCT_TBD where concept is-a #1287652008 "History of metastatic malignant neoplasm (situation)"