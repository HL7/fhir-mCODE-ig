```
Instance: cancer-related-mcode-comorbidities-elixhauser-john-anyperson
InstanceOf: ComorbiditiesElixhauser
Title: "cancer-related-mcode-comorbidities-elixhauser-john-anyperson"
Description: "Example of Cancer-Related Comorbidities"
Usage: #example
* status = #final
* code = $loinc-requested-cs#comorbidities-elixhauser "Elixhauser Comorbidity Panel"
* subject = Reference(cancer-patient-john-anyperson)
* focus = Reference(primary-cancer-condition-nsclc)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* component[0].extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbid-condition-code"
* component[=].extension.valueCodeableConcept = $icd-10-cm#I50.32 "Chronic diastolic (congestive) heart failure"
* component[=].code = $loinc-requested-cs#CHF
* component[=].valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* component[+].code = $loinc-requested-cs#ARTH
* component[=].valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* component[+].code = $loinc-requested-cs#LUNG_CHRONIC
* component[=].valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* component[+].code = $loinc-requested-cs#OBESE
* component[=].valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* component[+].code = $loinc-requested-cs#PERIVASC
* component[=].valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
```