The mCODE **Patient Information** group contains the following information about the patient:

* **Demographics** - including date of birth, gender, zip code, race, and ethnicity. This information is contained in the Patient resource that follows the [CancerPatient] profile.
* **Research** - data about a patient who has participated or is participating in a clinical study for cancer.
* **Medical History** - including the presence of a past medical condition, the status, type, and date. 
* **Patient bundle** - the complete set of mCODE information about a patient that can be sent over the wire as one resource.
* **Patient group** -- a Group resource used to establish the set of patients that should be considered "mCODE Patients"

### Profiles

* [CancerPatient]
* [HumanSpecimen]
* [CancerResearchSubject]
* [MedicalHistory]
* [MCODEPatientBundle]
* [MCODEPatientGroup]

### Extensions

* [ReasonOffStudy]
* [RelatedCondition]
* [RelatedConditionAbsent]

### Value Sets

* [HumanSpecimenTypeVS]
* [HistologyMorphologyBehaviorVS]

{% include markdown-link-references.md %}
