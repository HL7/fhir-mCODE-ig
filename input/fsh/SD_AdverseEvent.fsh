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
* event.coding ^short = "CTCAE Preferred Term"
* event.coding ^definition = "The preferred term taken from CTCAE."
* event.coding.code ^short = "NCI Thesaurus code"
* event.coding.code ^definition = "The NCI Thesaurus code for the CTCAE Preferred Term"
* event.coding.version ^short = "CTCAE Version"
* event.coding.version ^definition = "The version of CTCAE supplying the preferred term."
* event.text ^short = "Verbatim Text"
* event.text ^definition = "The original, verbatim word or phrase as entered by the clinician describing the advese event. The verbatim text may be different than the CTCAE Preferred Term given in event.coding.display, since the latter is derived, coded version of the verbatim text. If the AE was selected from a pick list, the event.text must be text displayed in the user interface that was selected by the clinician."
* severity 0..0  // replaced with CTCAEGrade
* extension contains CTCAEGrade named grade 0..1 MS
* extension[CTCAEGrade].valueCodeableConcept.text from AdverseEventNumericalGradeVS (required)
* extension[CTCAEGrade].valueCodeableConcept.text ^short = "Adverse Event Grade"
* extension[CTCAEGrade].valueCodeableConcept.text ^definition = "The grade of the adverse event, determined by CTCAE criteria, entered as an integer number, 0 to 5 inclusive, where 0 represents "
* extension[CTCAEGrade].valueCodeableConcept.text 1..1 MS
* seriousness from AdverseEventSeriousnessVS (required)
* suspectEntity.causality.assessment from AEA (required)

Extension: CTCAEGrade
Id: ctcae-grade
Title: "CTC Adverse Event Grade"
Description: "The grade associated with the severity of an adverse event, using CTCAE criteria. See https://ctep.cancer.gov/protocolDevelopment/electronic_applications/ctc.htm"
* value[x] only CodeableConcept
* valueCodeableConcept from CTCAdverseEventGradeVS (required)
