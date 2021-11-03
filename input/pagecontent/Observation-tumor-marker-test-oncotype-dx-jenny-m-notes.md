```
Instance: tumor-marker-test-oncotype-dx-jenny-m
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-oncotype-dx-jenny-m"
Description: "Extended example: example showing Oncotype DX breast recurrence score. Note that this test has no assigned LOINC code, so GTR is being used as a backup. Only the score from the Oncotype DX panel (as opposed to variant data from the genes in the panel) is represented here."
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $gtr#509910 "Oncotype DX Breast Recurrence Score Assay"
* code.text = "Oncotype DX Breast Recurrence Score Assay"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-12"
* performer = Reference(us-core-organization-bedrock-medicine)
* valueQuantity = 47 '{ScoreOf}' "Recurrence score"
* interpretation = $v3-ObservationInterpretation#H "High"
```