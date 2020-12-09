Instance: ctc-adverse-event-example-1
InstanceOf: CTCAdverseEvent
Description: "Grade 2 dehydration attributed to gefitinib"
* id = "ctc-adverse-event-example-1"
* contained[0] = mcode-medication-example-1 
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/ctc-adverse-event"
* subject = Reference(Patient/mCODEPatientExample1)
* event = NCIT#C57787  "Dehydration"
* event.text = "DHN IV given"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#2 "Moderate Adverse Event" 
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#resolved
* recorder = Reference(Practitioner/mCODEPractitionerExample1)
* suspectEntity[0].instance = Reference(mcode-medication-example-1)
* suspectEntity[0].causality[0].productRelatedness = "probable"

Instance: ctc-adverse-event-example-2
InstanceOf: CTCAdverseEvent
Description: "Non-occurrence of anemia"
* id = "ctc-adverse-event-example-2"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/ctc-adverse-event"
* subject = Reference(Patient/mCODEPatientExample1)
* event = NCIT#C143283  "Anemia"
* event.text = "AIHA NGTD"
* extension[grade].valueCodeableConcept = CTCAEGradeCS#0 "Absent Adverse Event"
* recorder = Reference(Practitioner/mCODEPractitionerExample1)


Instance: mcode-medication-example-1
InstanceOf: Medication 
Description: "Gefitinib 250 MG Oral Tablet"
Usage: #inline
* id = "mcode-medication-example-1"
* code = RXN#349472 "gefitinib 250 MG Oral Tablet"