```
Instance: cancer-patient-john-anyperson
InstanceOf: CancerPatient
Title: "cancer-patient-john-anyperson"
Description: "Example of Patient"
Usage: #example
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Anyperson"
* name.given[0] = "John"
* name.given[+] = "B."
* gender = #male
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "555-555-5555"
* contact.telecom[=].use = #home
* contact.telecom[+].system = #email
* contact.telecom[=].value = "john.anyperson@example.com"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
  * text = "English"
```