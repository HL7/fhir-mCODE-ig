Instance: group-mcode-patients
InstanceOf: MCODEPatientGroup
Usage: #example
Title: "mCODE Patient Group Example"
Description: "Example of a Group identifying in-scope patients"
* type = #person
* actual = true
* code = RID#mcode-patient
* member[0].entity = Reference(Patient/cancer-patient-john-anyperson)
* member[1].entity = Reference(Patient/cancer-patient-eve-anyperson)

Instance: mcode-patient-bundle-jenny-m
InstanceOf: MCODEPatientBundle
Description: "Extended example as a mCODE Patient Bundle"
// Named slices, required
* entry[cancerPatient].resource = cancer-patient-jenny-m
* entry[cancerPatient].fullUrl = "http://example.org/fhir/Patient/cancer-patient-jenny-m"
* entry[primaryCancerCondition].resource = primary-cancer-condition-jenny-m
* entry[primaryCancerCondition].fullUrl = "http://example.org/fhir/Condition/primary-cancer-condition-jenny-m"
// Other slices
* entry[2].resource = cancer-disease-status-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-disease-status-jenny-m"
* entry[+].resource = cancer-genetic-variant-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-genetic-variant-jenny-m"
* entry[+].resource = cancer-genomics-report-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/cancer-genomics-report-jenny-m"
* entry[+].resource = cancer-related-surgical-procedure-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/cancer-related-surgical-procedure-jenny-m"
* entry[+].resource = radiotherapy-treatment-summary-chest-wall-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/radiotherapy-treatment-summary-chest-wall-jenny-m"
* entry[+].resource = teleradiotherapy-treatment-phase-chest-wall-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/teleradiotherapy-treatment-phase-chest-wall-jenny-m"
* entry[+].resource = teleradiotherapy-treatment-phase-boost-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/teleradiotherapy-treatment-phase-boost-jenny-m"
* entry[+].resource = tnm-clinical-stage-group-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-stage-group-jenny-m"
* entry[+].resource = tnm-clinical-primary-tumor-category-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-primary-tumor-category-jenny-m"
* entry[+].resource = tnm-clinical-regional-nodes-category-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-regional-nodes-category-jenny-m"
* entry[+].resource = tnm-clinical-distant-metastases-category-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-distant-metastases-category-jenny-m"
* entry[+].resource = genetic-specimen-left-breast-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Specimen/genetic-specimen-left-breast-jenny-m"
* entry[+].resource = genomic-region-studied-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/genomic-region-studied-jenny-m"
* entry[+].resource = ecog-performance-status-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/ecog-performance-status-jenny-m"
* entry[+].resource = tumor-marker-test-er-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-er-jenny-m"
* entry[+].resource = tumor-marker-test-pr-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-pr-jenny-m"
* entry[+].resource = tumor-marker-test-her2-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-her2-jenny-m"
* entry[+].resource = tumor-marker-test-oncotype-dx-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-oncotype-dx-jenny-m"
* entry[+].resource = cancer-related-medication-request-doxorubicin-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-doxorubicin-jenny-m"
* entry[+].resource = cancer-related-medication-request-cyclophosphamide-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-cyclophosphamide-jenny-m"
* entry[+].resource = cancer-related-medication-request-paclitaxel-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-paclitaxel-jenny-m"
* entry[+].resource = cancer-related-medication-request-anastrozole-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-anastrozole-jenny-m"
* entry[+].resource = cancer-related-mcode-comorbidities-elixhauser-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-related-mcode-comorbidities-elixhauser-jenny-m"
* entry[+].resource = bodyweight-jenny-m-2018-03-16
* entry[=].fullUrl = "http://example.org/fhir/Observation/bodyweight-jenny-m-2018-03-16"
* entry[+].resource = us-core-observation-lab-neutrophils-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-neutrophils-jenny-m"
* entry[+].resource = us-core-organization-physician-services-inc
* entry[=].fullUrl = "http://example.org/fhir/Organization/us-core-organization-physician-services-inc"
* entry[+].resource = us-core-smokingstatus-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-smokingstatus-jenny-m"
* entry[+].resource = us-core-procedure-biopsy-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-procedure-biopsy-jenny-m"
* entry[+].resource = us-core-procedure-mammogram-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-procedure-mammogram-jenny-m"
* entry[+].resource = family-member-history-aunt-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/FamilyMemberHistory/family-member-history-aunt-jenny-m"
* entry[+].resource = us-core-procedure-mammogram-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/us-core-procedure-mammogram-jenny-m"
* entry[+].resource = family-member-history-uncle-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/FamilyMemberHistory/family-member-history-uncle-jenny-m"
* entry[+].resource = us-core-diagnosticreport-lab-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/us-core-diagnosticreport-lab-jenny-m"
* entry[+].resource = observation-smoking-history-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-diagnosticreport-lab-jenny-m"
* entry[+].resource = us-core-observation-lab-tumor-invasion-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-invasion-jenny-m"
* entry[+].resource = us-core-observation-lab-tumor-margins-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-margins-jenny-m"
* entry[+].resource = us-core-observation-lab-sentinel-nodes-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-sentinel-nodes-jenny-m"
* entry[+].resource = tumor-size-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-size-jenny-m"
* entry[+].resource = us-core-observation-lab-tumor-dcis-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-dcis-jenny-m"
* entry[+].resource = us-core-practitioner-owen-oncologist
* entry[=].fullUrl = "http://example.org/fhir/Pracititioner/us-core-practitioner-owen-oncologist"
* entry[+].resource = us-core-practitioner-peter-pathologist
* entry[=].fullUrl = "http://example.org/fhir/Pracititioner/us-core-practitioner-peter-pathologist"
