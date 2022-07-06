```
Instance: mcode-radiotherapy-modality-vs
InstanceOf: ValueSet
Usage: #inline
* url = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-modality-vs"
* version = "2.0.0"
* name = "RadiotherapyModalityVS"
* title = "Radiotherapy Modality Value Set"
* status = #active
* date = "2022-03-30T14:27:52-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* description = "Codes describing the modalities of external beam and brachytherapy radiation procedures, for use with radiotherapy summaries.  This value set is the union of the teleradiotherapy and brachytherapy modality value sets."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* expansion.identifier = "urn:uuid:3de3e788-4056-4a23-a88c-470a4414c204"
* expansion.timestamp = "2022-03-30T14:30:54-04:00"
* expansion.total = 11
* expansion.parameter[0].name = "excludeNested"
* expansion.parameter[=].valueBoolean = false
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-modality-vs|2.0.0"
* expansion.parameter[+].name = "limitedExpansion"
* expansion.parameter[=].valueBoolean = true
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20210901"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-modality-vs|2.0.0"
* expansion.contains[0].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#10611004 "External beam radiation therapy protons (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#45643008 "External beam radiation therapy using electrons (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#80347004 "External beam radiation therapy neutrons (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156505006 "External beam radiation therapy using carbon ions (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156506007 "External beam radiation therapy using photons (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156708005 "Low dose rate brachytherapy using temporary radioactive source (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#169359004 "Internal radiotherapy - permanent seeds (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156384006 "Pulsed dose rate brachytherapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#394902000 "High dose brachytherapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#438629002 "High dose rate electronic brachytherapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#440252007 "Administration of radiopharmaceutical (procedure)"
```