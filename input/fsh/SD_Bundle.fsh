Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle Profile"
Description: "A collection of data for an mCODE cancer patient."
* ^extension[FMM].valueInteger = 1
* type  = #collection
* entry 1..* MS
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
* insert BundleSlice(cancerPatient, 1, 1, Cancer Patient, The Cancer Patient whose data is included in the bundle., CancerPatient)
* insert BundleSlice(cancerDiseaseStatus, 0, *, Cancer Disease Status, Observations resource representing Cancer Disease Status. Include past assessments if available., CancerDiseaseStatus)
* insert BundleSlice(cancerRelatedMedicationAdministration, 0, *, Cancer-Related Medication Administration, MedicationAdministration resource representing medication administrations., CancerRelatedMedicationAdministration)
* insert BundleSlice(cancerRelatedMedicationRequest, 0, *, Cancer-Related Medication Request, MedicationRequest resources representing cancer-related medications\, including both active and inactive medications., CancerRelatedMedicationRequest)
* insert BundleSlice(cancerRelatedSurgicalProcedure, 0, *, Cancer-Related Surgical Procedure,  Procedure resource representing cancer-related surgical procedures., CancerRelatedSurgicalProcedure)
* insert BundleSlice(cancerStageAssessment, 0, *, Cancer Stage Group, Observation resource representing the cancer stage group., CancerStage)
* insert BundleSlice(comorbidities, 0, *, Cancer-Related Comorbidities, Observation resource representing comorbidities., Comorbidities)
* insert BundleSlice(diagnosticImplications, 0, *, Genomic Diagnostic Implications, Observation stating a linkage between one or more genotype/haplotype/variation Observations and evidence for or against a particular disease\, condition\, or cancer diagnosis., http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication)
* insert BundleSlice(ecogPerformanceStatus, 0, *, ECOG Performance Status, Observations resource representing ECOG performance status assessment. Include past assessments if available., ECOGPerformanceStatus)
* insert BundleSlice(genomicRegionStudied, 0, *, Genomic Region Studied, Observation resource representing regions of the genome analyzed for variants., GenomicRegionStudied)
* insert BundleSlice(genomicsReport, 0, *, Genomics Report, DiagnosticReport resource representing genomics reports., GenomicsReport)
* insert BundleSlice(genomicSpecimen, 0, *, Genomic Specimen, Specimen resource representing a specimen obtained for genomic analysis., GenomicSpecimen)
* insert BundleSlice(genomicVariant, 0, *, Genomic Variant, Observation resource representing genomic variants., GenomicVariant)
* insert BundleSlice(karnofskyPerformanceStatus, 0, *, Karnofsky Performance Status, Observation resource representing Karnofsky performance status assessment. Include past assessments if available., KarnofskyPerformanceStatus)
* insert BundleSlice(radiotherapyCourseSummary, 0, *, Radiation Summary, Procedure resource representing a course of treatment in cancer-related radiotherapy., RadiotherapyCourseSummary)
* insert BundleSlice(radiotherapyVolume, 0, *, Radiotherapy Volume, BodyStructure resource representing a volume in the body in cancer-related radiotherapy., RadiotherapyVolume)
* insert BundleSlice(primaryCancerCondition, 0, *, Primary Cancer Condition, Condition resource representing any primary cancer condition., PrimaryCancerCondition)
* insert BundleSlice(secondaryCancerCondition, 0, *, Secondary Cancer Condition, Condition resource representing any secondary cancer condition., SecondaryCancerCondition)
* insert BundleSlice(tumor, 0, *, Tumor, BodyStructure resource representing a tumor having an identifier and being tracked over time., Tumor)
* insert BundleSlice(tumorMarkerTest, 0, *, Tumor Marker Tests, Observation resources representing tumor marker or biomarker tests., TumorMarkerTest)
* insert BundleSlice(tumorSize, 0, *, Tumor Size Measurements, Observation resources representing a tumor size measurement., TumorSize)
* insert BundleSlice(vitalSigns, 0, *, Vital Signs, Observation resources representing patient height\, weight\, blood pressure\, and other vital signs., USCoreVitalSigns)

// Put the MS for entry.resource LAST, otherwise it doesn't take for some reason
* timestamp and entry and entry.resource MS
