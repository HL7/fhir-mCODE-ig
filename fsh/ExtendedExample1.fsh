// Keep contents and order of this file in sync with the list in `2_examples.md`.

// example1-mcode-cancer-patient.json
Instance: example1-mcode-cancer-patient
InstanceOf: CancerPatient
Description: "Extended example 1: example cancer patient"
* id = "example1-mcode-cancer-patient"
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

// example1-mcode-cancer-disease-status.json
Instance: example1-mcode-cancer-disease-status
InstanceOf: CancerDiseaseStatus
Description: "Extended example 1: example showing disease status (patient's condition improved)"
* id = "example1-mcode-cancer-disease-status"
* extension[evidenceType].valueCodeableConcept = SCT#363679005 "Imaging (procedure)"
* status = #final "final"
* category = ObsCat#imaging
* code = LNC#88040-1 "Response to cancer treatment"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2020-03-01"
* performer = Reference(example1-practitioner1-mcode)
* focus = Reference(example1-mcode-primary-cancer-condition)
* valueCodeableConcept = SCT#268910001 "Patient's condition improved (finding)"

// example1-mcode-comorbid-condition-depression.json
Instance: example1-mcode-comorbid-condition-depression
InstanceOf: ComorbidCondition
Description: "Extended example 1: example showing comorbid condition (depression)"
* id = "example1-mcode-comorbid-condition-depression"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* code = SCT#35489007 "Depressive disorder (disorder)"
* subject = Reference(example1-mcode-cancer-patient)
* onsetDateTime = "2000-01-01"
* asserter = Reference(example1-practitioner1-mcode)

// example1-mcode-comorbid-condition-hyptertension.json
Instance: example1-mcode-comorbid-condition-hypertension
InstanceOf: ComorbidCondition
Description: "Extended example 1: example showing comorbid condition (hypertension)"
* id = "example1-mcode-comorbid-condition-hypertension"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* code = ICD10CM#I119 "Hypertensive heart disease without heart failure"
* subject = Reference(example1-mcode-cancer-patient)
* onsetDateTime = "2000-01-01"
* asserter = Reference(example1-practitioner1-mcode)

// example1-mcode-ecog-performance-status.json
Instance: example1-mcode-ecog-performance-status
InstanceOf: ECOGPerformanceStatus
Description: "Extended example 1: example showing ECOG performance status"
* id = "example1-mcode-ecog-performance-status"
* status = #final "final"
* category = ObsCat#survey
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-01"
* performer = Reference(example1-practitioner1-mcode)
* valueInteger = 0
* interpretation = LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* method = SCT#5880005 "Physical examination procedure (procedure)"

// example1-mcode-cancer-related-surgical-procedure-mastectomy.json
Instance: example1-mcode-cancer-related-surgical-procedure-mastectomy
InstanceOf: CancerRelatedSurgicalProcedure
Description: "Extended example 1: example showing partial mastectomy surgical procedure"
* id = "example1-mcode-cancer-related-surgical-procedure"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed "completed"
* code = SCT#64368001 "Partial mastectomy (procedure)"
* subject = Reference(example1-mcode-cancer-patient)
* performedDateTime = "2019-03-05"
* asserter = Reference(example1-practitioner1-mcode)
* reasonReference = Reference(example1-mcode-primary-cancer-condition)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

// example1-mcode-cancer-related-radiation-procedure.json
Instance: example1-mcode-cancer-related-radiation-procedure
InstanceOf: CancerRelatedRadiationProcedure
Description: "Extended example 1: example showing radiation treatment"
* id = "example1-mcode-cancer-related-radiation-procedure"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed "completed"
* code = SCT#385798007 "Radiation therapy care (regime/therapy)"
* subject = Reference(example1-mcode-cancer-patient)
* performedDateTime = "2018-03-20"
* asserter = Reference(example1-practitioner1-mcode)
* reasonReference = Reference(example1-mcode-primary-cancer-condition)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

