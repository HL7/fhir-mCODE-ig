Instance: mcode-ctc-adverse-event-example-1
InstanceOf: CTCAdverseEvent
Description: "Grade 2 dehydration attributed to gefitinib"
* id = "mcode-ctc-adverse-event-example-1"
* contained[0] = mcode-medication-example-1 
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ctc-adverse-event"
* subject = Reference(Patient/mCODEPatientExample1)
* event = NCIT#C57787  "Dehydration"
* event.text = "Moderate DHN"
* extension[grade].valueCodeableConcept.text = "2"
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#resolved
* recorder = Reference(Practitioner/mCODEPractitionerExample1)
* suspectEntity[0].instance = Reference(mcode-medication-example-1)
* suspectEntity[0].causality[0].productRelatedness = "probable"

Instance: mcode-ctc-adverse-event-example-2
InstanceOf: CTCAdverseEvent
Description: "Grade 2 dehydration attributed to gefitinib, reported with grade code"
* id = "mcode-ctc-adverse-event-example-2"
* contained[0] = mcode-medication-example-1 
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ctc-adverse-event"
* subject = Reference(Patient/mCODEPatientExample1)
* event = NCIT#C57787  "Dehydration"
* event.text = "Moderate DHN"
* extension[grade].valueCodeableConcept = NCIT#C41339 "Moderate Adverse Event" 
* seriousness = NCIT#C41336 "Non-serious Adverse Event"
* outcome = AEO#resolved
* recorder = Reference(Practitioner/mCODEPractitionerExample1)
* suspectEntity[0].instance = Reference(mcode-medication-example-1)
* suspectEntity[0].causality[0].productRelatedness = "probable"


Instance: mcode-ctc-adverse-event-example-3
InstanceOf: CTCAdverseEvent
Description: "Non-occurrence of anemia"
* id = "mcode-ctc-adverse-event-example-3"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ctc-adverse-event"
* subject = Reference(Patient/mCODEPatientExample1)
* event = NCIT#C143283  "Anemia"
* event.text = "Negative for AIHA"
* extension[grade].valueCodeableConcept.text = "0"
* recorder = Reference(Practitioner/mCODEPractitionerExample1)


Instance: mcode-medication-example-1
InstanceOf: Medication 
Description: "Gefitinib, unspecified dose"
Usage: #inline
* id = "mcode-medication-example-1"
* code = RXN#349472 "Gefitinib"