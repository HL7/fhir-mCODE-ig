```
Instance: john-anyperson-treatment-volume
InstanceOf: RadiotherapyVolume
Title: "john-anyperson-treatment-volume"
Description: "Anatomic volume for John Anyperson's brachytherapy."
Usage: #example
* location.coding.version = "http://snomed.info/sct/900000000000207008"
* location.coding = http://snomed.info/sct#31094006 "Structure of lobe of lung (body structure)"
* locationQualifier[0].coding.version = "http://snomed.info/sct/900000000000207008"
* locationQualifier[=].coding = http://snomed.info/sct#261122009 "Lower (qualifier value)"
* locationQualifier[+].coding.version = "http://snomed.info/sct/900000000000207008"
* locationQualifier[=].coding = http://snomed.info/sct#7771000 "Left (qualifier value)"
* description = "Structure of lower lobe of left lung"
* patient = Reference(cancer-patient-john-anyperson)
```