// example1-mcode-primary-cancer-condition.json
Instance: example1-mcode-primary-cancer-condition
InstanceOf: PrimaryCancerCondition
Description: "Extended example 1: example showing primary cancer condition"
* id = "example1-mcode-primary-cancer-condition"
* extension[HistologyMorphologyBehavior].valueCodeableConcept = SCT#413448000 "Adenocarcinoma, no subtype, intermediate grade (morphologic abnormality)"
* clinicalStatus = ClinStatus#remission
* verificationStatus = VerStatus#confirmed
* category = SCT#64572001 "Disease (disorder)"
* code = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(example1-mcode-cancer-patient)
* onsetDateTime = "2018-03-15"
* asserter = Reference(example1-practitioner1-mcode)
* stage.summary = AJCC#3C
* stage.assessment = Reference(example1-mcode-tnm-clinical-stage-group)

// example1-mcode-tnm-clinical-stage-group.json
Instance: example1-mcode-tnm-clinical-stage-group
InstanceOf: TNMClinicalStageGroup
Description: "Extended example 1: example showing TNM staging (stage group)"
* id = "example1-mcode-tnm-clinical-stage-group"
* status = #final "final"
* category = ObsCat#survey
* code = LNC#21908-9 "Stage group.clinical Cancer"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#2B "IIB"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* hasMember[0] = Reference(example1-mcode-tnm-primary-tumor-category)
* hasMember[1] = Reference(example1-mcode-tnm-clinical-regional-nodes-category)
* hasMember[2] = Reference(example1-mcode-tnm-clinical-distant-metastases-category)

// example1-mcode-tnm-primary-tumor-category.json
Instance: example1-mcode-tnm-primary-tumor-category
InstanceOf: TNMClinicalPrimaryTumorCategory
Description: "Extended example 1: example showing TNM staging (T)"
* id = "example1-mcode-tnm-primary-tumor-category"
* status = #final "final"
* category = ObsCat#survey
* code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#cT3
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"

// example1-mcode-tnm-clinical-regional-nodes-category.json
Instance: example1-mcode-tnm-clinical-regional-nodes-category
InstanceOf: TNMClinicalRegionalNodesCategory
Description: "Extended example 1: example showing TNM staging (N)"
* id = "example1-mcode-tnm-clinical-regional-nodes-category"
* status = #final "final"
* category = ObsCat#survey
* code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#cN0
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"

// example1-mcode-tnm-clinical-distant-metastases-category.json
Instance: example1-mcode-tnm-clinical-distant-metastases-category
InstanceOf: TNMClinicalDistantMetastasesCategory
Description: "Extended example 1: example showing TNM staging (M)"
* id = "example1-mcode-tnm-clinical-distant-metastases-category"
* status = #final "final"
* category = ObsCat#survey
* code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* valueCodeableConcept = AJCC#cM0
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"

// example1-mcode-tumor-marker-er.json
Instance: example1-mcode-tumor-marker-er
InstanceOf: TumorMarker
Description: "Extended example 1: example showing ER status"
* id = "example1-mcode-tumor-marker-er"
* status = #final "final"
* category = ObsCat#laboratory
* code = LNC#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* performer = Reference(example1-practitioner1-mcode)
* valueCodeableConcept = LNC#LA6576-8 "Positive"

// example1-mcode-tumor-marker-pr.json
Instance: example1-mcode-tumor-marker-pr
InstanceOf: TumorMarker
Description: "Extended example 1: example showing PR status"
* id = "example1-mcode-tumor-marker-pr"
* status = #final "final"
* category = ObsCat#laboratory
* code = LNC#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* performer = Reference(example1-practitioner1-mcode)
* valueCodeableConcept = LNC#LA6577-6 "Negative"

// example1-mcode-tumor-marker-her2.json
Instance: example1-mcode-tumor-marker-her2
InstanceOf: TumorMarker
Description: "Extended example 1: example showing HER2 status"
* id = "example1-mcode-tumor-marker-her2"
* status = #final "final"
* category = ObsCat#laboratory
* code = LNC#72382-5 "HER2 [Units/volume] in Tissue by Immunoassay"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-10"
* performer = Reference(example1-practitioner1-mcode)
* valueCodeableConcept = LNC#LA6577-6 "Negative"

// example1-mcode-tumor-marker-21-gene-panel.json
Instance: example1-mcode-tumor-marker-21-gene-panel
InstanceOf: TumorMarker
Description: "Extended example 1: example showing Oncotype DX breast recurrence score"
* id = "example1-mcode-tumor-marker-21-gene-panel"
* status = #final "final"
* category = ObsCat#laboratory
* code = https://www.ncbi.nlm.nih.gov/gtr/tests#509910 "Oncotype DX Breast Recurrence Score Assay"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-20"
* performer = Reference(example1-practitioner1-mcode)
* valueQuantity = UCUM#{ScoreOf}
* valueQuantity.value = 47
* interpretation = #H "High"

