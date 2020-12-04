Profile: CTCAdverseEvent
Parent: AdverseEvent
Title: "CTC Adverse Event"
Id: ctc-adverse-event
Description: "Profile of adverse event, using common terminology criteria (CTC)."
* subject only Reference(Patient)
* actuality = #actual
* event 1..1
* event.text 1..1
* event from CTCAEPrimaryTermVS (extensible)
* severity 0..0  // replaced with CTCAEGrade
* extension contains CTCAEGrade named grade 0..1 MS
* extension[CTCAEGrade].valueCodeableConcept.text from AdverseEventNumericalGradeVS (required)
* extension[CTCAEGrade].valueCodeableConcept.text 1..1 MS
* seriousness from AdverseEventSeriousnessVS (required)
* suspectEntity.causality.assessment from AEA (required)

Extension: CTCAEGrade
Id: ctcae-grade
Title: "CTC Adverse Event Grade"
Description: "The grade associated with the severity of an adverse event, using CTCAE criteria. See https://ctep.cancer.gov/protocolDevelopment/electronic_applications/ctc.htm"
* value[x] from CTCAdverseEventGradeVS (required)

