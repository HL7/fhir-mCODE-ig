```
Instance: cancer-related-surgical-procedure-jenny-m
InstanceOf: CancerRelatedSurgicalProcedure
Title: "cancer-related-surgical-procedure-jenny-m"
Description: "Extended example: example showing partial mastectomy surgical procedure"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept = $sct#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed
* category = $sct#387713003
* code = $sct#64368001 "Partial mastectomy (procedure)"
* subject = Reference(cancer-patient-jenny-m)
* performedDateTime = "2018-04-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* bodySite = $sct#80248007 "Left breast structure (body structure)"
```