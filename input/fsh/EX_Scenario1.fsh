// Keep contents and order of this file in sync with the list in `2_examples.md`.

Instance: cancer-patient-susan-m
InstanceOf: CancerPatient
Description: "Extended example 1: example cancer patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "MRN1234"
* name.family = "M"
* name.given[0] = "Susan"
* gender = #female
* birthDate = "1965-01-01"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "United States"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "example@example.com"
* communication.language = urn:ietf:bcp:47#en-US
* communication.language.text = "English"
* extension[USCoreRace].extension[ombCategory].valueCoding = OmbRaceCat#2106-3 "White"
* extension[USCoreRace].extension[text].valueString = "White"
* extension[USCoreEthnicity].extension[ombCategory].valueCoding = OmbRaceCat#2186-5 "Not Hispanic or Latino"
* extension[USCoreEthnicity].extension[text].valueString = "Not Hispanic or Latino"

Instance: cancer-disease-status-susan-m-2020-03-01
InstanceOf: CancerDiseaseStatus
Description: "Extended example 1: example showing disease status (patient's condition improved)"
* extension[evidenceType].valueCodeableConcept = SCT#363679005 "Imaging (procedure)"
* status = #final "final"
* code = LNC#88040-1 "Response to cancer treatment"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2020-03-01"
* performer = Reference(us-core-practitioner-owen-oncologist)
* focus = Reference(primary-cancer-condition-susan-m)
* valueCodeableConcept = SCT#268910001 "Patient's condition improved (finding)"

Instance: cancer-related-comorbidities-elixhauser-susan-m
InstanceOf: CancerRelatedComorbiditiesElixhauser
Description: "mCODE Example for Cancer-Related Comorbidities"
* subject = Reference(cancer-patient-susan-m)
* performer = Reference(us-core-practitioner-owen-oncologist)
* status = #final "final"
* component[depression].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"
* component[hypertensionComplicated].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"
* component[arthropathy].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[congestiveHeartFailure].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[chronicPulmonaryDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[diabetesUncomplicated].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[diabetesComplicated].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[obesity].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[peripheralVascularDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[pulmonaryCirculationDisorders].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[renalFailureModerate].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[drugAbuse].valueCodeableConcept = SCT#261665006 "Unknown (qualifier value)"
* component[hypothyroidism].valueCodeableConcept = SCT#261665006 "Unknown (qualifier value)"
* component[depression].extension[conditionReference].valueReference = Reference(us-core-condition-depression-susan-m)
* component[hypertensionComplicated].extension[conditionReference].valueReference = Reference(us-core-condition-hypertension-susan-m)


Instance: us-core-condition-depression-susan-m
InstanceOf: USCoreCondition
Description: "Extended example 1: example showing comorbid condition (depression)"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#35489007 "Depressive disorder (disorder)"
* subject = Reference(cancer-patient-susan-m)
* onsetDateTime = "2000-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)

Instance: us-core-condition-hypertension-susan-m
InstanceOf: USCoreCondition
Description: "Extended example 1: example showing comorbid condition (hypertension)"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#77970009 "Benign hypertensive heart disease without congestive heart failure (disorder)"  // Changed to avoid IG Publisher error ICD10CM#I11.9 "Hypertensive heart disease without heart failure"
* subject = Reference(cancer-patient-susan-m)
* onsetDateTime = "2000-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)

Instance: ecog-performance-status-susan-m
InstanceOf: ECOGPerformanceStatus
Description: "Extended example 1: example showing ECOG performance status"
* status = #final "final"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-01"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueInteger = 0
* interpretation = LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* method = SCT#5880005 "Physical examination procedure (procedure)"


Instance: cancer-related-surgical-procedure-susan-m
InstanceOf: CancerRelatedSurgicalProcedure
Description: "Extended example 1: example showing partial mastectomy surgical procedure"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed "completed"
* code = SCT#64368001 "Partial mastectomy (procedure)"
* subject = Reference(cancer-patient-susan-m)
* performedDateTime = "2019-03-05"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-susan-m)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: teleradiotherapy-prescription-delivery-susan-m
InstanceOf: TeleradiotherapyPrescriptionDelivery
Description: "Extended example 1: example showing radiation treatment"
* status = #completed "completed"
* code = RO#PHOTON "Photon Beam Radiation Therapy"
* extension[radiotherapyTechnique].valueCodeableConcept = RO#3D "3 Dimensional"
* extension[radiotherapyDosePerFraction].valueQuantity = 200 'cGy'
* extension[radiotherapyDeliveredFractions].valueUnsignedInt = 25
* extension[radiotherapyTotalDosePlanned].valueQuantity = 5000 'cGy'
* extension[radiotherapyTotalDoseDelivered].valueQuantity = 5000 'cGy'
* subject = Reference(cancer-patient-susan-m)
* performedPeriod.start = "2018-03-19"
* performedPeriod.end = "2018-05-22"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-susan-m)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: primary-cancer-condition-susan-m
InstanceOf: PrimaryCancerCondition
Description: "Extended example 1: example showing primary cancer condition"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#413448000 "Adenocarcinoma, no subtype, intermediate grade (morphologic abnormality)"
* clinicalStatus = ClinStatus#remission
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(cancer-patient-susan-m)
* onsetDateTime = "2018-03-15"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* stage.summary = AJCC#3C
* stage.assessment = Reference(tnm-clinical-stage-group-susan-m)

