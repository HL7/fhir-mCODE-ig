```
Instance: tumor-specimen-lobular-carcinoma-left-breast
InstanceOf: TumorSpecimen
Title: "tumor-specimen-lobular-carcinoma-left-breast"
Description: "Example of a TumorSpecimen linked to [this Tumor](BodyStructure-tumor-lobular-carcinoma-left-breast.html) via `identifier`."
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition"
* extension.valueReference = Reference(primary-cancer-condition-breast)
* identifier.use = #usual
* identifier.type = http://hl7.org/fhir/resource-types#BodyStructure
* identifier.system = "http://radiology.hospital.example.org"
* identifier.value = "Tumor 1234"
* status = #available
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TUMOR
* subject = Reference(cancer-patient-eve-anyperson)
* receivedTime = "2020-05-01"
* collection.bodySite = http://snomed.info/sct#80248007 "Left breast structure (body structure)"
```