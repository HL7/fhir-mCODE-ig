
Instance: history-metastatic-cancer-jenny-m 
InstanceOf: HistoryOfMetastaticCancer
Description: "Example showing history of metastatic cancer"
* clinicalStatus = ClinStatus#remission
* verificationStatus = VerStatus#confirmed
* category = CondCat#problem-list-item
* code = SCT_TBD#1287652008 "History of metastatic malignant neoplasm (situation)"
* subject = Reference(cancer-patient-jenny-m)
* onsetDateTime = "2018-03-16"
* extension[condition-assertedDate].valueDateTime = "2018-11-16"
* asserter = Reference(us-core-practitioner-owen-oncologist)
