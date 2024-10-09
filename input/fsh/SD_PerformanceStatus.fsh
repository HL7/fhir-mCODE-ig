RuleSet: PerformanceStatusCommonRules
* ^extension[FMM].valueInteger = 4
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
Parent:     USCoreClinicalResult
Id: mcode-karnofsky-performance-status
Title:      "Karnofsky Performance Status Profile"
Description:    "The Karnofsky Performance Status (KPS) is a tool used to measure a patient's functional status. It can be used to compare the effectiveness of different therapies and to help assess the prognosis of certain patients, such as those with certain cancers. The KPS score ranges from 0 to 100 in intervals of 10. Higher scores are associated with better functional status, with 100 representing no symptoms or evidence of disease, and 0 representing death."
* insert PerformanceStatusCommonRules
* code = LNC#89243-0 //"Karnofsky Performance Status score"
* value[x] only integer
* interpretation from http://loinc.org/vs/LL4986-7 (required)


Profile:    ECOGPerformanceStatus
Parent:     USCoreClinicalResult
Id: mcode-ecog-performance-status
Title:      "ECOG Performance Status Profile"
Description:    "The Eastern Cooperative Oncology Group (ECOG) Performance Status represents the patient's functional status and is used to determine their ability to tolerate therapies in serious illness, specifically for chemotherapy. (Definition from: [LOINC](https://loinc.org/89262-0/))"
* insert PerformanceStatusCommonRules
* code = LNC#89247-1 //"ECOG Performance Status score"
* value[x] only integer
* interpretation from http://loinc.org/vs/LL529-9 (required)


Profile: LanskyPlayPerformanceStatus
Parent:  USCoreClinicalResult
Id: mcode-lansky-play-performance-status
Title:  "Lansky Play Performance Status Profile"
Description:  "The Lansky Play-Performance Status for children is a parent-rated instrument which records usual play activity as the index of performance. It is similar to the Karnofsky Performance Scale for adults (Definition from: [NCI Thesaurus](https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&code=C38144&ns=ncit))."
* insert PerformanceStatusCommonRules
* code = NCIT#C38144 // Lansky Play-Performance Status
* value[x] only integer 
* interpretation from LanskyPlayPerformanceStatusVS (extensible)


Profile: DeauvilleScale
Id: mcode-deauville-scale
Parent: USCoreClinicalResult
Title: "Deauville Scale Profile"
Description: "Profile for Deauville Scale. A 5 point scale devised to assess the response to treatment of Hodgkin and aggressive Non-Hodgkin lymphoma."
* code = SCT#708895006 "Deauville five point scale (assessment scale)"
* basedOn only Reference(CarePlan or MedicationRequest or ServiceRequest)
* partOf only Reference(MedicationAdministration or MedicationDispense or MedicationStatement or Procedure or ImagingStudy)
* performer only Reference(Practitioner or PractitionerRole or Organization or CareTeam)
* subject only Reference(CancerPatient)
* subject ^definition = "The patient associated with the Deauville Score."
* value[x] only integer 
* focus only Reference(PrimaryCancerCondition)
* focus ^short = "The cancer condition associated with the Deauville Score"
* focus ^definition = "Deauville Score is associated with a particular primary cancer condition. Observation.focus is used to point back to that condition."
* status and code and subject and effective[x] and value[x] and focus and interpretation MS
* insert NotUsed (specimen)
* interpretation from DeauvilleScaleVS (extensible)

Profile: BodySurfaceArea
Parent: USCoreVitalSignsProfile
Id: mcode-body-surface-area
Title: "Body Surface Area"
Description: "Entire body surface area, either measured or calculated."
* code = LNC#8277-6 // Body Surface Area
* value[x] only Quantity
//* valueQuantity = UCUM#m2 <-- THIS LINE IS CAUSING THE PUBLISHER TO CRASH 6/30/2023 VERSION 1.3.20




