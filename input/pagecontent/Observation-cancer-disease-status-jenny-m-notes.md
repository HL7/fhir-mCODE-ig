```
Instance: cancer-disease-status-jenny-m
InstanceOf: CancerDiseaseStatus
Title: "cancer-disease-status-jenny-m"
Description: "Extended example: example showing disease status (patient's condition improved)"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-evidence-type"
* extension.valueCodeableConcept = http://snomed.info/sct#363679005 "Imaging (procedure)"
* status = #final
* code = http://loinc.org#97509-4 "Cancer Disease Progression"
* subject = Reference(cancer-patient-jenny-m)
* focus = Reference(primary-cancer-condition-jenny-m)
* effectiveDateTime = "2018-11-01"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = http://snomed.info/sct#268910001 "Patient's condition improved (finding)"
```