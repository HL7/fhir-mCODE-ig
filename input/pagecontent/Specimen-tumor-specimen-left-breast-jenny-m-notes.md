```
Instance: tumor-specimen-left-breast-jenny-m
InstanceOf: TumorSpecimen
Title: "tumor-specimen-left-breast-jenny-m"
Description: "Extended example: example tumor specimen"
Usage: #example
* identifier.use = #usual
* identifier.type = http://hl7.org/fhir/resource-types#BodyStructure
* identifier.system = "http://radiology.hospital.example.org"
* identifier.value = "Tumor 1234"
* status = #available
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TUMOR
* subject = Reference(cancer-patient-jenny-m)
* receivedTime = "2018-04-01"
* collection.bodySite = http://snomed.info/sct#80248007 "Left breast structure (body structure)"
```