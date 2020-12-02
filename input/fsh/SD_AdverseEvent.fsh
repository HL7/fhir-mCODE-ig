Profile: CTCAdverseEvent
Parent: AdverseEvent
Title: "CTC Adverse Event"
Id: ctc-adverse-event
Description: "Profile of adverse event, using common terminology criteria (CTC)."
* subject only Reference(Patient)
* actuality = #actual
* event 1..1
* event from MedDRAVS (required)
* event.text 1..1
* severity 0..0  // replace with CTCAEGrade
* extension contains CTCAEGrade named grade 0..1 
* seriousness from AdverseEventSeriousnessVS (required)
* suspectEntity.causality.assessment from AEA (required)

Extension: CTCAEGrade
Id: ctcae-grade
Title: "CTC Adverse Event Grade"
Description: "The grade associated with the severity of an adverse event, using CTCAE criteria. See https://ctep.cancer.gov/protocolDevelopment/electronic_applications/ctc.htm"
* value[x] only CodeableConcept
* valueCodeableConcept from CTCAdverseEventGradeVS (required)


/* 
Fooled around with replacing FHIR codes with SNOMED, but gave up 
ValueSet: AdverseEventAttributionVS
Id: adverse-event-attribution-value-set
Title: "Adverse Event Attribution Value Set"
Description: "Taken from the hierarchy of certainty in SNOMED-CT"

* SCT#428263003 "NOT suspected (qualifier value)"
* SCT#452161000124108 "Improbable (qualifier value)"
* SCT#371930009 "Possible (qualifier value)"
* SCT#452201000124102 "Probable (qualifier value)"
* SCT#255545003 "Definite (qualifier value)"

* SCT#452161000124108 "Improbable (qualifier value)" // unlikely in EPIC
* SCT#452171000124101 "Slightly probable (qualifier value)"  // possible in EPIC
* SCT#452181000124103 "Moderately probable (qualifier value)" // probable in EPIC
* SCT#452191000124100 "Highly probable (qualifier value)"  // definite in EPIC
* SCT#255545003 "Definite (qualifier value)"
*/


