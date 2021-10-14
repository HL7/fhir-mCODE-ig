/* Order of Events
2018-02-01  MammogramDate
2018-03-06  Biopsy Performed by Obgyn
2018-03-10  Tumor marker test results
2018-03-16  Initial Oncologist visit
   - Medical History
   - Family History
   - Vital Signs
2018-03-16  Diagnosis and Clinical Staging
2018-03-16  Tumor Marker Test Results
2018-03-16  7-Gene Panel Results
2018-04-01  Partial Mastectomy
2018-04-01  Tumor specimen collected and given to pathology
2018-04-05  Pathology Results
2018-04-12  21-Gene Panel Results
2018-04-12  Chemo begins  // 4 cycles, each 28 days (~ 4 months)
2018-08-21  Radiation begins
2018-09-30  Radiation ends
2018-10-01  Anastrazole begins
2018-11-01  Disease status assessed following first line of therapy
*/

// Mammogram 3/1/2018

Instance: us-core-procedure-mammogram-jenny-m
InstanceOf: USCoreProcedure
Description: "Extended example: example mammogram"
* status = #completed "completed"
* code = SCT#71651007 "Mammography (procedure)"
* subject = Reference(cancer-patient-jenny-m)
* performer.actor = Reference(us-core-practitioner-jane-radiotech)
* performedDateTime = 2018-02-01
* asserter = Reference(us-core-practitioner-mary-obgyn)

// Biopsy Procedure - 3/6/2018

Instance: us-core-procedure-biopsy-jenny-m
InstanceOf: USCoreProcedure
Description: "Extended example: example biopsy procedure"
* status = #completed "completed"
* code = SCT#723990008 "Biopsy of breast using ultrasonographic guidance (procedure)"
* subject = Reference(cancer-patient-jenny-m)
* performer.actor = Reference(us-core-practitioner-mary-obgyn)
* performedDateTime = "2018-03-06"
* asserter = Reference(us-core-practitioner-mary-obgyn)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: genomic-specimen-left-breast-jenny-m
InstanceOf: GenomicSpecimen
Description: "Extended example: example showing genomic specimen for sequencing"
* status = #available "available"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TISS
* subject = Reference(cancer-patient-jenny-m)
* collection.collector = Reference(us-core-practitioner-owen-oncologist)
* collection.bodySite = SCT#80248007 "Left breast structure (body structure)"
* processing[0].timeDateTime = "2018-03-06"

// Initial Oncologist Appointment 3/16/2018

Instance: us-core-smokingstatus-jenny-m
InstanceOf: USCoreSmokingStatusProfile
Description: "Extended example: example showing smoking status"
* status = #final "final"
* code = LNC#72166-2 "Tobacco smoking status"
* subject = Reference(cancer-patient-jenny-m)
* issued = "2018-03-16T00:00:00Z"
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept = SCT#449868002 "Smokes tobacco daily (finding)"

Instance: observation-smoking-history-jenny-m
InstanceOf: Observation
Description: "Extended example: example showing smoking history"
* status = #final "final"
* category = ObsCat#social-history "Social History"
* code = SCT#401201003 "Cigarette pack-years (observable entity)" // No LOINC available
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueQuantity = 20 '{PackYears}' "Pack-Years"

Instance: us-core-condition-anxiety-jenny-m
InstanceOf: USCoreCondition
Description: "Extended example: example showing comorbid condition (anxiety)"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item "Problem List Item"
* code = SCT#48694002 "Anxiety (finding)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2005-01-01"

Instance: us-core-condition-depression-jenny-m
InstanceOf: USCoreCondition
Description: "Extended example: example showing comorbid condition (depression)"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#35489007 "Depressive disorder (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2005-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)

Instance: us-core-condition-hypertension-jenny-m
InstanceOf: USCoreCondition
Description: "Extended example: example showing comorbid condition (hypertension)"
* clinicalStatus = ClinStatus#active
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#77970009 "Benign hypertensive heart disease without congestive heart failure (disorder)"  // Changed to avoid IG Publisher error ICD10CM#I11.9 "Hypertensive heart disease without heart failure"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2012-01-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)

// Family History

