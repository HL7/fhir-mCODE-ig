```
Instance: john-anyperson-treatment-volume
InstanceOf: RadiotherapyVolume
Title: "john-anyperson-treatment-volume"
Description: "Anatomic volume for John Anyperson's brachytherapy."
Usage: #example
* location = $sct#31094006 "Structure of lobe of lung (body structure)"
* locationQualifier[0] = $sct#261122009 "Lower (qualifier value)"
* locationQualifier[+] = $sct#7771000 "Left (qualifier value)"
* description = "Structure of lower lobe of left lung"
* patient = Reference(cancer-patient-john-anyperson)
```