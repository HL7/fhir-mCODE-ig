Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient."
* type  = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the sliced element"


// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(cancerDiseaseStatus, 0, *, Cancer Disease Status, Observations resource representing Cancer Disease Status. Include past assessments if available., CancerDiseaseStatus)
* insert BundleEntry(cancerGeneticVariant, 0, *, Cancer Genetic Variant, Observation resource representing genetic variants., CancerGeneticVariant)
* insert BundleEntry(cancerGenomicsReport, 0, *, Cancer Genomics Report, DiagnosticReport resource representing cancer genomics reports., CancerGenomicsReport)
* insert BundleEntry(cancerPatient, 1, 1, Cancer Patient, The Cancer Patient whose data is included in the bundle., CancerPatient)
* insert BundleEntry(cancerStageGroup, 0, *, Cancer Stage Group, Observation resource representing the cancer stage group., CancerStageGroup)
* insert BundleEntry(cancerRelatedMedicationAdministration, 0, *, Cancer-Related Medication Administration, MedicationAdministration resource representing medication administrations., CancerRelatedMedicationAdministration)
* insert BundleEntry(cancerRelatedMedicationRequest, 0, *, Cancer-Related Medication Request, MedicationRequest resources representing cancer-related medications\, including both active and inactive medications., CancerRelatedMedicationRequest)
* insert BundleEntry(cancerRelatedSurgicalProcedure, 0, *, Cancer-Related Surgical Procedure,  Procedure resource representing cancer-related surgical procedures., CancerRelatedSurgicalProcedure)
* insert BundleEntry(comorbiditiesElixhauser, 0, *, Cancer-Related Comorbidities, Observation resource representing the patient's comorbidities., ComorbiditiesElixhauser)
* insert BundleEntry(ecogPerformanceStatus, 0, *, ECOG Performance Status, Observations resource representing ECOG performance status assessment. Include past assessments if available., ECOGPerformanceStatus)
* insert BundleEntry(geneticSpecimen, 0, *, Genetic Specimen, Specimen resource representing a specimen obtained for genomic analysis., GeneticSpecimen)
* insert BundleEntry(genomicRegionStudied, 0, *, Genomic Region Studied, Observation resource representing regions of the genome analyzed for variants., GenomicRegionStudied)
* insert BundleEntry(karnofskyPerformanceStatus, 0, *, Karnofsky Performance Status, Observation resource representing Karnofsky performance status assessment. Include past assessments if available., KarnofskyPerformanceStatus)
* insert BundleEntry(primaryCancerCondition, 0, *, Primary Cancer Condition, Condition resource representing the Primary Cancer Condition., PrimaryCancerCondition)
* insert BundleEntry(radiotherapyCourseSummary, 0, *, Radiation Summary, Procedure resource representing a course of treatment in cancer-related radiotherapy., RadiotherapyCourseSummary)
* insert BundleEntry(secondaryCancerCondition, 0, *, Secondary Cancer Condition, Condition resource representing the Secondary Cancer Condition., SecondaryCancerCondition)
// * insert BundleEntry(teleradiotherapyTreatmentPhase, 0, *, Teleradiotherapy Phase Summary, Procedure resource representing one phase in cancer-related external beam radiology procedures., TeleradiotherapyTreatmentPhase)
* insert BundleEntry(tnmPrimaryTumorCategory, 0, *, TNM Primary Tumor Category, Observation resource representing T category., TNMPrimaryTumorCategory)
* insert BundleEntry(tnmRegionalNodesCategory, 0, *, TNM Regional Node Category, Observation resource representing N category., TNMRegionalNodesCategory)
* insert BundleEntry(tnmDistantMetastasesCategory, 0, *, TNM Distant Metastases Category, Observation resource representing M category., TNMDistantMetastasesCategory)
* insert BundleEntry(tumor, 0, *, Tumor, BodyStructure resource representing a tumor having an identifier and being tracked over time., Tumor)
* insert BundleEntry(tumorMarkerTest, 0, *, Tumor Marker Tests, Observations resource representing tumor marker tests., TumorMarkerTest)
* insert BundleEntry(tumorSize, 0, *, Tumor Size Measurements, Observation resource representing a tumor size measurement., TumorSize)
* insert BundleEntry(vitalSign, 0, *, Patient Vital Signs, Observation resource representing patient height\, weight\, blood pressure\, and other vital signs., http://hl7.org/fhir/StructureDefinition/vitalsigns)

// Put the MS for entry.resource LAST, otherwise it doesn't take for some reason
* timestamp and entry and entry.resource MS
