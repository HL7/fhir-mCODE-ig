```
Instance: family-member-history-uncle-jenny-m
InstanceOf: FamilyMemberHistory
Title: "family-member-history-uncle-jenny-m"
Description: "Extended example: example showing family member history of cancer"
Usage: #example
* status = #completed
* patient = Reference(cancer-patient-jenny-m)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PUNCLE "paternal uncle"
* deceasedBoolean = true
* condition.code.coding.version = "http://snomed.info/sct/900000000000207008"
* condition.code.coding = http://snomed.info/sct#363418001 "Malignant tumor of pancreas (disorder)"
* condition.contributedToDeath = true
```