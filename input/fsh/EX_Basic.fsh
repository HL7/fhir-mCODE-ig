Instance: primary-cancer-condition-nsclc
InstanceOf: PrimaryCancerCondition
Description: "Example of Primary Cancer Condition"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#254637007 "Non-small cell lung cancer (disorder)"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#35917007 "Adenocarcinoma"
* bodySite = SCT#39607008 "Lung structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* subject = Reference(cancer-patient-john-anyperson)
* onsetDateTime = "2019-04-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = AJCC#3C "IIIC"
* stage.assessment = Reference(tnm-clinical-stage-group-3c)

Instance: primary-cancer-condition-cll
InstanceOf: PrimaryCancerCondition
Description: "Example of Primary Cancer Condition - hematologic cancer"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#92814006 "Chronic lymphoid leukemia, disease (disorder)"
* subject = Reference(cancer-patient-adam-everyman)
* onsetDateTime = "2020-05-12"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = UMLS#C2698392 "Binet Stage A"     // NCIT#C80134 "Binet Stage A"
* stage.assessment = Reference(binet-stage-group-A)

Instance: secondary-cancer-condition-brain-mets
InstanceOf: SecondaryCancerCondition
Description: "Example of Secondary Cancer Condition"
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
Description: "Example of Cancer Disease Status"
// * extension[evidenceType].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-evidence-type"
* extension[evidenceType].valueCodeableConcept = SCT#108257001 "Anatomic pathology procedure (procedure)"
* status = #final "final"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = SCT#268910001 "Patient's condition improved (finding)"

Instance: cancer-related-mcode-comorbidities-elixhauser-john-anyperson
InstanceOf: ComorbiditiesElixhauser
Description: "Example of Cancer-Related Comorbidities"
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

Instance: cancer-patient-john-anyperson
InstanceOf: CancerPatient
Description: "Example of Patient"
* identifier.use = #usual
* identifier.type = IDTYPE#MR "Medical Record Number"
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
Description: "Example of Patient"
// The following lines must use the slice names, not the defining URLs
// * extension[race].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
// * extension[race].extension[ombCategory].url = "ombCategory"
* extension[race].extension[ombCategory].valueCoding = OmbRaceCat#1002-5 "American Indian or Alaska Native"
// * extension[race].extension[text].url = "text"
* extension[race].extension[text].valueString = "Lakota and Crow"
* extension[birthsex].valueCode = #F
* identifier.use = #usual
* identifier.type = IDTYPE#MR "Medical Record Number"
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

Instance: cancer-patient-adam-everyman
InstanceOf: CancerPatient
Description: "Example of Patient"
* identifier.use = #usual
* identifier.type = IDTYPE#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Everyman"
* name.given[0] = "Adam"
* name.given[1] = "A."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "333-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "adam.everyman@example.com"
* gender = #male
* birthDate = "1962-02-05"
* address.line = "234 Anyway St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

Instance: us-core-practitioner-kyle-anydoc
InstanceOf: USCorePractitioner
Description: "Example of Practitioner"
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
Description: "Example of ECOG Performance Status"
* status = #final "final"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 0
* interpretation = LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"

Instance: karnofsky-performance-status-normal-activity
InstanceOf: KarnofskyPerformanceStatus
Description: "Example of Karnofsky Performance Status"
* status = #final "final"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 90
* interpretation = LNC#LA29176-7 "Able to carry on normal activity; minor signs or symptoms of disease"

Instance: cancer-related-surgical-procedure-lobectomy
InstanceOf: CancerRelatedSurgicalProcedure
Description: "Example of Cancer Related Surgical Procedure"
* status = #completed "completed"
* code = SCT#359615001 "Partial lobectomy of lung (procedure)"
* subject = Reference(cancer-patient-john-anyperson)
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* performedDateTime = "2019-03-01"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* reasonReference = Reference(primary-cancer-condition-nsclc)
* bodySite = SCT#31094006  "Structure of lobe of lung (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* bodySite.extension[locationQualifier].valueCodeableConcept = SCT#261122009 "Lower (qualifier value)"

Instance: john-anyperson-treatment-volume
InstanceOf: RadiotherapyVolume
Description: "Anatomic volume for John Anyperson's brachytherapy."
* patient = Reference(cancer-patient-john-anyperson)
* description = "Structure of lower lobe of left lung"
* location = SCT#31094006  "Structure of lobe of lung (body structure)"
* extension[lateralityQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* locationQualifier[0] = SCT#261122009 "Lower (qualifier value)"
Instance: binet-stage-group-A
InstanceOf: CancerStageGroup
Description: "Example of a non-TNM Stage Group (Binet staging for CLL)"
* code = LNC#21914-7 "Stage group.other Cancer"
* status = #final "final"
* method = SCT#1149099005 "Binet staging classification for chronic lymphocytic leukemia (tumor staging)"
* subject = Reference(cancer-patient-adam-everyman)
* effectiveDateTime = "2020-05-18"
* derivedFrom = Reference(lab-result-observation-hemoglobin)
* valueCodeableConcept = UMLS#C2698392  "Binet Stage A" // NCIT#C80134 "Binet Stage A"

Instance: tnm-clinical-stage-group-3c
InstanceOf: CancerStageGroup
Description: "Example of TNM Clinical Stage Group"
* code = LNC#21908-9 "Stage group.clinical Cancer"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#3C "IIIC"
* hasMember[tnmPrimaryTumorCategory] = Reference(tnm-clinical-primary-tumor-category-cT3)
* hasMember[tnmRegionalNodesCategory] = Reference(tnm-clinical-regional-nodes-category-cN3)
* hasMember[tnmDistantMetastasesCategory] = Reference(tnm-clinical-distant-metastases-category-cM0)

Instance: tnm-clinical-distant-metastases-category-cM0
InstanceOf: TNMDistantMetastasesCategory
Description: "Example of TNM Clinical Distant Metastases Category"
* code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cM0 "M0"

Instance: tnm-clinical-primary-tumor-category-cT3
InstanceOf: TNMPrimaryTumorCategory
Description: "Example of TNM Clinical Primary Tumor Category"
* code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cT3 "T3"

Instance: tnm-clinical-regional-nodes-category-cN3
InstanceOf: TNMRegionalNodesCategory
Description: "Example of TNM Clinical Regional Nodes Category"
* code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cN3 "N3"

Instance: cancer-related-medication-request-gefitinib
InstanceOf: CancerRelatedMedicationRequest
Description: "Example of CancerRelatedMedicationRequest"
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
Description: "Example of CancerRelatedMedicationRequest - Chemo Infusion"
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

Instance: lab-result-observation-hemoglobin
InstanceOf: USCoreLaboratoryResultObservationProfile
Description: "Hemoglobin lab result to support CancerStageGroup example"
* subject = Reference(cancer-patient-adam-everyman)
* status = ObsStatus#final
* code = LNC#718-7 "Hemoglobin [Mass/volume] in Blood"
* effectiveDateTime = "2020-03-06"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueQuantity = 13.5 'g/dl' "g/dl"