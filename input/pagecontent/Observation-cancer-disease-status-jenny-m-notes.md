```
Instance: cancer-disease-status-jenny-m
InstanceOf: CancerDiseaseStatus
Title: "cancer-disease-status-jenny-m"
Description: "Extended example: example showing disease status (patient's condition improved)"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status-evidence-type"
* extension.valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension.valueCodeableConcept.coding = http://snomed.info/sct#363679005 "Imaging (procedure)"
* status = #final
* category = http://hl7.org/fhir/us/core/CodeSystem/us-core-observation-category#clinical-test
* code = http://loinc.org#97509-4 "Cancer Disease Progression"
* subject = Reference(cancer-patient-jenny-m)
* focus = Reference(primary-cancer-condition-jenny-m)
* effectiveDateTime = "2018-11-01"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* valueCodeableConcept.coding = http://snomed.info/sct#268910001 "Patient's condition improved (finding)"
```