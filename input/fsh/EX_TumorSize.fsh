// Add a breast cancer diagnosis to make the breast-related tumor size examples make sense
Instance: primary-cancer-condition-breast
InstanceOf: PrimaryCancerCondition
Description: "mCODE Example for Primary Cancer Condition (breast). The example shows post-coordinated coding using SNOMED CT, with separate codes for morphology and bodySite."
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#363346000 "Malignant neoplastic disease (disorder)" //SCT#109888004 "Lobular carcinoma in situ of breast (disorder)"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#77284006 "Lobular carcinoma in situ (morphologic abnormality)"
* bodySite = SCT#80248007 "Left breast structure (body structure)"
* subject = Reference(cancer-patient-eve-anyperson)
* onsetDateTime = "2019-04-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = SCT#1222806003 "American Joint Committee on Cancer stage IIIC (qualifier value)"
* stage.assessment = Reference(tnm-clinical-stage-group-3c)

Instance: tumor-size-pathology
InstanceOf: TumorSize
Description: "Example of a resource conforming to the tumor size profile."
* status = #final
* method = SCT#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* subject = Reference(Patient/cancer-patient-eve-anyperson)
* focus = Reference(BodyStructure/tumor-lobular-carcinoma-left-breast)
* component[tumorLongestDimension].valueQuantity = 1.2 'cm' "cm"
* component[tumorOtherDimension].valueQuantity = 1.0 'cm' "cm"
* component[tumorOtherDimension].valueQuantity = 0.5 'cm' "cm"
* effectiveDateTime = "2019-05-01"

Instance: tumor-lobular-carcinoma-left-breast
InstanceOf: Tumor
Description: "Example of a resource conforming to the tumor profile."
* patient = Reference(Patient/cancer-patient-eve-anyperson)
// Resources conforming to this profile indicate that the tumor is still in the body.
// This implies it is being measured by imaging or physical exam. The identifier here is a hypothetical
// radiology identifier for a specific tumor.
* identifier[bodyStructureIdentifier].use = #usual
* identifier[bodyStructureIdentifier].type = http://hl7.org/fhir/resource-types#BodyStructure
* identifier[bodyStructureIdentifier].system = "http://radiology.hospital.example.org"
* identifier[bodyStructureIdentifier].value = "Tumor 1234"
* location = SCT#80248007 "Left breast structure (body structure)"
* extension[relatedCondition].valueReference = Reference(Condition/primary-cancer-condition-breast)


Instance: tumor-specimen-lobular-carcinoma-left-breast
InstanceOf: HumanSpecimen
Description: "Example of a tumor specimen, linked to [this Tumor](BodyStructure-tumor-lobular-carcinoma-left-breast.html) via `identifier`."
* subject = Reference(Patient/cancer-patient-eve-anyperson)
* status = #available "available"
* type = SPTY#TUMOR
* identifier[bodyStructureIdentifier].use = #usual
* identifier[bodyStructureIdentifier].type = http://hl7.org/fhir/resource-types#BodyStructure
* identifier.system = "http://radiology.hospital.example.org"
* identifier[bodyStructureIdentifier].value = "Tumor 1234"
* receivedTime = "2020-05-01"
* collection.bodySite = SCT#80248007 "Left breast structure (body structure)"

/*
Instance: multifocal-tumor-lobular-carcinoma
InstanceOf: MultifocalTumor
Usage: #example
Title: "multifocal-tumor-lobular-carcinoma"
Description: "Example of an Observation indicating a tumor is multifocal based on gross pathology."
* code = LNC#24419-4 "Pathology report gross observation"
* focus[+] = Reference(tumor-lobular-carcinoma-left-breast)
* focus[+] = Reference(tumor-specimen-lobular-carcinoma-left-breast)
* subject = Reference(Patient/cancer-patient-eve-anyperson)
* status = #final "final"
* effectiveDateTime = "2019-05-01"
*/