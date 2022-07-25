RuleSet: PerformanceStatusCommonRules
* insert CategorySlicingRules
* category[required] = ObsCat#survey
* subject 1..1
* insert NotUsed(bodySite)
* insert NotUsed(specimen)
* insert NotUsed(device)
* insert NotUsed(hasMember)
* insert NotUsed(component)
* basedOn only Reference (ServiceRequest or CarePlan)
* partOf only Reference (Procedure)
* subject only Reference(CancerPatient)
* subject ^definition = "Patient whose performance status is recorded."
* effective[x] only dateTime or Period
// EGOG and Karnofsky have exactly the same set of MS
* status and code and subject and effective[x] and value[x] and interpretation MS

Profile:    KarnofskyPerformanceStatus
Parent:     Observation
Id: mcode-karnofsky-performance-status
Title:      "Karnofsky Performance Status Profile"
Description:    "The Karnofsky Performance Status (KPS) is a tool used to measure a patient's functional status. It can be used to compare the effectiveness of different therapies and to help assess the prognosis of certain patients, such as those with certain cancers. The KPS score ranges from 0 to 100 in intervals of 10. Higher scores are associated with better functional status, with 100 representing no symptoms or evidence of disease, and 0 representing death."
* insert PerformanceStatusCommonRules
* code = LNC#89243-0 //"Karnofsky Performance Status score"
* value[x] only integer
* interpretation from http://loinc.org/vs/LL4986-7 (required)


Profile:    ECOGPerformanceStatus
Parent:     Observation
Id: mcode-ecog-performance-status
Title:      "ECOG Performance Status Profile"
Description:    "The Eastern Cooperative Oncology Group (ECOG) Performance Status represents the patient's functional status and is used to determine their ability to tolerate therapies in serious illness, specifically for chemotherapy. (Definition from: [LOINC](https://loinc.org/89262-0/))"
* insert PerformanceStatusCommonRules
* code = LNC#89247-1 //"ECOG Performance Status score"
* value[x] only integer
* interpretation from http://loinc.org/vs/LL529-9 (required)