Instance: tnm-clinical-stage-group-susan-m
InstanceOf: TNMClinicalStageGroup
Description: "Extended example 1: example showing TNM staging (stage group)"
* status = #final "final"
* code = LNC#21908-9 "Stage group.clinical Cancer"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#2B "IIB"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* hasMember[0] = Reference(tnm-primary-tumor-category-susan-m)
* hasMember[1] = Reference(tnm-clinical-regional-nodes-category-susan-m)
* hasMember[2] = Reference(tnm-clinical-distant-metastases-category-susan-m)

Instance: tnm-primary-tumor-category-susan-m
InstanceOf: TNMClinicalPrimaryTumorCategory
Description: "Extended example 1: example showing TNM staging (T)"
* status = #final "final"
* code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#cT3
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"

Instance: tnm-clinical-regional-nodes-category-susan-m
InstanceOf: TNMClinicalRegionalNodesCategory
Description: "Extended example 1: example showing TNM staging (N)"
* status = #final "final"
* code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#cN0
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"

Instance: tnm-clinical-distant-metastases-category-susan-m
InstanceOf: TNMClinicalDistantMetastasesCategory
Description: "Extended example 1: example showing TNM staging (M)"
* status = #final "final"
* code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#cM0
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"

Instance: tumor-marker-test-er-susan-m
InstanceOf: TumorMarkerTest
Description: "Extended example 1: example showing ER status"
* status = #final "final"
* code = LNC#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = LNC#LA6576-8 "Positive"

Instance: tumor-marker-test-pr-susan-m
InstanceOf: TumorMarkerTest
Description: "Extended example 1: example showing PR status"
* status = #final "final"
* code = LNC#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = LNC#LA6577-6 "Negative"

Instance: tumor-marker-test-her2-susan-m
InstanceOf: TumorMarkerTest
Description: "Extended example 1: example showing HER2 status"
* status = #final "final"
* code = LNC#48676-1 "HER2 [Interpretation] in Tissue"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = LNC#LA6577-6 "Negative"

Instance: tumor-marker-test-oncotype-dx-susan-m
InstanceOf: TumorMarkerTest
Description: "Extended example 1: example showing Oncotype DX breast recurrence score. Note that this test has no assigned LOINC code, so GTR is being used as a backup. Only the score from the Oncotype DX panel (as opposed to variant data from the genes in the panel) is represented here."
* status = #final "final"
* code.coding[0] = OtherCode#OtherTumorMarkerTest "Other Tumor Marker Test, Specify"
* code.coding[1] = GTR#509910 "Oncotype DX Breast Recurrence Score Assay"
* code.text = "Oncotype DX Breast Recurrence Score Assay"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-20"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueQuantity = 47 '{ScoreOf}' "Recurrence score"
* interpretation = ObsInt#H "High"

Instance: cancer-genomics-report-susan-m
InstanceOf: CancerGenomicsReport
Description: "Extended example 1: example of gene panel report"
* status = #final "final"
* category[0] = DiagnosticService#LAB
* category[1] = DiagnosticService#GE
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2020-03-15"
* issued = "2020-03-15T00:00:01+00:00"
* specimen = Reference(genetic-specimen-left-breast-susan-m)
* result[0] = Reference(cancer-genetic-variant-susan-m)
* result[1] = Reference(genomic-region-studied-susan-m)

