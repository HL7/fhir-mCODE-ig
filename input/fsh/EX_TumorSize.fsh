Instance: tumor-size-pathology
InstanceOf: TumorSize
Description: "Example of a resource conforming to the tumor size profile."
* status = #final
* method = SCT#168455000 "Gross pathology (finding)"
* category = ObsCat#laboratory
* subject = Reference(Patient/cancer-patient-john-anyperson)
* focus = Reference(BodyStructure/tumor-lobular-carcinoma-left-breast)
* component[tumorLongestDimension].valueQuantity = 1.2 'cm' "cm"
* component[tumorOtherDimension].valueQuantity = 1.0 'cm' "cm"
* component[tumorOtherDimension].valueQuantity = 0.5 'cm' "cm"

Instance: tumor-lobular-carcinoma-left-breast
InstanceOf: Tumor
Description: "Example of a resource conforming to the tumor profile."
* patient = Reference(Patient/cancer-patient-john-anyperson)
// Resources conforming to this profile indicate that the tumor is still in the body.
// This implies it is being measured by imaging or physical exam. The identifier here is a hypothetical
// radiology identifier for a specific tumor.
//
// The generic "resource identifier" type is used here because there does not seem to be
// a more suitable type at http://hl7.org/fhir/R4/v2/0203/index.html.
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#RI "Resource identifier"
* identifier.system = "http://radiology.hospital.example.org"
* identifier.value = "1234"
* morphology = SCT#89740008 "Lobular carcinoma (morphologic abnormality)"
* location = SCT#80248007 "Left breast structure (body structure)"
