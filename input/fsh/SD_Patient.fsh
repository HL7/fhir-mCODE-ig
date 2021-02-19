Profile: CancerPatient
Parent: USCorePatient
Id: mcode-cancer-patient
Title: "Cancer Patient"
Description: "A patient who has been diagnosed with or is receiving medical treatment for a malignant growth or tumor. The is the most essential profile in mCODE, since it is referenced by many other profiles. The only difference between the mCODE Patient profile and the [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) is that Patient.deceased is a [must-support](https://www.hl7.org/fhir/profiling.html#mustsupport) element in mCODE."
// * insert ReduceText
// * insert ReduceText2(identifier)
// * insert ReduceText2(telecom)
// * insert ReduceText(contact)
// * insert ReduceText(communication)
// * insert ReduceText(link)
// * insert ReduceText2(name)
// * insert ReduceText2(address)
* deceased[x] MS
* . MS
