Instance: group-mcode-patients
InstanceOf: MCODEPatientGroup
Usage: #example
Title: "mCODE Patient Group Example"
Description: "Example of a Group identifying in-scope patients"
* type = #person
* actual = true
* code = NCI#C19700  "Cancer Patient"
* member[0].entity = Reference(Patient/cancer-patient-john-anyperson)
* member[1].entity = Reference(Patient/cancer-patient-eve-anyperson)

Instance: mcode-patient-bundle-jenny-m
InstanceOf: MCODEPatientBundle
Description: "Extended example as a mCODE Patient Bundle"
* entry[0].resource = cancer-patient-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Patient/cancer-patient-jenny-m"
* entry[+].resource = primary-cancer-condition-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Condition/primary-cancer-condition-jenny-m"
* entry[+].resource = cancer-related-medication-request-cyclophosphamide-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-cyclophosphamide-jenny-m"
* entry[+].resource = cancer-related-medication-request-doxorubicin-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-doxorubicin-jenny-m"
* entry[+].resource = cancer-related-medication-request-paclitaxel-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-paclitaxel-jenny-m"
* entry[+].resource = cancer-related-medication-request-anastrozole-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-anastrozole-jenny-m"
* entry[+].resource = cancer-disease-status-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-disease-status-jenny-m"
* entry[+].resource = genomic-variant-jenny-m   // slice 7
* entry[=].fullUrl = "http://example.org/fhir/Observation/genomic-variant-jenny-m"
* entry[+].resource = genomics-report-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/genomics-report-jenny-m"
* entry[+].resource = cancer-related-surgical-procedure-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/cancer-related-surgical-procedure-jenny-m"
* entry[+].resource = cancer-related-comorbidities-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-related-comorbidities-jenny-m"
* entry[+].resource = radiotherapy-treatment-summary-chest-wall-jenny-m  // slice 11
* entry[=].fullUrl = "http://example.org/fhir/Procedure/radiotherapy-treatment-summary-chest-wall-jenny-m"
* entry[+].resource = tnm-clinical-stage-group-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-stage-group-jenny-m"
* entry[+].resource = tnm-clinical-primary-tumor-category-jenny-m  //slice 13
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-primary-tumor-category-jenny-m"
* entry[+].resource = tnm-clinical-regional-nodes-category-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-regional-nodes-category-jenny-m"
* entry[+].resource = tnm-clinical-distant-metastases-category-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-distant-metastases-category-jenny-m"
* entry[+].resource = human-specimen-left-breast-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Specimen/human-specimen-left-breast-jenny-m"
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
* entry[+].resource = tumor-marker-test-oncotype-dx-jenny-m  // slice 22 - code is from GTR (extending)
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-oncotype-dx-jenny-m"
* entry[+].resource = tumor-size-jenny-m  // slice 23
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-size-jenny-m"
// Other optional entries like vital signs, providers
// Note: If named slices are used, then the first unnamed slice entry must be numbered
* entry[+].resource = us-core-procedure-biopsy-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-procedure-biopsy-jenny-m"
* entry[+].resource = bodyweight-jenny-m-2018-03-16
* entry[=].fullUrl = "http://example.org/fhir/Observation/bodyweight-jenny-m-2018-03-16"
* entry[+].resource = us-core-observation-lab-neutrophils-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-neutrophils-jenny-m"
* entry[+].resource = us-core-organization-physician-services-inc
* entry[=].fullUrl = "http://example.org/fhir/Organization/us-core-organization-physician-services-inc"
* entry[+].resource = us-core-smokingstatus-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-smokingstatus-jenny-m"
* entry[+].resource = us-core-procedure-mammogram-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-procedure-mammogram-jenny-m"
* entry[+].resource = family-member-history-aunt-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/FamilyMemberHistory/family-member-history-aunt-jenny-m"
* entry[+].resource = us-core-procedure-mammogram-jenny-m  // slice 31
* entry[=].fullUrl = "http://example.org/fhir/FamilyMemberHistory/family-member-history-uncle-jenny-m"
* entry[+].resource = us-core-diagnosticreport-lab-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/us-core-diagnosticreport-lab-jenny-m"
* entry[+].resource = observation-smoking-pack-years-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/observation-smoking-pack-years-jenny-m"
* entry[+].resource = us-core-observation-lab-tumor-invasion-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-invasion-jenny-m"
* entry[+].resource = us-core-observation-lab-tumor-margins-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-margins-jenny-m"
* entry[+].resource = us-core-observation-lab-sentinel-nodes-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-sentinel-nodes-jenny-m"
* entry[+].resource = us-core-observation-lab-tumor-dcis-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-dcis-jenny-m"
* entry[+].resource = us-core-practitioner-owen-oncologist
* entry[=].fullUrl = "http://example.org/fhir/Practitioner/us-core-practitioner-owen-oncologist"
* entry[+].resource = us-core-practitioner-peter-pathologist
* entry[=].fullUrl = "http://example.org/fhir/Practitioner/us-core-practitioner-peter-pathologist"


