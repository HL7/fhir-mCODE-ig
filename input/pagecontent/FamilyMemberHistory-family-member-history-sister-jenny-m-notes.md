```
Instance: family-member-history-sister-jenny-m
InstanceOf: FamilyMemberHistory
Title: "family-member-history-sister-jenny-m"
Description: "Extended example: example showing family member history of cancer"
Usage: #example
* status = #completed
* patient = Reference(cancer-patient-jenny-m)
* relationship = $v3-RoleCode#NSIS "natural sister"
* condition.code = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* condition.contributedToDeath = false
* condition.onsetAge = 64 'a'
```