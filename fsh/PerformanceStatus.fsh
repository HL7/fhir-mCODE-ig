Profile:    KarnofskyPerformanceStatus
Parent:     Observation
Id:         mcode-karnofsky-performance-status
Title:      "Karnofsky Performance Status"
Description:    "The Karnofsky Performance Status (KPS) is a tool used to measure a patient's functional status. It can be used to compare the effectiveness of different therapies and to help assess the prognosis of certain patients, such as those with certain cancers. The KPS score ranges from 0 to 100 in intervals of 10. Higher scores are associated with better functional status, with 100 representing no symptoms or evidence of disease, and 0 representing death."
* status, code, subject, effective[x], valueInteger MS
* subject 1..1
* value[x] 1..1
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* basedOn only Reference (ServiceRequest | CarePlan)
* partOf only Reference (Procedure)
* category from http://hl7.org/fhir/ValueSet/observation-category (extensible)
* code = LNC#89243-0 //"Karnofsky Performance Status score"
* subject only Reference(USCorePatient)
* effective[x] only dateTime or Period
* performer only Reference(Practitioner)
* value[x] only integer
* interpretation from http://loinc.org/vs/LL4986-7 (required)

Profile:    ECOGPerformanceStatus
Parent:     Observation
Id:         mcode-ecog-performance-status
Title:      "ECOG Performance Status"
Description:    "The Eastern Cooperative Oncology Group (ECOG) Performance Status represents the patient's functional status and is used to determine their ability to tolerate therapies in serious illness, specifically for chemotherapy. (Definition from: [LOINC](https://loinc.org/89262-0/))."
* status, code, subject, effective[x], valueInteger MS
* subject 1..1
* value[x] 1..1
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* basedOn only Reference(ServiceRequest | CarePlan)
* partOf only Reference(Procedure)
* category from http://hl7.org/fhir/ValueSet/observation-category (extensible)
* code = LNC#89247-1 //"ECOG Performance Status score"
* subject only Reference(USCorePatient)
* effective[x] only dateTime or Period 
* performer only Reference(Practitioner)
* value[x] only integer
* interpretation from http://loinc.org/vs/LL529-9 (required)
