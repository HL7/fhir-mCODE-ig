```
Instance: us-core-practitioner-mary-obgyn
InstanceOf: USCorePractitionerProfile
Title: "us-core-practitioner-mary-obgyn"
Description: "Extended example: example PCP practitioner"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "234512367"
* name.family = "Obgyn"
* name.given = "Mary"
* name.prefix = "Dr."
* address.use = #work
* address.line = "123 Primary Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #female
* qualification.code.coding.version = "2.7"
* qualification.code.coding = $v2-0360#MD
```