/* Using named slices in assignments is preferred, maybe, but it makes things longer and harder to read, IMO. So using indices instead
* entry[cancerPatient].resource = cancer-patient-jenny-m
* entry[cancerPatient].fullUrl = "http://example.org/fhir/Patient/cancer-patient-jenny-m"
* entry[cancerCondition].resource = primary-cancer-condition-jenny-m
* entry[cancerCondition].fullUrl = "http://example.org/fhir/Condition/primary-cancer-condition-jenny-m"
* entry[cancerRelatedMedicationRequest][0].resource = cancer-related-medication-request-cyclophosphamide-jenny-m
* entry[cancerRelatedMedicationRequest][0].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-cyclophosphamide-jenny-m"
* entry[cancerRelatedMedicationRequest][1].resource = cancer-related-medication-request-doxorubicin-jenny-m
* entry[cancerRelatedMedicationRequest][1].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-doxorubicin-jenny-m"
* entry[cancerRelatedMedicationRequest][2].resource = cancer-related-medication-request-paclitaxel-jenny-m
* entry[cancerRelatedMedicationRequest][2].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-paclitaxel-jenny-m"
* entry[cancerRelatedMedicationRequest][3].resource = cancer-related-medication-request-anastrozole-jenny-m
* entry[cancerRelatedMedicationRequest][3].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-anastrozole-jenny-m"
* entry[cancerDiseaseStatus].resource = cancer-disease-status-jenny-m
* entry[cancerDiseaseStatus].fullUrl = "http://example.org/fhir/Observation/cancer-disease-status-jenny-m"
* entry[genomicVariant].resource = genomic-variant-jenny-m
* entry[genomicVariant].fullUrl = "http://example.org/fhir/Observation/genomic-variant-jenny-m"
* entry[genomicsReport].resource = genomics-report-jenny-m
* entry[genomicsReport].fullUrl = "http://example.org/fhir/DiagnosticReport/genomics-report-jenny-m"
* entry[cancerRelatedSurgicalProcedure].resource = cancer-related-surgical-procedure-jenny-m
* entry[cancerRelatedSurgicalProcedure].fullUrl = "http://example.org/fhir/Procedure/cancer-related-surgical-procedure-jenny-m"
//* entry[+].resource = cancer-related-comorbidities-elixhauser-jenny-m
//* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-related-comorbidities-elixhauser-jenny-m"
* entry[radiotherapyCourseSummary].resource = radiotherapy-treatment-summary-chest-wall-jenny-m
* entry[radiotherapyCourseSummary].fullUrl = "http://example.org/fhir/Procedure/radiotherapy-treatment-summary-chest-wall-jenny-m"
* entry[cancerStageAssessment].resource = tnm-clinical-stage-group-jenny-m
* entry[cancerStageAssessment].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-stage-group-jenny-m"
* entry[primaryTumorCategory].resource = tnm-clinical-primary-tumor-category-jenny-m
* entry[primaryTumorCategory].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-primary-tumor-category-jenny-m"
* entry[regionalNodesCategory].resource = tnm-clinical-regional-nodes-category-jenny-m
* entry[regionalNodesCategory].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-regional-nodes-category-jenny-m"
* entry[distantMetastasesCategory].resource = tnm-clinical-distant-metastases-category-jenny-m
* entry[distantMetastasesCategory].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-distant-metastases-category-jenny-m"
* entry[humanSpecimen].resource = human-specimen-left-breast-jenny-m
* entry[humanSpecimen].fullUrl = "http://example.org/fhir/Specimen/human-specimen-left-breast-jenny-m"
* entry[genomicRegionStudied].resource = genomic-region-studied-jenny-m
* entry[genomicRegionStudied].fullUrl = "http://example.org/fhir/Observation/genomic-region-studied-jenny-m"
* entry[ecogPerformanceStatus].resource = ecog-performance-status-jenny-m
* entry[ecogPerformanceStatus].fullUrl = "http://example.org/fhir/Observation/ecog-performance-status-jenny-m"
* entry[tumorMarkerTest][0].resource = tumor-marker-test-er-jenny-m
* entry[tumorMarkerTest][0].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-er-jenny-m"
* entry[tumorMarkerTest][1].resource = tumor-marker-test-pr-jenny-m
* entry[tumorMarkerTest][1].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-pr-jenny-m"
* entry[tumorMarkerTest][2].resource = tumor-marker-test-her2-jenny-m
* entry[tumorMarkerTest][2].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-her2-jenny-m"
* entry[tumorMarkerTest][3].resource = tumor-marker-test-oncotype-dx-jenny-m
* entry[tumorMarkerTest][3].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-oncotype-dx-jenny-m"
* entry[tumorSize].resource = tumor-size-jenny-m
* entry[tumorSize].fullUrl = "http://example.org/fhir/Observation/tumor-size-jenny-m"
*/
