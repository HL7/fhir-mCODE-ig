```
Instance: us-core-practitioner-jane-radiotech
InstanceOf: USCorePractitionerProfile
Title: "us-core-practitioner-jane-radiotech"
Description: "Extended example: example PCP practitioner"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "234512367"
* name.family = "Radiologist"
* name.given = "Jane"
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