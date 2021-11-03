```
Instance: family-member-history-uncle-jenny-m
InstanceOf: FamilyMemberHistory
Title: "family-member-history-uncle-jenny-m"
Description: "Extended example: example showing family member history of cancer"
Usage: #example
* status = #completed
* patient = Reference(cancer-patient-jenny-m)
* relationship = $v3-RoleCode#PUNCLE "paternal uncle"
* deceasedBoolean = true
* condition.code = $sct#363418001 "Malignant tumor of pancreas (disorder)"
* condition.contributedToDeath = true
```