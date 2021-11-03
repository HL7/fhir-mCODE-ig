```
Instance: cancer-related-medication-admin-cyclophosphamide-jenny-m
InstanceOf: CancerRelatedMedicationAdministration
Title: "cancer-related-medication-admin-cyclophosphamide-jenny-m"
Description: "Extended example: example showing chemotherapy medication"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept = $sct#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed
* category = $medicationrequest-category#outpatient
* medicationCodeableConcept = $rxnorm#3002 "cyclophosphamide"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-22"
* performer.actor = Reference(us-core-practitioner-nancy-oncology-nurse)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* note.authorReference = Reference(us-core-practitioner-nancy-oncology-nurse)
* note.time = "2018-04-22"
* note.text = "cyclophosphamide (60 mg/m² IV), 932.59 mg in 50 ml 0.9% normal saline administered by continuous infusion. Patient tolerated infusion without side effects."
* dosage.route = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.dose = 932.59 'mg' "mg"
```