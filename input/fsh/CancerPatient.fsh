Profile: CancerPatient
Parent: USCorePatient
Id: mcode-cancer-patient
Title: "Cancer Patient"
Description: "A patient who has been diagnosed with or is receiving medical treatment for a malignant growth or tumour.

Conformance Statement:

Patient resources representing mCODE patients (as defined in [Conformance](conformance.html#mCODE-Patients)) MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly."

/* There seem to be several unnecessary or unintended diffs in mCODE Patient:
 1) maritalStatus binding is not changed in US Core; it should be extensible, not required
 2) organization should be Reference(Organization), not Reference(US Core Organization)
 3) US Core doesn't profile generalPractitioner, and neither should we.
 4) managingOrganization should be Reference(Organization)
 5) We should probably call this "CancerPatient", not "Patient", to avoid confusion
 6) The only remaining difference is deceased is Must Support
*/
* deceased[x] MS
