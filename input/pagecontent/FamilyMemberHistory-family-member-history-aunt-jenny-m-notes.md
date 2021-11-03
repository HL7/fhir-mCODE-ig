```
Instance: family-member-history-aunt-jenny-m
InstanceOf: FamilyMemberHistory
Title: "family-member-history-aunt-jenny-m"
Description: "Extended example: example showing family member history of cancer"
Usage: #example
* status = #completed
* patient = Reference(cancer-patient-jenny-m)
* relationship = $v3-RoleCode#MAUNT "maternal aunt"
* condition.code = $sct#363443007 "Malignant tumor of ovary (disorder)"
* condition.onsetAge = 69 'a'
```