Instance: family-member-history-aunt-jenny-m
InstanceOf: FamilyMemberHistory
Description: "Extended example: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(cancer-patient-jenny-m)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MAUNT "maternal aunt"
* condition.code = SCT#363443007 "Malignant tumor of ovary (disorder)"
* condition.onsetAge = 69.0 'a'

Instance: family-member-history-sister-jenny-m
InstanceOf: FamilyMemberHistory
Description: "Extended example: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(cancer-patient-jenny-m)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NSIS "natural sister"
* condition.code = SCT#254837009 "Malignant neoplasm of breast (disorder)"
* condition.onsetAge = 64.0 'a'
* condition.contributedToDeath = false

Instance: family-member-history-uncle-jenny-m
InstanceOf: FamilyMemberHistory
Description: "Extended example: example showing family member history of cancer"
* status = #completed "completed"
* patient = Reference(cancer-patient-jenny-m)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PUNCLE "paternal uncle"
* condition.code = SCT#363418001 "Malignant tumor of pancreas (disorder)"
* condition.contributedToDeath = true
* deceasedBoolean = true

Instance: cancer-related-mcode-comorbidities-elixhauser-jenny-m
InstanceOf: ComorbiditiesElixhauser
Description: "mCODE Example for Cancer-Related Comorbidities"
* subject = Reference(cancer-patient-jenny-m)
* performer = Reference(us-core-practitioner-owen-oncologist)
* status = #final "final"
* effectiveDateTime = "2018-03-16"
* component[depression].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"
* component[depression].extension[conditionReference].valueReference = Reference(us-core-condition-depression-jenny-m)
* component[hypertensionComplicated].valueCodeableConcept = SCT#52101004 "Present (qualifier value)"
* component[hypertensionComplicated].extension[conditionReference].valueReference = Reference(us-core-condition-hypertension-jenny-m)
* component[arthropathy].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[congestiveHeartFailure].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[chronicPulmonaryDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[diabetesUncomplicated].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[diabetesComplicated].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[obesity].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[peripheralVascularDisease].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[pulmonaryCirculationDisorder].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[renalFailureModerate].valueCodeableConcept = SCT#2667000 "Absent (qualifier value)"
* component[drugAbuse].valueCodeableConcept = SCT#261665006 "Unknown (qualifier value)"


Instance: ecog-performance-status-jenny-m
InstanceOf: ECOGPerformanceStatus
Description: "Extended example: example showing ECOG performance status"
* status = #final "final"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-12"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueInteger = 0
* interpretation = LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* method = SCT#5880005 "Physical examination procedure (procedure)"

// body weight and height added to calculate BSA needed to convert chemotherapy relative dose orders to absolute doses for CancerRelatedMedicationAdministration

Instance: bodyweight-jenny-m-2018-03-16
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
Description: "Extended example: example of body weight vital sign"
* status = #final "final"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-06"
* valueQuantity = 155.0 '[lb_av]'
* valueQuantity.unit = "lb"

Instance: bodyheight-jenny-m-2018-03-06
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyheight
Description: "Extended example: example of body height vital sign"
* status = #final "final"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueQuantity = 65 '[in_i]'
* valueQuantity.unit = "in"

// Diagnosis and Clinical Staging 3/16/2018

Instance: primary-cancer-condition-jenny-m
InstanceOf: PrimaryCancerCondition
Description: "Extended example: example showing primary cancer condition"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#413448000 "Adenocarcinoma, no subtype, intermediate grade (morphologic abnormality)"
* clinicalStatus = ClinStatus#remission
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2018-03-16"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* stage.summary = AJCC#3C
* stage.assessment = Reference(tnm-clinical-stage-group-jenny-m)

Instance: tnm-clinical-stage-group-jenny-m
InstanceOf: CancerStageGroup
Description: "Extended example: example showing TNM staging (stage group)"
* status = #final "final"
* code = LNC#21908-9 "Stage group.clinical Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept = AJCC#2B "IIB"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* hasMember[0] = Reference(tnm-pathologic-primary-tumor-category-jenny-m)
* hasMember[1] = Reference(tnm-pathologic-regional-nodes-category-jenny-m)
* hasMember[2] = Reference(tnm-pathologic-distant-metastases-category-jenny-m)

Instance: tnm-clinical-primary-tumor-category-jenny-m
InstanceOf: TNMPrimaryTumorCategory
Description: "Extended example: example showing TNM staging (T)"
* status = #final "final"
* code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept = AJCC#cT3
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Instance: tnm-clinical-regional-nodes-category-jenny-m
InstanceOf: TNMRegionalNodesCategory
Description: "Extended example: example showing TNM staging (N)"
* status = #final "final"
* code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept = AJCC#cN0
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Instance: tnm-clinical-distant-metastases-category-jenny-m
InstanceOf: TNMDistantMetastasesCategory
Description: "Extended example: example showing TNM staging (M)"
* status = #final "final"
* code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* valueCodeableConcept = AJCC#cM0
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

// Tumor marker test results 3-16-2018

Instance: tumor-marker-test-er-jenny-m
InstanceOf: TumorMarkerTest
Description: "Extended example: example showing ER status"
* status = #final "final"
* code = LNC#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = LNC#LA6576-8 "Positive"

Instance: tumor-marker-test-pr-jenny-m
InstanceOf: TumorMarkerTest
Description: "Extended example: example showing PR status"
* status = #final "final"
* code = LNC#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = LNC#LA6577-6 "Negative"

Instance: tumor-marker-test-her2-jenny-m
InstanceOf: TumorMarkerTest
Description: "Extended example: example showing HER2 status"
* status = #final "final"
* code = LNC#48676-1 "HER2 [Interpretation] in Tissue"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-10"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueCodeableConcept = LNC#LA6577-6 "Negative"

// 7-Gene Panel

Instance: cancer-genomics-report-jenny-m
InstanceOf: CancerGenomicsReport
Description: "Extended example: example of gene panel report"
* status = #final "final"
* category[0] = DiagnosticService#LAB
* category[1] = DiagnosticService#GE
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-15"
* issued = "2020-03-15T00:00:01+00:00"
* specimen = Reference(genomic-specimen-left-breast-jenny-m)
* result[0] = Reference(cancer-genomic-variant-jenny-m)
* result[1] = Reference(genomic-region-studied-jenny-m)

Instance: genomic-region-studied-jenny-m
InstanceOf: GenomicRegionStudied
Description: "Extended example: example showing which regions were included in the genomics panel"
* status = #final "final"
* code = LNC#53041-0 "DNA region of interest panel"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-15"
* issued = "2018-03-15T00:00:01+00:00"
* component.code = LNC#48018-6 "Gene studied [ID]"
* component[geneStudied].valueCodeableConcept.coding[+] = HGNC#1100 "BRCA1"
* component[geneStudied].valueCodeableConcept.coding[+] = HGNC#1101 "BRCA2"
* component[geneStudied].valueCodeableConcept.coding[+] = HGNC#1748 "CDH1"
* component[geneStudied].valueCodeableConcept.coding[+] = HGNC#26144 "PALB2"
* component[geneStudied].valueCodeableConcept.coding[+] = HGNC#9588 "PTEN"
* component[geneStudied].valueCodeableConcept.coding[+] = HGNC#11389 "STK11"
* component[geneStudied].valueCodeableConcept.coding[+] = HGNC#11998 "TP53"

Instance: cancer-genomic-variant-jenny-m
InstanceOf: CancerGenomicVariant
Description: "Extended example: example showing genomic variant found by breast cancer genomics panel"
* status = #final "final"
* code = LNC#69548-6 "Genetic variant assessment"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-15"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* method = LNC#LA26398-0 "Sequencing"
* component[geneStudied].valueCodeableConcept = HGNC#HGNC:26144 "PALB2"
* component[variationCode].valueCodeableConcept = CLINVAR#128144 "NM_024675.3(PALB2):c.3549C>A (p.Tyr1183Ter)"
* component[genomicDNAChange].valueCodeableConcept = HGVS#NC_000016.10:g.23603471G>T
* component[genomicSourceClass].valueCodeableConcept = LNC#LA6684-0 "Somatic"


// Partial Mastectomy

Instance: cancer-related-surgical-procedure-jenny-m
InstanceOf: CancerRelatedSurgicalProcedure
Description: "Extended example: example showing partial mastectomy surgical procedure"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #completed "completed"
* code = SCT#64368001 "Partial mastectomy (procedure)"
* subject = Reference(cancer-patient-jenny-m)
* performedDateTime = "2018-04-01"
* asserter = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* bodySite = SCT#80248007 "Left breast structure (body structure)"

Instance: tumor-specimen-left-breast-jenny-m
InstanceOf: TumorSpecimen
Description: "Extended example: example tumor specimen"
* status = #available "available"
* type = SPTY#TUMOR
* identifier[tumorIdentifier].use = #usual
* identifier[tumorIdentifier].type = http://hl7.org/fhir/resource-types#BodyStructure
* identifier[tumorIdentifier].system = "http://radiology.hospital.example.org"
* identifier[tumorIdentifier].value = "Tumor 1234"
* subject = Reference(cancer-patient-jenny-m)
* receivedTime = "2018-04-01"
* collection.bodySite = SCT#80248007 "Left breast structure (body structure)"

// Pathology Results

Instance: us-core-diagnosticreport-lab-jenny-m
InstanceOf: USCoreDiagnosticReportLab
Description: "Extended example: example of pathology findings represented as a DiagnosticReport resource."
* status = #final "final"
* category[0] = DiagnosticService#LAB
* category[1] = DiagnosticService#SP "Surgical Pathology"
* code = LNC#22637-3 "Pathology report final diagnosis Narrative"
* subject = Reference(cancer-patient-jenny-m)
* issued = "2018-04-05T00:00:00Z"
* effectiveDateTime = "2018-04-01T00:00:00Z"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)
* result[0] = Reference(us-core-observation-lab-tumor-invasion-jenny-m)
* result[1] = Reference(us-core-observation-lab-tumor-margins-jenny-m)
* result[2] = Reference(us-core-observation-lab-sentinel-nodes-jenny-m)
* result[3] = Reference(tumor-size-jenny-m)
* result[4] = Reference(us-core-observation-lab-tumor-dcis-jenny-m)
* result[5] = Reference(tumor-marker-test-her2-jenny-m)
* performer = Reference(us-core-organization-physician-services-inc)
* resultsInterpreter = Reference(us-core-practitioner-peter-pathologist)

