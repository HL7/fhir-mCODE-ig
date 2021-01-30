Instance: group-mcode-patients
InstanceOf: Group
Usage: #example
Title: "mCODE Patient Group"
Description: "Example of a Group identifying mCODE Patients"
* type = #person
* actual = true
* code = #mcode-patient
* member[0].entity = Reference(Patient/cancer-patient-john-anyperson)
* member[1].entity = Reference(Patient/cancer-patient-eve-anyperson)

Instance: mcode-patient-bundle-susan-m
InstanceOf: MCODEPatientBundle
Description: "Extended example 1 as a mCODE Patient Bundle"
// Named slices, required
* entry[cancerPatient].resource = cancer-patient-susan-m
* entry[cancerPatient].fullUrl = "http://example.org/fhir/Patient/cancer-patient-susan-m"
* entry[primaryCancerCondition].resource = primary-cancer-condition-susan-m
* entry[primaryCancerCondition].fullUrl = "http://example.org/fhir/Condition/primary-cancer-condition-susan-m"
// Other slices
* entry[2].resource = cancer-disease-status-susan-m-2020-03-01
* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-disease-status-susan-m-2020-03-01"
* entry[+].resource = cancer-genetic-variant-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-genetic-variant-susan-m"
* entry[+].resource = cancer-genomics-report-susan-m
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/cancer-genomics-report-susan-m"
* entry[+].resource = cancer-related-surgical-procedure-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/cancer-related-surgical-procedure-susan-m"
* entry[+].resource = teleradiotherapy-prescription-delivery-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/teleradiotherapy-prescription-delivery-susan-m"
* entry[+].resource = tnm-clinical-stage-group-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-stage-group-susan-m"
* entry[+].resource = tnm-primary-tumor-category-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-primary-tumor-category-susan-m"
* entry[+].resource = tnm-clinical-regional-nodes-category-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-regional-nodes-category-susan-m"
* entry[+].resource = tnm-clinical-distant-metastases-category-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-distant-metastases-category-susan-m"
* entry[+].resource = genetic-specimen-left-breast-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Specimen/genetic-specimen-left-breast-susan-m"
* entry[+].resource = genomic-region-studied-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/genomic-region-studied-susan-m"
* entry[+].resource = ecog-performance-status-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/ecog-performance-status-susan-m"
* entry[+].resource = tumor-marker-test-er-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-er-susan-m"
* entry[+].resource = tumor-marker-test-pr-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-pr-susan-m"
* entry[+].resource = tumor-marker-test-her2-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-her2-susan-m"
* entry[+].resource = tumor-marker-test-oncotype-dx-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-oncotype-dx-susan-m"
* entry[+].resource = cancer-related-medication-request-doxorubicin-susan-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-doxorubicin-susan-m"
* entry[+].resource = cancer-related-medication-request-cyclophosphamide-susan-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-cyclophosphamide-susan-m"
* entry[+].resource = cancer-related-medication-request-paclitaxel-susan-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-paclitaxel-susan-m"
* entry[+].resource = cancer-related-medication-request-anastrozole-susan-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-anastrozole-susan-m"
* entry[+].resource = cancer-related-comorbidities-elixhauser-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-related-comorbidities-elixhauser-susan-m"
* entry[+].resource = bodyweight-susan-m-2018-03-06
* entry[=].fullUrl = "http://example.org/fhir/Observation/bodyweight-susan-m-2018-03-06"
* entry[+].resource = us-core-observation-lab-neutrophils-susan-m-2018-03-06
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-neutrophils-susan-m-2018-03-06"
* entry[+].resource = us-core-organization-physician-services-inc
* entry[=].fullUrl = "http://example.org/fhir/Organization/us-core-organization-physician-services-inc"
* entry[+].resource = us-core-smokingstatus-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-smokingstatus-susan-m"
* entry[+].resource = us-core-procedure-biopsy-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-procedure-biopsy-susan-m"
* entry[+].resource = us-core-procedure-mammogram-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-procedure-mammogram-susan-m"
* entry[+].resource = family-member-history-aunt-susan-m
* entry[=].fullUrl = "http://example.org/fhir/FamilyMemberHistory/family-member-history-aunt-susan-m"
* entry[+].resource = us-core-procedure-mammogram-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/us-core-procedure-mammogram-susan-m"
* entry[+].resource = family-member-history-uncle-susan-m
* entry[=].fullUrl = "http://example.org/fhir/FamilyMemberHistory/family-member-history-uncle-susan-m"
* entry[+].resource = us-core-diagnosticreport-lab-susan-m
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/us-core-diagnosticreport-lab-susan-m"
* entry[+].resource = observation-smoking-history-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-diagnosticreport-lab-susan-m"
* entry[+].resource = us-core-observation-lab-tumor-invasion-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-invasion-susan-m"
* entry[+].resource = us-core-observation-lab-tumor-margins-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-margins-susan-m"
* entry[+].resource = us-core-observation-lab-sentinel-nodes-susan-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-sentinel-nodes-susan-m"
* entry[+].resource = tumor-size-susan-m-2018-03-06
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-size-susan-m-2018-03-06"
* entry[+].resource = us-core-observation-lab-tumor-dcis
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-dcis"
* entry[+].resource = us-core-practitioner-owen-oncologist
* entry[=].fullUrl = "http://example.org/fhir/Pracititioner/us-core-practitioner-owen-oncologist"
* entry[+].resource = us-core-practitioner-peter-pathologist
* entry[=].fullUrl = "http://example.org/fhir/Pracititioner/us-core-practitioner-peter-pathologist"

