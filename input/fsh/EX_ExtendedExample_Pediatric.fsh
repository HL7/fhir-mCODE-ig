Instance: cancer-patient-brian-l
InstanceOf: CancerPatient
Description: "Extended pediatric example: example cancer patient"
* identifier.use = #usual
* identifier.type = IDTYPE#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "MRN5678"
* name.family = "L"
* name.given[0] = "Brian"
* gender = #male
* birthDate = "2021-01-01"
* address.line = "456 Main St"
* address.city = "Anytown"
* address.postalCode = "67891"
* address.country = "United States"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "123-456-7891"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "example@example.com"
* communication.language = urn:ietf:bcp:47#en-US
* communication.language.text = "English"
* extension[USCoreRace].extension[ombCategory].valueCoding = OmbRaceCat#2028-9 "Asian"
* extension[USCoreRace].extension[text].valueString = "Asian"
* extension[USCoreEthnicity].extension[ombCategory].valueCoding = OmbRaceCat#2186-5 "Not Hispanic or Latino"
* extension[USCoreEthnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[USCoreBirthSex].valueCode = #M

Instance: us-core-condition-atrial-septal-defect-brian-l
InstanceOf: USCoreCondition
Description: "Extended pediatric example: example showing past medical condition (atrial septal defect)"
* clinicalStatus = ClinStatus#resolved "Resolved"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item "Problem List Item"
* code = SCT#301130004 "Atrial septal defect murmur (finding)"
* subject = Reference(cancer-patient-brian-l)
* onsetDateTime = "2021-01-02"
* abatementDateTime = "2021-02-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)

Instance: family-member-history-grandmother-brian-l
InstanceOf: FamilyMemberHistory
Description: "Extended pediatric example: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(cancer-patient-brian-l)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRMTH "grandmother"
* condition.code = SCT#372137005 "Primary malignant neoplasm of breast (disorder)"
* condition.onsetAge = 55.0 'a'

Instance: hemoglobin-brian-l
InstanceOf: USCoreObservationLab
Description: "Extended pediatric example: example showing hemoglobin blood test result"
* status = #final "final"
* code = LNC#718-7 "Hgb Bld-mCnc"
* subject = Reference(cancer-patient-brian-l)
* effectiveDateTime = "2024-01-04"
* valueQuantity = 6.7 'g/dL' "g/dL"
* referenceRange.low = 13.2 'g/dL' "g/dL"
* referenceRange.high = 16.5 'g/dL' "g/dL"
* referenceRange.type = RefMeaning#normal "Normal Range"
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: hematocrit-brian-l
InstanceOf: USCoreObservationLab
Description: "Extended pediatric example: example showing hematocrit blood test result"
* status = #final "final"
* code = LNC#20570-8 "Hct VFr Bld"
* subject = Reference(cancer-patient-brian-l)
* effectiveDateTime = "2024-01-04"
* valueQuantity = 22.3 '%' "%"
* referenceRange.low = 39.7 '%' "%"
* referenceRange.high = 50.3 '%' "%"
* referenceRange.type = RefMeaning#normal "Normal Range"
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: white-blood-cell-brian-l
InstanceOf: USCoreObservationLab
Description: "Extended pediatric example: example showing white blood cell blood test result"
* status = #final "final"
* code = LNC#26464-8 "WBC # Bld"
* subject = Reference(cancer-patient-brian-l)
* effectiveDateTime = "2024-01-04"
* valueQuantity = 88.5 '10*3/uL' "10*3/uL"
* referenceRange.low = 39.7 '10*3/uL' "10*3/uL"
* referenceRange.high = 50.3 '10*3/uL' "10*3/uL"
* referenceRange.type = RefMeaning#normal "Normal Range"
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: us-core-diagnosticreport-cbc-brian-l
InstanceOf: USCoreDiagnosticReportLab
Description: "Extended pediatric example: example of cbc."
* status = #final "final"
* code = LNC#58410-2 "CBC panel - Blood by Automated count"
* subject = Reference(cancer-patient-brian-l)
* issued = "2024-01-04T00:00:00Z"
* effectiveDateTime = "2024-01-04"
* result[0] = Reference(hemoglobin-brian-l)
* result[1] = Reference(hematocrit-brian-l)
* result[2] = Reference(white-blood-cell-brian-l)

Instance: us-core-procedure-bone-marrow-aspiration-brian-l
InstanceOf: USCoreProcedure
Description: "Extended pediatric example: example bone marrow aspiration"
* status = #completed "completed"
* code = SCT#49401003 "Bone marrow aspiration procedure (procedure)"
* subject = Reference(cancer-patient-brian-l)
* performedDateTime = 2024-01-06
* report = Reference(bone-marrow-aspirate-brian-l)

Instance: us-core-procedure-bone-marrow-biopsy-brian-l
InstanceOf: USCoreProcedure
Description: "Extended pediatric example: example bone marrow biopsy"
* status = #completed "completed"
* code = SCT#234326005 "Bone marrow sampling (procedure)"
* subject = Reference(cancer-patient-brian-l)
* performedDateTime = 2024-01-06
* report = Reference(bone-marrow-biopsy-brian-l)

Instance: bone-marrow-aspirate-brian-l
InstanceOf: USCoreObservationLab
Description: "Extended pediatric example: example showing bone marrow aspirate test result"
* status = #final "final"
* code = LNC#48807-2 "Bone marrow aspiration report"
* subject = Reference(cancer-patient-brian-l)
* effectiveDateTime = "2024-01-07"
* valueString = "predominance of immature cells"
* partOf = Reference(us-core-procedure-bone-marrow-aspiration-brian-l)
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: bone-marrow-biopsy-brian-l
InstanceOf: USCoreObservationLab
Description: "Extended pediatric example: example showing bone marrow biopsy test result"
* status = #final "final"
* code = LNC#33721-2 "Mar Path Bx report"
* subject = Reference(cancer-patient-brian-l)
* effectiveDateTime = "2024-01-07"
* valueString = "predominance of immature cells"
* partOf = Reference(us-core-procedure-bone-marrow-biopsy-brian-l)
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: immunophenotype-brian-l
InstanceOf: USCoreObservationLab
Description: "Extended pediatric example: example showing immunophenotyping test result"
* status = #final "final"
* code = LNC#101119-6 "Leuk and lymphma immnphntypng Spec"
* subject = Reference(cancer-patient-brian-l)
* effectiveDateTime = "2024-01-07"
* valueString = "positive for CD10, CD79a, TdT, CD19, and CD20"
* partOf = Reference(us-core-procedure-bone-marrow-aspiration-brian-l)
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: primary-cancer-condition-brian-l
InstanceOf: PrimaryCancerCondition
Description: "Extended pediatric example: example showing primary cancer condition"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#277571004 "B-cell acute lymphoblastic leukemia (disorder)"
* subject = Reference(cancer-patient-brian-l)
* onsetDateTime = "2024-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)

Instance: lansky-performance-status-brian-l
InstanceOf: LanskyPlayPerformanceStatus
Description: "Extended pediatric example: example showing Lansky performance status"
* status = #final "final"
* subject = Reference(cancer-patient-brian-l)
* effectiveDateTime = "2024-01-12"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueInteger = 0
* interpretation = LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* method = SCT#5880005 "Physical examination procedure (procedure)"

Instance: cancer-related-medication-request-cyclophosphamide-brian-l
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended pediatric example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#inpatient
* intent = #order
* medicationCodeableConcept = RXN#3002 "cyclophosphamide"
* subject = Reference(cancer-patient-brian-l)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-brian-l)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-01-09"
* authoredOn = "2024-01-09"
* dosageInstruction.text = "cyclophosphamide (750 mg/m² IV), 450.03mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 450.03 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 1 'wk' "week"

