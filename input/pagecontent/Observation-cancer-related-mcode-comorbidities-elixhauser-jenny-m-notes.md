```
Instance: cancer-related-mcode-comorbidities-elixhauser-jenny-m
InstanceOf: ComorbiditiesElixhauser
Title: "cancer-related-mcode-comorbidities-elixhauser-jenny-m"
Description: "mCODE Example for Cancer-Related Comorbidities"
Usage: #example
* status = #final
* code = http://loinc.org-requested-cs#comorbidities-elixhauser "Elixhauser Comorbidity Panel"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-03-16"
* performer = Reference(us-core-practitioner-owen-oncologist)
* component[0].extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbid-condition-reference"
* component[=].extension.valueReference = Reference(us-core-condition-depression-jenny-m)
* component[=].code = http://loinc.org-requested-cs#DEPRESS
* component[=].valueCodeableConcept = http://snomed.info/sct#52101004 "Present (qualifier value)"
* component[+].extension.url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbid-condition-reference"
* component[=].extension.valueReference = Reference(us-core-condition-hypertension-jenny-m)
* component[=].code = http://loinc.org-requested-cs#HTN_CX
* component[=].valueCodeableConcept = http://snomed.info/sct#52101004 "Present (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#ARTH
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#CHF
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#LUNG_CHRONIC
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#DIAB_UNCX
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#DIAB_CX
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#OBESE
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#PERIVASC
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#PULMCIRC
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
* component[+].code = http://loinc.org-requested-cs#RENLFL_MOD
* component[=].valueCodeableConcept = http://snomed.info/sct#2667000 "Absent (qualifier value)"
```