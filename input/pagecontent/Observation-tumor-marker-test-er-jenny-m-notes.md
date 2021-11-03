```
Instance: tumor-marker-test-er-jenny-m
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-er-jenny-m"
Description: "Extended example: example showing ER status"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = $loinc#LA6576-8 "Positive"
```