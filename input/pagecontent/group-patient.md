The mCODE **Patient Information** group contains the following information about the patient:

* **Demographics** - including date of birth, gender, zip code, race, and ethnicity. This information is contained in the Patient resource that follows the [CancerPatient] profile.
* **Patient bundle** - the complete set of mCODE information about a patient that can be sent over the wire as one resource.
* **Patient group** -- a Group resource used to establish the set of patients that should be considered "mCODE Patients"

### Profiles

* [CancerPatient]
* [HumanSpecimen]
* [MCODEPatientBundle]
* [MCODEPatientGroup]

### Value Sets

* [HumanSpecimenTypeVS]

{% include markdown-link-references.md %}