Instance: us-core-observation-lab-tumor-invasion-jenny-m
InstanceOf: USCoreObservationLab
Description: "Extended example: example showing negative invasion for the removed tumor"
* status = #final "final"
* code = SCT#370052007 "Status of invasion by tumor (observable entity)" // No LOINC for invasion status
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* valueCodeableConcept = SCT#260385009 "Negative (qualifier value)"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)

Instance: us-core-observation-lab-tumor-margins-jenny-m
InstanceOf:  USCoreObservationLab
Description: "Extended example: example showing negative margins for the removed tumor"
* status = #final "final"
* code = LNC#44669-0 "Margin involvement in Breast tumor"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* valueCodeableConcept = LNC#LA27151-2 "Uninvolved by invasive carcinoma"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)

Instance: us-core-observation-lab-sentinel-nodes-jenny-m
InstanceOf:  USCoreObservationLab
Description: "Extended example: example showing 3 sentinel lymph nodes were examined"
* status = #final "final"
* code = LNC#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* component.code = LNC#92833-3 "Lymph nodes examined [#] in Cancer specimen by Light microscopy"
* component.valueQuantity = 3 '{Count}' "Count"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)

Instance: tumor-size-jenny-m
InstanceOf:  TumorSize
Description: "Extended example: example showing tumor size"
* status = #final "final"
* code = LNC#21889-1 "Size Tumor"
* category = ObsCat#laboratory
* method = LNC#24419-4 "Pathology report gross observation"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* component.code = LNC#33728-7 "Size.maximum dimension in Tumor"
* component.valueQuantity = 2.5 'cm'
* component.valueQuantity.unit = "centimeters"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)

