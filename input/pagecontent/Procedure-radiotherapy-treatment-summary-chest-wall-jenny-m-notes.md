```
Instance: radiotherapy-treatment-summary-chest-wall-jenny-m
InstanceOf: RadiotherapyCourseSummary
Title: "radiotherapy-treatment-summary-chest-wall-jenny-m"
Description: "Example of radiotherapy treatment summary involving external beam radiation to chest wall and regional node radiation with a chest wall boost"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions"
* extension[=].valueUnsignedInt = 31
* extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
* extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension[=].valueCodeableConcept.coding = http://snomed.info/sct#373808002 "Curative - procedure intent"
* extension[+].extension[0].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
* extension[=].extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension[=].extension[=].valueCodeableConcept.coding = http://snomed.info/sct#1156506007 "External beam radiation therapy using photons (procedure)"
* extension[=].extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
* extension[=].extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension[=].extension[=].valueCodeableConcept.coding = http://snomed.info/sct#1156530009 "Volumetric Modulated Arc Therapy (procedure)"
* extension[=].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+].extension[0].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
* extension[=].extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension[=].extension[=].valueCodeableConcept.coding = http://snomed.info/sct#45643008 "Teleradiotherapy using electrons"
* extension[=].extension[+].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
* extension[=].extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008"
* extension[=].extension[=].valueCodeableConcept.coding = http://snomed.info/sct#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[=].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+].extension[0].url = "volume"
* extension[=].extension[=].valueReference = Reference(jenny-m-chest-wall-treatment-volume)
* extension[=].extension[+].url = "totalDoseDelivered"
* extension[=].extension[=].valueQuantity = 6000 'cGy'
* extension[=].extension[+].url = "fractionsDelivered"
* extension[=].extension[=].valueUnsignedInt = 30
* extension[=].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* extension[+].extension[0].url = "volume"
* extension[=].extension[=].valueReference = Reference(jenny-m-chest-wall-lymph-nodes-treatment-volume)
* extension[=].extension[+].url = "totalDoseDelivered"
* extension[=].extension[=].valueQuantity = 5000 'cGy'
* extension[=].extension[+].url = "fractionsDelivered"
* extension[=].extension[=].valueUnsignedInt = 25
* extension[=].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* status = #completed
* category.coding.version = "http://snomed.info/sct/900000000000207008"
* category.coding = http://snomed.info/sct#108290001 "Radiation oncology AND/OR radiotherapy (procedure)"
* code.coding.version = "http://snomed.info/sct/900000000000207008"
* code.coding = http://snomed.info/sct#1217123003
* subject = Reference(cancer-patient-jenny-m)
* performedPeriod.start = "2018-08-15"
* performedPeriod.end = "2018-10-25"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#C50.811 "Malignant neoplasm of overlapping sites of right female breast"
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008"
* bodySite.coding = http://snomed.info/sct#78904004 "Chest Wall Structure (body structure)"
```