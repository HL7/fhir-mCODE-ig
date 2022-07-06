```
Instance: mcode-condition-status-trend-vs
InstanceOf: ValueSet
Usage: #inline
* url = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-condition-status-trend-vs"
* version = "2.0.0"
* name = "ConditionStatusTrendVS"
* title = "Condition Status Trend Value Set"
* status = #active
* date = "2022-03-30T14:27:52-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* description = "How patient's given disease, condition, or ability is trending."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* expansion.identifier = "urn:uuid:5a807022-8fb1-4e64-bdce-a9474c2ce31e"
* expansion.timestamp = "2022-03-30T14:30:48-04:00"
* expansion.total = 4
* expansion.parameter[0].name = "excludeNested"
* expansion.parameter[=].valueBoolean = false
* expansion.parameter[+].name = "limitedExpansion"
* expansion.parameter[=].valueBoolean = true
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20210901"
* expansion.contains[0] = http://snomed.info/sct#268910001 "Patient's condition improved (finding)"
* expansion.contains[+] = http://snomed.info/sct#359746009 "Patient's condition stable (finding)"
* expansion.contains[+] = http://snomed.info/sct#271299001 "Patient's condition worsened (finding)"
* expansion.contains[+] = http://snomed.info/sct#709137006 "Patient condition undetermined (finding)"
```