Instance: genomic-region-studied-susan-m
InstanceOf: GenomicRegionStudied
Description: "Extended example 1: example showing which regions were included in the genomics panel"
* status = #final "final"
* code = LNC#53041-0 "DNA region of interest panel"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-04-01"
* issued = "2018-04-01T00:00:01+00:00"
* component.code = LNC#48018-6 "Gene studied [ID]"
* component[GeneStudied].valueCodeableConcept.coding[+] = HGNC#1100 "BRCA1"
* component[GeneStudied].valueCodeableConcept.coding[+] = HGNC#1101 "BRCA2"
* component[GeneStudied].valueCodeableConcept.coding[+] = HGNC#1748 "CDH1"
* component[GeneStudied].valueCodeableConcept.coding[+] = HGNC#26144 "PALB2"
* component[GeneStudied].valueCodeableConcept.coding[+] = HGNC#9588 "PTEN"
* component[GeneStudied].valueCodeableConcept.coding[+] = HGNC#11389 "STK11"
* component[GeneStudied].valueCodeableConcept.coding[+] = HGNC#11998 "TP53"

Instance: genetic-specimen-left-breast-susan-m
InstanceOf: GeneticSpecimen
Description: "Extended example 1: example showing genetic specimen for sequencing"
* status = #available "available"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TISS
* subject = Reference(cancer-patient-susan-m)
* collection.collector = Reference(us-core-practitioner-owen-oncologist)
* collection.bodySite = SCT#80248007 "Left breast structure (body structure)"
* processing[0].timeDateTime = "2018-03-01"

Instance: cancer-genetic-variant-susan-m
InstanceOf: CancerGeneticVariant
Description: "Extended example 1: example showing genetic variant found by breast cancer genomics panel"
* status = #final "final"
* code = LNC#69548-6 "Genetic variant assessment"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-15"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* method = LNC#LA26398-0 "Sequencing"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:26144 "PALB2"
* component[VariationCode].valueCodeableConcept = CLINVAR#128144 "NM_024675.3(PALB2):c.3549C>A (p.Tyr1183Ter)"
* component[GenomicDNAChange].valueCodeableConcept = HGVS#NC_000016.10:g.23603471G>T
* component[GenomicSourceClass].valueCodeableConcept = LNC#LA6684-0 "Somatic"

Instance: cancer-related-medication-request-doxorubicin-susan-m
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example 1: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#3639 "DOXOrubicin"
* subject = Reference(cancer-patient-susan-m)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-susan-m)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2019-04-01"
* authoredOn = "2019-04-01"
* dosageInstruction.text = "doxorubicin (60 mg/m² IV), 93.26mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 93.26 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"

Instance: cancer-related-medication-request-cyclophosphamide-susan-m
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example 1: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#3002 "cyclophosphamide"
* subject = Reference(cancer-patient-susan-m)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-susan-m)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-01"
* authoredOn = "2018-04-01"
* dosageInstruction.text = "cyclophosphamide (600 mg/m² IV), 932.59mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 932.59 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"


Instance: cancer-related-medication-request-paclitaxel-susan-m
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example 1: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#56946 "PACLitaxel"
* subject = Reference(cancer-patient-susan-m)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-susan-m)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-01"
* authoredOn = "2018-04-01"
* dosageInstruction.text = "doxorubicin (175 mg/m² IV), 272.01mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 272.01 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"

Instance: cancer-related-medication-request-anastrozole-susan-m
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example 1: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#community
* intent = #order
* medicationCodeableConcept = RXN#84857 "anastrozole"
* subject = Reference(cancer-patient-susan-m)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-susan-m)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-05-01"
* authoredOn = "2018-05-01"
* dosageInstruction.text = "1mg orally once daily"
* dosageInstruction.route = SCT#26643006 "Oral route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 1 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 1 'd' "day"


Instance: us-core-practitioner-owen-oncologist
InstanceOf: USCorePractitioner
Description: "Extended example 1: example practitioner"
* identifier[NPI].value = "9988776655"
* name.family = "Oncologist"
* name.given[0] = "Owen"
* name.prefix[0] = "Dr."
* address.use = #work
* address.line[0] = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #male
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#MD
* qualification.code.coding[0].version = "2.7"


