```
Instance: tumor-marker-test-her2-jenny-m
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-her2-jenny-m"
Description: "Extended example: example showing HER2 status"
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[+].coding.version = "http://snomed.info/sct/900000000000207008"
* category[=].coding = http://snomed.info/sct#250724005
* code = http://loinc.org#48676-1 "HER2 [Interpretation] in Tissue"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = http://loinc.org#LA6577-6 "Negative"
```