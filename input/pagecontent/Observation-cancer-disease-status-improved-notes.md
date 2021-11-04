```
Instance: cancer-disease-status-improved
InstanceOf: CancerDiseaseStatus
Title: "cancer-disease-status-improved"
Description: "Example of Cancer Disease Status"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-evidence-type"
* extension.valueCodeableConcept = http://snomed.info/sct#108257001 "Anatomic pathology procedure (procedure)"
* status = #final
* code = http://loinc.org#97509-4
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = http://snomed.info/sct#268910001 "Patient's condition improved (finding)"
```