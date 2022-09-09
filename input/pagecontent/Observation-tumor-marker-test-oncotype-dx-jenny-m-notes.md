```
Instance: tumor-marker-test-oncotype-dx-jenny-m
InstanceOf: TumorMarkerTest
Title: "tumor-marker-test-oncotype-dx-jenny-m"
Description: "Extended example: example showing Oncotype DX breast recurrence score. Note that this test has no assigned LOINC code, so GTR is being used as a backup. Only the score from the Oncotype DX panel (as opposed to variant data from the genes in the panel) is represented here."
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[+].coding.version = "http://snomed.info/sct/900000000000207008"
* category[=].coding = http://snomed.info/sct#250724005
* code = http://www.ncbi.nlm.nih.gov/gtr#509910 "Oncotype DX Breast Recurrence Score Assay"
  * text = "Oncotype DX Breast Recurrence Score Assay"
* subject = Reference(cancer-patient-jenny-m)
* effectiveDateTime = "2018-04-12"
* performer = Reference(us-core-organization-bedrock-medicine)
* valueQuantity = 47 '{ScoreOf}' "Recurrence score"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
```