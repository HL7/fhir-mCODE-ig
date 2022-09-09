```
Instance: cancer-related-comorbidities-john-anyperson
InstanceOf: Comorbidities
Title: "cancer-related-comorbidities-john-anyperson"
Description: "Example of Cancer-Related Comorbidities"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition"
* extension[=].valueReference = Reference(john-anyperson-chf)
* extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition-absent"
* extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension[=].valueCodeableConcept.coding = http://snomed.info/sct#414916001 "Obesity (disorder)"
* extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition-absent"
* extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension[=].valueCodeableConcept.coding = http://snomed.info/sct#19829001 "Disorder of lung (disorder)"
* status = #final
* category = http://hl7.org/fhir/us/core/CodeSystem/us-core-observation-category#clinical-test
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#398192003
* subject = Reference(cancer-patient-john-anyperson)
* focus = Reference(primary-cancer-condition-nsclc)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-permitted "Not Permitted"
```