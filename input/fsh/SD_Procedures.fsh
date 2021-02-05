//-------- RADIATION THERAPY PROCEDURES -------------

RuleSet: RadiotherapyRS
* category 1..
* category = SCT#108290001 // "Radiation oncology AND/OR radiotherapy (procedure)"
* recorder only Reference(Practitioner or PractitionerRole)
* performer.actor only Reference(Practitioner or PractitionerRole or Organization)
* bodySite from RadiationTargetBodySiteVS (extensible)
* bodySite.extension contains
    LocationQualifier named locationQualifier 0..1 MS
* performed[x] only Period

Profile:  RadiotherapyCourseSummary
Parent:   USCoreProcedure
Id:       radiotherapy-course-summary
Title:    "Radiotherapy Course Summary"
Description: "An overall summary of a course of radiotherapy. Whenever new contributions in the scope of the same treatment are delivered, this resource is updated. One course can involve multiple prescriptions. Modalities and techniques and detailed dose information is captured at the prescription delivery level. The status is changed to complete when the course has been fully delivered or changed to stopped if terminated."
* insert RadiotherapyRS
* code = LNC#68602-2 // Radiation oncology summary note
* extension contains 
    TreatmentIntent named treatmentIntent 0..1 MS and
    TerminationReason named terminationReason 0..1 MS and
    RadiotherapyPrescribedFractions named radiotherapyPrescribedFractions 0..1 MS and
    RadiotherapyDeliveredFractions named radiotherapyDeliveredFractions 0..1 MS and
    RadiotherapyTotalDosePlanned named radiotherapyTotalDosePlanned 0..1 MS and
    RadiotherapyTotalDoseDelivered named radiotherapyTotalDoseDelivered 0..1 MS


RuleSet:  RadiotherapyPrescriptionDeliveryRS
* insert RadiotherapyRS
* partOf only Reference(RadiotherapyCourseSummary)
* partOf ^definition = "PrescriptionDelivery-conforming resources should reference a RadiotherapyCourseSummary-conforming resource."
* extension contains
    procedure-method named radiotherapyTechnique 0..1 MS and
    RadiotherapyDosePerFraction named radiotherapyDosePerFraction 0..1 MS and
    RadiotherapyPrescribedFractions named radiotherapyPrescribedFractions 0..1 MS and
    RadiotherapyDeliveredFractions named radiotherapyDeliveredFractions 0..1 MS and
    RadiotherapyTotalDosePlanned named radiotherapyTotalDosePlanned 0..1 MS and
    RadiotherapyTotalDoseDelivered named radiotherapyTotalDoseDelivered 0..1 MS
* extension[radiotherapyTechnique] ^short = "Radiotherapy Technique"
* extension[radiotherapyTechnique] ^definition =  "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."

Profile:  TeleradiotherapyPrescriptionDelivery
Parent:   USCoreProcedure
Id:       teleradiotherapy-prescription-delivery
Title:    "Teleradiotherapy Prescription Delivery"
Description: "A summary of delivered teleradiotherapy treatment. The scope is a prescription consisting of one or multiple Fractions. A prescription delivery instance should end when there is a change in the target volume of a body site, treatment fraction size, modality, or treatment technique."
* insert RadiotherapyPrescriptionDeliveryRS
* code from TeleradiotherapyModalityVS (required)
* code ^short = "Modality"
* code ^definition = "The modality (radiation type) for the external beam procedure."
* code obeys teleradiotherapy-procedure-code-invariant
* extension[radiotherapyTechnique].value[x] from TeleradiotherapyTechniqueVS (extensible)
* usedCode from TeleradiotherapyDeviceVS (extensible)

    Invariant: teleradiotherapy-procedure-code-invariant
    Description: "If the code 'Other Teleradiotherapy Modality, specify' is used, a second code from outside the original value set must be present. The second code MUST NOT represent a concept in or subsumed by any concept in the original value set."
    Expression: "coding.where(code = 'OtherTeleradiotherapyModality').exists() implies coding.where(code != 'OtherTeleradiotherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-modality-vs').not()).exists()"
    Severity:   #error

