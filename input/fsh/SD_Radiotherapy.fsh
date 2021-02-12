RuleSet: RadiotherapySummaryCommon
* category 1.. MS
* category = SCT#108290001 // "Radiation oncology AND/OR radiotherapy (procedure)"
* performed[x] only Period
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TreatmentTerminationReason named terminationReason 0..1 MS and
    RadiotherapyModality named modality 0..* MS and
    RadiotherapyTechnique named technique 0..* MS and
    RadiotherapyDose named doseDelivered 0..* MS
* extension and category MS

RuleSet: RadiotherapyPrescriptionCommon
* insert RadiotherapySummaryCommon
* extension[modality] 0..1
* extension[technique] 0..1
* partOf only Reference(RadiotherapySummary)
* partOf ^definition = "The partOf element, if present, MUST reference a RadiotherapySummary-conforming Procedure resource."
* insert NotUsed(bodySite)
* bodySite ^definition = "The target volumes at the prescription-delivery level are too complex to be described by typical codes. Instead, enter a text description of the treatment volume in the RadiotherapyDose.targetVolume extension."


// ------------- Overall Treatment Summary -----------------
Profile:  RadiotherapySummary
Parent:   USCoreProcedure  // considered one procedure with multiple parts
Id:       mcode-radiotherapy-summary
Title:    "Radiotherapy Summary"
Description: "A summary of radiotherapy delivered to a patient. Whenever new contributions in the scope of the same treatment are delivered, this resource is updated. One therapy can involve multiple prescriptions. The status is changed to complete when the course has been fully delivered or changed to stopped if terminated. To describe the treatment in more detail, use either TeleradiotherapyPrescriptionDelivery or BrachytherapyPrescriptionDelivery, which can reference this summary through the partOf element."
* insert RadiotherapySummaryCommon
// Summary-specific
* code = RO#SUMMARY
* extension[modality].value[x] from RadiotherapyModalityVS (required)
* extension[technique].value[x] from RadiotherapyTechniqueVS (extensible)
* bodySite from RadiationTargetBodySiteVS (extensible)
* bodySite.extension contains
    LocationQualifier named locationQualifier 0..1
* bodySite ^definition = "The high level description of the body site where the treatment was directed, based on Commission on Cancer’s 'Standards for Oncology Registry Entry  - STORE 2018' " 
* bodySite and bodySite.extension[locationQualifier] MS  


Profile:  TeleradiotherapyPrescriptionDelivery
Parent:   USCoreProcedure
Id:       mcode-teleradiotherapy-prescription-delivery
Title: "Teleradiotherapy Prescription Delivery"
Description: "A summary of delivered teleradiotherapy treatment. The scope is a prescription consisting of one or multiple Fractions. A prescription delivery instance should end when there is a change in the target volume of a body site, treatment fraction size, modality, or treatment technique."
* insert RadiotherapyPrescriptionCommon
// Teleradiotherapy specific:
* code = RO#EBRT
* extension[modality].value[x] from TeleradiotherapyModalityVS (required)
* extension[modality] ^short = "Teleradiotherapy (EBRT) Modality"
* extension[modality]  ^definition = "The modality (radiation type) for the external beam radiation therapy."
* extension[technique].value[x] from TeleradiotherapyTechniqueVS (extensible)
* extension[technique] ^short = "Teleradiotherapy (EBRT) Technique"
* extension[technique] ^definition = "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."
//* usedCode from TeleradiotherapyDeviceVS (extensible)


Profile:  BrachytherapyPrescriptionDelivery
Parent:   USCoreProcedure
Id:       mcode-brachytherapy-prescription-delivery
Title:    "Brachytherapy Prescription Delivery"
Description: "A summary of delivered brachytherapy treatment. The scope is a prescription consisting of one or multiple fractions. A new prescription delivery begins when there is a change in the target volume of a body site, treatment fraction size, modality, or treatment technique."
* insert RadiotherapyPrescriptionCommon
// Specific to Brachytherapy:
* code = RO#BRACHY
* extension[modality].value[x] from  BrachytherapyModalityVS (required)
* extension[modality] ^short = "Brachytherapy Modality"
* extension[modality] ^definition = "The modality for the Brachytherapy procedure."
* extension[technique].value[x] from BrachytherapyTechniqueVS (extensible)
* extension[technique] ^short = "Brachytherapy Technique"
* extension[technique] ^definition = "The method by which the brachytherapy modality is applied."
//* usedCode from BrachytherapyDeviceVS (extensible)
//* focalDevice.manipulated only Reference(BrachytherapyImplantableDevice)


//---------- Extensions -------------------------

Extension: RadiotherapyModality
Id:        mcode-radiotherapy-modality
Title:    "Radiotherapy Modality"
Description: "Extension capturing a modality of external beam or brachytherapy radiation procedures."
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept

