```
Instance: us-core-practitioner-kyle-anydoc
InstanceOf: USCorePractitionerProfile
Title: "us-core-practitioner-kyle-anydoc"
Description: "Example of Practitioner"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9988776655"
* name.family = "Anydoc"
* name.given = "Kyle"
* name.prefix = "Dr."
* address.use = #home
* address.line = "567 Healthcare Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #male
* qualification.code.coding.version = "2.7"
* qualification.code.coding = $v2-0360#MD "Doctor of Medicine"
```