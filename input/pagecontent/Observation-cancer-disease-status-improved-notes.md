```
Instance: cancer-disease-status-improved
InstanceOf: CancerDiseaseStatus
Title: "cancer-disease-status-improved"
Description: "Example of Cancer Disease Status"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status-evidence-type"
* extension.valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension.valueCodeableConcept.coding = http://snomed.info/sct#108257001 "Anatomic pathology procedure (procedure)"
* status = #final
* category = http://hl7.org/fhir/us/core/CodeSystem/us-core-observation-category#clinical-test
* code = http://loinc.org#97509-4
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#268910001 "Patient's condition improved (finding)"
```