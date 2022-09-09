```
Instance: family-member-history-sister-jenny-m
InstanceOf: FamilyMemberHistory
Title: "family-member-history-sister-jenny-m"
Description: "Extended example: example showing family member history of cancer"
Usage: #example
* status = #completed
* patient = Reference(cancer-patient-jenny-m)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NSIS "natural sister"
* condition.code.coding.version = "http://snomed.info/sct/900000000000207008"
* condition.code.coding = http://snomed.info/sct#254837009 "Malignant neoplasm of breast (disorder)"
* condition.contributedToDeath = false
* condition.onsetAge = 64 'a'
```