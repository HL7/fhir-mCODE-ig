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
Description: "A summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more anatomic volumes. To describe the treatment in more detail, use either TeleradiotherapyTreatmentPhase or BrachytherapyTreatmentPhase, which should reference this summary through their partOf elements. Whether the course has been fully delivered or stopped is indicated in the status element."
* insert RadiotherapyCommon
// Summary-specific content
* code = RID#mcode-radiotherapy-course-summary
* extension contains
    TreatmentIntent named treatmentIntent 0..1 MS and
    TreatmentTerminationReason named terminationReason 0..1 MS and
    RadiotherapyModality named modality 0..* MS and
    RadiotherapyTechnique named technique 0..* MS and
    RadiotherapySessions named actualNumberOfSessions 0..1 MS and
    RadiotherapyDoseDeliveredToAnatomicVolume named doseDeliveredToAnatomicVolume 0..* MS
* extension[modality].value[x] from RadiotherapyModalityVS (required)
* extension[technique].value[x] from RadiotherapyTechniqueVS (required)
* bodySite from RadiotherapyTreatmentLocationVS (required)
* bodySite ^short = "Body structure(s) treated"
* bodySite ^definition = "Coded body structure(s) treated in this course of radiotherapy. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToAnatomicVolume extension."
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
    RadiotherapyDoseDeliveredToAnatomicVolume named doseDeliveredToAnatomicVolume 0..* MS
* extension[doseDeliveredToAnatomicVolume].extension[fractionsDelivered] 0..0
* extension[doseDeliveredToAnatomicVolume].extension[fractionsDelivered] ^short = "Not used in this profile."
* extension[doseDeliveredToAnatomicVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered in this phase in the top-level extension also named fractionDelivered."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered during this phase."
* bodySite ^short = "Not used in this profile."
* bodySite ^definition = "Not used in this profile. Each anatomic volume must be represented by a BodyStructure resource that conforms to the RadiotherapyAnatomicVolume profile, and referenced in the extension RadiotherapyDoseDeliveredToAnatomicVolume.anatomicVolume."

Profile:  TeleradiotherapyTreatmentPhase
Parent:   USCoreProcedure
Id:       mcode-teleradiotherapy-treatment-phase
Title: "Teleradiotherapy Treatment Phase"
Description: "A summary of a phase of teleradiotherapy treatment that has been delivered. The scope is a treatment consisting of one or multiple identical fractions. A phase ends and a new phase begins whenever there is a change in the anatomic volume, dose per fraction, modality, or technique."
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
Description: "A summary of a phase of brachytherapy treatment that has been delivered. The scope is a treatment consisting of one or multiple identical fractions. A phase ends when there is a change in the anatomic volume, treatment fraction size, modality, or treatment technique."
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

Extension: RadiotherapyDoseDeliveredToAnatomicVolume
Id: mcode-radiotherapy-dose-delivered-to-anatomic-volume
Title: "Radiotherapy Dose Delivered To Anatomic Volume"
Description: "Dose parameters for one anatomic volume."
* insert ExtensionContext(Procedure)
* extension contains
    anatomicVolume 1..1 MS and
    totalDoseDelivered 0..1 MS and
    fractionsDelivered 0..1 MS
* extension[anatomicVolume].value[x] only Reference(RadiotherapyAnatomicVolume)
* extension[totalDoseDelivered].value[x] only Quantity
* extension[totalDoseDelivered].valueQuantity = UCUM#cGy
* extension[fractionsDelivered].value[x] only unsignedInt
// Definitions of in-line extensions
* extension[anatomicVolume] ^short = "Anatomic volume where radiation was delivered"
* extension[anatomicVolume] ^definition = "A BodyStructure resource representing the body structure treated, for example, Chest Wall Lymph Nodes."
* extension[totalDoseDelivered] ^short = "Total Radiation Dose Delivered"
* extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this anatomic volume within the scope of this dose delivery."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered to this anatomic volume."


//------ Radiotherapy Anatomic Volume -------

Profile: RadiotherapyAnatomicVolume
Parent: BodyStructure
Id: mcode-radiotherapy-anatomic-volume
Title: "Radiotherapy Anatomic Volume"
Description: "An anatomic volume used in radiotherapy planning or treatment delivery."
* obeys mcode-volume-description-or-id-required
* identifier ^short = "Identifier for the anatomic volume."
* identifier ^definition = "Unique identifier to reliably identify the same target volume in different requests and procedures, for example, the Conceptual Volume UID used in DICOM."
* description ^short = "Description of anatomic volume"
* description ^definition = "A text description of the anatomic volume, containing any additional information above and beyond the location and locationQualifier that describe the anatomic volume."
* morphology from RadiotherapyVolumeTypeVS (extensible)
* location from RadiotherapyTreatmentLocationVS (required)
* location ^short = "Anatomical location code."
* location ^definition = "A code specifying the body structure comprising the anatomic volume. The codes do not include laterality, which if applicable MUST be specified in the locationQualifier."
* locationQualifier from RadiotherapyTreatmentLocationQualifierVS (extensible)
* identifier and location and locationQualifier and description and patient and morphology MS


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

Profile: BrachytherapyImplantableDevice
Parent:  USCoreImplantableDeviceProfile
Id:      mcode-brachytherapy-implantable-device
Title: "Brachytherapy Implantable Device"
Description: "A radioactive source device implanted into the body and remaining there temporarily or permanently."
* type from BrachytherapyDeviceVS (extensible)

*/