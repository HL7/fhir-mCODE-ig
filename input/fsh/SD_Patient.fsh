Profile: CancerPatient
Parent: USCorePatient
Id: mcode-cancer-patient
Title: "Cancer Patient Profile"
Description: "A patient who has been diagnosed with or is receiving medical treatment for a malignant growth or tumor. The only difference between CancerPatient and [US Core Patient](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) is that Patient.deceased is a [must-support](https://www.hl7.org/fhir/profiling.html#mustsupport) element in mCODE. Must-support is an instruction to implementers of FHIR clients and servers, rather than a constraint on data structure. Any Patient resource complying with US Core Patient Profile will also comply with CancerPatient."
* ^extension[FMM].valueInteger = 5
* deceased[x] MS
* . MS

Profile: HistoryOfMalignantNeoplasm
Parent: USCoreConditionProblemsHealthConcernsProfile
Id: mcode-history-of-malignant-neoplasm
Title: "History of Malignant Neoplasm"
Description: "Records the existence of a past episode of cancer, for the purpose of long term management and tracking."
* code from HistoryOfMalignantNeoplasmVS

ValueSet: HistoryOfMalignantNeoplasmVS
Id: mcode-history-of-malignant-neoplasm-vs
Title: "TNM Stage Group Value Set"
Description: "Values defining history of an episode of cancer."
* include codes from system SCT where concept is-a #SCT#266987004 "History of malignant neoplasm (situation)"
