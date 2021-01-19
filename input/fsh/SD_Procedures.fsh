//-------- RADIATION THERAPY PROCEDURES -------------

RuleSet: RadiotherapyCommonRuleSet
* category 1..
* category = SCT#108290001 // "Radiation oncology AND/OR radiotherapy (procedure)"
* recorder only Reference(Practitioner or PractitionerRole)
* performer.actor only Reference(Practitioner or PractitionerRole or Organization)
* bodySite from RadiationTargetBodySiteVS (extensible)
* bodySite.extension contains
    LocationQualifier named locationQualifier 0..1 MS
* performed[x] only Period

Profile:  RadiotherapyPrescriptionDelivery
Parent:   USCoreProcedure
Id:       radiotherapy-prescription-delivery
Title:    "Radiotherapy Prescription Delivery"
Description: "A summary of treatment progress for a radiotherapy prescription. Whenever new contributions in the scope of the same Prescription are delivered, this resource is updated. Status is changed to complete when the prescription has been delivered."
* insert RadiotherapyCommonRuleSet
* code = NCIT#C15313 // "Radiation Therapy" 
* extension contains 
    TreatmentIntent named treatmentIntent 0..1 MS and
    TerminationReason named terminationReason 0..1 MS


RuleSet:  RadiotherapyDeliveryCommonRuleSet
* insert RadiotherapyCommonRuleSet
// TO DO -- specify the MS elements
* partOf only Reference(Procedure)
* partOf ^definition = "The radiotherapy delivery summary that this delivery record contributes to. Reference higher level (larger) scope summary where possible."
// TO DO -- does Brachytherapy ever involve fractions and doses? Assume so for now.
* extension contains
    RadiotherapyTechnique named radiotherapyTechnique 0..1 MS and
    RadiotherapyDosePerFraction named radiotherapyDosePerFraction 0..1 MS and
    RadiotherapyPrescribedFractions named radiotherapyPrescribedFractions 0..1 MS and
    RadiotherapyDeliveredFractions named radiotherapyDeliveredFractions 0..1 MS and
    RadiotherapyTotalDosePlanned named radiotherapyTotalDosePlanned 0..1 MS and
    RadiotherapyTotalDoseDelivered named radiotherapyTotalDoseDelivered 0..1 MS


Profile:  TeleradiotherapyDeliveryRecord
Parent:   USCoreProcedure
Id:       teleradiotherapy-delivery-record
Title:    "Teleradiotherapy Delivery Record"
Description: "A record of delivered Radiotherapy treatment. A new delivery record begins when there is a change in the target volume of a body site, treatment fraction size, modality, or treatment technique. This is a single record that is not expected to be updated once recorded. For cumulative treatment records, see RadiotherapyPrescriptionDelivery.

Conformance statement:  TBD"
* insert RadiotherapyDeliveryCommonRuleSet
* code from TeleradiotherapyModalityVS (required)
* code ^short = "Modality"
* code ^definition = "The modality (radiation type) for the external beam procedure."
* code obeys teleradiotherapy-procedure-code-invariant
* extension[radiotherapyTechnique].valueString from TeleradiotherapyTechniqueVS (extensible)
* partOf only Reference(RadiotherapyPrescriptionDelivery)
* usedCode from TeleradiotherapyDeviceVS (extensible)


    Invariant: teleradiotherapy-procedure-code-invariant
    Description: "If the code 'Other Teleradiotherapy Modality, specify' is used, a second code from outside the original value set must be present."
    Expression: "coding.where(code = 'OtherTeleradiotherapyModality').exists() implies coding.where(code != 'OtherTeleradiotherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-modality-vs').not()).exists()"
    Severity:   #error

Profile:  BrachytherapyDeliveryRecord
Parent:   USCoreProcedure
Id:       brachytherapy-delivery-record
Title:    "Brachytherapy Delivery Record"
Description: "Record of delivery of a radiotherapy procedure using brachytherapy (internal radiation). 

Conformance statement: TBD"

* insert RadiotherapyDeliveryCommonRuleSet
* code from BrachytherapyModalityVS (required)
* code obeys brachytherapy-code-invariant
* code ^short = "Brachytherapy Modality"
* code ^definition = "The modality of the brachytherapy procedure."
* extension[radiotherapyTechnique].valueString from BrachytherapyTechniqueVS (extensible)
* usedCode from BrachytherapyDeviceVS (extensible)

    Invariant: brachytherapy-code-invariant
    Description: "If the code representing 'Other brachytherapy, specify' is used, a second code from outside the original value set must be present."
    Expression: "coding.where(code = 'OtherBrachytherapyModality').exists() implies coding.where(code != 'OtherBrachytherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-modality-vs').not()).exists()"
    Severity:   #error

// TO DO: Use standard extension procedure-method IF the cardinality will be 0..1
Extension: RadiotherapyTechnique
Id: radiotherapy-technique
Title: "Radiation Procedure Technique"
Description: "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."
* . ^short = "Radiation Procedure Technique"
* . ^definition = "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only string


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

RuleSet: CancerRelatedProcedureCommonRuleSet
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


Profile:  CancerRelatedSurgicalProcedure
Parent:   USCoreProcedure
Id:       mcode-cancer-related-surgical-procedure
Title:    "Cancer-Related Surgical Procedure"
Description: "A surgical action addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the reasonReference and reasonCode to cancer conditions, one of which is required.

Conformance statement:

Procedure resources associated with an mCODE patient with Procedure.category SNOMED-CT 387713003 MAY conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Specifically, we expect that any surgical procedure related to the treatment of a `PrimaryCancerCondition` or `SecondaryCancerCondition` would be published in this form."
* insert CancerRelatedProcedureCommonRuleSet
// Do not insert the category slicing rules because Procedure.category is 0..1.
* category = SCT#387713003 //"Surgical procedure"
* code from CancerRelatedSurgicalProcedureVS (extensible)
