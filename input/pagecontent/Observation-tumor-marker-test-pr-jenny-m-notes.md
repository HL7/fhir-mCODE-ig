```
Instance: tumor-marker-test-pr-jenny-m
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-pr-jenny-m"
Description: "Extended example: example showing PR status"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = http://loinc.org#LA6577-6 "Negative"
```