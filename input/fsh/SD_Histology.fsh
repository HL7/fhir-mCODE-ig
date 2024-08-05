Profile: TumorMorphology
Parent: Observation
Id: mcode-tumor-morphology
Title: "Tumor Morphology Report"
Description: "Tumor morphology can include information on the type of cell (type), the malignant potential of the tumor (behavior), and the degree of differentiation (grade). For some cancers, the type and behavior are described in the ICD-O-3 code."
* ^extension[FMM].valueInteger = 4
* specimen only Reference(HumanSpecimen)
* specimen MS
* code = LNC#77753-2  // Tumor morphology panel Cancer
* subject only Reference(CancerPatient)
* subject ^definition = "Patient whose test result is recorded."
* subject 1..1
* effective[x] only dateTime or Period
* extension contains RelatedCondition named relatedCondition 0..* MS 
* extension[relatedCondition] ^short = "Condition associated with this test."
* extension[relatedCondition] ^definition = "Associates the tumor marker test with a condition, if one exists. Condition can be given by a reference or a code. In the case of a screening test such as prostate-specific antigen (PSA), there may be no existing condition to reference."
* hasMember only Reference(HistologicBehaviorAndType or HistologicGrade)


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
* value[x] from HistologicBehaviorAndTypeVS (extensible)
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
* code = NCIT#C18000 // Histologic Grade
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



