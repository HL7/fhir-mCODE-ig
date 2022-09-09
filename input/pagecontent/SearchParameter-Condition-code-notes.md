```
Instance: Condition-code
InstanceOf: SearchParameter
Title: "Search by code:in in Conditions"
Description: "This SearchParameter enables query of conditions by code with the `in` modifier."
Usage: #example
* url = "http://hl7.org/fhir/us/mcode/SearchParameter/Condition-code"
* version = "2.1.0"
* name = "ConditionCodeSearchParameter"
* status = #draft
* experimental = true
* date = "2022-09-09T11:01:03-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* description = "This SearchParameter enables query of conditions by code with the `in` modifier."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = #code
* base = #Condition
* type = #uri
* expression = "Condition.code"
* xpath = "f:Condition/f:code"
* xpathUsage = #normal
* modifier = #in
```