// example1-mcode-cancer-genomics-report.json
Instance: example1-mcode-cancer-genomics-report
InstanceOf: CancerGenomicsReport
Description: "Extended example 1: example of gene panel report"
* id = "example1-mcode-cancer-genomics-report"
* status = #final "final"
* category[0] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[1] = http://terminology.hl7.org/CodeSystem/v2-0074#GE
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2020-03-15"
* issued = "2020-03-15T00:00:01+00:00"
* specimen = Reference(example1-mcode-genetic-specimen)
* result[0] = Reference(example1-mcode-cancer-genetic-variant)
* result[1] = Reference(example1-mcode-genomic-region-studied)

// example1-mcode-genomic-region-studied.json
Instance: example1-mcode-genomic-region-studied
InstanceOf: GenomicRegionStudied
Description: "Extended example 1: example showing which regions were included in the genomics panel"
* id = "example1-mcode-genomic-region-studied"
* status = #final "final"
* category = ObsCat#laboratory
* code = LNC#53041-0 "DNA region of interest panel"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-04-01"
* issued = "2018-04-01T00:00:01+00:00"
* component.code = LNC#48018-6 "Gene studied [ID]"
* component[GeneStudied].valueCodeableConcept.coding[0] = HGNC#1100 "BRCA1"
* component[GeneStudied].valueCodeableConcept.coding[1] = HGNC#1101 "BRCA2"
* component[GeneStudied].valueCodeableConcept.coding[2] = HGNC#1748 "CDH1"
* component[GeneStudied].valueCodeableConcept.coding[3] = HGNC#26144 "PALB2"
* component[GeneStudied].valueCodeableConcept.coding[4] = HGNC#9588 "PTEN"
* component[GeneStudied].valueCodeableConcept.coding[5] = HGNC#11389 "STK11"
* component[GeneStudied].valueCodeableConcept.coding[6] = HGNC#11998 "TP53"

// example1-mcode-genetic-specimen.json
Instance: example1-mcode-genetic-specimen
InstanceOf: GeneticSpecimen
Description: "Extended example 1: example showing genetic specimen for sequencing"
* id = "example1-mcode-genetic-specimen"
* status = #available "available"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TISS
* subject = Reference(example1-mcode-cancer-patient)
* collection.collector = Reference(example1-practitioner1-mcode)
* collection.bodySite = SCT#80248007 "Left breast structure (body structure)"
* processing[0].timeDateTime = "2018-03-01"

// example1-mcode-cancer-genetic-variant.json
Instance: example1-mcode-cancer-genetic-variant
InstanceOf: CancerGeneticVariant
Description: "Extended example 1: example showing genetic variant found by breast cancer genomics panel"
* id = "example1-mcode-cancer-genetic-variant"
* status = #final "final"
* category = ObsCat#laboratory
* code = LNC#69548-6 "Genetic variant assessment"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-15"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* method = LNC#LA26398-0 "Sequencing"
* component[0].code = LNC#48018-6 "Gene studied [ID]"
* component[0].valueCodeableConcept = HGNC#HGNC:26144 "PALB2"
* component[1].code = LNC#81252-9 "Discrete genetic variant"
* component[1].valueCodeableConcept = CLINVAR#128144 "NM_024675.3(PALB2):c.3549C>A (p.Tyr1183Ter)"
* component[2].code = LNC#81290-9 "Genomic DNA change (gHGVS)"
* component[2].valueCodeableConcept = HGVS#NC_000016.10:g.23603471G>T
* component[3].code = LNC#48002-0 "Genomic source class [Type]"
* component[3].valueCodeableConcept = LNC#LA6684-0 "Somatic"

// example1-mcode-cancer-related-medication-chemo-doxorubicin.json
Instance: example1-mcode-cancer-related-medication-chemo-doxorubicin
InstanceOf: CancerRelatedMedicationStatement
Description: "Extended example 1: example showing chemotherapy medication"
* id = "example1-mcode-cancer-related-medication-chemo-doxorubicin"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedCat#outpatient
* medicationCodeableConcept = RXN#3639 "DOXOrubicin"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2019-04-01"
* dateAsserted = "2019-04-01"
* dosage.text = "doxorubicin (60 mg/m² IV), 93.26mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosage.doseAndRate.doseQuantity = UCUM#mg
* dosage.doseAndRate.doseQuantity.value = 93.26

