// GenomeX example for Use Case 1 - Epic equivalent of HL7v2 file
// The following examples will be used as a prototype and based on de-identified RWD test data. There is no PHI.

// *************************************************************************************
// ************* Example 3: Epic received test translated from HL7v2 *******************
// *************************************************************************************

Instance: gx-epic-patient-ptfirstname-ptlastname
InstanceOf: Patient
Description: "GenomeX Example of Epic-received Genomic Test Patient"
* identifier.use = #usual
* identifier[0].type = IDTYPE#MRN "Medical record number"
* identifier[0].system = "https://www.epic.com"
* identifier[0].value = "MRN9876"
* name.family = "Last"
* name.given[0] = "First"
// * birthDate = "1987-09-21"

Instance: gx-epic-order-tbd
InstanceOf: ServiceRequest
Description: "GenomeX example: Order information"
* identifier[0].type = IDTYPE#PLACER "Placer Identifier"
* identifier[0].system = "https://www.epic.com"
* identifier[0].value = "22334455"
* status = #completed
* intent = #order
* subject = Reference(gx-epic-patient-ptfirstname-ptlastname)
* code = https://www.qci.com#Gatorseq-NGS "Gatorseq NGS"
* reasonCode[0].coding[0] = ICD10CM#C34.9 "Squamous cell carcinoma"

Instance: gx-us-core-organization-epic
InstanceOf: USCoreOrganization
Description: "GenomeX example: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#other "Other"
* name = "Epic"
* identifier[0].system = "http://www.epic.com"
* identifier[0].value = "TBD1234"

Instance: gx-epic-practitioner-ordering
InstanceOf: Practitioner
Description: "GenomeX QCI example: ordering provider of the NGS test."
* name.text = "Provider Doctor"
* identifier[0].type = IDTYPE#NPI "Filler Identifier"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].value = "1720069594"


// ********** Genomics Report ***********
Instance: gx-epic-genomics-report-patient-ptfirstname-ptlastname
// InstanceOf: mcode-genomics-report
InstanceOf: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-report
Description: "GenomeX Example for Genomics Report"
* status = #final "Final"
* code = LNC#51969-4 "Genetic analysis report"
* subject = Reference(gx-epic-patient-ptfirstname-ptlastname)
* performer = Reference(gx-us-core-organization-epic)
* effectiveDateTime = "2022-04-19"
* basedOn = Reference(gx-epic-order-tbd)
// * resultsInterpreter = Reference(gx-practitioner-test-pathologist)
* conclusionCode = SCT#1162767002 "Squamous cell carcinoma"

Instance: gx-order-epic-inc
InstanceOf: ServiceRequest
Description: "GenomeX Epic example: Order information"
* identifier[0].type = IDTYPE#FILL "Filler Identifier"
* identifier[0].system = "https://www.epic.com"
* identifier[0].value = "TBD"
* status = #completed
* intent = #order
* subject = Reference(gx-epic-patient-ptfirstname-ptlastname)
* code = https://www.reflab.com#ex-gx-test "example gene panel"
// * reasonCode[0].coding[0] = ICD10CM#C34.9 "Malignant neoplasm of unspecified part of bronchus or lung"

// ************* Genomic Bundle *******************

Instance: gx-genomic-bundle-epic-patient-ptfirstname-ptlastname
InstanceOf: Bundle
Description: "Extended genomics example as a Bundle resource."
* type = #collection "Collection"
* entry[0].resource = gx-epic-patient-ptfirstname-ptlastname
* entry[=].fullUrl = "http://example.org/fhir/Patient/gx-epic-patient-ptfirstname-ptlastname"
* entry[+].resource = gx-epic-genomics-report-patient-ptfirstname-ptlastname
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/gx-epic-genomics-report-patient-ptfirstname-ptlastname"
* entry[+].resource = gx-epic-order-tbd
* entry[=].fullUrl = "http://example.org/fhir/ServiceRequest/gx-epic-order-tbd"