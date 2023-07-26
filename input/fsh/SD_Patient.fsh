Profile: CancerPatient
Parent: USCorePatient
Id: mcode-cancer-patient
Title: "Cancer Patient Profile"
Description: "A patient who has been diagnosed with or is receiving medical treatment for a malignant growth or tumor. The only difference between CancerPatient and [US Core Patient](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) is that Patient.deceased is a [must-support](https://www.hl7.org/fhir/profiling.html#mustsupport) element in mCODE. Must-support is an instruction to implementers of FHIR clients and servers, rather than a constraint on data structure. Any Patient resource complying with US Core Patient Profile will also comply with CancerPatient."
* ^extension[FMM].valueInteger = 5
* deceased[x] MS
* . MS