// Once every 3 weeks
* dosage.maxDosePerPeriod.numerator.value = 1
* dosage.maxDosePerPeriod.denominator = UCUM#wk "week"
* dosage.maxDosePerPeriod.denominator.value = 3

// example1-mcode-cancer-related-medication-chemo-cyclophosphamide.json
Instance: example1-mcode-cancer-related-medication-chemo-cyclophosphamide
InstanceOf: CancerRelatedMedicationStatement
Description: "Extended example 1: example showing chemotherapy medication"
* id = "example1-mcode-cancer-related-medication-chemo-cyclophosphamide"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedCat#outpatient
* medicationCodeableConcept = RXN#3002 "cyclophosphamide"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-04-01"
* dateAsserted = "2018-04-01"
* dosage.text = "cyclophosphamide (600 mg/m² IV), 932.59mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosage.doseAndRate.doseQuantity = UCUM#mg
* dosage.doseAndRate.doseQuantity.value = 932.59

// Once every 3 weeks
* dosage.maxDosePerPeriod.numerator.value = 1
* dosage.maxDosePerPeriod.denominator = UCUM#wk "week"
* dosage.maxDosePerPeriod.denominator.value = 3


// example1-mcode-cancer-related-medication-chemo-paclitaxel.json
Instance: example1-mcode-cancer-related-medication-chemo-paclitaxel
InstanceOf: CancerRelatedMedicationStatement
Description: "Extended example 1: example showing chemotherapy medication"
* id = "example1-mcode-cancer-related-medication-chemo-paclitaxel"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedCat#outpatient
* medicationCodeableConcept = RXN#56946 "PACLitaxel"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-04-01"
* dateAsserted = "2018-04-01"
* dosage.text = "doxorubicin (175 mg/m² IV), 272.01mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosage.doseAndRate.doseQuantity = UCUM#mg
* dosage.doseAndRate.doseQuantity.value = 272.01

// Once every 3 weeks
* dosage.maxDosePerPeriod.numerator.value = 1
* dosage.maxDosePerPeriod.denominator = UCUM#wk "week"
* dosage.maxDosePerPeriod.denominator.value = 3

// example1-mcode-cancer-related-medication-anastrozole.json
Instance: example1-mcode-cancer-related-medication-anastrozole
InstanceOf: CancerRelatedMedicationStatement
Description: "Extended example 1: example showing chemotherapy medication"
* id = "example1-mcode-cancer-related-medication-anastrozole"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedCat#community
* medicationCodeableConcept = RXN#84857 "anastrozole"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-05-01"
* dateAsserted = "2018-05-01"
* dosage.text = "1mg orally once daily"
* dosage.route = SCT#26643006 "Oral route (qualifier value)"
* dosage.doseAndRate.doseQuantity = UCUM#mg
* dosage.doseAndRate.doseQuantity.value = 1

// Once every 3 weeks
* dosage.maxDosePerPeriod.numerator.value = 1
* dosage.maxDosePerPeriod.denominator = UCUM#d "day"
* dosage.maxDosePerPeriod.denominator.value = 1

// example1-practitioner1-mcode.json
Instance: example1-practitioner1-mcode
InstanceOf: USCorePractitioner
Description: "Extended example 1: example practitioner"
* id = "example1-practitioner1-mcode"
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


Instance: example1-practitioner2-mcode
InstanceOf: USCorePractitioner
Description: "Extended example 1: example practitioner (pathologist)"
* id = "example1-practitioner2-mcode"
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

Instance: example1-organization1-mcode
InstanceOf: Organization
Description: "Extended example 1: example organization"
* id = "example1-organization1-mcode"
* active = true
* type = http://hl7.org/fhir/ValueSet/organization-type#prov "Healthcare Provider"
* name = "Physician Services, Inc."
* telecom.system = #phone
* telecom.value = "999-999-9999"
* telecom.use = #work
* address.line = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"


