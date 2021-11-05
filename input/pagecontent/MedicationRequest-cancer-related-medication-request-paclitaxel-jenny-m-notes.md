```
Instance: cancer-related-medication-request-paclitaxel-jenny-m
InstanceOf: CancerRelatedMedicationRequest
Title: "cancer-related-medication-request-paclitaxel-jenny-m"
Description: "Extended example: example showing chemotherapy medication"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept = http://snomed.info/sct#373808002 "Curative - procedure intent (qualifier value)"
* status = #active
* intent = #order
* category = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#56946 "PACLitaxel"
* subject = Reference(cancer-patient-jenny-m)
* authoredOn = "2018-04-12"
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* dosageInstruction.text = "PACLitaxel (175 mg/m² IV), 272.01mg"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-12"
* dosageInstruction.route = http://snomed.info/sct#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 272.01 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"
```