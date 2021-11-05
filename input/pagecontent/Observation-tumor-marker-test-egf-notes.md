```
Instance: tumor-marker-test-egf
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-egf"
Description: "mCODE Example for Tumor Marker Test"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#39004-7 "Epidermal growth factor receptor Ag [Presence] in Tissue"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = http://snomed.info/sct#10828004 "Positive (qualifier value)"
```