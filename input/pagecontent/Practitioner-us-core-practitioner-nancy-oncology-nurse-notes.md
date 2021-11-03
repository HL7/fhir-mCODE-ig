```
Instance: us-core-practitioner-nancy-oncology-nurse
InstanceOf: USCorePractitionerProfile
Title: "us-core-practitioner-nancy-oncology-nurse"
Description: "Extended example: example RN practitioner"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "55667788"
* name.family = "Nurse"
* name.given = "Nancy"
* name.prefix = "Ms."
* address.use = #work
* address.line = "123 Corporate Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* gender = #female
* qualification.code.coding.version = "2.7"
* qualification.code.coding = $v2-0360#RN
```