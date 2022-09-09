```
Instance: cancer-related-medication-admin-doxorubicin-jenny-m
InstanceOf: CancerRelatedMedicationAdministration
Title: "cancer-related-medication-admin-doxorubicin-jenny-m"
Description: "Extended example: example showing chemotherapy medication"
Usage: #example
* status = #completed
* category = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#1790099 "doxorubicin hydrochloride 20 MG per 10 ML Injection"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-22"
* performer.actor = Reference(us-core-practitioner-nancy-oncology-nurse)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* request = Reference(cancer-related-medication-request-doxorubicin-jenny-m)
* note.authorReference = Reference(us-core-practitioner-nancy-oncology-nurse)
* note.time = "2018-04-22"
* note.text = "doxorubicin (60 mg/m² IV), 105.96 mg in 50 ml 0.9% normal saline administered by continuous infusion. Patient tolerated infusion without side effects."
* dosage.route.coding.version = "http://snomed.info/sct/900000000000207008"
* dosage.route.coding = http://snomed.info/sct#47625008 "Intravenous route (qualifier value)"
* dosage.dose = 105.96 'mg' "mg"
```