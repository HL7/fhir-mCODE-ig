```
Instance: mcode-radiotherapy-volume-type-vs
InstanceOf: ValueSet
Usage: #inline
* url = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-volume-type-vs"
* version = "2.0.0"
* name = "RadiotherapyVolumeTypeVS"
* title = "Radiotherapy Volume Type Value Set"
* status = #active
* date = "2022-03-30T14:27:52-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* description = "Codes describing the types of body volumes used in radiotherapy planning and treatment. The value set includes the most common codes from DICOM CID 9534 Radiotherapy Targets (UID 1.2.840.10008.6.1.1244) and adds a code for Organs at Risk (OAR)."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* expansion.identifier = "urn:uuid:a9d0eecb-67c6-40ec-8db5-6e5b860fdeb8"
* expansion.timestamp = "2022-03-30T14:30:58-04:00"
* expansion.total = 5
* expansion.parameter[0].name = "excludeNested"
* expansion.parameter[=].valueBoolean = false
* expansion.parameter[+].name = "limitedExpansion"
* expansion.parameter[=].valueBoolean = true
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20210901"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://snomed.info/sct"
* expansion.contains[0] = http://snomed.info/sct#228793007 "Planning target volume (observable entity)"
* expansion.contains[+] = http://snomed.info/sct#228791009 "Gross tumor volume (observable entity)"
* expansion.contains[+] = http://snomed.info/sct#228792002 "Clinical target volume (observable entity)"
* expansion.contains[+] = http://snomed.info/sct#1201745009 "Internal Target Volume"
* expansion.contains[+] = http://snomed.info/sct#1201746005 "Internal Gross Tumor Volume"
```