Extension: RadiotherapyTechnique
Id:        mcode-radiotherapy-technique
Title:     "Radiotherapy Modality"
Description: "Extension capturing a technique of external beam or brachytherapy radiation procedures."
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept

Extension: RadiotherapyDose
Id: mcode-radiotherapy-dose
Title: "Radiotherapy Dose"
Description: "Dose parameters for one target volume, including dose per fraction, number of fractions prescribed and delivered, and total dose delivered."
* insert ExtensionContext(Procedure)
* extension contains
    targetVolume 0..1 and 
    dosePerFraction 0..1 and
    prescribedFractions 0..1 and
    deliveredFractions 0..1 and
    totalDoseDelivered 0..1
* extension[targetVolume].value[x] only string
* extension[dosePerFraction].value[x] only Quantity
* extension[dosePerFraction].valueQuantity = UCUM#cGy
* extension[prescribedFractions].value[x] only positiveInt
* extension[deliveredFractions].value[x] only unsignedInt
* extension[totalDoseDelivered].value[x] only Quantity
* extension[totalDoseDelivered].valueQuantity = UCUM#cGy
// Definitions of in-line extensions
* extension[targetVolume] ^short = "Target volume where radiation was delivered"
* extension[targetVolume] ^definition = "Text description of the body structure targeted, for example, Chest Wall Lymph Nodes PTV-2. The planning target volume (PTV) identifier MAY be included as a reference to the treatment plan."
* extension[dosePerFraction] ^short = "Radiation Dose Per Fraction"
* extension[dosePerFraction] ^definition = "The amount of radiation administered during a single fraction (dose division) of radiation therapy."
* extension[prescribedFractions] ^short = "Radiation Fractions Prescribed"
* extension[prescribedFractions] ^definition = "The total number of fractions (treatment divisions) planned for this target volume."
* extension[deliveredFractions] ^short = "Radiation Fractions Delivered"
* extension[deliveredFractions] ^definition = "The total number of fractions (treatment divisions) actually delivered for this target volume."
* extension[totalDoseDelivered] ^short = "Total Radiation Dose Delivered"
* extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this target volume within the scope of this dose delivery."


/* HOLD

If either Modality value set needs to be extended, here are the invariants;

    Invariant: teleradiotherapy-procedure-code-invariant
    Description: "If the code 'Other Teleradiotherapy Modality, specify' is used, a second code from outside the original value set must be present. The second code MUST NOT represent a concept in or subsumed by any concept in the original value set."
    Expression: "coding.where(code = 'OtherTeleradiotherapyModality').exists() implies coding.where(code != 'OtherTeleradiotherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-teleradiotherapy-modality-vs').not()).exists()"
    Severity:   #error

    Invariant: brachytherapy-code-invariant
    Description: "If the code representing 'Other brachytherapy, specify' is used, a second code from outside the original value set must be present. The second code MUST NOT represent a concept in or subsumed by any concept in the original value set."
    Expression: "coding.where(code = 'OtherBrachytherapyModality').exists() implies coding.where(code != 'OtherBrachytherapyModality' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/brachytherapy-modality-vs').not()).exists()"
    Severity:   #error

These extensions have been grouped under RadiotherapyDose:

Extension: RadiotherapyDosePerFraction
Id: mcode-radiotherapy-dose-per-fraction
Title: "Radiation Dose Per Fraction"
Description: "The amount of radiation administered during a single session (fraction) of radiation therapy."
* value[x] only Quantity
* valueQuantity = UCUM#cGy

Extension: RadiotherapyPrescribedFractions
Id: mcode-radiotherapy-prescribed-fractions
Title: "Radiation Fractions Prescribed"
Description: "The total number of treatment sessions (fractions) planned in a given phase or during a course of therapy."
* value[x] only positiveInt

Extension: RadiotherapyDeliveredFractions
Id: mcode-radiotherapy-delivered-fractions
Title: "Radiation Fractions Delivered"
Description: "The total number of treatment sessions (fractions) administered in a given phase or during a course of therapy."
* value[x] only unsignedInt

Extension: RadiotherapyTotalDosePlanned
Id: mcode-radiotherapy-total-dose-planned
Title: "Total Radiation Dose Planned"
Description: "The total amount of radiation dose planned for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only SimpleQuantity
* valueQuantity = UCUM#cGy

Extension: RadiotherapyTotalDoseDelivered
Id: mcode-radiotherapy-total-dose-delivered
Title: "Total Radiation Dose Delivered"
Description: "The total amount of radiation dose delivered for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only SimpleQuantity
* valueQuantity = UCUM#cGy

Profile: BrachytherapyImplantableDevice
Parent:  USCoreImplantableDeviceProfile
Id:      mcode-brachytherapy-implantable-device
Title: "Brachytherapy Implantable Device"
Description: "A radioactive source device implanted into the body and remaining there temporarily or permanently."
* type from BrachytherapyDeviceVS (extensible)


*/