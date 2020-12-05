Profile: CTCAdverseEvent
Parent: AdverseEvent
Title: "CTC Adverse Event"
Id: ctc-adverse-event
Description: "Profile of adverse event, using common terminology criteria (CTC)."
* subject only Reference(Patient)
* actuality = #actual
* event 1..1
* event.text 1..1
* event from CTCAEPreferredTermVS (extensible)
* event.text ^short = "Verbatim Term"
* event.text ^definition = "The original, verbatim term or phrase entered by the clinician describing the advese event. If the AE was selected from a pick list, record the display text that appeared in the user interface selected by the clinician."
* severity 0..0  // replaced with CTCAEGrade
* extension contains CTCAEGrade named grade 0..1 MS
* extension[CTCAEGrade].valueCodeableConcept.text from AdverseEventNumericalGradeVS (required)
* extension[CTCAEGrade].valueCodeableConcept.text ^short = "Adverse Event Grade"
* extension[CTCAEGrade].valueCodeableConcept.text ^definition = "The grade of the adverse event, by CTCAE criteria, entered as a number, 0 to 5 inclusive."
* extension[CTCAEGrade].valueCodeableConcept.text 1..1 MS
* seriousness from AdverseEventSeriousnessVS (required)
* suspectEntity.causality.assessment from AEA (required)

Extension: CTCAEGrade
Id: ctcae-grade
Title: "CTC Adverse Event Grade"
Description: "The grade associated with the severity of an adverse event, using CTCAE criteria. See https://ctep.cancer.gov/protocolDevelopment/electronic_applications/ctc.htm"
* value[x] only CodeableConcept
* valueCodeableConcept from CTCAdverseEventGradeVS (required)