// example1-us-core-procedure-biopsy.json
Instance: example1-us-core-procedure-biopsy
InstanceOf: USCoreProcedure
Description: "Extended example 1: example biopsy procedure"
* id = "example1-us-core-procedure-biopsy"
* status = #completed "completed"
* code = SCT#723990008 "Biopsy of breast using ultrasonographic guidance (procedure)"
* subject = Reference(example1-mcode-cancer-patient)
* performer.actor = Reference(example1-practitioner1-mcode)
* performedDateTime = "2018-03-01"
* asserter = Reference(example1-practitioner1-mcode)
* reasonReference = Reference(example1-mcode-primary-cancer-condition)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

// example1-us-core-procedure-mammogram.json
Instance: example1-us-core-procedure-mammogram
InstanceOf: USCoreProcedure
Description: "Extended example 1: example mammogram"
* id = "example1-us-core-procedure-mammogram"
* status = #completed "completed"
* code = SCT#71651007 "Mammography (procedure)"
* subject = Reference(example1-mcode-cancer-patient)
* performer.actor = Reference(example1-practitioner1-mcode)
* performedDateTime = "2018-03-01"
* asserter = Reference(example1-practitioner1-mcode)

// example1-us-core-smoking-status.json
Instance: example1-us-core-smoking-status
InstanceOf: USCoreSmokingStatusProfile
Description: "Extended example 1: example showing smoking status"
* id = "example1-us-core-smoking-status"
* status = #final "final"
* category = ObsCat#social-history "Social History"
* code = LNC#72166-2 "Tobacco smoking status"
* subject = Reference(example1-mcode-cancer-patient)
* issued = "2018-03-01T00:00:00Z"
* valueCodeableConcept = SCT#449868002 "Smokes tobacco daily (finding)"

// example1-observation-smoking-history.json
Instance: example1-observation-smoking-history
InstanceOf: Observation
Description: "Extended example 1: example showing smoking history"
* id = "example1-observation-smoking-history"
* status = #final "final"
* category = ObsCat#social-history "Social History"
* code = SCT#401201003 "Cigarette pack-years (observable entity)" // No LOINC available
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-01T00:00:00Z"
* valueQuantity = UCUM#{PackYears}
* valueQuantity.value = 20

// example1-us-core-condition-anxiety.json
Instance: example1-us-core-condition-anxiety
InstanceOf: USCoreCondition
Description: "Extended example 1: example showing comorbid condition (anxiety)"
* id = "example1-us-core-condition-anxiety"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code = SCT#48694002 "Anxiety (finding)"
* subject = Reference(example1-mcode-cancer-patient)
* onsetDateTime = "2002-01-01"

// example1-family-member-history-aunt.json
Instance: example1-family-member-history-aunt
InstanceOf: FamilyMemberHistory
Description: "Extended example 1: example showing family member history of cancer"
* id = "example1-family-member-history-aunt"
* status = #completed "completed"
* patient = Reference(example1-mcode-cancer-patient)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MAUNT "maternal aunt"
* condition.code = SCT#363443007 "Malignant tumor of ovary (disorder)"
* condition.onsetAge.value = 69
* condition.onsetAge.system = UCUM#a "yr"
* condition.contributedToDeath = false

// example1-family-member-history-sister.json
Instance: example1-family-member-history-sister
InstanceOf: FamilyMemberHistory
Description: "Extended example 1: example showing family member history of cancer"
* id = "example1-family-member-history-sister"
* status = #completed "completed"
* patient = Reference(example1-mcode-cancer-patient)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NSIS "natural sister"
* condition.code = SCT#254837009 "Malignant neoplasm of breast (disorder)"
* condition.onsetAge.value = 64
* condition.onsetAge.system = UCUM#a "yr"
* condition.contributedToDeath = false

// example1-family-member-history-uncle.json
Instance: example1-family-member-history-uncle
InstanceOf: FamilyMemberHistory
Description: "Extended example 1: example showing family member history of cancer"
* id = "example1-family-member-history-uncle"
* status = #completed "completed"
* patient = Reference(example1-mcode-cancer-patient)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PUNCLE "paternal uncle"
* condition.code = SCT#363418001 "Malignant tumor of pancreas (disorder)"
* condition.contributedToDeath = true
* deceasedBoolean = true

