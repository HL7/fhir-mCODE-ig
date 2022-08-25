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
// Named slices, required
* entry[+].resource = cancer-patient-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Patient/cancer-patient-jenny-m"
//* entry[=].resource.meta.profile[0] = Canonical(CancerPatient)
* entry[+].resource = primary-cancer-condition-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Condition/primary-cancer-condition-jenny-m"
//* entry[=].resource.meta.profile[0] = Canonical(PrimaryCancerCondition)
* entry[+].resource = cancer-related-medication-request-cyclophosphamide-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-cyclophosphamide-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(CancerRelatedMedicationRequest)
* entry[+].resource = cancer-disease-status-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-disease-status-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(CancerDiseaseStatus)
* entry[+].resource = genomic-variant-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/genomic-variant-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(GenomicVariant)
* entry[+].resource = genomics-report-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/genomics-report-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(GenomicsReport)
* entry[+].resource = cancer-related-surgical-procedure-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/cancer-related-surgical-procedure-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(CancerRelatedSurgicalProcedure)
* entry[+].resource = radiotherapy-treatment-summary-chest-wall-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/radiotherapy-treatment-summary-chest-wall-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(RadiotherapyCourseSummary)
* entry[+].resource = tnm-clinical-stage-group-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-stage-group-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(CancerStageGroup)
* entry[+].resource = tnm-clinical-primary-tumor-category-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-primary-tumor-category-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(TNMPrimaryTumorCategory)
* entry[+].resource = tnm-clinical-regional-nodes-category-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-regional-nodes-category-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(TNMRegionalNodesCategory)
* entry[+].resource = tnm-clinical-distant-metastases-category-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tnm-clinical-distant-metastases-category-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(TNMDistantMetastasesCategory)
* entry[+].resource = genomic-specimen-left-breast-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Specimen/genomic-specimen-left-breast-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(GenomicSpecimen)
* entry[+].resource = genomic-region-studied-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/genomic-region-studied-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(GenomicRegionStudied)
* entry[+].resource = ecog-performance-status-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/ecog-performance-status-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(ECOGPerformanceStatus)
* entry[+].resource = tumor-marker-test-er-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-er-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(TumorMarkerTest)
* entry[+].resource = tumor-marker-test-pr-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-pr-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(TumorMarkerTest)
* entry[+].resource = tumor-marker-test-her2-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-her2-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(TumorMarkerTest)
* entry[+].resource = tumor-marker-test-oncotype-dx-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-marker-test-oncotype-dx-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(TumorMarkerTest)
* entry[+].resource = cancer-related-medication-request-doxorubicin-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-doxorubicin-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(CancerRelatedMedicationRequest)
* entry[+].resource = cancer-related-medication-request-paclitaxel-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-paclitaxel-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(CancerRelatedMedicationRequest)
* entry[+].resource = cancer-related-medication-request-anastrozole-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/MedicationRequest/cancer-related-medication-request-anastrozole-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(CancerRelatedMedicationRequest)
//* entry[+].resource = cancer-related-mcode-comorbidities-elixhauser-jenny-m
//* entry[=].fullUrl = "http://example.org/fhir/Observation/cancer-related-mcode-comorbidities-elixhauser-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(ComorbiditiesElixhauser)
* entry[+].resource = bodyweight-jenny-m-2018-03-16
* entry[=].fullUrl = "http://example.org/fhir/Observation/bodyweight-jenny-m-2018-03-16"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-weight"
* entry[+].resource = us-core-observation-lab-neutrophils-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-neutrophils-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* entry[+].resource = us-core-organization-physician-services-inc
* entry[=].fullUrl = "http://example.org/fhir/Organization/us-core-organization-physician-services-inc"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* entry[+].resource = us-core-smokingstatus-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-smokingstatus-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus"
* entry[+].resource = us-core-procedure-biopsy-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-procedure-biopsy-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
* entry[+].resource = us-core-procedure-mammogram-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-procedure-mammogram-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
* entry[+].resource = family-member-history-aunt-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/FamilyMemberHistory/family-member-history-aunt-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory"
* entry[+].resource = us-core-procedure-mammogram-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Procedure/us-core-procedure-mammogram-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
* entry[+].resource = family-member-history-uncle-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/FamilyMemberHistory/family-member-history-uncle-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory"
* entry[+].resource = us-core-diagnosticreport-lab-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/us-core-diagnosticreport-lab-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab"
* entry[+].resource = observation-smoking-pack-years-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/observation-smoking-pack-years-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/Observation"
* entry[+].resource = us-core-observation-lab-tumor-invasion-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-invasion-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* entry[+].resource = us-core-observation-lab-tumor-margins-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-margins-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* entry[+].resource = us-core-observation-lab-sentinel-nodes-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-sentinel-nodes-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* entry[+].resource = tumor-size-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/tumor-size-jenny-m"
// * entry[=].resource.meta.profile[0] = Canonical(TumorSize)
* entry[+].resource = us-core-observation-lab-tumor-dcis-jenny-m
* entry[=].fullUrl = "http://example.org/fhir/Observation/us-core-observation-lab-tumor-dcis-jenny-m"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* entry[+].resource = us-core-practitioner-owen-oncologist
* entry[=].fullUrl = "http://example.org/fhir/Practitioner/us-core-practitioner-owen-oncologist"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* entry[+].resource = us-core-practitioner-peter-pathologist
* entry[=].fullUrl = "http://example.org/fhir/Practitioner/us-core-practitioner-peter-pathologist"
// * entry[=].resource.meta.profile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
