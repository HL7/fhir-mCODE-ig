```
Instance: cancer-related-medication-request-cyclophosphamide-jenny-m
InstanceOf: CancerRelatedMedicationRequest
Title: "cancer-related-medication-request-cyclophosphamide-jenny-m"
Description: "Extended example: example showing chemotherapy medication"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept = $sct#373808002 "Curative - procedure intent (qualifier value)"
* status = #active
* intent = #order
* category = $medicationrequest-category#outpatient
* medicationCodeableConcept = $rxnorm#3002 "cyclophosphamide"
* subject = Reference(cancer-patient-jenny-m)
* authoredOn = "2018-04-12"
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* dosageInstruction.text = "cyclophosphamide (600 mg/m² IV), 932.59mg"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-01"
* dosageInstruction.route = $sct#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 932.59 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"
```