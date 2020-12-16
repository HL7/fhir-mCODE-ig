// Additional Invariants (Not done):
// 1) if grade /= 0, seriousness must be specified
// 2) If grade = 0, seriousness and suspectEntity must not be specified


Profile: CTCAdverseEvent
Parent: AdverseEvent
Title: "CTC Adverse Event"
Id: ctc-adverse-event
Description: "Profile of adverse event, using Common Terminology Criteria (CTC)."
* ^status = #draft
* ^experimental = true
* subject only Reference(Patient)
* subject and occurrence[x] and outcome and recorder and actuality and category and study MS
* actuality = #actual
// ------Event-----
* code 1..1 MS
* code.text 1..1 MS  // require the verbatim text, recorded in event.text
* code from CTCAEPreferredTermVS (extensible)
* code.coding ^short = "CTCAE Preferred Term"
* code.coding ^definition = "The preferred term taken from CTCAE."
* code.coding.code ^short = "NCI Thesaurus code"
* code.coding.code ^definition = "The NCI Thesaurus code for the CTCAE Preferred Term. The code should not precoordinate the adverse event grade"
* code.coding.display ^short = "NCI Thesaurus preferred name."
* code.coding.display ^definition = "The NCI Thesaurus preferred name corresponding to the NCI code."
* code.coding.version ^short = "CTCAE Version"
* code.coding.version ^definition = "The version of CTCAE supplying the preferred term."
* code.text ^short = "Verbatim Text"
* code.text ^definition = "The original, verbatim word or phrase as entered by the clinician describing the advese event. The verbatim text may be different than the CTCAE Preferred Term given in event.coding.display, since the latter is derived, coded version of the verbatim text. If the AE was selected from a pick list, the event.text must be text displayed in the user interface that was selected by the clinician."
// ------Grade-----
* extension contains
    CTCAEGrade named grade 1..1 MS and
    AdverseEventExpectation named expectation 0..1 MS and
    AdverseEventResolvedDate named resolvedDate 0..1 MS
// ------Seriousness------
* seriousness 0..1 MS
* seriousness from AdverseEventSeriousnessVS (required)
// ------Causality------
* suspectEntity and suspectEntity.instance[x] and suspectEntity.causality and suspectEntity.causality.assessmentMethod and suspectEntity.causality.assessmentMethod.text MS
* suspectEntity.causality.assessmentMethod from AdverseEventRelatednessVS (required)

RuleSet: AdverseEventExtensionPreamble
* ^status = #draft
* ^experimental = true
* ^context[0].type = #element
* ^context[0].expression = "AdverseEvent"


Extension: CTCAEGrade
Id: ctcae-grade
Title: "CTC Adverse Event Grade"
Description: "The grade associated with the severity of an adverse event, using CTCAE criteria. The code '0' representing no adverse event may be used to provide positive confirmation that the clinician assessed or considered this particular AE, although the absence of an adverse event is generally not reportable. See https://ctep.cancer.gov/protocolDevelopment/electronic_applications/ctc.htm"
* . ^short = "CTC Adverse Event Grade"
* . ^definition = "The grade associated with the severity of an adverse event, using CTCAE criteria. The code '0' representing no adverse event may be used to provide positive confirmation that the clinician assessed or considered this particular AE, although the absence of an adverse event is generally not reportable. See https://ctep.cancer.gov/protocolDevelopment/electronic_applications/ctc.htm"
* insert AdverseEventExtensionPreamble
* value[x] only CodeableConcept
* value[x] from CTCAEGradeVS (required)

Extension: AdverseEventExpectation
Id: adverse-event-expectation
Title: "Adverse Event Expectation"
Description: "A determination if the adverse event is or is not one whose nature and severity have been previously observed, identified in nature, severity, or frequency, and documented in the investigator brochure, investigational plan, protocol, current consent form, scientific publication, or in other relevant and reliable document."
* . ^short = "Adverse Event Expectation"
* . ^definition = "A determination if the adverse event is or is not one whose nature and severity have been previously observed, identified in nature, severity, or frequency, and documented in the investigator brochure, investigational plan, protocol, current consent form, scientific publication, or in other relevant and reliable document."
* insert AdverseEventExtensionPreamble
* value[x] only CodeableConcept
* value[x] from AdverseEventExpectationVS (required)

Extension: AdverseEventResolvedDate
Id: adverse-event-resolved-date
Title: "Adverse Event Resolved Date"
Description: "The date (and time) when the adverse event ends or returns to baseline (NCI Thesaurus)."
* . ^short = "Adverse Event Resolved Date"
* . ^definition = "The date (and time) when the adverse event ends or returns to baseline (NCI Thesaurus)."
* insert AdverseEventExtensionPreamble
* value[x] only dateTime

