Profile: TumorMorphologyReport
Parent: USCoreDiagnosticReportProfileLaboratoryReporting
Id: mcode-tumor-morphology-report
Title: "Tumor Morphology Report"
Description: "ICD-O-3 morphology determined from examination of tumor sample, composed of three parts: histologic type, the malignant potential of the tumor (behavior) and the tumor grade (degree of differentiation)."
* ^extension[FMM].valueInteger = 4
* specimen only Reference(HumanSpecimen)
* specimen 0..1 MS
* code = LNC#77753-2  // Tumor morphology panel Cancer
* subject only Reference(CancerPatient)
* subject ^definition = "Patient whose test result is recorded."
* subject 1..1
* effective[x] only dateTime or Period
* extension contains RelatedCondition named relatedCondition 0..* MS 
* extension[relatedCondition] ^short = "Condition associated with this test."
* extension[relatedCondition] ^definition = "Associates the tumor marker test with a condition, if one exists. Condition can be given by a reference or a code. In the case of a screening test such as prostate-specific antigen (PSA), there may be no existing condition to reference."
* insert SliceReferenceOnProfile(result)
* result contains histologyBehaviorAndType 0..1 and grade 0..1
* result[histologyBehaviorAndType] only Reference(HistologicBehaviorAndType)
* result[histologyBehaviorAndType] ^short = "Histology Behavior Type being reported using ICD-O-3"
* result[histologyBehaviorAndType] ^definition = "The ICD-O-3 4-digit histology code for the tumor, with the 5th digit behavior code for the tumor"
* result[grade] only Reference(HistologicGrade)
* result[grade] ^short = "Tumor grade code being reported using SNOMED"
* result[grade] ^definition = "The histologic grade of the tumor"

Profile: HistologicBehaviorAndType
Parent: USCoreObservationLab
Id: mcode-histologic-behavior-and-type
Title: "Histologic Behavior and Type"
Description: "Histologic behavior and type determined from examination of tumor sample. ICD-O-3 morphology codes are referenced in the logical definition but not expanded in the value set for intellectual property reasons. For primary cancers, the ICD-O-3 behavior suffix should be /1, /2, or /3. For secondary cancers, the ICD-O-3 behavior suffix should be /6. "
* ^extension[FMM].valueInteger = 4
* specimen only Reference(HumanSpecimen)
* specimen 0..1 MS
* code = LNC#31206-6 // Behavior ICD-O-3 Cancer
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from HistologicBehaviorAndTypeVS
* subject only Reference(CancerPatient)
* subject ^definition = "Patient whose test result is recorded."
* subject 1..1
* effective[x] only dateTime or Period
* extension contains RelatedCondition named relatedCondition 0..* MS 
* extension[relatedCondition] ^short = "Condition associated with this test."
* extension[relatedCondition] ^definition = "Associates the tumor marker test with a condition, if one exists. Condition can be given by a reference or a code. In the case of a screening test such as prostate-specific antigen (PSA), there may be no existing condition to reference."


Profile: HistologicGrade
Parent: USCoreObservationLab
Id: mcode-histologic-grade
Title: "Histologic Grade"
Description: "Histologic grade determined from examination of tumor sample."
* ^extension[FMM].valueInteger = 4
* specimen only Reference(HumanSpecimen)
* specimen 0..1 MS  // is not MS in US Core 4.0.0 and 5.0.1 
* code = LNC#33732-9 // Histology grade [Identifier] in Cancer specimen  (could be 21858-6 Grade Cancer)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from HistologicGradeVS (extensible)
* subject only Reference(CancerPatient)
* subject ^definition = "Patient whose test result is recorded."
* subject 1..1
* effective[x] only dateTime or Period
* extension contains RelatedCondition named relatedCondition 0..* MS 
* extension[relatedCondition] ^short = "Condition associated with this test."
* extension[relatedCondition] ^definition = "Associates the histologic grade test with a condition, if one exists. Condition can be given by a reference or a code."
* method from HistologicGradingSystemVS (extensible)
* method MS

// Already MS in US Core Obs Lab: status, category, code, subject, effective[x], value[x], dataAbsentReason
// RelatedCondition added 11/14/2022, see https://chat.fhir.org/#narrow/stream/229074-CodeX/topic/Reference.20between.20tumor.20characteristics.20and.20cancer.20diagnosis


