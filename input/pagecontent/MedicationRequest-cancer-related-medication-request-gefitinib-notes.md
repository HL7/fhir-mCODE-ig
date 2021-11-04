```
Instance: cancer-related-medication-request-gefitinib
InstanceOf: CancerRelatedMedicationRequest
Title: "cancer-related-medication-request-gefitinib"
Description: "Example of CancerRelatedMedicationRequest"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept = http://snomed.info/sct#373808002 "Curative - procedure intent"
* status = #active
* intent = #order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#349472 "gefitinib 250 MG Oral Tablet"
* subject = Reference(cancer-patient-john-anyperson)
* authoredOn = "2019-04-01"
* requester = Reference(us-core-practitioner-kyle-anydoc)
* reasonCode = http://snomed.info/sct#254637007 "Non-small cell lung cancer (disorder)"
* dosageInstruction.text = "250mg orally once daily with or without food"
* dosageInstruction.timing.event = "2019-04-01"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2019-04-30"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code = http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation#QD
* dosageInstruction.route = http://snomed.info/sct#26643006 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 250 'mg' "mg"
```