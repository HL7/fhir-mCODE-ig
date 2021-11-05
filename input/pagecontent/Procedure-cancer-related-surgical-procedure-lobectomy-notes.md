```
Instance: cancer-related-surgical-procedure-lobectomy
InstanceOf: CancerRelatedSurgicalProcedure
Title: "cancer-related-surgical-procedure-lobectomy"
Description: "Example of Cancer Related Surgical Procedure"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept = http://snomed.info/sct#373808002 "Curative - procedure intent"
* status = #completed
* category = http://snomed.info/sct#387713003
* code = http://snomed.info/sct#359615001 "Partial lobectomy of lung (procedure)"
* subject = Reference(cancer-patient-john-anyperson)
* performedDateTime = "2019-03-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* reasonReference = Reference(primary-cancer-condition-nsclc)
* bodySite.extension[0].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
* bodySite.extension[=].valueCodeableConcept = http://snomed.info/sct#7771000 "Left (qualifier value)"
* bodySite.extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier"
* bodySite.extension[=].valueCodeableConcept = http://snomed.info/sct#261122009 "Lower (qualifier value)"
* bodySite = http://snomed.info/sct#31094006 "Structure of lobe of lung (body structure)"
```