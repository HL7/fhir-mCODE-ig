Instance: ctc-adverse-event-example-1
InstanceOf: CTCAdverseEvent
Description: "Grade 2 dehydration attributed to gefitinib"
* id = "ctc-adverse-event-example-1"
* contained[0] = mcode-medication-example-1
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/ctc-adverse-event"
* status = #completed
* subject = Reference(Patient/mCODEPatientExample1)
* code = NCIT#C57787  "Dehydration"
* code.text = "DHN IV given"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#2 "Moderate Adverse Event"
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#resolved
* occurrenceDateTime = "2020-05-20"
* recorder = Reference(Practitioner/mCODEPractitionerExample1)
* suspectEntity[0].instanceReference = Reference(mcode-medication-example-1)
* suspectEntity[0].causality[0].entityRelatedness = AECA#probably-likely
* extension[expectation].valueCodeableConcept = NCIT#C41333 "Expected Adverse Event"
* extension[resolvedDate].valueDateTime = "2020-05-21"

Instance: ctc-adverse-event-example-2
InstanceOf: CTCAdverseEvent
Description: "Non-occurrence of anemia"
* id = "ctc-adverse-event-example-2"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/ctc-adverse-event"
* status = #completed
* subject = Reference(Patient/mCODEPatientExample1)
* code = NCIT#C143283  "Anemia"
* code.text = "AIHA NGTD"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#0 "Absent Adverse Event"
* recorder = Reference(Practitioner/mCODEPractitionerExample1)

Instance: mcode-medication-example-1
InstanceOf: Medication
Description: "Gefitinib 250 MG Oral Tablet"
Usage: #inline
* id = "mcode-medication-example-1"
* code = RXN#349472 "gefitinib 250 MG Oral Tablet"
