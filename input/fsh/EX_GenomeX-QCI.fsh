// GenomeX example for Use Case 1 - Reference lab to EHR
// The following examples will be used as a prototype and based on de-identified RWD test data. There is no PHI.

// **************************************************************
// ************* Example 2: QCI Test *******************
// **************************************************************

Instance: gx-qci-patient-substance-hamburg
InstanceOf: Patient
Description: "GenomeX Example of QCI Genomic Test Patient"
* identifier.use = #usual
* identifier[0].type = IDTYPE#MRN "Medical record number"
* identifier[0].system = "https://www.epic.com"
* identifier[0].value = "E4424372"
* identifier[1].type = IDTYPE#PT "Patient external identifier"
* identifier[1].system = "https://www.qci.com"
* identifier[1].value = "NQ-22-13_BC701503_295_20220314131838_GS700v3"
* name.family = "Hamburg"
* name.given[0] = "Substance"
* birthDate = "1987-09-21"

Instance: gx-order-tbd-qci
InstanceOf: ServiceRequest
Description: "GenomeX example: Order information"
* identifier[0].type = IDTYPE#FILL "Filler Identifier"
* identifier[0].system = "https://www.qci.com"
* identifier[0].value = "20000252040"
* status = #completed
* intent = #order
* subject = Reference(gx-qci-patient-substance-hamburg)
* code = https://www.qci.com#Gatorseq-NGS "Gatorseq NGS"
* reasonCode[0].coding[0] = ICD10CM#C34.9 "Squamous cell carcinoma"

Instance: gx-us-core-organization-qci
InstanceOf: USCoreOrganization
Description: "GenomeX example: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#other "Other"
* name = "Qiagen Clinical Insights"
* identifier[0].system = "http://www.qci.com"
* identifier[0].value = "TBD1234"

Instance: gx-qci-practitioner-ordering
InstanceOf: Practitioner
Description: "GenomeX QCI example: ordering provider of the NGS test."
* name.text = "Provider Doctor"
* identifier[0].type = IDTYPE#NPI "Filler Identifier"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].value = "1720069594"


// ********** Genomics Report ***********
Instance: gx-qci-genomics-report-hamburg-substance
// InstanceOf: mcode-genomics-report
InstanceOf: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-report
Description: "GenomeX Example for Genomics Report"
* status = #final "Final"
* code = LNC#51969-4 "Genetic analysis report"
* subject = Reference(gx-qci-patient-substance-hamburg)
* performer = Reference(gx-us-core-organization-qci)
* effectiveDateTime = "2022-04-19"
* basedOn = Reference(gx-order-tbd-qci)
// * resultsInterpreter = Reference(gx-practitioner-test-pathologist)
* conclusionCode = SCT#1162767002 "Squamous cell carcinoma"

Instance: gx-order-qcis-inc
InstanceOf: ServiceRequest
Description: "GenomeX QCI example: Order information"
* identifier[0].type = IDTYPE#FILL "Filler Identifier"
* identifier[0].system = "https://www.qci.com"
* identifier[0].value = "TBD"
* status = #completed
* intent = #order
* subject = Reference(gx-qci-patient-substance-hamburg)
* code = https://www.tempus.com#XT.V4 "xT - 648 gene panel"
* reasonCode[0].coding[0] = ICD10CM#C34.9 "Malignant neoplasm of unspecified part of bronchus or lung"
* reasonCode[0].coding[1] = ICDO3#"C34.9 8140/3" "Lung adenocarcinoma"