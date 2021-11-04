```
Instance: tumor-marker-test-her2-jenny-m
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-her2-jenny-m"
Description: "Extended example: example showing HER2 status"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#48676-1 "HER2 [Interpretation] in Tissue"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = http://loinc.org#LA6577-6 "Negative"
```