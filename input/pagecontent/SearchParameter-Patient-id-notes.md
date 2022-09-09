```
Instance: Patient-id
InstanceOf: SearchParameter
Title: "Search by _id in Patients with multipleOr"
Description: "This SearchParameter enables query of patients by `_id` with `mutlipleOr` enabled."
Usage: #example
* url = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* version = "2.1.0"
* name = "PatientIdSearchParameter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Resource-id"
* status = #draft
* experimental = true
* date = "2022-09-09T11:01:03-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* description = "This SearchParameter enables query of patients by `_id` with `mutlipleOr` enabled."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = #_id
* base = #Patient
* type = #token
* expression = "Resource.id"
* xpath = "f:Resource/f:id"
* xpathUsage = #normal
* multipleOr = true
```