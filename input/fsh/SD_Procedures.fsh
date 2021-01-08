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

//-------- RADIATION THERAPY PROCEDURES -------------

RuleSet:  CancerRelatedRadiationProcedureRuleSet
* insert CancerRelatedProcedureCommonRuleSet
// Do not insert the category slicing rules because Procedure.category is 0..1. 
* category = SCT#53438000 //"Radiation therapy procedure or service (procedure)"
* extension contains 
    TerminationReason named terminationReason 0..1 MS and
    RadiationProcedureTechnique named technique 0..* MS and
    RadiationDosePerFraction named dosePerFraction 0..1 MS and
    RadiationFractionsPlanned named fractionsPlanned 0..1 MS and
    RadiationFractionsDelivered named fractionsDelivered 0..1 MS and
    TotalRadiationDosePlanned named totalDosePlanned 0..1 MS and
    TotalRadiationDoseDelivered named totalDoseDelivered 0..1 MS
* bodySite from RadiationTargetBodySiteVS (extensible)

Profile:  CancerRelatedRadiationCourse
Parent:   USCoreProcedure
Id:       mcode-cancer-related-radiation-course
Title:    "Cancer-Related Radiation Therapy Course"
Description: "A course of radiation therapy addressing a cancer condition. A course of therapy consists of a number of phases, where a new phase begins when there is a change in the target volume of a body site, treatment fraction size, modality, or treatment technique. The scope of this profile has been narrowed to cancer-related procedures by constraining the reasonReference and reasonCode to cancer conditions, one of which is required."
* code = MTH#C1522449 // "Therapeutic radiology procedure"
* extension contains 
    TerminationReason named terminationReason 0..1 MS and
    RadiationFractionsPlanned named fractionsPlanned 0..1 MS and
    RadiationFractionsDelivered named fractionsDelivered 0..1 MS and
    TotalRadiationDosePlanned named totalDosePlanned 0..1 MS and
    TotalRadiationDoseDelivered named totalDoseDelivered 0..1 MS
* bodySite from RadiationTargetBodySiteVS (extensible)

* performed[x] only Period

Profile:  CancerRelatedTeleradiotherapyPhase
Parent:   USCoreProcedure
Id:       mcode-cancer-related-teleradiotherapy-phase
Title:    "Cancer-Related Teleradiotherapy Phase"
Description: "A radiological treatment phase addressing a cancer condition using teleradiology (external beam) therapy with one or more fractions. A new phase begins when there is a change in the target volume of a body site, treatment fraction size, modality, or treatment technique (ref: STandards for Oncology Registry Entry (STORE), Jan. 2018). The scope of this profile has been narrowed to cancer-related procedures by constraining the reasonReference and reasonCode to cancer conditions, one of which is required.

Conformance statement:

Procedure resources associated with an mCODE patient with Procedure.category SNOMED-CT 53438000 MAY conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Specifically, we expect that any external beam radiation therapy related to the treatment of a `PrimaryCancerCondition` or `SecondaryCancerCondition` would be published in this form."
* insert CancerRelatedRadiationProcedureRuleSet
* code from TeleradiotherapyModalityVS (required)
* code obeys cancer-related-teleradiotherapy-procedure-code-invariant
* extension[technique].value[x] from TeleradiotherapyTechniqueVS (extensible)
* partOf only Reference(CancerRelatedRadiationCourse)

    Invariant: cancer-related-teleradiotherapy-procedure-code-invariant
    Description: "If the code 'Other Teleradiotherapy Modality, specify' is used, a second code from outside the original value set must be present."
    Expression: "coding.where(code = 'OtherTeleradiotherapyModality').exists() implies coding.where(code != 'OtherTeleradiotherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-modality-vs').not()).exists()"
    Severity:   #error

Profile:  CancerRelatedBrachytherapy
Parent:   USCoreProcedure
Id:       mcode-cancer-related-brachytherapy
Title:    "Cancer-Related Brachytherapy"
Description: "A treatment addressing a cancer condition using brachytherapy (internal radiation). 

The scope of this profile has been narrowed to cancer-related procedures by constraining the reasonReference and reasonCode to cancer conditions, one of which is required.

Conformance statement:

Procedure resources associated with an mCODE patient with Procedure.category SNOMED-CT 53438000 MAY conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form. Specifically, we expect that any brachytherapy related to the treatment of a `PrimaryCancerCondition` or `SecondaryCancerCondition` would be published in this form."
* insert CancerRelatedRadiationProcedureRuleSet
* code from BrachytherapyModalityVS (required)
* code obeys cancer-related-brachytherapy-code-invariant
* extension[technique].value[x] from BrachytherapyTechniqueVS (extensible)
* partOf only Reference(CancerRelatedRadiationCourse)

    Invariant: cancer-related-brachytherapy-code-invariant
    Description: "If the code representing 'Other brachytherapy, specify' is used, a second code from outside the original value set must be present."
    Expression: "coding.where(code = 'OtherBrachytherapyModality').exists() implies coding.where(code != 'OtherBrachytherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-brachytherapy-modality-vs').not()).exists()"
    Severity:   #error

// Unfortunately the extension procedure-method cannot be used because it is 0..1
Extension: RadiationProcedureTechnique
Id: mcode-radiation-procedure-technique
Title: "Radiation Procedure Technique"
Description: "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."
* . ^short = "Radiation Procedure Technique"
* . ^definition = "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only CodeableConcept

Extension: RadiationDosePerFraction
Id: mcode-radiation-dose-per-fraction
Title: "Radiation Dose Per Fraction"
Description: "The amount of radiation administered during a single session (fraction) of radiation therapy therapy."
* value[x] only Quantity
* valueQuantity = UCUM#cGy

Extension: RadiationFractionsPlanned
Id: mcode-radiation-fractions-planned
Title: "Radiation Fractions Planned"
Description: "The total number of treatment sessions (fractions) planned in a given phase or during a course of therapy."
* value[x] only Quantity
* valueQuantity = UCUM#1

Extension: RadiationFractionsDelivered
Id: mcode-radiation-fractions-delivered
Title: "Radiation Fractions Delivered"
Description: "The total number of treatment sessions (fractions) administered in a given phase or during a course of therapy."
* value[x] only Quantity
* valueQuantity = UCUM#1

Extension: TotalRadiationDosePlanned
Id: mcode-total-radiation-dose-planned
Title: "Total Radiation Dose Planned"
Description: "The total amount of radiation dose planned for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only Quantity
* valueQuantity = UCUM#cGy

Extension: TotalRadiationDoseDelivered
Id: mcode-total-radiation-dose-delivered
Title: "Total Radiation Dose Delivered"
Description: "The total amount of radiation dose delivered for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only Quantity
* valueQuantity = UCUM#cGy


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
