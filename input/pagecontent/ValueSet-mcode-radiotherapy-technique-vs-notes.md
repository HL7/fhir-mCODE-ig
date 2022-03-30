```
Instance: mcode-radiotherapy-technique-vs
InstanceOf: ValueSet
Usage: #inline
* url = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-technique-vs"
* version = "2.0.0"
* name = "RadiotherapyTechniqueVS"
* title = "Radiotherapy Technique Value Set"
* status = #active
* date = "2022-03-30T14:27:52-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* description = "Codes describing the techniques of external beam and brachytherapy radiation procedures, for use with radiotherapy summaries. This is the union of the EBRT and brachytherapy technique value sets."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* expansion.identifier = "urn:uuid:e27112c4-54c8-4379-baf4-a696229824f4"
* expansion.timestamp = "2022-03-30T14:30:54-04:00"
* expansion.total = 15
* expansion.parameter[0].name = "excludeNested"
* expansion.parameter[=].valueBoolean = false
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-photon-beam-technique-vs|2.0.0"
* expansion.parameter[+].name = "limitedExpansion"
* expansion.parameter[=].valueBoolean = true
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20210901"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-electron-beam-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-neutron-beam-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-carbon-ion-beam-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/CodeSystem/snomed-requested-cs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-proton-beam-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-permanent-seeds-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-low-dose-rate-temporary-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-pulsed-dose-rate-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-high-dose-rate-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-high-dose-rate-electronic-technique-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-radiopharmaceutical-technique-vs|2.0.0"
* expansion.contains[0].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#441799006 "Intensity modulated radiation therapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156530009 "Volumetric Modulated Arc Therapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156526006 "Two dimensional external beam radiation therapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#168524008 "Radiotherapy - intraoperative control (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#169317000 "Neutron capture therapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156529004 "External beam radiation therapy using particle passive scattering technique (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156528007 "External beam radiation therapy using particle spot scanning technique (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/us/mcode/CodeSystem/snomed-requested-cs#1204242009 "External beam radiation therapy using particle scanning technique (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#113120007 "Interstitial brachytherapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#384692006 "Intracavitary brachytherapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#14473006 "Surface brachytherapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156382005 "Intensity modulated intracavitary brachytherapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156383000 "Intravascular brachytherapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#384691004 "Intraluminal brachytherapy (procedure)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#16560241000119104 "Oral radionuclide therapy (procedure)"
```