Instance: us-core-observation-lab-tumor-dcis-jenny-m
InstanceOf:  USCoreObservationLab
Description: "Extended example: example showing DCIS diagnosis"
* status = #final "final"
* code = LNC#29308-4 "Diagnosis"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01T00:00:00Z"
* valueCodeableConcept = LNC#85336-6 "DCIS intraductal extension in Breast cancer specimen Qualitative by Light microscopy"
* specimen = Reference(tumor-specimen-left-breast-jenny-m)

Instance: tnm-pathologic-stage-group-jenny-m
InstanceOf: CancerStageGroup
Description: "Extended example: example showing TNM staging (stage group)"
* status = #final "final"
* code = LNC#21902-2 "Stage group.pathology Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-05"
* valueCodeableConcept = AJCC#2B "IIB"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* hasMember[0] = Reference(tnm-pathologic-primary-tumor-category-jenny-m)
* hasMember[1] = Reference(tnm-pathologic-regional-nodes-category-jenny-m)
* hasMember[2] = Reference(tnm-pathologic-distant-metastases-category-jenny-m)

Instance: tnm-pathologic-primary-tumor-category-jenny-m
InstanceOf: TNMPrimaryTumorCategory
Description: "Extended example: example showing TNM staging (T)"
* status = #final "final"
* code = LNC#21899-0 "Primary tumor.pathology Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01"
* valueCodeableConcept = AJCC#pT3
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Instance: tnm-pathologic-regional-nodes-category-jenny-m
InstanceOf: TNMRegionalNodesCategory
Description: "Extended example: example showing TNM staging (N)"
* status = #final "final"
* code = LNC#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01"
* valueCodeableConcept = AJCC#pN0
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Instance: tnm-pathologic-distant-metastases-category-jenny-m
InstanceOf: TNMDistantMetastasesCategory
Description: "Extended example: example showing TNM staging (M)"
* status = #final "final"
* code = LNC#21901-4 "Distant metastases.pathology [Class] Cancer"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-01"
* valueCodeableConcept = AJCC#pM0
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

