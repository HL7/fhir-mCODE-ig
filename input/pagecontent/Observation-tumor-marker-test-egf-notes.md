```
Instance: tumor-marker-test-egf
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-egf"
Description: "mCODE Example for Tumor Marker Test"
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[+].coding.version = "http://snomed.info/sct/900000000000207008"
* category[=].coding = http://snomed.info/sct#250724005
* code = http://loinc.org#39004-7 "Epidermal growth factor receptor Ag [Presence] in Tissue"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#10828004 "Positive (qualifier value)"
```