Instance: cancer-related-medication-admin-cyclophosphamide-brian-l
InstanceOf: CancerRelatedMedicationAdministration
Description: "Extended pediatric example: example showing chemotherapy medication"
* status = #completed "completed"
* category = MedReqCat#inpatient
* medicationCodeableConcept = RXN#3002 "cyclophosphamide"
* subject = Reference(cancer-patient-brian-l)
* performer.actor = Reference(us-core-practitioner-nancy-oncology-nurse)
* reasonReference = Reference(primary-cancer-condition-brian-l)
* request = Reference(cancer-related-medication-request-doxorubicin-jenny-m)
* effectiveDateTime = "2024-01-09"
* note.authorReference = Reference(us-core-practitioner-nancy-oncology-nurse)
* note.time = "2024-01-09"
* note.text = "cyclophosphamide (750 mg/m² IV). Patient tolerated infusion without side effects."
* dosage.dose = 105.96 'mg' "mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"
* extension[normalizationBasis].valueCodeableConcept = SCT#301898006 "Body surface area (observable entity)"


Instance: cancer-related-medication-request-idarubicin-brian-l
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended pediatric example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#inpatient
* intent = #order
* medicationCodeableConcept = RXN#5650 "IDArubicin"
* subject = Reference(cancer-patient-brian-l)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-brian-l)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-01-09"
* authoredOn = "2024-01-09"
* dosageInstruction.text = "IDArubicin (9 mg/m² IV), 5.4mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 5.40 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 1 'wk' "week"

