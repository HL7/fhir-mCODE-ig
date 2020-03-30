Instance: mCODEPrimaryCancerConditionExample01
InstanceOf: PrimaryCancerCondition
Description: "mCODE Example for Primary Cancer Condition"
* id = "mCODEPrimaryCancerConditionExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* code = SCT#254637007 "Non-small cell lung cancer (disorder)"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#35917007 "Adenocarcinoma"
* bodySite = SCT#39607008 "Lung structure (body structure)"
* bodySite.extension[laterality].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* subject = Reference(mCODEPatientExample01)
* onsetDateTime = "2019-04-01"
* asserter = Reference(mCODEPractitionerExample01)
* stage.summary = AJCC#3C "IIIC"
* stage.assessment = Reference(mCODETNMClinicalStageGroupExample01)

Instance: mCODESecondaryCancerConditionExample01
InstanceOf: SecondaryCancerCondition
Description: "mCODE Example for Secondary Cancer Condition"
* id = "mCODESecondaryCancerConditionExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition"
* extension[relatedPrimaryCancerCondition].valueReference = Reference(mCODEPrimaryCancerConditionExample01)
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* code = SCT#94225005 "Secondary malignant neoplasm of brain"
* subject = Reference(mCODEPatientExample01)
* onsetDateTime = "2019-05-01"
* asserter = Reference(mCODEPractitionerExample01)

Instance: mCODECancerDiseaseStatusExample01
InstanceOf: CancerDiseaseStatus
Description: "mCODE Example for Cancer Disease Status"
* id = "mCODECancerDiseaseStatusExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status"
//* extension[evidenceType].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-evidence-type"
* extension[evidenceType].valueCodeableConcept = SCT#252416005 "Histopathology test (procedure)"
* status = #final "final"
* category = ObsCat#laboratory "laboratory"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* performer = Reference(mCODEPractitionerExample01)
* valueCodeableConcept = SCT#268910001 "Patient condition improved (finding)"

Instance: mCODEComorbidConditionExample01
InstanceOf: ComorbidCondition
Description: "mCODE Example for Comorbid Condition"
* id = "mCODEComorbidConditionExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbid-condition"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* code = SCT#44054006 "Type 2 diabetes mellitus"
* subject = Reference(mCODEPatientExample01)
* asserter = Reference(mCODEPractitionerExample01)
* onsetDateTime = "2018-04-01"


Instance: mCODEPatientExample01
InstanceOf: CancerPatient
Description: "mCODE Example for Patient"
* id = "mCODEPatientExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
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

Instance: mCODEPatientExample02
InstanceOf: CancerPatient
Description: "mCODE Example for Patient"
* id = "mCODEPatientExample02"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
// The following lines must use the slice names, not the defining URLs
//* extension[race].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
//* extension[race].extension[ombCategory].url = "ombCategory"
* extension[race].extension[ombCategory].valueCoding = OmbRaceCat#1002-5 "American Indian or Alaska Native"
//* extension[race].extension[text].url = "text"
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

Instance: mCODEOrganizationExample01
InstanceOf: USCoreOrganization
Description: "mCODE Example for Organization"
* id = "mCODEOrganizationExample01"
* identifier[NPI].value = "1265714091"
* active = true
* name = "Foundation Medicine"
* contact.telecom.system = #phone
* contact.telecom.value = "617-418-2200"
* address.line = "150 Second Street"
* address.city = "Cambridge"
* address.state = "MA"
* address.postalCode = "02141"
* address.country = "USA"

Instance: mCODEPractitionerExample01
InstanceOf: USCorePractitioner
Description: "mCODE Example for Practitioner"
* id = "mCODEPractitionerExample01"
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


Instance: mCODEECOGPerformanceStatusExample01
InstanceOf: ECOGPerformanceStatus
Description: "mCODE Example for ECOG Performance Status"
* id = "mCODEECOGPerformanceStatusExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ecog-performance-status"
* status = #final "final"
* category = ObsCat#survey "survey"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* performer = Reference(mCODEPractitionerExample01)
* valueInteger = 0
* interpretation = LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"

Instance: mCODEKarnofskyPerformanceStatusExample01
InstanceOf: KarnofskyPerformanceStatus
Description: "mCODE Example for Karnofsky Performance Status"
* id = "mCODEKarnofskyPerformanceStatusExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-karnofsky-performance-status"
* status = #final "final"
* category = ObsCat#survey "survey"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* performer = Reference(mCODEPractitionerExample01)
* valueInteger = 90
* interpretation = LNC#LA29176-7 "Able to carry on normal activity; minor signs or symptoms of disease"

Instance: mCODECancerRelatedMedicationStatementExample01
InstanceOf: CancerRelatedMedicationStatement
Description: "mCODE Example for Cancer Related Medication Statement"
* id = "mCODECancerRelatedMedicationStatementExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-statement"
* status = MedStatus#active "active"
* category = MedCat#community "community"
* medicationCodeableConcept = RXN#349472 "gefitinib 250 MG Oral Tablet"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* dateAsserted = "2019-04-01"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* dosage.text = "250mg orally once daily with or without food"
* dosage.route = SCT#26643006 "Oral use"
* dosage.doseAndRate.doseQuantity.value = 250.0
* dosage.doseAndRate.doseQuantity = UCUM#mg "mg"

Instance: mCODECancerRelatedMedicationStatementExample02
InstanceOf: CancerRelatedMedicationStatement
Description: "mCODE Example for Cancer Related Medication Statement"
* id = "mCODECancerRelatedMedicationStatementExample02"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-statement"
* status = MedStatus#stopped "stopped"
* category = MedCat#community "community"
* medicationCodeableConcept = RXN#349472 "gefitinib 250 MG Oral Tablet"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* dateAsserted = "2019-04-01"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[terminationReason].valueCodeableConcept = SCT#182992009 "Treatment completed (situation)"
* dosage.text = "250mg orally once daily with or without food"
* dosage.route = SCT#26643006 "Oral use"
* dosage.doseAndRate.doseQuantity.value = 250.0
* dosage.doseAndRate.doseQuantity = UCUM#mg "mg"

