```
Instance: cancer-related-medication-request-cisplatin
InstanceOf: CancerRelatedMedicationRequest
Title: "cancer-related-medication-request-cisplatin"
Description: "Example of CancerRelatedMedicationRequest - Chemo Infusion"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension[=].valueCodeableConcept = $sct#373808002 "Curative - procedure intent"
* extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-termination-reason"
* extension[=].valueCodeableConcept = $sct#182992009 "Treatment completed (situation)"
* status = #active
* intent = #order
* medicationCodeableConcept = $rxnorm#309311 "CISplatin 50 MG per 50 ML Injectable Solution"
* subject = Reference(cancer-patient-john-anyperson)
* authoredOn = "2019-04-01"
* requester = Reference(us-core-practitioner-kyle-anydoc)
* reasonCode = $sct#254637007 "Non-small cell lung cancer (disorder)"
* note.text = "Day 1 of NSCLC regimen: Cisplatin 75 mg/m2 day 1; docetaxel 75 mg/m2 day 1 every 21 days for 4 cycles."
* dosageInstruction.text = "calculate absolute dose on day of administration."
* dosageInstruction.timing.event = "2019-06-15"
* dosageInstruction.timing.repeat.count = 1
* dosageInstruction.route = $sct#47625008 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 75 'mg/m2' "mg/m2"
```