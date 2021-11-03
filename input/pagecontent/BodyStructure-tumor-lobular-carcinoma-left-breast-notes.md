```
Instance: tumor-lobular-carcinoma-left-breast
InstanceOf: Tumor
Title: "tumor-lobular-carcinoma-left-breast"
Description: "Example of a resource conforming to the tumor profile."
Usage: #example
* extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition"
* extension.valueReference = Reference(primary-cancer-condition-breast)
* identifier.use = #usual
* identifier.type = $resource-types#BodyStructure
* identifier.system = "http://radiology.hospital.example.org"
* identifier.value = "Tumor 1234"
* location = $sct#80248007 "Left breast structure (body structure)"
* patient = Reference(cancer-patient-eve-anyperson)
```