Instance: cancer-related-medication-admin-idarubicin-brian-l
InstanceOf: CancerRelatedMedicationAdministration
Description: "Extended pediatric example: example showing chemotherapy medication"
* status = #completed "completed"
* category = MedReqCat#inpatient
* medicationCodeableConcept = RXN#5650 "IDArubicin"
* subject = Reference(cancer-patient-brian-l)
* performer.actor = Reference(us-core-practitioner-nancy-oncology-nurse)
* reasonReference = Reference(primary-cancer-condition-brian-l)
* request = Reference(cancer-related-medication-request-doxorubicin-jenny-m)
* effectiveDateTime = "2024-01-09"
* note.authorReference = Reference(us-core-practitioner-nancy-oncology-nurse)
* note.time = "2024-01-09"
* note.text = "IDArubicin (c), 5.4mg. Patient tolerated infusion without side effects."
* dosage.dose = 5.40 'mg' "mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"
* extension[normalizationBasis].valueCodeableConcept = SCT#301898006 "Body surface area (observable entity)"

Instance: cancer-related-medication-request-vincristine-brian-l
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended pediatric example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#inpatient
* intent = #order
* medicationCodeableConcept = RXN#11202 "vincristine"
* subject = Reference(cancer-patient-brian-l)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-brian-l)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-01-09"
* authoredOn = "2024-01-09"
* dosageInstruction.text = "Vincristine (2 mg IV)"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 2 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 1 'wk' "week"

Instance: cancer-related-medication-admin-vincristine-brian-l
InstanceOf: CancerRelatedMedicationAdministration
Description: "Extended pediatric example: example showing chemotherapy medication"
* status = #completed "completed"
* category = MedReqCat#inpatient
* medicationCodeableConcept = RXN#11202 "vincristine"
* subject = Reference(cancer-patient-brian-l)
* performer.actor = Reference(us-core-practitioner-nancy-oncology-nurse)
* reasonReference = Reference(primary-cancer-condition-brian-l)
* request = Reference(cancer-related-medication-request-doxorubicin-jenny-m)
* effectiveDateTime = "2024-01-09"
* note.authorReference = Reference(us-core-practitioner-nancy-oncology-nurse)
* note.time = "2024-01-09"
* note.text = "Vincristine (2 mg IV), 2mg. Patient tolerated infusion without side effects."
* dosage.dose = 2 'mg' "mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"
* extension[normalizationBasis].valueCodeableConcept = SCT#301898006 "Body surface area (observable entity)"

Instance: cancer-related-medication-request-prednisone-brian-l
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended pediatric example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#inpatient
* intent = #order
* medicationCodeableConcept = RXN#8640 "predniSONE"
* subject = Reference(cancer-patient-brian-l)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-brian-l)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-01-09"
* authoredOn = "2024-01-09"
* dosageInstruction.text = "Prednisone (36.01 mg/m² IV)"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 36.01 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 1 'wk' "week"

Instance: cancer-related-medication-admin-prednisone-brian-l
InstanceOf: CancerRelatedMedicationAdministration
Description: "Extended pediatric example: example showing chemotherapy medication"
* status = #completed "completed"
* category = MedReqCat#inpatient
* medicationCodeableConcept = RXN#8640 "predniSONE"
* subject = Reference(cancer-patient-brian-l)
* performer.actor = Reference(us-core-practitioner-nancy-oncology-nurse)
* reasonReference = Reference(primary-cancer-condition-brian-l)
* request = Reference(cancer-related-medication-request-doxorubicin-jenny-m)
* effectiveDateTime = "2024-01-09"
* note.authorReference = Reference(us-core-practitioner-nancy-oncology-nurse)
* note.time = "2024-01-09"
* note.text = "Prednisone (36.01 mg/m² IV), 36.01 mg. Patient tolerated infusion without side effects."
* dosage.dose = 36.01 'mg' "mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"
* extension[normalizationBasis].valueCodeableConcept = SCT#301898006 "Body surface area (observable entity)"