// example1-specimen-tumor.json
Instance: example1-specimen-tumor
InstanceOf: Specimen
Description: "Extended example 1: example tumor specimen"
* id = "example1-specimen-tumor"
* status = #available "available"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TUMOR "Tumor"
* subject = Reference(example1-mcode-cancer-patient)
* receivedTime = "2019-03-05"
* collection.bodySite = SCT#80248007 "Left breast structure (body structure)"

// example1-diagnosticreport-pathology.json
Instance: example1-diagnosticreport-pathology
InstanceOf: DiagnosticReport
Description: "Extended example 1: example of pathology findings represnted as a DiagnosticReport"
* id = "example1-diagnosticreport-pathology"
* status = #final "final"
* category = #SP "Surgical Pathology"
* code = LNC#22637-3 "Pathology report final diagnosis Narrative"
* subject = Reference(example1-mcode-cancer-patient)
* issued = "2018-03-06T00:00:00Z"
* specimen = Reference(example1-specimen-tumor)
* result[0] = Reference(example1-observation-tumor-invasion-negative)
* result[1] = Reference(example1-observation-tumor-negative-margins)
* result[2] = Reference(example1-observation-tumor-sentinel-nodes)
* result[3] = Reference(example1-observation-tumor-size)
* result[4] = Reference(example1-observation-tumor-dcis)
* performer = Reference(example1-organization1-mcode)
* resultsInterpreter = Reference(example1-practitioner2-mcode)

// example1-observation-tumor-invasion-negative.json
Instance: example1-observation-tumor-invasion-negative
InstanceOf: Observation
Description: "Extended example 1: example showing negative invasion for the removed tumor"
* id = "example1-observation-tumor-invasion-negative"
* status = #final "final"
* category = ObsCat#laboratory "Laboratory"
* code = SCT#370052007 "Status of invasion by tumor (observable entity)" // No LOINC for invasion status
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueCodeableConcept = SCT#260385009 "Negative (qualifier value)"
* specimen = Reference(example1-specimen-tumor)

// example1-observation-tumor-negative-margins.json
Instance: example1-observation-tumor-negative-margins
InstanceOf: Observation
Description: "Extended example 1: example showing negative margins for the removed tumor"
* id = "example1-observation-tumor-negative-margins"
* status = #final "final"
* category = ObsCat#laboratory "Laboratory"
* code = LNC#44669-0 "Margin involvement in Breast tumor"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueCodeableConcept = LNC#LA27151-2 "Uninvolved by invasive carcinoma"
* specimen = Reference(example1-specimen-tumor)

// example1-observation-tumor-sentinel-nodes.json
Instance: example1-observation-tumor-sentinel-nodes
InstanceOf: Observation
Description: "Extended example 1: example showing 3 sentinel lymph nodes were examined"
* id = "example1-observation-tumor-sentinel-nodes"
* status = #final "final"
* category = ObsCat#laboratory "Laboratory"
* code = LNC#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* component.code = LNC#92833-3 "Lymph nodes examined [#] in Cancer specimen by Light microscopy"
* component.valueQuantity = UCUM#{Count}
* component.valueQuantity.value = 3
* specimen = Reference(example1-specimen-tumor)

// example1-observation-tumor-size.json
Instance: example1-observation-tumor-size
InstanceOf: Observation
Description: "Extended example 1: example showing tumor size"
* id = "example1-observation-tumor-size"
* status = #final "final"
* category = ObsCat#laboratory "Laboratory"
* code = LNC#21889-1 "Size Tumor"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* component.code = LNC#33728-7 "Size.maximum dimension in Tumor"
* component.valueQuantity = UCUM#cm
* component.valueQuantity.value = 2.5
* specimen = Reference(example1-specimen-tumor)

// example1-observation-dcis.json
Instance: example1-observation-tumor-dcis
InstanceOf: Observation
Description: "Extended example 1: example showing DCIS diagnosis"
* id = "example1-observation-tumor-dcis"
* status = #final "final"
* category = ObsCat#laboratory "Laboratory"
* code = LNC#29308-4 "Diagnosis"
* subject = Reference(example1-mcode-cancer-patient)
* effectiveDateTime = "2018-03-06T00:00:00Z"
* valueCodeableConcept = LNC#85336-6 "DCIS intraductal extension in Breast cancer specimen Qualitative by Light microscopy"
* specimen = Reference(example1-specimen-tumor)
