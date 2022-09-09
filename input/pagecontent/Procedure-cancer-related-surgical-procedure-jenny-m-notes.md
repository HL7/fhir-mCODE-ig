```
Instance: cancer-related-surgical-procedure-jenny-m
InstanceOf: CancerRelatedSurgicalProcedure
Title: "cancer-related-surgical-procedure-jenny-m"
Description: "Extended example: example showing partial mastectomy surgical procedure"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension.valueCodeableConcept.coding = http://snomed.info/sct#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed
* category.coding.version = "http://snomed.info/sct/900000000000207008"
* category.coding = http://snomed.info/sct#387713003
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#64368001 "Excision of part of breast (procedure)"
* subject = Reference(cancer-patient-jenny-m)
* performedDateTime = "2018-04-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008"
* bodySite.coding = http://snomed.info/sct#80248007 "Left breast structure (body structure)"
```