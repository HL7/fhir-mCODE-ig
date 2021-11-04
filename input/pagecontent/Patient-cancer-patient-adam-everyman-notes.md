```
Instance: cancer-patient-adam-everyman
InstanceOf: CancerPatient
Title: "cancer-patient-adam-everyman"
Description: "Example of Patient"
Usage: #example
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Everyman"
* name.given[0] = "Adam"
* name.given[+] = "A."
* gender = #male
* birthDate = "1962-02-05"
* address.line = "234 Anyway St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "333-555-5555"
* contact.telecom[=].use = #home
* contact.telecom[+].system = #email
* contact.telecom[=].value = "adam.everyman@example.com"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"
```