// 21-Gene Assay

Instance: tumor-marker-test-oncotype-dx-jenny-m
InstanceOf: TumorMarkerTest
Description: "Extended example: example showing Oncotype DX breast recurrence score. Note that this test has no assigned LOINC code, so GTR is being used as a backup. Only the score from the Oncotype DX panel (as opposed to variant data from the genes in the panel) is represented here."
* status = #final "final"
* code.coding[0] = CC#TMT-OTHER "Other Tumor Marker Test, Specify"
* code.coding[1] = GTR#509910 "Oncotype DX Breast Recurrence Score Assay"
* code.text = "Oncotype DX Breast Recurrence Score Assay"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-12"
* performer = Reference(us-core-organization-bedrock-medicine)
* valueQuantity = 47 '{ScoreOf}' "Recurrence score"
* interpretation = ObsInt#H "High"


// Initial Chemotherapy

Instance: cancer-related-medication-request-doxorubicin-jenny-m
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#3639 "DOXOrubicin"
* subject = Reference(cancer-patient-jenny-m)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-01"
* authoredOn = "2018-04-12"
* dosageInstruction.text = "doxorubicin (60 mg/m² IV)"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.rateQuantity = 60 'mg/m2' "mg/m2"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"

Instance: cancer-related-medication-request-cyclophosphamide-jenny-m
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#3002 "cyclophosphamide"
* subject = Reference(cancer-patient-jenny-m)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-01"
* authoredOn = "2018-04-12"
* dosageInstruction.text = "cyclophosphamide (600 mg/m² IV), 932.59mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 932.59 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"

Instance: cancer-related-medication-request-paclitaxel-jenny-m
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#outpatient
* intent = #order
* medicationCodeableConcept = RXN#56946 "PACLitaxel"
* subject = Reference(cancer-patient-jenny-m)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-04-12"
* authoredOn = "2018-04-12"
* dosageInstruction.text = "doxorubicin (175 mg/m² IV), 272.01mg"
* dosageInstruction.route = SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 272.01 'mg' "mg"
// Once every 3 weeks
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 3 'wk' "week"


// The order, placed on 4/12/18 was administered on Day 1 chemotherapy admin on 4/22/18.
// A new weight was obtained to calculate the absolute chemotherapy dose for administration.
Instance: bodyweight-jenny-m-2018-04-22
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
Description: "Extended example: body weight vital sign at the time of chemotherapy administration"
* status = #final "final"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-22"
* valueQuantity = 150.0 '[lb_av]' "lb"

