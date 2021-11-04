```
Instance: cancer-related-mcode-comorbidities-elixhauser-john-anyperson
InstanceOf: ComorbiditiesElixhauser
Title: "cancer-related-mcode-comorbidities-elixhauser-john-anyperson"
Description: "Example of Cancer-Related Comorbidities"
Usage: #example
* status = #final
* code = http://loinc.org-requested-cs#comorbidities-elixhauser "Elixhauser Comorbidity Panel"
* subject = Reference(cancer-patient-john-anyperson)
* focus = Reference(primary-cancer-condition-nsclc)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* component[0].extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbid-condition-code"
* component[=].extension.valueCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I50.32 "Chronic diastolic (congestive) heart failure"
* component[=].code = http://loinc.org-requested-cs#CHF
* component[=].valueCodeableConcept = http://snomed.info/sct#52101004 "Present (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#ARTH
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#LUNG_CHRONIC
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#OBESE
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#PERIVASC
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
```