```
Instance: tumor-marker-test-er-jenny-m
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-er-jenny-m"
Description: "Extended example: example showing ER status"
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[+].coding.version = "http://snomed.info/sct/900000000000207008"
* category[=].coding = http://snomed.info/sct#250724005
* code = http://loinc.org#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = http://loinc.org#LA6576-8 "Positive"
```