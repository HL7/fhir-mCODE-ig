// ------------- Overall Course Summary -----------------
RuleSet: RadiotherapyCommon
* category 1.. MS
* category = SCT#108290001 // "Radiation oncology AND/OR radiotherapy (procedure)"
* performed[x] only Period
* extension and category MS


Profile:  RadiotherapyCourseSummary
Parent:   USCoreProcedure  // considered one procedure with multiple parts
Id:       mcode-radiotherapy-course-summary
Title:    "Radiotherapy Course Summary"
Description: "A summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more treatment volumes. To describe the treatment in more detail, use either TeleradiotherapyTreatmentPhase or BrachytherapyTreatmentPhase, which should reference this summary through their partOf elements. Whether the course has been fully delivered or stopped is indicated in the status element."
* insert RadiotherapyCommon
// Summary-specific content
* code = RID#mcode-radiotherapy-course-summary
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TreatmentTerminationReason named terminationReason 0..1 MS and
    RadiotherapyModality named modality 0..* MS and
    RadiotherapyTechnique named technique 0..* MS and
    RadiotherapySessions named actualNumberOfSessions 0..1 MS and
    RadiotherapyDoseDelivered named doseDelivered 0..* MS
* extension[modality].value[x] from RadiotherapyModalityVS (required)
* extension[technique].value[x] from RadiotherapyTechniqueVS (required)
* bodySite from RadiotherapyTreatmentLocationVS (required)
* bodySite ^short = "Body structure(s) treated"
* bodySite ^definition = "Coded body structure(s) treated in this course of radiotherapy. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDelivered extension."
* reasonCode and reasonReference and bodySite MS
* obeys mcode-reason-required

// ------------- Phase Summaries -----------------
RuleSet: RadiotherapyPhaseCommon
* insert RadiotherapyCommon
* partOf only Reference(RadiotherapyCourseSummary)
* partOf ^definition = "The partOf element, if present, MUST reference a RadiotherapyCourseSummary-conforming Procedure resource."
* extension contains
    RadiotherapyModality named modality 0..1 MS and
    RadiotherapyTechnique named technique 0..1 MS and
    RadiotherapyFractionsDelivered named fractionsDelivered 0..1 MS and
    RadiotherapyDoseDelivered named doseDelivered 0..* MS
* extension[doseDelivered].extension[fractionsDelivered] 0..0
* extension[doseDelivered].extension[fractionsDelivered] ^short = "Not used in this profile."
* extension[doseDelivered].extension[fractionsDelivered] ^definition = "Record the fractions delivered in this phase in the top-level extension also named fractionDelivered."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered during this phase."
* bodySite ^short = "Not used in this profile."
* bodySite ^definition = "Not used in this profile. Each treatment volume must be represented by a BodyStructure resource that conforms to the RadiotherapyTreatmentVolume profile, and referenced in the extension RadiotherapyDoseDelivered.treatmentVolume."

Profile:  TeleradiotherapyTreatmentPhase
Parent:   USCoreProcedure
Id:       mcode-teleradiotherapy-treatment-phase
Title: "Teleradiotherapy Treatment Phase"
Description: "A summary of a phase of teleradiotherapy treatment that has been delivered. The scope is a treatment consisting of one or multiple identical fractions. A phase ends and a new phase begins whenever there is a change in the treatment volume, dose per fraction, modality, or technique."
* insert RadiotherapyPhaseCommon
// Teleradiotherapy specific content:
* code = RID#mcode-teleradiotherapy-treatment-phase
* extension[modality].value[x] from TeleradiotherapyModalityVS (required)
* extension[modality] ^short = "Teleradiotherapy (EBRT) Modality"
* extension[modality] ^definition = "The modality (radiation type) for the external beam radiation therapy."
* extension[technique].value[x] from TeleradiotherapyTechniqueVS (required)
* extension[technique] ^short = "Teleradiotherapy (EBRT) Technique"
* extension[technique] ^definition = "The method by which a radiation modality is applied (e.g., intensity modulated radiation therapy, intraoperative radiation therapy)."
//* usedCode from TeleradiotherapyDeviceVS (extensible) // device-related, defer


