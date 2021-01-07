RuleSet: CancerRelatedProcedureCommonRuleSet
* obeys mcode-reason-required
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS
* category 1..1
* reasonCode from CancerDisorderVS (required)
* reasonReference only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* partOf only Reference(Procedure)
* recorder only Reference(Practitioner or PractitionerRole)
* performer.actor only Reference(Practitioner or PractitionerRole or Organization)
* bodySite.extension contains
    LocationQualifier named locationQualifier 0..1 MS
* reasonCode and reasonReference and bodySite MS

//-------- RADIATION THERAPY PROCEDURES -------------

RuleSet:  CancerRelatedRadiationProcedureRuleSet
* insert CancerRelatedProcedureCommonRuleSet
// Do not insert the category slicing rules because Procedure.category is 0..1. 
* category = SCT#53438000 //"Radiation therapy procedure or service (procedure)"
* extension contains 
    TerminationReason named terminationReason 0..1 MS and
    RadiationProcedureTechnique named technique 0..* MS
* bodySite from RadiationTargetBodySiteVS (extensible)

Profile:  CancerRelatedTeleradiotherapyProcedure
Parent:   USCoreProcedure
Id:       mcode-cancer-related-teleradiotherapy-procedure
Title:    "Cancer-Related Teleradiotherapy Procedure"
Description: "A radiological treatment addressing a cancer condition using external beam therapy. The scope of this profile has been narrowed to cancer-related procedures by constraining the reasonReference and reasonCode to cancer conditions, one of which is required.

Conformance statement:

Procedure resources associated with an mCODE patient with Procedure.category SNOMED-CT 53438000 MAY conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Specifically, we expect that any radiation therapy related to the treatment of a `PrimaryCancerCondition` or `SecondaryCancerCondition` would be published in this form."
* insert CancerRelatedRadiationProcedureRuleSet
* code from TeleradiotherapyModalityVS
* code obeys cancer-related-teleradiotherapy-procedure-code-invariant
* extension[technique].value[x] from TeleradiotherapyTechniqueVS 

    Invariant: cancer-related-teleradiotherapy-procedure-code-invariant
    Description: "If the code 'Other Teleradiotherapy Modality, specify' is used, a second code from outside the original value set must be present."
    Expression: "coding.where(code = 'OtherTeleradiotherapyModality').exists() implies coding.where(code != 'OtherTeleradiotherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-modality-vs').not()).exists()"
    Severity:   #error

Profile:  CancerRelatedBrachytherapyProcedure
Parent:   USCoreProcedure
Id:       mcode-cancer-related-brachytherapy-procedure
Title:    "Cancer-Related Radiation Procedure"
Description: "A treatment addressing a cancer condition using brachytherapy (interal radiation) . The scope of this profile has been narrowed to cancer-related procedures by constraining the reasonReference and reasonCode to cancer conditions, one of which is required.

Conformance statement:

Procedure resources associated with an mCODE patient with Procedure.category SNOMED-CT 53438000 MAY conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Specifically, we expect that any radiation therapy related to the treatment of a `PrimaryCancerCondition` or `SecondaryCancerCondition` would be published in this form."
* insert CancerRelatedRadiationProcedureRuleSet
* code from BrachytherapyModalityVS (required)
* code obeys cancer-related-brachytherapy-procedure-code-invariant
* extension[technique].value[x] from BrachytherapyTechniqueVS 

    Invariant: cancer-related-brachytherapy-procedure-code-invariant
    Description: "If the code representing 'Other brachytherapy, specify' is used, a second code from outside the original value set must be present."
    Expression: "coding.where(code = 'OtherBrachytherapyModality').exists() implies coding.where(code != 'OtherBrachytherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-modality-vs').not()).exists()"
    Severity:   #error

// Unfortunately the extension procedure-method cannot be used because it is 0..1
Extension: RadiationProcedureTechnique
Id: radiation-procedure-technique
Title: "Radiation Procedure Technique"
Description: "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."
* . ^short = "Radiation Procedure Technique"
* . ^definition = "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only CodeableConcept


//--------- SURGICAL PROCEDURE -------------

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


/*
Extension: RadiationDose
Id: mcode-radiation-dose
Title:  "Radiation Dose"
Description: "Information related to the dose of radiation received in a RadiationProcedure, including the dose per fraction, the number of fractions delivered, and the total radiation dose delivered."
* value[x] 0..0
* extension contains
    RadiationDosePerFraction 0..1 and
    RadiationFractionsDelivered 0..1 and
    TotalRadiationDoseDelivered 0..1

Extension: RadiationDosePerFraction
Id: mcode-radiation-dose-per-fraction
Title: "Radiation Dose Per Fraction"
Description: "The amount of radiation administered during a single session (fraction) of radiation therapy therapy."
* value[x] only Quantity
* valueQuantity = UCUM#cGy

Extension: RadiationFractionsDelivered
Id: mcode-radiation-fractions-delivered
Title: "Radiation Fractions Delivered"
Description: "Records the total number of treatment sessions (fractions) administered during the first course of therapy. Corresponds to LOINC 21950-2 'Number of radiation treatment' [sic]."
* value[x] only Quantity
* valueQuantity = UCUM#1

Extension: TotalRadiationDoseDelivered
Id: mcode-total-radiation-dose-delivered
Title: "Total Radiation Dose Delivered"
Description: "The total amount of radiation dose delivered for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only Quantity
* valueQuantity = UCUM#cGy

*/