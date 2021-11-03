```
Instance: cancer-related-medication-admin-paclitaxel-jenny-m
InstanceOf: CancerRelatedMedicationAdministration
Title: "cancer-related-medication-admin-paclitaxel-jenny-m"
Description: "Extended example: example showing chemotherapy medication"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension.valueCodeableConcept = $sct#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed
* category = $medicationrequest-category#outpatient
* medicationCodeableConcept = $rxnorm#56946 "PACLitaxel"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-22"
* performer.actor = Reference(us-core-practitioner-nancy-oncology-nurse)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* note.time = "2018-04-12"
* note.text = "PACLitaxel (175 mg/m² IV), 272.01mg"
* dosage.route = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.dose = 272.01 'mg' "mg"
```