Profile:  BrachytherapyTreatmentPhase
Parent:   USCoreProcedure
Id:       mcode-brachytherapy-treatment-phase
Title:    "Brachytherapy Treatment Phase"
Description: "A summary of a phase of brachytherapy treatment that has been delivered. The scope is a treatment consisting of one or multiple identical fractions. A phase ends when there is a change in the treatment volume, treatment fraction size, modality, or treatment technique."
* insert RadiotherapyPhaseCommon
// Content specific to Brachytherapy:
* code = RID#mcode-brachytherapy-treatment-phase
* extension[modality].value[x] from  BrachytherapyModalityVS (required)
* extension[modality] ^short = "Brachytherapy Modality"
* extension[modality] ^definition = "The modality for the Brachytherapy procedure."
* extension[technique].value[x] from BrachytherapyTechniqueVS (required)
* extension[technique] ^short = "Brachytherapy Technique"
* extension[technique] ^definition = "The method by which the brachytherapy modality is applied."
//* usedCode from BrachytherapyDeviceVS (extensible)  // device-related, defer
//* focalDevice.manipulated only Reference(BrachytherapyImplantableDevice)   // device-related, defer


//---------- Extensions -------------------------

Extension: RadiotherapyModality
Id:        mcode-radiotherapy-modality
Title:    "Radiotherapy Modality"
Description: "Extension capturing a modality of external beam or brachytherapy radiation procedures."
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept

Extension: RadiotherapyTechnique
Id:        mcode-radiotherapy-technique
Title:     "Radiotherapy Technique"
Description: "Extension capturing a technique of external beam or brachytherapy radiation procedures."
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept

Extension: RadiotherapyFractionsDelivered
Id:        mcode-radiotherapy-fractions-delivered
Title:     "Radiotherapy Fractions Delivered"
Description: "The total number of fractions (treatment divisions) actually delivered for this volume."
* insert ExtensionContext(Procedure)
* value[x] only unsignedInt

Extension: RadiotherapySessions
Id:        mcode-radiotherapy-sessions
Title:     "Radiotherapy Number of Sessions"
Description: "The number of sessions in a course of radiotherapy."
* insert ExtensionContext(Procedure)
* value[x] only unsignedInt



Extension: RadiotherapyDoseDelivered
Id: mcode-radiotherapy-dose-delivered
Title: "Radiotherapy Dose Delivered"
Description: "Dose parameters for one treatment volume."
* insert ExtensionContext(Procedure)
* extension contains
    treatmentVolume 1..1 MS and
    totalDoseDelivered 0..1 MS and
    fractionsDelivered 0..1 MS
* extension[treatmentVolume].value[x] only Reference(RadiotherapyTreatmentVolume)
* extension[totalDoseDelivered].value[x] only Quantity
* extension[totalDoseDelivered].valueQuantity = UCUM#cGy
* extension[fractionsDelivered].value[x] only unsignedInt
// Definitions of in-line extensions
* extension[treatmentVolume] ^short = "Treatment volume where radiation was delivered"
* extension[treatmentVolume] ^definition = "A BodyStructure resource representing the body structure treated, for example, Chest Wall Lymph Nodes."
* extension[totalDoseDelivered] ^short = "Total Radiation Dose Delivered"
* extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this treatment volume within the scope of this dose delivery."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered to this treatment volume."


//------ Treatment Volume -------

Profile: RadiotherapyTreatmentVolume
Parent: BodyStructure
Id: mcode-radiotherapy-treatment-volume
Title: "Radiotherapy Treatment Volume"
Description: "The treatment volume where radiation was delivered."
* obeys mcode-volume-description-or-id-required
* identifier ^short = "Identifier for the treatment volume."
* identifier ^definition = "Unique identifier to reliably identify the same target volume in different requests and procedures, for example, the Conceptual Volume UID used in DICOM."
* description ^short = "Description of treatment volume"
* description ^definition = "A text description of the treatment volume, containing any additional information above and beyond the location and locationQualifier that describe the treatment volume."
* location from RadiotherapyTreatmentLocationVS (required)
* locationQualifier from RadiotherapyTreatmentLocationQualifierVS (extensible)
* identifier and location and locationQualifier and description and patient MS


Invariant:  mcode-volume-description-or-id-required
Description: "One of description or identifier MUST be present"
Expression: "description.exists() or identifier.exists()"
Severity:   #error


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

These extensions have been grouped under RadiotherapyDoseDelivered:

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