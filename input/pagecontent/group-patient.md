The mCODE **Patient Information** group contains the following information about the patient:

* **Demographics** - including date of birth, gender, zip code, race, and ethnicity.
* **Comorbid conditions** - the list of comorbid conditions aligned with the [Elixhauer Comorbidity Index](http://mchpAppserv.cpe.umanitoba.ca/concept/Elixhauser%20Comorbidities%20-%20Coding%20Algorithms%20for%20ICD-9-CM%20and%20ICD-10.pdf).
* **Performance status** - [Eastern Cooperative Oncology Group (ECOG) Performance Status](https://ecogAcrin.org/resources/ecog-performanceStatus) and/or [Karnofsky Performance Status (KPS)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3722041/). Because performance assessments may be performed more than once over a period of time, multiple instances may exist for a single patient.
* **Patient bundle** - the complete set of mCODE information about a patient that can be sent over the wire as one resource.

In addition, mCODE defines a Group resource that is used to return the set of patients the mCODE cohort.

### Profiles

* [CancerPatient]
* **Comorbidities**
  * [ComorbiditiesParent] (abstract profile)
  * [ComorbiditiesElixhauser]
  * [CancerRelatedComorbiditiesElixhauser]
* **Performance Status**
  * [ECOGPerformanceStatus]
  * [KarnofskyPerformanceStatus]
* [MCODEPatientBundle]
* [MCodePatientGroup]

### Extensions

* [ComorbidConditionCode]
* [ComorbidConditionReference]

### Value Sets
* PresentAbsentUnknown
* **Comorbid Condition Categories**
  * [ElixhauserAidsVS]
  * [ElixhauserAlcoholAbuseVS]
  * [ElixhauserBloodLossAnemiaVS]
  * [ElixhauserCancerLeukemiaVS]
  * [ElixhauserCancerLymphomaVS]
  * [ElixhauserCancerMetastaticVS]
  * [ElixhauserCancerSolidTumorInSituVS]
  * [ElixhauserCancerSolidTumorMalignantVS]
  * [ElixhauserCerebrovascularDiseaseVS]
  * [ElixhauserChronicPulmonaryDiseaseVS]
  * [ElixhauserCongestiveHeartFailureVS]
  * [ElixhauserCoagulationDeficiencyVS]
  * [ElixhauserDeficiencyAnemiaVS]
  * [ElixhauserDementiaVS]
  * [ElixhauserDepressionVS]
  * [ElixhauserDiabetesComplicatedVS]
  * [ElixhauserDiabetesUncomplicatedVS]
  * [ElixhauserDrugAbuseVS]
  * [ElixhauserHypertensionComplicatedVS]
  * [ElixhauserHypertensionUncomplicatedVS]
  * [ElixhauserHypothyroidismVS]
  * [ElixhauserLiverDiseaseMildVS]
  * [ElixhauserLiverDiseaseSevereVS]
  * [ElixhauserNeurologicalMovementDisorderVS]
  * [ElixhauserNeurologicalSeizureDisorderVS]
  * [ElixhauserObesityVS]
  * [ElixhauserOtherNeurologicalVS]
  * [ElixhauserOtherThyroidDisorderVS]
  * [ElixhauserParalysisVS]
  * [ElixhauserPeripheralVascularDiseaseVS]
  * [ElixhauserPsychosesVS]
  * [ElixhauserPulmonaryCirculationDisordersVS]
  * [ElixhauserRenalFailureModerateVS]
  * [ElixhauserRenalFailureSevereVS]
  * [ElixhauserRheumatoidArthritisVS]
  * [ElixhauserUlcerVS]
  * [ElixhauserValvularDiseaseVS]
  * [ElixhauserWeightLossVS]

### Code Systems

* [ElixhauserCategoryCS]

{% include markdown-link-references.md %}