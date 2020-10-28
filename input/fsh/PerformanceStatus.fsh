Profile: PerformanceStatusParent
Parent:  Observation
Id:      mcode-performance-status-parent
Title:      "Performance Status Parent"
Description:    "Abstract parent class for performance status profiles."
* ^abstract = true
* status and code and subject and effective[x] and valueInteger MS
* subject 1..1
* value[x] 1..1
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* basedOn only Reference (ServiceRequest or CarePlan)
* partOf only Reference (Procedure)
* code from LoincPerformanceStatusCodesVS (required)
* subject only Reference(USCorePatient)
* effective[x] only dateTime or Period
* performer only Reference(Practitioner)
* value[x] only integer

Profile:    KarnofskyPerformanceStatus
Parent:     PerformanceStatusParent
Id:         mcode-karnofsky-performance-status
Title:      "Karnofsky Performance Status"
Description:    "The Karnofsky Performance Status (KPS) is a tool used to measure a patient's functional status. It can be used to compare the effectiveness of different therapies and to help assess the prognosis of certain patients, such as those with certain cancers. The KPS score ranges from 0 to 100 in intervals of 10. Higher scores are associated with better functional status, with 100 representing no symptoms or evidence of disease, and 0 representing death.

Conformance statement:

Observation resources associated with an mCODE patient with Observation.code LOINC 89243-0 MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form."
* ^abstract = false
* code = LNC#89243-0 //"Karnofsky Performance Status score"
* value[x] only integer
* interpretation from http://loinc.org/vs/LL4986-7 (required)

Profile:    ECOGPerformanceStatus
Parent:     PerformanceStatusParent
Id:         mcode-ecog-performance-status
Title:      "ECOG Performance Status"
Description:    "The Eastern Cooperative Oncology Group (ECOG) Performance Status represents the patient's functional status and is used to determine their ability to tolerate therapies in serious illness, specifically for chemotherapy. (Definition from: [LOINC](https://loinc.org/89262-0/))

Conformance statement:

Observation resources associated with an mCODE patient with Observation.code LOINC 89247-1 MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form."
* ^abstract = false
* code = LNC#89247-1 //"ECOG Performance Status score"
* value[x] only integer
* interpretation from http://loinc.org/vs/LL529-9 (required)
