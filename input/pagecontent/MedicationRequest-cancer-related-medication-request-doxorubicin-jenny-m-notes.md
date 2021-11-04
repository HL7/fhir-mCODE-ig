```
Instance: cancer-related-medication-request-doxorubicin-jenny-m
InstanceOf: CancerRelatedMedicationRequest
Title: "cancer-related-medication-request-doxorubicin-jenny-m"
Description: "Extended example: example showing chemotherapy medication"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept = http://snomed.info/sct#373808002 "Curative - procedure intent (qualifier value)"
* status = #active
* intent = #order
* category = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#3639 "DOXOrubicin"
* subject = Reference(cancer-patient-jenny-m)
* authoredOn = "2018-04-12"
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* dosageInstruction.text = "doxorubicin (60 mg/m² IV)"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-01"
* dosageInstruction.route = http://snomed.info/sct#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.rateQuantity = 60 'mg/m2' "mg/m2"
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"
```