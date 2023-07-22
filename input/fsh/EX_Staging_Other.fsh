Instance: binet-stage-group-A
InstanceOf: CLLBinetStage
Description: "Example of a non-TNM Stage Group (Binet staging for CLL)"
* code = NCIT#C141212 "Binet Stage"
// method is optional because Binet staging is implicit in Observation.code
* method = SCT#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* valueCodeableConcept = NCIT#C80134 "Binet Stage A" // or UMLS#C2698392  "Binet Stage A"
* status = #final "final"
* focus = Reference(primary-cancer-condition-cll) // added requirement STU3
* subject = Reference(cancer-patient-adam-everyman)
* effectiveDateTime = "2020-05-18"
* derivedFrom = Reference(lab-result-observation-hemoglobin)

