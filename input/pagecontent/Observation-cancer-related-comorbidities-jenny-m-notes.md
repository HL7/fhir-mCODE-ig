```
Instance: cancer-related-comorbidities-jenny-m
InstanceOf: Comorbidities
Title: "cancer-related-comorbidities-jenny-m"
Description: "mCODE Example for Cancer-Related Comorbidities"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition"
* extension[=].valueReference = Reference(us-core-condition-depression-jenny-m)
* extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition"
* extension[=].valueReference = Reference(us-core-condition-anxiety-jenny-m)
* extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition"
* extension[=].valueReference = Reference(us-core-condition-hypertension-jenny-m)
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
* subject = Reference(cancer-patient-jenny-m)
* focus = Reference(primary-cancer-condition-jenny-m)
* effectiveDateTime = "2018-03-16"
* performer = Reference(us-core-practitioner-owen-oncologist)
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-permitted "Not Permitted"
```