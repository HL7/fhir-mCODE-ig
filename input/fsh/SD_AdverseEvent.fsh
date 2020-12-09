// Additional Invariants (Not done):
// 1) if grade /= 0, seriousness must be specified
// 2) If grade = 0, seriousness and suspectEntity must not be specified


Profile: CTCAdverseEvent
Parent: AdverseEvent
Title: "CTC Adverse Event"
Id: mcode-ctc-adverse-event
Description: "Profile of adverse event, using Common Terminology Criteria (CTC)."
* ^status = #draft
* ^experimental = true
* subject only Reference(Patient)
* subject and date and outcome and recorder and actuality and category and study MS 
* actuality = #actual
// ------Event-----
* event 1..1 MS
* event.text 1..1 MS  // require the verbatim text, recorded in event.text
* event from CTCAEPreferredTermVS (extensible)
* event.coding ^short = "CTCAE Preferred Term"
* event.coding ^definition = "The preferred term taken from CTCAE."
* event.coding.code ^short = "NCI Thesaurus code"
* event.coding.code ^definition = "The NCI Thesaurus code for the CTCAE Preferred Term. The code should not precoordinate the adverse event grade"
* event.coding.display ^short = "NCI Thesaurus preferred name."
* event.coding.display ^definition = "The NCI Thesaurus preferred name corresponding to the NCI code."
* event.coding.version ^short = "CTCAE Version"
* event.coding.version ^definition = "The version of CTCAE supplying the preferred term."
* event.text ^short = "Verbatim Text"
* event.text ^definition = "The original, verbatim word or phrase as entered by the clinician describing the advese event. The verbatim text may be different than the CTCAE Preferred Term given in event.coding.display, since the latter is derived, coded version of the verbatim text. If the AE was selected from a pick list, the event.text must be text displayed in the user interface that was selected by the clinician."
// ------Grade-----
* severity 0..0  // replaced with extension because severity has a required value set we don't want
* extension contains CTCAEGrade named grade 1..1 MS and AdverseEventExpectation named expectation 0..1 MS and AdverseEventResolvedDate named resolvedDate 0..1 MS
* extension[CTCAEGrade].valueCodeableConcept MS
* extension[CTCAEGrade].valueCodeableConcept.coding ^short = "Adverse Event Grade"
* extension[CTCAEGrade].valueCodeableConcept.coding ^definition = "The grade of the adverse event, determined by CTCAE criteria. The code '0' representing no adverse event may be used to provide positive confirmation that the clinician assessed or considered this particular AE, although the absence of an adverse event is generally not reportable."
// ------Seriousness------
* seriousness 0..1 MS
* seriousness from AdverseEventSeriousnessVS (required)
// ------Causality------
* suspectEntity and suspectEntity.instance and suspectEntity.causality and suspectEntity.causality.assessment and suspectEntity.causality.assessment.text MS
* suspectEntity.causality.assessment from AdverseEventRelatednessVS (required)


Extension: CTCAEGrade
Id: mcode-ctcae-grade
Title: "CTC Adverse Event Grade"
Description: "The grade associated with the severity of an adverse event, using CTCAE criteria. See https://ctep.cancer.gov/protocolDevelopment/electronic_applications/ctc.htm"
* ^status = #draft
* ^experimental = true
* ^context[0].type = #element
* ^context[0].expression = "AdverseEvent"
* value[x] only CodeableConcept
* valueCodeableConcept from CTCAEGradeVS (required)

Extension: AdverseEventExpectation
Id: mcode-adverse-event-expectation
Title: "Adverse Event Expectation"
Description: "A determination if the adverse event is or is not one whose nature and severity have been previously observed, identified in nature, severity, or frequency, and documented in the investigator brochure, investigational plan, protocol, current consent form, scientific publication, or in other relevant and reliable document."
* value[x] only CodeableConcept
* valueCodeableConcept from AdverseEventExpectationVS (required)

Extension: AdverseEventResolvedDate
Id: mcode-adverse-event-resolved-date
Title: "Adverse Event Resolved Date"
Description: "The date (and time) when the adverse event ends or returns to baseline. (NCI Thesaurus)"
* ^status = #draft
* ^experimental = true
* ^context[0].type = #element
* ^context[0].expression = "AdverseEvent"
* value[x] only dateTime

