```
Instance: binet-stage-group-A
InstanceOf: CancerStage
Title: "binet-stage-group-A"
Description: "Example of a non-TNM Stage Group (Binet staging for CLL)"
Usage: #example
* status = #final
* category.coding.version = "http://snomed.info/sct/900000000000207008"
* category.coding = http://snomed.info/sct#385356007
* code = http://loinc.org#67213-9 "Disease stage"
* subject = Reference(cancer-patient-adam-everyman)
* focus = Reference(primary-cancer-condition-cll)
* effectiveDateTime = "2020-05-18"
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/umls#C2698392 "Binet Stage A"
* method.coding.version = "http://snomed.info/sct/900000000000207008"
* method.coding = http://snomed.info/sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* derivedFrom = Reference(lab-result-observation-hemoglobin)
```