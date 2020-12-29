Instance: Patient-id
InstanceOf: SearchParameter
Title: "Search by _id in Patients with multipleOr"
* url = "http://hl7.org/fhir/us/mcode/SearchParameter/Patient-id"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Resource-id"
* name = "PatientIdSearchParameter"
* status = #draft
* experimental = true
* description = "This SearchParameter enables query of patients by `_id` with `mutlipleOr` enabled."
* code = #_id
* base[0] = #Patient
* type = #token
* multipleOr = true
* expression = "Resource.id"
* xpath = "f:Resource/f:id"
* xpathUsage = #normal

Instance: Condition-code
InstanceOf: SearchParameter
Title: "Search by code:in in Conditions"
* url = "http://hl7.org/fhir/us/mcode/SearchParameter/Condition-code"
* name = "ConditionCodeSearchParameter"
* status = #draft
* experimental = true
* description = "This SearchParameter enables query of conditions by code with the `in` modifier."
* code = #code
* base[0] = #Condition
* type = #uri
* expression = "Condition.code"
* xpath = "f:Condition/f:code"
* xpathUsage = #normal
* modifier = #in

Instance: Group-value
InstanceOf: SearchParameter
Title: "Search by value in Groups"
* url = "http://hl7.org/fhir/us/mcode/SearchParameter/Group-value"
* name = "GroupValueSearchParameter"
* status = #draft
* experimental = true
* description = "This SearchParameter enables query of groups by value."
* code = #value
* base[0] = #Group
* type = #uri
* expression = "(Group.characteristic.value as CodeableConcept) | (Group.characteristic.value as boolean)"
* xpath = "f:Group/f:characteristic/f:valueCodeableConcept | f:Group/f:characteristic/f:valueBoolean"
* xpathUsage = #normal