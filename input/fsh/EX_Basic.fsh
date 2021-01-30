Instance: primary-cancer-condition-nsclc
InstanceOf: PrimaryCancerCondition
Description: "mCODE Example for Primary Cancer Condition"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#254637007 "Non-small cell lung cancer (disorder)"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#35917007 "Adenocarcinoma"
* bodySite = SCT#39607008 "Lung structure (body structure)"
* bodySite.extension[locationQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* subject = Reference(cancer-patient-john-anyperson)
* onsetDateTime = "2019-04-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = AJCC#3C "IIIC"
* stage.assessment = Reference(tnm-clinical-stage-group-3c)

Instance: secondary-cancer-condition-brain-mets
InstanceOf: SecondaryCancerCondition
Description: "mCODE Example for Secondary Cancer Condition"
* extension[relatedPrimaryCancerCondition].valueReference = Reference(primary-cancer-condition-nsclc)
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#94225005 "Secondary malignant neoplasm of brain"
* subject = Reference(cancer-patient-john-anyperson)
* onsetDateTime = "2019-05-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)

Instance: cancer-disease-status-improved
InstanceOf: CancerDiseaseStatus
Description: "mCODE Example for Cancer Disease Status"
// * extension[evidenceType].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-evidence-type"
* extension[evidenceType].valueCodeableConcept = SCT#108257001 "Anatomic pathology procedure (procedure)"
* status = #final "final"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = SCT#268910001 "Patient's condition improved (finding)"

Instance: cancer-related-comorbidities-elixhauser-john-anyperson
InstanceOf: CancerRelatedComorbiditiesElixhauser
Description: "mCODE Example for Cancer-Related Comorbidities"
* subject = Reference(cancer-patient-john-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* focus = Reference(primary-cancer-condition-nsclc)
* status = #final "final"
// present
* component[congestiveHeartFailure].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"
* component[congestiveHeartFailure].extension[conditionCode].valueCodeableConcept = ICD10CM#I50.32 "Chronic diastolic (congestive) heart failure"
// absent
* component[arthropathy].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[chronicPulmonaryDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[obesity].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[peripheralVascularDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"


Instance: comorbidities-elixhauser-john-anyperson
InstanceOf: ComorbiditiesElixhauser
Description: "Example of Elixhauser Comorbidity List without index disease."
* subject = Reference(cancer-patient-john-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* status = #final "final"
// present
* component[congestiveHeartFailure].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"
* component[congestiveHeartFailure].extension[conditionCode].valueCodeableConcept = ICD10CM#I50.32 "Chronic diastolic (congestive) heart failure"
* component[cancerLeukemia].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"
* component[cancerLeukemia].extension[conditionCode].valueCodeableConcept = ICD10CM#C91.01  "Acute lymphoblastic leukemia, in remission"
// absent or unknown
* component[arthropathy].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[chronicPulmonaryDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[obesity].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[peripheralVascularDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[drugAbuse].valueCodeableConcept = SCT#261665006 "Unknown (qualifier value)"
* component[hypothyroidism].valueCodeableConcept = SCT#261665006 "Unknown (qualifier value)"

Instance: cancer-patient-john-anyperson
InstanceOf: CancerPatient
Description: "mCODE Example for Patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Anyperson"
* name.given[0] = "John"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "john.anyperson@example.com"
* gender = #male
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

Instance: cancer-patient-eve-anyperson
InstanceOf: CancerPatient
Description: "mCODE Example for Patient"
// The following lines must use the slice names, not the defining URLs
// * extension[race].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
// * extension[race].extension[ombCategory].url = "ombCategory"
* extension[race].extension[ombCategory].valueCoding = OmbRaceCat#1002-5 "American Indian or Alaska Native"
// * extension[race].extension[text].url = "text"
* extension[race].extension[text].valueString = "Lakota and Crow"
* extension[birthsex].valueCode = #F
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m456"
* name.family = "Anyperson"
* name.given[0] = "Eve"
* name.given[1] = "A."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "999-999-9999"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "eve.anyperson@example.com"
* gender = #female
* birthDate = "1955-05-20"
* address.line = "456 Smith Lane"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

Instance: us-core-organization-bedrock-medicine
InstanceOf: USCoreOrganization
Description: "Example of US Core Organization"
* identifier[NPI].value = "1265710000"
* active = true
* name = "Bedrock Medicine"
* contact.telecom.system = #phone
* contact.telecom.value = "617-555-2200"
* address.line = "55 Secant Street"
* address.city = "Cambridge"
* address.state = "MA"
* address.postalCode = "02141"
* address.country = "USA"

Instance: us-core-practitioner-kyle-anydoc
InstanceOf: USCorePractitioner
Description: "mCODE Example for Practitioner"
* identifier[NPI].value = "9988776655"
* name.family = "Anydoc"
* name.given = "Kyle"
* name.prefix = "Dr."
* gender = #male
* address.use = #home
* address.line = "567 Healthcare Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"

Instance: ecog-performance-status-fully-active
InstanceOf: ECOGPerformanceStatus
Description: "mCODE Example for ECOG Performance Status"
* status = #final "final"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 0
* interpretation = LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"

Instance: karnofsky-performance-status-normal-activity
InstanceOf: KarnofskyPerformanceStatus
Description: "mCODE Example for Karnofsky Performance Status"
* status = #final "final"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 90
* interpretation = LNC#LA29176-7 "Able to carry on normal activity; minor signs or symptoms of disease"

Instance: cancer-related-surgical-procedure-lobectomy
InstanceOf: CancerRelatedSurgicalProcedure
Description: "mCODE Example for Cancer Related Surgical Procedure"
* status = #completed "completed"
* code = SCT#359615001 "Partial lobectomy of lung (procedure)"
* subject = Reference(cancer-patient-john-anyperson)
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* performedDateTime = "2019-03-01"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* reasonReference = Reference(primary-cancer-condition-nsclc)
* bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"

Instance: brachytherapy-prescription-delivery-ldr
InstanceOf: BrachytherapyPrescriptionDelivery
Description: "mCODE Example for a brachytherapy procedure."
* status = #completed "completed"
* code = RO#LDR "Low-Dose Rate Brachytherapy"
* extension[radiotherapyTechnique].valueCodeableConcept = RO#INSTIT-TEMP "Interstitial-Temporary"
* subject = Reference(cancer-patient-john-anyperson)
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* performedPeriod.start = "2019-03-01"
* performedPeriod.end = "2019-03-01"
//* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* reasonReference = Reference(primary-cancer-condition-nsclc)
* bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"

Instance: tnm-clinical-stage-group-3c
InstanceOf: TNMClinicalStageGroup
Description: "mCODE Example for TNM Clinical Stage Group"
* status = #final "final"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#3C "IIIC"
* hasMember[TNMClinicalPrimaryTumorCategory] = Reference(tnm-clinical-primary-tumor-category-cT3)
* hasMember[TNMClinicalRegionalNodesCategory] = Reference(tnm-clinical-regional-nodes-category-cN3)
* hasMember[TNMClinicalDistantMetastasesCategory] = Reference(tnm-clinical-distant-metastases-category-cM0)

Instance: tnm-clinical-distant-metastases-category-cM0
InstanceOf: TNMClinicalDistantMetastasesCategory
Description: "mCODE Example for TNM Clinical Distant Metastases Category"
* status = #final "final"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cM0 "M0"

Instance: tnm-clinical-primary-tumor-category-cT3
InstanceOf: TNMClinicalPrimaryTumorCategory
Description: "mCODE Example for TNM Clinical Primary Tumor Category"
* status = #final "final"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cT3 "T3"


Instance: tnm-clinical-regional-nodes-category-cN3
InstanceOf: TNMClinicalRegionalNodesCategory
Description: "mCODE Example for TNM Clinical Regional Nodes Category"
* status = #final "final"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cN3 "N3"


Instance: tnm-pathological-stage-group-3C
InstanceOf: TNMPathologicalStageGroup
Description: "mCODE Example for TNM Pathological Stage Group"
* status = #final "final"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#3C "IIIC"
* hasMember[TNMPathologicalPrimaryTumorCategory] = Reference(tnm-pathological-primary-tumor-category-pT3)
* hasMember[TNMPathologicalRegionalNodesCategory] = Reference(tnm-pathological-regional-nodes-category-pN3)
* hasMember[TNMPathologicalDistantMetastasesCategory] = Reference(tnm-pathological-distant-metastases-category-pM0)


Instance: tnm-pathological-distant-metastases-category-pM0
InstanceOf: TNMPathologicalDistantMetastasesCategory
Description: "mCODE Example for TNM Pathological Distant Metastases Category"
* status = #final "final"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#pM0 "M0"


Instance: tnm-pathological-primary-tumor-category-pT3
InstanceOf: TNMPathologicalPrimaryTumorCategory
Description: "mCODE Example for TNM Pathological Primary Tumor Category"
* status = #final "final"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#pT3 "T3"


Instance: tnm-pathological-regional-nodes-category-pN3
InstanceOf: TNMPathologicalRegionalNodesCategory
Description: "mCODE Example for TNM Pathological Regional Nodes Category"
* status = #final "final"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#pN3 "N3"

Instance: cancer-related-medication-request-gefitinib
InstanceOf: CancerRelatedMedicationRequest
Description: "mCODE Example for CancerRelatedMedicationRequest"
* subject = Reference(cancer-patient-john-anyperson)
* status = MedReqStatus#active
* intent = MedReqIntent#order
* authoredOn = "2019-04-01"
* medicationCodeableConcept = RXN#349472 "gefitinib 250 MG Oral Tablet"
* reasonCode = SCT#254637007 "Non-small cell lung cancer (disorder)"
* requester = Reference(us-core-practitioner-kyle-anydoc)
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* dosageInstruction.text = "250mg orally once daily with or without food"
* dosageInstruction.route = SCT#26643006 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 250.0 'mg' "mg"
* dosageInstruction.timing.event = "2019-04-01"
* dosageInstruction.timing.repeat.frequency = 1  // frequency, period and periodUnit to reflect "once per day"
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = UCUM#d
* dosageInstruction.timing.repeat.boundsPeriod.start = "2019-04-01"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2019-04-30"
* dosageInstruction.timing.code = TimingAbbreviation#QD // prescriber abbreviation for once daily

Instance: cancer-related-medication-request-cisplatin
InstanceOf: CancerRelatedMedicationRequest
Description: "mCODE Example for CancerRelatedMedicationRequest - Chemo Infusion"
* subject = Reference(cancer-patient-john-anyperson)
* status = MedReqStatus#active
* intent = MedReqIntent#order
* authoredOn = "2019-04-01"
* medicationCodeableConcept = RXN#309311 "CISplatin 50 MG per 50 ML Injectable Solution"
* reasonCode = SCT#254637007 "Non-small cell lung cancer (disorder)"
* requester = Reference(us-core-practitioner-kyle-anydoc)
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* dosageInstruction.text = "calculate absolute dose on day of administration."
* dosageInstruction.route = SCT#47625008 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 75 'mg/m2' "mg/m2"
* dosageInstruction.timing.event = "2019-06-15"
* dosageInstruction.timing.repeat.count = 1  // frequency is one-time on day 1 of first cycle so there should be no repeat."
* note.text = "Day 1 of NSCLC regimen: Cisplatin 75 mg/m2 day 1; docetaxel 75 mg/m2 day 1 every 21 days for 4 cycles."
* extension[terminationReason].valueCodeableConcept = SCT#182992009  "Treatment completed (situation)"