// Based on the relative dose, height, and current weight, we calculate the absolute dose to be 105.96 mg of doxorubicin.
// Chemotherapy preparation details (e.g.: number of vials used for the absolute dose, IV mixing solution, etc.)
// have been omitted for simplicity.
Instance: cancer-related-medication-administration-doxorubicin-jenny-m
InstanceOf: CancerRelatedMedicationAdministration
Description: "Extended example: example showing chemotherapy medication"
* status = #completed "completed"
* category = MedReqCat#outpatient
* medicationCodeableConcept = RXN#1790099 "doxorubicin hydrochloride 20 MG per 10 ML Injection"
* subject = Reference(cancer-patient-jenny-m)
* performer.actor = Reference(us-core-practitioner-nancy-oncology-nurse)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* request = Reference(cancer-related-medication-request-doxorubicin-jenny-m)
* effectiveDateTime = "2018-04-22"
* note.authorReference = Reference(us-core-practitioner-nancy-oncology-nurse)
* note.time = "2018-04-22"
* note.text = "doxorubicin (60 mg/m² IV), 105.96 mg in 50 ml 0.9% normal saline administered by continuous infusion. Patient tolerated infusion without side effects."
* dosage.dose = 105.96 'mg' "mg"
* dosage.route = SCT#47625008 "Intravenous route (qualifier value)"


Instance: radiotherapy-treatment-summary-chest-wall-jenny-m
InstanceOf: RadiotherapyCourseSummary
Description: "Example of radiotherapy treatment summary involving external beam radiation to chest wall and regional node radiation with a chest wall boost"
* status = #completed "completed"
* code = RID#mcode-radiotherapy-course-summary
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy (procedure)"
* bodySite = SCT#78904004 "Chest Wall Structure (body structure)"
* reasonCode = ICD10CM#C50.811 "Malignant neoplasm of overlapping sites of right female breast"
* extension[actualNumberOfSessions].valueUnsignedInt = 31
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* performedPeriod.start = "2018-05-01"
* performedPeriod.end = "2018-06-29"
* extension[modality][0].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
* extension[modality][1].valueCodeableConcept = SCT#45643008  "Teleradiotherapy using electrons (procedure)"
* extension[technique][0].valueCodeableConcept =  SCT#1156530009 "Volumetric Modulated Arc Therapy (procedure)"
* extension[technique][1].valueCodeableConcept = SCT#118641002
* extension[doseDeliveredToVolume][0].extension[volume].valueReference = Reference(jenny-m-chest-wall-treatment-volume)
* extension[doseDeliveredToVolume][0].extension[totalDoseDelivered].valueQuantity = 6000 'cGy'
* extension[doseDeliveredToVolume][0].extension[fractionsDelivered].valueUnsignedInt = 30
* extension[doseDeliveredToVolume][1].extension[volume].valueReference = Reference(jenny-m-chest-wall-lymph-nodes-treatment-volume)
* extension[doseDeliveredToVolume][1].extension[totalDoseDelivered].valueQuantity = 5000 'cGy'
* extension[doseDeliveredToVolume][1].extension[fractionsDelivered].valueUnsignedInt = 25
* subject = Reference(cancer-patient-jenny-m)
* asserter = Reference(us-core-practitioner-kyle-anydoc)


Instance: jenny-m-chest-wall-treatment-volume
InstanceOf: RadiotherapyVolume
Description: "Anatomic volume 1 for Jenny M's teleradiotherapy."
* patient = Reference(cancer-patient-jenny-m)
* description = "Chest Wall"
* identifier.value = "1.2.246.352…1"
* location = SCT#78904004 "Chest wall structure (body structure)"
* locationQualifier = SCT#255503000 "Entire (qualifier value)"

Instance: jenny-m-chest-wall-lymph-nodes-treatment-volume
InstanceOf: RadiotherapyVolume
Description: "Anatomic volume 2 for Jenny M's teleradiotherapy."
* patient = Reference(cancer-patient-jenny-m)
* description = "Chest Wall Lymph Nodes"
* identifier.value = "1.2.246.352…2"
* location = SCT#245276004 "Mediastinal lymph node group (body structure)"
* extension[lateralityQualifier].valueCodeableConcept = SCT#51440002  "Right and left (qualifier value)"

