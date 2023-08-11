// This profile requires an exception from the CGP WG for use of Observation
// In USCore STU6, it could be based on the SimpleObservation profile, but that does not exist in STU5
Profile: HistoryOfMetastaticCancer
Parent: Observation 
Id: mcode-history-of-metastatic-cancer
Title: "History of Metastatic Cancer"
Description: "Records the existence of a past episode of metastatic cancer, for the purpose of long term management and tracking."
* code = SCT_TBD#1287652008 // "History of metastatic malignant neoplasm (situation)" 
* value[x] only boolean // If false indicates no history of metastatic cancer
* value[x] 0..1 MS ?!  // modifies meaning of the observation
* value[x] ^defaultValueBoolean = true   // If absent, value is true.  
