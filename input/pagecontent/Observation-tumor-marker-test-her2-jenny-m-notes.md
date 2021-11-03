```
Instance: tumor-marker-test-her2-jenny-m
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-her2-jenny-m"
Description: "Extended example: example showing HER2 status"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#48676-1 "HER2 [Interpretation] in Tissue"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = $loinc#LA6577-6 "Negative"
```