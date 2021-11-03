```
Instance: cancer-related-medication-request-anastrozole-jenny-m
InstanceOf: CancerRelatedMedicationRequest
Title: "cancer-related-medication-request-anastrozole-jenny-m"
Description: "Extended example: example showing chemotherapy medication"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept = $sct#373808002 "Curative - procedure intent (qualifier value)"
* status = #active
* intent = #order
* category = $medicationrequest-category#community
* medicationCodeableConcept = $rxnorm#84857 "anastrozole"
* subject = Reference(cancer-patient-jenny-m)
* authoredOn = "2018-09-30"
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* dosageInstruction.text = "1mg orally once daily"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-09-30"
* dosageInstruction.route = $sct#26643006 "Oral route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 1 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 1 'd' "day"
```