Profile:  BrachytherapyPrescriptionDelivery
Parent:   USCoreProcedure
Id:       brachytherapy-prescription-delivery
Title:    "Brachytherapy Prescription Delivery"
Description: "A summary of delivered brachytherapy treatment. The scope is a prescription consisting of one or multiple fractions. A new prescription delivery begins when there is a change in the target volume of a body site, treatment fraction size, modality, or treatment technique."
* insert RadiotherapyPrescriptionDeliveryRS
* code from BrachytherapyModalityVS (required)
* code obeys brachytherapy-code-invariant
* code ^short = "Brachytherapy Modality"
* code ^definition = "The modality of the brachytherapy procedure."
* extension[radiotherapyTechnique].value[x] from BrachytherapyTechniqueVS (extensible)
* usedCode from BrachytherapyDeviceVS (extensible)
* focalDevice.manipulated only Reference(BrachytherapyImplantableDevice)
* usedCode and focalDevice.manipulated MS

    Invariant: brachytherapy-code-invariant
    Description: "If the code representing 'Other brachytherapy, specify' is used, a second code from outside the original value set must be present. The second code MUST NOT represent a concept in or subsumed by any concept in the original value set."
    Expression: "coding.where(code = 'OtherBrachytherapyModality').exists() implies coding.where(code != 'OtherBrachytherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/brachytherapy-modality-vs').not()).exists()"
    Severity:   #error

Profile: BrachytherapyImplantableDevice
Parent:  USCoreImplantableDeviceProfile
Id: brachytherapy-implantable-device
Title: "Brachytherapy Implantable Device"
Description: "A radioactive source device implanted into the body and remaining there temporarily or permanently."
* type from BrachytherapyDeviceVS (extensible)

/* Currently to represent RadiotherapyTechnique, mCODE uses the standard 'procedure-method' extension. But if the cardinality needs to be changed to 0..*, we will need the RadiotherapyTechnique extension, below, unless there is a change to 'procedure-method' (see https://jira.hl7.org/browse/FHIR-30769 "Change cardinality of procedure-method extension").

Extension: RadiotherapyTechnique
Id: radiotherapy-technique
Title: "Radiotherapy Technique"
Description: "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only CodeableConcept
*/

Extension: RadiotherapyDosePerFraction
Id: radiotherapy-dose-per-fraction
Title: "Radiation Dose Per Fraction"
Description: "The amount of radiation administered during a single session (fraction) of radiation therapy therapy."
* value[x] only Quantity
* valueQuantity = UCUM#cGy

Extension: RadiotherapyPrescribedFractions
Id: radiotherapy-prescribed-fractions
Title: "Radiation Fractions Prescribed"
Description: "The total number of treatment sessions (fractions) planned in a given phase or during a course of therapy."
* value[x] only positiveInt

Extension: RadiotherapyDeliveredFractions
Id: radiotherapy-delivered-fractions
Title: "Radiation Fractions Delivered"
Description: "The total number of treatment sessions (fractions) administered in a given phase or during a course of therapy."
* value[x] only unsignedInt

Extension: RadiotherapyTotalDosePlanned
Id: radiotherapy-total-dose-planned
Title: "Total Radiation Dose Planned"
Description: "The total amount of radiation dose planned for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only SimpleQuantity
* valueQuantity = UCUM#cGy

Extension: RadiotherapyTotalDoseDelivered
Id: radiotherapy-total-dose-delivered
Title: "Total Radiation Dose Delivered"
Description: "The total amount of radiation dose delivered for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only SimpleQuantity
* valueQuantity = UCUM#cGy


//--------- SURGICAL PROCEDURE -------------

Profile:  CancerRelatedSurgicalProcedure
Parent:   USCoreProcedure
Id:       mcode-cancer-related-surgical-procedure
Title:    "Cancer-Related Surgical Procedure"
Description: "A surgical action addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the reasonReference and reasonCode to cancer conditions, one of which is required."
* obeys mcode-reason-required
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS
* category 1..  // upper cardinality is already 1
* reasonCode from CancerDisorderVS (required)
* reasonReference only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* partOf only Reference(Procedure)
* recorder only Reference(Practitioner or PractitionerRole)
* performer.actor only Reference(Practitioner or PractitionerRole or Organization)
* bodySite.extension contains
    LocationQualifier named locationQualifier 0..1 MS
* reasonCode and reasonReference and bodySite MS
// Do not insert the category slicing rules because Procedure.category is 0..1.
* category = SCT#387713003 //"Surgical procedure"
* code from CancerRelatedSurgicalProcedureVS (extensible)
