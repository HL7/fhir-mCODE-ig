```
Instance: mcode-cytologic-evidence-malignancy-vs
InstanceOf: ValueSet
Usage: #inline
* url = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-cytologic-evidence-malignancy-vs"
* version = "2.0.0"
* name = "CytologicEvidenceOfMalignancyVS"
* title = "Cytologic Evidence of Malignancy Value Set"
* status = #active
* date = "2022-03-30T14:27:52-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* description = "Types of cytological evience of malignancy, coded in SNOMED CT or ICD-10-CM."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* expansion.identifier = "urn:uuid:a5cadf81-3ba2-4133-8828-82132752ebaa"
* expansion.timestamp = "2022-03-30T14:30:48-04:00"
* expansion.total = 4
* expansion.parameter[0].name = "excludeNested"
* expansion.parameter[=].valueBoolean = false
* expansion.parameter[+].name = "limitedExpansion"
* expansion.parameter[=].valueBoolean = true
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20210901"
* expansion.parameter[+].name = "excludeNested"
* expansion.parameter[=].valueBoolean = true
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/sid/icd-10-cm|2021"
* expansion.contains[0] = http://snomed.info/sct#126361000119107 "Cytological evidence of malignancy on anal Papanicolaou smear (finding)"
* expansion.contains[+] = http://snomed.info/sct#126371000119101 "Cytological evidence of malignancy on vaginal Papanicolaou smear (finding)"
* expansion.contains[+] = http://hl7.org/fhir/sid/icd-10-cm#R85.614 "Cytologic evidence of malignancy on smear of anus"
* expansion.contains[+] = http://hl7.org/fhir/sid/icd-10-cm#R87.624 "Cytologic evidence of malignancy on smear of vagina"
```