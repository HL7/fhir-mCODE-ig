// Keep contents and order of this file in sync with the list in `2_examples.md`.

Instance: scenario1-mcode-cancer-patient
InstanceOf: CancerPatient
Description: "Extended example 1: example cancer patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "MRN1234"
* name.family = "Lastname"
* name.given[0] = "First"
* name.given[1] = "M"
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
* extension[USCoreEthnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[USCoreEthnicity].extension[text].valueString = "Not Hispanic or Latino"

Instance: scenario1-mcode-cancer-disease-status
InstanceOf: CancerDiseaseStatus
Description: "Extended example 1: example showing disease status (patient's condition improved)"
* extension[evidenceType].valueCodeableConcept = SCT#363679005 "Imaging (procedure)"
* status = #final "final"
* code = LNC#88040-1 "Response to cancer treatment"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2020-03-01"
* performer = Reference(scenario1-us-core-practitioner)
* focus = Reference(scenario1-mcode-primary-cancer-condition)
* valueCodeableConcept = SCT#268910001 "Patient's condition improved (finding)"


Instance: scenario1-mcode-cancer-related-comorbidities
InstanceOf: CancerRelatedComorbidities
Description: "mCODE Example for Cancer-Related Comorbidities"
* subject = Reference(scenario1-mcode-cancer-patient)
* performer = Reference(scenario1-us-core-practitioner)
* status = #final "final"
* component[depression].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"
* component[hypertensionComplicated].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"
* component[rheumatoidArthritis].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[congestiveHeartFailure].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[chronicPulmonaryDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[diabetesUncomplicated].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[diabetesComplicated].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[obesity].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[peripheralVascularDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[pulmonaryCirculationDisorders].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[renalFailure].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[drugAbuse].valueCodeableConcept = SCT#261665006 "Unknown (qualifier value)"
* component[hypothyroidism].valueCodeableConcept = SCT#261665006 "Unknown (qualifier value)"
* component[depression].extension[conditionReference].valueReference = Reference(scenario1-mcode-comorbid-condition-depression)
* component[hypertensionComplicated].extension[conditionReference].valueReference = Reference(scenario1-mcode-comorbid-condition-hypertension)


Instance: scenario1-mcode-comorbid-condition-depression
InstanceOf: USCoreCondition
Description: "Extended example 1: example showing comorbid condition (depression)"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#35489007 "Depressive disorder (disorder)"
* subject = Reference(scenario1-mcode-cancer-patient)
* onsetDateTime = "2000-01-01"
* asserter = Reference(scenario1-us-core-practitioner)

Instance: scenario1-mcode-comorbid-condition-hypertension
InstanceOf: USCoreCondition
Description: "Extended example 1: example showing comorbid condition (hypertension)"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#77970009 "Benign hypertensive heart disease without congestive heart failure (disorder)"  // Changed to avoid IG Publisher error ICD10CM#I11.9 "Hypertensive heart disease without heart failure"
* subject = Reference(scenario1-mcode-cancer-patient)
* onsetDateTime = "2000-01-01"
* asserter = Reference(scenario1-us-core-practitioner)

Instance: scenario1-mcode-ecog-performance-status
InstanceOf: ECOGPerformanceStatus
Description: "Extended example 1: example showing ECOG performance status"
* status = #final "final"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-01"
* performer = Reference(scenario1-us-core-practitioner)
* valueInteger = 0
* interpretation = LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* method = SCT#5880005 "Physical examination procedure (procedure)"

Instance: scenario1-mcode-cancer-related-surgical-procedure-mastectomy
InstanceOf: CancerRelatedSurgicalProcedure
Description: "Extended example 1: example showing partial mastectomy surgical procedure"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed "completed"
* code = SCT#64368001 "Partial mastectomy (procedure)"
* subject = Reference(scenario1-mcode-cancer-patient)
* performedDateTime = "2019-03-05"
* asserter = Reference(scenario1-us-core-practitioner)
* reasonReference = Reference(scenario1-mcode-primary-cancer-condition)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: scenario1-mcode-cancer-related-radiation-procedure
InstanceOf: CancerRelatedRadiationProcedure
Description: "Extended example 1: example showing radiation treatment"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed "completed"
* code = SCT#385798007 "Radiation therapy care (regime/therapy)"
* subject = Reference(scenario1-mcode-cancer-patient)
* performedDateTime = "2018-03-20"
* asserter = Reference(scenario1-us-core-practitioner)
* reasonReference = Reference(scenario1-mcode-primary-cancer-condition)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: scenario1-mcode-primary-cancer-condition
InstanceOf: PrimaryCancerCondition
Description: "Extended example 1: example showing primary cancer condition"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#413448000 "Adenocarcinoma, no subtype, intermediate grade (morphologic abnormality)"
* clinicalStatus = ClinStatus#remission
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(scenario1-mcode-cancer-patient)
* onsetDateTime = "2018-03-15"
* asserter = Reference(scenario1-us-core-practitioner)
* stage.summary = AJCC#3C
* stage.assessment = Reference(scenario1-mcode-tnm-clinical-stage-group)

Instance: scenario1-mcode-tnm-clinical-stage-group
InstanceOf: TNMClinicalStageGroup
Description: "Extended example 1: example showing TNM staging (stage group)"
* status = #final "final"
* code = LNC#21908-9 "Stage group.clinical Cancer"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#2B "IIB"
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"
* hasMember[0] = Reference(scenario1-mcode-tnm-primary-tumor-category)
* hasMember[1] = Reference(scenario1-mcode-tnm-clinical-regional-nodes-category)
* hasMember[2] = Reference(scenario1-mcode-tnm-clinical-distant-metastases-category)

Instance: scenario1-mcode-tnm-primary-tumor-category
InstanceOf: TNMClinicalPrimaryTumorCategory
Description: "Extended example 1: example showing TNM staging (T)"
* status = #final "final"
* code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#cT3
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"

Instance: scenario1-mcode-tnm-clinical-regional-nodes-category
InstanceOf: TNMClinicalRegionalNodesCategory
Description: "Extended example 1: example showing TNM staging (N)"
* status = #final "final"
* code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#cN0
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"

Instance: scenario1-mcode-tnm-clinical-distant-metastases-category
InstanceOf: TNMClinicalDistantMetastasesCategory
Description: "Extended example 1: example showing TNM staging (M)"
* status = #final "final"
* code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#cM0
* method = NCIT#C146985 "AJCC Cancer Staging Manual 8th Edition"

Instance: scenario1-mcode-tumor-marker-test-er
InstanceOf: TumorMarkerTest
Description: "Extended example 1: example showing ER status"
* status = #final "final"
* code = LNC#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* performer = Reference(scenario1-us-core-practitioner)
* valueCodeableConcept = LNC#LA6576-8 "Positive"

Instance: scenario1-mcode-tumor-marker-test-pr
InstanceOf: TumorMarkerTest
Description: "Extended example 1: example showing PR status"
* status = #final "final"
* code = LNC#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* performer = Reference(scenario1-us-core-practitioner)
* valueCodeableConcept = LNC#LA6577-6 "Negative"

Instance: scenario1-mcode-tumor-marker-test-her2
InstanceOf: TumorMarkerTest
Description: "Extended example 1: example showing HER2 status"
* status = #final "final"
* code = LNC#48676-1 "HER2 [Interpretation] in Tissue"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* performer = Reference(scenario1-us-core-practitioner)
* valueCodeableConcept = LNC#LA6577-6 "Negative"

Instance: scenario1-mcode-tumor-marker-test-oncotype-dx
InstanceOf: TumorMarkerTest
Description: "Extended example 1: example showing Oncotype DX breast recurrence score. Note that this test has no assigned LOINC code, so GTR is being used as a backup. Only the score from the Oncotype DX panel (as opposed to variant data from the genes in the panel) is represented here."
* status = #final "final"
* code.coding[0] = OtherSpecifyCS#OtherTumorMarkerTest "Other Tumor Marker Test, Specify"
* code.coding[1] = GTR#509910 "Oncotype DX Breast Recurrence Score Assay"
* code.text = "Oncotype DX Breast Recurrence Score Assay"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-20"
* performer = Reference(scenario1-us-core-practitioner)
* valueQuantity = 47 '{ScoreOf}' "Recurrence score"
* interpretation = ObsInt#H "High"

Instance: scenario1-mcode-cancer-genomics-report
InstanceOf: CancerGenomicsReport
Description: "Extended example 1: example of gene panel report"
* status = #final "final"
* category[0] = DiagnosticService#LAB
* category[1] = DiagnosticService#GE
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2020-03-15"
* issued = "2020-03-15T00:00:01+00:00"
* specimen = Reference(scenario1-mcode-genetic-specimen)
* result[0] = Reference(scenario1-mcode-cancer-genetic-variant)
* result[1] = Reference(scenario1-mcode-genomic-region-studied)

Instance: scenario1-mcode-genomic-region-studied
InstanceOf: GenomicRegionStudied
Description: "Extended example 1: example showing which regions were included in the genomics panel"
* status = #final "final"
* code = LNC#53041-0 "DNA region of interest panel"
* subject = Reference(scenario1-mcode-cancer-patient)
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

Instance: scenario1-mcode-genetic-specimen
InstanceOf: GeneticSpecimen
Description: "Extended example 1: example showing genetic specimen for sequencing"
* status = #available "available"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TISS
* subject = Reference(scenario1-mcode-cancer-patient)
* collection.collector = Reference(scenario1-us-core-practitioner)
* collection.bodySite = SCT#80248007 "Left breast structure (body structure)"
* processing[0].timeDateTime = "2018-03-01"

Instance: scenario1-mcode-cancer-genetic-variant
InstanceOf: CancerGeneticVariant
Description: "Extended example 1: example showing genetic variant found by breast cancer genomics panel"
* status = #final "final"
* code = LNC#69548-6 "Genetic variant assessment"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-15"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* method = LNC#LA26398-0 "Sequencing"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:26144 "PALB2"
* component[VariationCode].valueCodeableConcept = CLINVAR#128144 "NM_024675.3(PALB2):c.3549C>A (p.Tyr1183Ter)"
* component[GenomicDNAChange].valueCodeableConcept = HGVS#NC_000016.10:g.23603471G>T
* component[GenomicSourceClass].valueCodeableConcept = LNC#LA6684-0 "Somatic"

Instance: scenario1-mcode-cancer-related-medication-chemo-doxorubicin
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example 1: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#3639 "DOXOrubicin"
* subject = Reference(scenario1-mcode-cancer-patient)
* requester = Reference(scenario1-us-core-practitioner)
* reasonReference = Reference(scenario1-mcode-primary-cancer-condition)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2019-04-01"
* authoredOn = "2019-04-01"
* dosageInstruction.text = "doxorubicin (60 mg/m² IV), 93.26mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 93.26 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"

Instance: scenario1-mcode-cancer-related-medication-chemo-cyclophosphamide
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example 1: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#3002 "cyclophosphamide"
* subject = Reference(scenario1-mcode-cancer-patient)
* requester = Reference(scenario1-us-core-practitioner)
* reasonReference = Reference(scenario1-mcode-primary-cancer-condition)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-01"
* authoredOn = "2018-04-01"
* dosageInstruction.text = "cyclophosphamide (600 mg/m² IV), 932.59mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 932.59 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"


Instance: scenario1-mcode-cancer-related-medication-chemo-paclitaxel
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example 1: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#56946 "PACLitaxel"
* subject = Reference(scenario1-mcode-cancer-patient)
* requester = Reference(scenario1-us-core-practitioner)
* reasonReference = Reference(scenario1-mcode-primary-cancer-condition)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-01"
* authoredOn = "2018-04-01"
* dosageInstruction.text = "doxorubicin (175 mg/m² IV), 272.01mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 272.01 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"

Instance: scenario1-mcode-cancer-related-medication-anastrozole
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example 1: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#community
* intent = #order
* medicationCodeableConcept = RXN#84857 "anastrozole"
* subject = Reference(scenario1-mcode-cancer-patient)
* requester = Reference(scenario1-us-core-practitioner)
* reasonReference = Reference(scenario1-mcode-primary-cancer-condition)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-05-01"
* authoredOn = "2018-05-01"
* dosageInstruction.text = "1mg orally once daily"
* dosageInstruction.route = SCT#26643006 "Oral route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 1 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 1 'd' "day"


Instance: scenario1-us-core-practitioner
InstanceOf: USCorePractitioner
Description: "Extended example 1: example practitioner"
* identifier[NPI].value = "9988776655"
* name.family = "Anydoc"
* name.given[0] = "Kyle"
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


Instance: scenario1-practitioner2-mcode
InstanceOf: USCorePractitioner
Description: "Extended example 1: example practitioner (pathologist)"
* identifier[NPI].value = "1122334455"
* name.family = "Pathologist"
* name.given[0] = "Sam"
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

Instance: scenario1-organization1-mcode
InstanceOf: Organization
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


Instance: scenario1-us-core-procedure-biopsy
InstanceOf: USCoreProcedure
Description: "Extended example 1: example biopsy procedure"
* status = #completed "completed"
* code = SCT#723990008 "Biopsy of breast using ultrasonographic guidance (procedure)"
* subject = Reference(scenario1-mcode-cancer-patient)
* performer.actor = Reference(scenario1-us-core-practitioner)
* performedDateTime = "2018-03-01"
* asserter = Reference(scenario1-us-core-practitioner)
* reasonReference = Reference(scenario1-mcode-primary-cancer-condition)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: scenario1-us-core-procedure-mammogram
InstanceOf: USCoreProcedure
Description: "Extended example 1: example mammogram"
* status = #completed "completed"
* code = SCT#71651007 "Mammography (procedure)"
* subject = Reference(scenario1-mcode-cancer-patient)
* performer.actor = Reference(scenario1-us-core-practitioner)
* performedDateTime = "2018-03-01"
* asserter = Reference(scenario1-us-core-practitioner)

Instance: scenario1-us-core-smoking-status
InstanceOf: USCoreSmokingStatusProfile
Description: "Extended example 1: example showing smoking status"
* status = #final "final"
* code = LNC#72166-2 "Tobacco smoking status"
* subject = Reference(scenario1-mcode-cancer-patient)
* issued = "2018-03-01T00:00:00Z"
* valueCodeableConcept = SCT#449868002 "Smokes tobacco daily (finding)"

Instance: scenario1-observation-smoking-history
InstanceOf: Observation
Description: "Extended example 1: example showing smoking history"
* status = #final "final"
* category = ObsCat#social-history "Social History"
* code = SCT#401201003 "Cigarette pack-years (observable entity)" // No LOINC available
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-01T00:00:00Z"
* valueQuantity = 20 '{PackYears}' "Pack-Years"

Instance: scenario1-us-core-condition-anxiety
InstanceOf: USCoreCondition
Description: "Extended example 1: example showing comorbid condition (anxiety)"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item "Problem List Item"
* code = SCT#48694002 "Anxiety (finding)"
* subject = Reference(scenario1-mcode-cancer-patient)
* onsetDateTime = "2002-01-01"

Instance: scenario1-family-member-history-aunt
InstanceOf: FamilyMemberHistory
Description: "Extended example 1: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(scenario1-mcode-cancer-patient)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MAUNT "maternal aunt"
* condition.code = SCT#363443007 "Malignant tumor of ovary (disorder)"
* condition.onsetAge = 69.0 'a'
//* condition.onsetAge.value = 69.0
//* condition.onsetAge = UCUM#a "years"

Instance: scenario1-family-member-history-sister
InstanceOf: FamilyMemberHistory
Description: "Extended example 1: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(scenario1-mcode-cancer-patient)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NSIS "natural sister"
* condition.code = SCT#254837009 "Malignant neoplasm of breast (disorder)"
* condition.onsetAge = 64.0 'a'
//* condition.onsetAge.value = 64.0
//* condition.onsetAge = UCUM#a "years"
* condition.contributedToDeath = false

Instance: scenario1-family-member-history-uncle
InstanceOf: FamilyMemberHistory
Description: "Extended example 1: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(scenario1-mcode-cancer-patient)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PUNCLE "paternal uncle"
* condition.code = SCT#363418001 "Malignant tumor of pancreas (disorder)"
* condition.contributedToDeath = true
* deceasedBoolean = true

Instance: scenario1-specimen-tumor
InstanceOf: Specimen
Description: "Extended example 1: example tumor specimen"
* status = #available "available"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TUMOR "Tumor"
* subject = Reference(scenario1-mcode-cancer-patient)
* receivedTime = "2019-03-05"
* collection.bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: scenario1-diagnosticreport-pathology
InstanceOf: USCoreDiagnosticReportLab
Description: "Extended example 1: example of pathology findings represented as a DiagnosticReport resource."
* status = #final "final"
* category[0] = DiagnosticService#LAB
* category[1] = DiagnosticService#SP "Surgical Pathology"
* code = LNC#22637-3 "Pathology report final diagnosis Narrative"
* subject = Reference(scenario1-mcode-cancer-patient)
* issued = "2018-03-06T00:00:00Z"
* effectiveDateTime = "2018-03-06T00:00:00Z"
* specimen = Reference(scenario1-specimen-tumor)
* result[0] = Reference(scenario1-observation-tumor-invasion-negative)
* result[1] = Reference(scenario1-observation-tumor-negative-margins)
* result[2] = Reference(scenario1-observation-tumor-sentinel-nodes)
* result[3] = Reference(scenario1-observation-tumor-size)
* result[4] = Reference(scenario1-observation-tumor-dcis)
* performer = Reference(scenario1-organization1-mcode)
* resultsInterpreter = Reference(scenario1-practitioner2-mcode)

Instance: scenario1-observation-tumor-invasion-negative
InstanceOf: USCoreObservationLab
Description: "Extended example 1: example showing negative invasion for the removed tumor"
* status = #final "final"
* code = SCT#370052007 "Status of invasion by tumor (observable entity)" // No LOINC for invasion status
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueCodeableConcept = SCT#260385009 "Negative (qualifier value)"
* specimen = Reference(scenario1-specimen-tumor)

Instance: scenario1-observation-tumor-negative-margins
InstanceOf:  USCoreObservationLab
Description: "Extended example 1: example showing negative margins for the removed tumor"
* status = #final "final"
* code = LNC#44669-0 "Margin involvement in Breast tumor"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueCodeableConcept = LNC#LA27151-2 "Uninvolved by invasive carcinoma"
* specimen = Reference(scenario1-specimen-tumor)

Instance: scenario1-observation-tumor-sentinel-nodes
InstanceOf:  USCoreObservationLab
Description: "Extended example 1: example showing 3 sentinel lymph nodes were examined"
* status = #final "final"
* code = LNC#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* component.code = LNC#92833-3 "Lymph nodes examined [#] in Cancer specimen by Light microscopy"
* component.valueQuantity = 3 '{Count}' "Count"
* specimen = Reference(scenario1-specimen-tumor)

Instance: scenario1-observation-tumor-size
InstanceOf:  USCoreObservationLab
Description: "Extended example 1: example showing tumor size"
* status = #final "final"
* code = LNC#21889-1 "Size Tumor"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* component.code = LNC#33728-7 "Size.maximum dimension in Tumor"
* component.valueQuantity = 2.5 'cm' 
* component.valueQuantity.unit = "centimeters"
* specimen = Reference(scenario1-specimen-tumor)

Instance: scenario1-observation-tumor-dcis
InstanceOf:  USCoreObservationLab
Description: "Extended example 1: example showing DCIS diagnosis"
* status = #final "final"
* code = LNC#29308-4 "Diagnosis"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueCodeableConcept = LNC#85336-6 "DCIS intraductal extension in Breast cancer specimen Qualitative by Light microscopy"
* specimen = Reference(scenario1-specimen-tumor)

Instance: scenario1-body-weight
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
Description: "Extended example 1: example of body weight vital sign"
* status = #final "final"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueQuantity = 155.0 '[lb_av]'
* valueQuantity.unit = "lb"

Instance: scenario1-neutrophils
InstanceOf: USCoreObservationLab
Description: "Extended example 1: neutrophils lab test"
* status = #final "final"
* code = LNC#770-8 "Neutrophils/100 leukocytes in Blood by Automated count"
* subject = Reference(scenario1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueQuantity = 40.0 '%' "%"
* referenceRange.low = 37.0 '%' "%"
* referenceRange.high = 67.0 '%' "%"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"