Instance: cancer-related-medication-request-anastrozole-jenny-m
InstanceOf: CancerRelatedMedicationRequest
Description: "Extended example: example showing chemotherapy medication"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent (qualifier value)"
* status = #active "active"
* category = MedReqCat#community
* intent = #order
* medicationCodeableConcept = RXN#84857 "anastrozole"
* subject = Reference(cancer-patient-jenny-m)
* requester = Reference(us-core-practitioner-owen-oncologist)
* reasonReference = Reference(primary-cancer-condition-jenny-m)
* dosageInstruction.timing.repeat.boundsPeriod.start = "2018-09-30"
* authoredOn = "2018-09-30"
* dosageInstruction.text = "1mg orally once daily"
* dosageInstruction.route = SCT#26643006 "Oral route (qualifier value)"
* dosageInstruction.doseAndRate.doseQuantity = 1 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator = 1 'd' "day"

// Check side effects

Instance: us-core-observation-lab-neutrophils-jenny-m
InstanceOf: USCoreObservationLab
Description: "Extended example: neutrophils lab test"
* status = #final "final"
* code = LNC#26499-4 "Neutrophils [#/volume] in Blood"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-05-20T00:00:00Z"
* valueQuantity = 3000 '10*3/uL' "10*3/uL"
* referenceRange.low = 2500 '10*3/uL' "10*3/uL"
* referenceRange.high = 5000 '10*3/uL' "10*3/uL"
* referenceRange.appliesTo = RefMeaning#normal "Normal Range"

// Following first line of therapy

Instance: cancer-disease-status-jenny-m
InstanceOf: CancerDiseaseStatus
Description: "Extended example: example showing disease status (patient's condition improved)"
* extension[evidenceType].valueCodeableConcept = SCT#363679005 "Imaging (procedure)"
* status = #final "final"
* code = LNC#97509-4 "Cancer Disease Progression"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-11-01"
* performer = Reference(us-core-practitioner-owen-oncologist)
* focus = Reference(primary-cancer-condition-jenny-m)
* valueCodeableConcept = SCT#268910001 "Patient's condition improved (finding)"


// Actors

Instance: cancer-patient-jenny-m
InstanceOf: CancerPatient
Description: "Extended example: example cancer patient"
* identifier.use = #usual
* identifier.type = IDTYPE#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "MRN1234"
* name.family = "M"
* name.given[0] = "Jenny"
* gender = #female
* birthDate = "1965-01-01"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "United States"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-867-5309"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "example@example.com"
* communication.language = urn:ietf:bcp:47#en-US
* communication.language.text = "English"
* extension[USCoreRace].extension[ombCategory].valueCoding = OmbRaceCat#2106-3 "White"
* extension[USCoreRace].extension[text].valueString = "White"
* extension[USCoreEthnicity].extension[ombCategory].valueCoding = OmbRaceCat#2186-5 "Not Hispanic or Latino"
* extension[USCoreEthnicity].extension[text].valueString = "Not Hispanic or Latino"

Instance: us-core-practitioner-jane-radiotech
InstanceOf: USCorePractitioner
Description: "Extended example: example PCP practitioner"
* identifier[NPI].value = "234512367"
* name.family = "Radiologist"
* name.given[0] = "Jane"
* name.prefix[0] = "Dr."
* address.use = #work
* address.line[0] = "123 Primary Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #female
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#MD
* qualification.code.coding[0].version = "2.7"

Instance: us-core-practitioner-mary-obgyn
InstanceOf: USCorePractitioner
Description: "Extended example: example PCP practitioner"
* identifier[NPI].value = "234512367"
* name.family = "Obgyn"
* name.given[0] = "Mary"
* name.prefix[0] = "Dr."
* address.use = #work
* address.line[0] = "123 Primary Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #female
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#MD
* qualification.code.coding[0].version = "2.7"


Instance: us-core-practitioner-owen-oncologist
InstanceOf: USCorePractitioner
Description: "Extended example: example practitioner"
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
Description: "Extended example: example practitioner (pathologist)"
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

Instance: us-core-practitioner-nancy-oncology-nurse
InstanceOf: USCorePractitioner
Description: "Extended example: example RN practitioner"
* identifier[NPI].value = "55667788"
* name.family = "Nurse"
* name.given[0] = "Nancy"
* name.prefix[0] = "Ms."
* address.use = #work
* address.line[0] = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #female
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#RN
* qualification.code.coding[0].version = "2.7"

Instance: us-core-organization-physician-services-inc
InstanceOf: USCoreOrganization
Description: "Extended example: example organization"
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