Instance: mCODECancerRelatedSurgicalProcedureExample01
InstanceOf: CancerRelatedSurgicalProcedure
Description: "mCODE Example for Cancer Related Surgical Procedure"
* id = "mCODECancerRelatedSurgicalProcedureExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure"
* status = #completed "completed"
* code = SCT#359615001 "Partial lobectomy of lung (procedure)"
* subject = Reference(mCODEPatientExample01)
* asserter = Reference(mCODEPractitionerExample01)
* performedDateTime = "2019-03-01"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* reasonReference = Reference(mCODEPrimaryCancerConditionExample01)
* bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"

Instance: mCODECancerRelatedRadiationProcedureExample01
InstanceOf: CancerRelatedRadiationProcedure
Description: "mCODE Example for Cancer Related Radiation Procedure"
* id = "mCODECancerRelatedRadiationProcedureExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-radiation-procedure"
* status = #completed "completed"
* code = SCT#152198000 "Brachytherapy (procedure)"
* subject = Reference(mCODEPatientExample01)
* asserter = Reference(mCODEPractitionerExample01)
* performedDateTime = "2019-03-01"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
//* extension[RadiationDose].extension[TotalRadiationDoseDelivered].valueQuantity = UCUM#cGy
//* extension[RadiationDose].extension[TotalRadiationDoseDelivered].valueQuantity.value = 1200.0
* reasonReference = Reference(mCODEPrimaryCancerConditionExample01)
* bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"

Instance: mCODETNMClinicalStageGroupExample01
InstanceOf: TNMClinicalStageGroup
Description: "mCODE Example for TNM Clinical Stage Group"
* id = "mCODETNMClinicalStageGroupExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-stage-group"
* status = #final "final"
* category = ObsCat#survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#3C "IIIC"
* hasMember[TNMClinicalPrimaryTumorCategory] = Reference(mCODETNMClinicalPrimaryTumorCategoryExample01)
* hasMember[TNMClinicalRegionalNodesCategory] = Reference(mCODETNMClinicalRegionalNodesCategoryExample01)
* hasMember[TNMClinicalDistantMetastasesCategory] = Reference(mCODETNMClinicalDistantMetastasesCategoryExample01)

Instance: mCODETNMClinicalDistantMetastasesCategoryExample01
InstanceOf: TNMClinicalDistantMetastasesCategory
Description: "mCODE Example for TNM Clinical Distant Metastases Category"
* id = "mCODETNMClinicalDistantMetastasesCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-distant-metastases-category"
* status = #final "final"
* category = ObsCat#survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cM0 "M0"

Instance: mCODETNMClinicalPrimaryTumorCategoryExample01
InstanceOf: TNMClinicalPrimaryTumorCategory
Description: "mCODE Example for TNM Clinical Primary Tumor Category"
* id = "mCODETNMClinicalPrimaryTumorCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-primary-tumor-category"
* status = #final "final"
* category = ObsCat#survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cT3 "T3"


Instance: mCODETNMClinicalRegionalNodesCategoryExample01
InstanceOf: TNMClinicalRegionalNodesCategory
Description: "mCODE Example for TNM Clinical Regional Nodes Category"
* id = "mCODETNMClinicalRegionalNodesCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-regional-nodes-category"
* status = #final "final"
* category = ObsCat#survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cN3 "N3"


Instance: mCODETNMPathologicalStageGroupExample01
InstanceOf: TNMPathologicalStageGroup
Description: "mCODE Example for TNM Pathological Stage Group"
* id = "mCODETNMPathologicalStageGroupExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-pathological-stage-group"
* status = #final "final"
* category = ObsCat#laboratory "laboratory"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#3C "IIIC"
* hasMember[TNMPathologicalPrimaryTumorCategory] = Reference(mCODETNMPathologicalPrimaryTumorCategoryExample01)
* hasMember[TNMPathologicalRegionalNodesCategory] = Reference(mCODETNMPathologicalRegionalNodesCategoryExample01)
* hasMember[TNMPathologicalDistantMetastasesCategory] = Reference(mCODETNMPathologicalDistantMetastasesCategoryExample01)


Instance: mCODETNMPathologicalDistantMetastasesCategoryExample01
InstanceOf: TNMPathologicalDistantMetastasesCategory
Description: "mCODE Example for TNM Pathological Distant Metastases Category"
* id = "mCODETNMPathologicalDistantMetastasesCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-pathological-distant-metastases-category"
* status = #final "final"
* category = ObsCat#laboratory "laboratory"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#pM0 "M0"


Instance: mCODETNMPathologicalPrimaryTumorCategoryExample01
InstanceOf: TNMPathologicalPrimaryTumorCategory
Description: "mCODE Example for TNM Pathological Primary Tumor Category"
* id = "mCODETNMPathologicalPrimaryTumorCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-pathological-primary-tumor-category"
* status = #final "final"
* category = ObsCat#laboratory "laboratory"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#pT3 "T3"


Instance: mCODETNMPathologicalRegionalNodesCategoryExample01
InstanceOf: TNMPathologicalRegionalNodesCategory
Description: "mCODE Example for TNM Pathological Regional Nodes Category"
* id = "mCODETNMPathologicalRegionalNodesCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-pathological-regional-nodes-category"
* status = #final "final"
* category = ObsCat#laboratory "laboratory"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#pN3 "N3"