Instance: us-core-practitioner-peter-pathologist
InstanceOf: USCorePractitioner
Description: "Extended example 1: example practitioner (pathologist)"
* identifier[NPI].value = "1122334455"
* name.family = "Pathologist"
* name.given[0] = "Peter"
* name.prefix[0] = "Dr."
* address.use = #work
* address.line[0] = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #female
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#MD
* qualification.code.coding[0].version = "2.7"

Instance: us-core-organization-physician-services-inc
InstanceOf: USCoreOrganization
Description: "Extended example 1: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "Physician Services, Inc."
* telecom.system = #phone
* telecom.value = "999-999-9999"
* telecom.use = #work
* address.line = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"


Instance: us-core-procedure-biopsy-susan-m
InstanceOf: USCoreProcedure
Description: "Extended example 1: example biopsy procedure"
* status = #completed "completed"
* code = SCT#723990008 "Biopsy of breast using ultrasonographic guidance (procedure)"
* subject = Reference(cancer-patient-susan-m)
* performer.actor = Reference(us-core-practitioner-owen-oncologist)
* performedDateTime = "2018-03-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-susan-m)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: us-core-procedure-mammogram-susan-m
InstanceOf: USCoreProcedure
Description: "Extended example 1: example mammogram"
* status = #completed "completed"
* code = SCT#71651007 "Mammography (procedure)"
* subject = Reference(cancer-patient-susan-m)
* performer.actor = Reference(us-core-practitioner-owen-oncologist)
* performedDateTime = "2018-03-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)

Instance: us-core-smokingstatus-susan-m
InstanceOf: USCoreSmokingStatusProfile
Description: "Extended example 1: example showing smoking status"
* status = #final "final"
* code = LNC#72166-2 "Tobacco smoking status"
* subject = Reference(cancer-patient-susan-m)
* issued = "2018-03-01T00:00:00Z"
* valueCodeableConcept = SCT#449868002 "Smokes tobacco daily (finding)"

Instance: observation-smoking-history-susan-m
InstanceOf: Observation
Description: "Extended example 1: example showing smoking history"
* status = #final "final"
* category = ObsCat#social-history "Social History"
* code = SCT#401201003 "Cigarette pack-years (observable entity)" // No LOINC available
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-01T00:00:00Z"
* valueQuantity = 20 '{PackYears}' "Pack-Years"

Instance: us-core-condition-anxiety-susan-m
InstanceOf: USCoreCondition
Description: "Extended example 1: example showing comorbid condition (anxiety)"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item "Problem List Item"
* code = SCT#48694002 "Anxiety (finding)"
* subject = Reference(cancer-patient-susan-m)
* onsetDateTime = "2002-01-01"

Instance: family-member-history-aunt-susan-m
InstanceOf: FamilyMemberHistory
Description: "Extended example 1: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(cancer-patient-susan-m)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MAUNT "maternal aunt"
* condition.code = SCT#363443007 "Malignant tumor of ovary (disorder)"
* condition.onsetAge = 69.0 'a'
//* condition.onsetAge.value = 69.0
//* condition.onsetAge = UCUM#a "years"

Instance: family-member-history-sister-susan-m
InstanceOf: FamilyMemberHistory
Description: "Extended example 1: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(cancer-patient-susan-m)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NSIS "natural sister"
* condition.code = SCT#254837009 "Malignant neoplasm of breast (disorder)"
* condition.onsetAge = 64.0 'a'
//* condition.onsetAge.value = 64.0
//* condition.onsetAge = UCUM#a "years"
* condition.contributedToDeath = false

Instance: family-member-history-uncle-susan-m
InstanceOf: FamilyMemberHistory
Description: "Extended example 1: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(cancer-patient-susan-m)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PUNCLE "paternal uncle"
* condition.code = SCT#363418001 "Malignant tumor of pancreas (disorder)"
* condition.contributedToDeath = true
* deceasedBoolean = true

Instance: specimen-left-breast-susan-m
InstanceOf: Specimen
Description: "Extended example 1: example tumor specimen"
* status = #available "available"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TUMOR "Tumor"
* subject = Reference(cancer-patient-susan-m)
* receivedTime = "2019-03-05"
* collection.bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: us-core-diagnosticreport-lab-susan-m
InstanceOf: USCoreDiagnosticReportLab
Description: "Extended example 1: example of pathology findings represented as a DiagnosticReport resource."
* status = #final "final"
* category[0] = DiagnosticService#LAB
* category[1] = DiagnosticService#SP "Surgical Pathology"
* code = LNC#22637-3 "Pathology report final diagnosis Narrative"
* subject = Reference(cancer-patient-susan-m)
* issued = "2018-03-06T00:00:00Z"
* effectiveDateTime = "2018-03-06T00:00:00Z"
* specimen = Reference(specimen-left-breast-susan-m)
* result[0] = Reference(us-core-observation-lab-tumor-invasion-susan-m)
* result[1] = Reference(us-core-observation-lab-tumor-margins-susan-m)
* result[2] = Reference(us-core-observation-lab-sentinel-nodes-susan-m)
* result[3] = Reference(tumor-size-susan-m-2018-03-06)
* result[4] = Reference(us-core-observation-lab-tumor-dcis)
* performer = Reference(us-core-organization-physician-services-inc)
* resultsInterpreter = Reference(us-core-practitioner-peter-pathologist)

Instance: us-core-observation-lab-tumor-invasion-susan-m
InstanceOf: USCoreObservationLab
Description: "Extended example 1: example showing negative invasion for the removed tumor"
* status = #final "final"
* code = SCT#370052007 "Status of invasion by tumor (observable entity)" // No LOINC for invasion status
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueCodeableConcept = SCT#260385009 "Negative (qualifier value)"
* specimen = Reference(specimen-left-breast-susan-m)

Instance: us-core-observation-lab-tumor-margins-susan-m
InstanceOf:  USCoreObservationLab
Description: "Extended example 1: example showing negative margins for the removed tumor"
* status = #final "final"
* code = LNC#44669-0 "Margin involvement in Breast tumor"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueCodeableConcept = LNC#LA27151-2 "Uninvolved by invasive carcinoma"
* specimen = Reference(specimen-left-breast-susan-m)

Instance: us-core-observation-lab-sentinel-nodes-susan-m
InstanceOf:  USCoreObservationLab
Description: "Extended example 1: example showing 3 sentinel lymph nodes were examined"
* status = #final "final"
* code = LNC#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* component.code = LNC#92833-3 "Lymph nodes examined [#] in Cancer specimen by Light microscopy"
* component.valueQuantity = 3 '{Count}' "Count"
* specimen = Reference(specimen-left-breast-susan-m)

Instance: tumor-size-susan-m-2018-03-06
InstanceOf:  TumorSize
Description: "Extended example 1: example showing tumor size"
* status = #final "final"
* code = LNC#21889-1 "Size Tumor"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* component.code = LNC#33728-7 "Size.maximum dimension in Tumor"
* component.valueQuantity = 2.5 'cm' 
* component.valueQuantity.unit = "centimeters"
* specimen = Reference(specimen-left-breast-susan-m)

Instance: us-core-observation-lab-tumor-dcis
InstanceOf:  USCoreObservationLab
Description: "Extended example 1: example showing DCIS diagnosis"
* status = #final "final"
* code = LNC#29308-4 "Diagnosis"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueCodeableConcept = LNC#85336-6 "DCIS intraductal extension in Breast cancer specimen Qualitative by Light microscopy"
* specimen = Reference(specimen-left-breast-susan-m)

Instance: bodyweight-susan-m-2018-03-06
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
Description: "Extended example 1: example of body weight vital sign"
* status = #final "final"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueQuantity = 155.0 '[lb_av]'
* valueQuantity.unit = "lb"

Instance: us-core-observation-lab-neutrophils-susan-m-2018-03-06
InstanceOf: USCoreObservationLab
Description: "Extended example 1: neutrophils lab test"
* status = #final "final"
* code = LNC#770-8 "Neutrophils/100 leukocytes in Blood by Automated count"
* subject = Reference(cancer-patient-susan-m)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueQuantity = 40.0 '%' "%"
* referenceRange.low = 37.0 '%' "%"
* referenceRange.high = 67.0 '%' "%"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
