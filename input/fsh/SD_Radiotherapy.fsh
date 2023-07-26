
// -------------- Identifier Display Name Field ---------------
RuleSet: IdentifierDisplayName  // FHIR-32239
* identifier 0..* MS
* identifier ^definition = "Display name and technical identifiers (e.g., the Conceptual Volume UID used in DICOM.)"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier contains
    displayName 0..1 MS
* identifier[displayName].use = #usual
* identifier[displayName].value 1..1 MS

Profile:  RadiotherapyCourseSummary
Parent:   USCoreProcedure  // considered one procedure with multiple parts
Id:       mcode-radiotherapy-course-summary
Title:    "Radiotherapy Course Summary Profile"
Description: "A summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element."
* ^extension[FMM].valueInteger = 3
* performed[x] only Period
* subject only Reference(CancerPatient)
* subject ^definition = "The patient on whom the procedure was performed."
* extension MS
// Summary-specific content
* code = SCT#1217123003 // "Radiotherapy course of treatment (regime/therapy)"
* extension contains
    ProcedureIntent named treatmentIntent 0..1 MS and
    TreatmentTerminationReason named terminationReason 0..1 MS and
    RadiotherapyModalityAndTechnique named modalityAndTechnique 0..* MS and
    RadiotherapySessions named actualNumberOfSessions 0..1 MS and
    RadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS
* bodySite from RadiotherapyTreatmentLocationVS (extensible)
* bodySite ^short = "All body structure(s) treated"
* bodySite ^definition = "Coded body structure(s) treated in this course of radiotherapy. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension."
* insert BodySiteQualifierAndLaterality(bodySite)
* reasonCode from CancerDisorderVS (extensible)
* reasonReference only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* reasonCode and reasonReference and bodySite MS
* obeys mcode-reason-required

//---------- Extensions -------------------------

Extension: RadiotherapyModalityAndTechnique
Id:        mcode-radiotherapy-modality-and-technique
Title:     "Radiotherapy Modality And Technique Extension"
Description: "Extension capturing modality and technique of a given radiotherapy procedure.  The allowed combinations of modality and technique are constrained by invariants, one per modality."
* ^extension[FMM].valueInteger = 3
* extension contains
    RadiotherapyModality named modality 1..1 MS and
    RadiotherapyTechnique named technique 0..* MS
* extension[modality].value[x] from RadiotherapyModalityVS (required)
* extension[technique].value[x] from RadiotherapyTechniqueVS (required)
* obeys TechniquesForNeutronBeamModality
* obeys TechniquesForPhotonBeamModality
* obeys TechniquesForPhotonBeamModalityv2
* obeys TechniquesForElectronBeamModality
* obeys TechniquesForCarbonIonBeamModality
* obeys TechniquesForProtonBeamModality
* obeys TechniquesForInternalRadiotherapyPermanentSeeds
* obeys TechniquesForLowDoseRateUsingTempRadSource
* obeys TechniquesForPulsedDoseRate
* obeys TechniquesForHighDoseRate
* obeys TechniquesForHighDoseRateElectronic
* obeys TechniquesForRadioPharmaceutical
* obeys ModalityTextRequiredForOther
* obeys TechniqueTextRequiredForOther


Invariant: ModalityTextRequiredForOther
Description:  "Require a text literal for code other"
* expression = "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor' and coding.code = 'UNC')
   implies
       extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(text)"
* severity =  #error


Invariant: TechniqueTextRequiredForOther
Description:  "Require a text literal for code other"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor' and coding.code = 'UNC')
   implies
       extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(text)"
Severity: #error

RuleSet: ModTechniqueConstraint(modCode, techCodes)
* expression = "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '{modCode}')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( {techCodes})"
* severity = #error

Invariant: TechniquesForPhotonBeamModalityv2
Description: "Allowed Techniques for Photon Beam Modality"
* insert ModTechniqueConstraint([['1156506007']], [[(coding.code = 'UNC' or coding.code = '441799006' or coding.code = '1156530009' or coding.code = '1162782007' or coding.code = '1156526006' or coding.code = '168524008' or coding.code = '1156530009' or coding.code = '1163157007')]])


Invariant: TechniquesForPhotonBeamModality
Description:  "Allowed Techniques for Photon Beam Modality"
* expression = "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156506007')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(
           (coding.code = 'UNC' or coding.code = '441799006' or coding.code = '1156530009' or coding.code = '1162782007' or coding.code = '1156526006' or coding.code = '168524008' or coding.code = '1156530009' or coding.code = '1163157007'))"

* severity = #error


Invariant: TechniquesForElectronBeamModality
Description:  "Allowed Techniques for Electron Beam Modality"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '45643008')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(  (coding.code = 'UNC' or coding.code = '1162782007' or coding.code = '1156526006' or coding.code = '168524008' or coding.code = '1163157007'))"
Severity: #error

Invariant: TechniquesForNeutronBeamModality
Description:  "Allowed Techniques for Neutron Beam Modality"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '80347004')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(   (coding.code = 'UNC' or coding.code = '169317000' or coding.code = '1162782007'))"
Severity: #error

Invariant: TechniquesForCarbonIonBeamModality
Description:  "Allowed Techniques for Carbon Ion Beam Modality"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156505006')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(
           (coding.code = 'UNC' or coding.code = '1156529004' or coding.code = '1156528007' or coding.code='1204242009'))"
Severity: #error

Invariant: TechniquesForProtonBeamModality
Description:  "Allowed Techniques for Proton Beam Modality"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '10611004')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (coding.code = 'UNC' or coding.code = '1156529004' or coding.code = '1156528007' or coding.code = '1204242009' or coding.code = '1163157007'))"
Severity: #error

Invariant: TechniquesForInternalRadiotherapyPermanentSeeds
Description:  "Allowed Techniques for Internal Radiotherapy - Permanent Seeds"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '169359004')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and  (coding.code = 'UNC' or coding.code = '113120007'))"
Severity: #error

Invariant: TechniquesForLowDoseRateUsingTempRadSource
Description:  "Allowed Techniques for Low Dose Rate Using Temp Radiation Source"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156708005')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (coding.code = 'UNC' or coding.code = '384692006' or coding.code = '113120007' or coding.code = '14473006'))"
Severity: #error

Invariant: TechniquesForPulsedDoseRate
Description:  "Allowed Techniques for Pulsed Dose Rate"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156384006')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (coding.code = 'UNC' or coding.code = '384692006' or coding.code = '113120007'))"
Severity: #error

Invariant: TechniquesForHighDoseRate
Description:  "Allowed Techniques for High Dose Rate"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '394902000')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (coding.code = 'UNC' or coding.code = '384692006' or coding.code = '1156382005' or coding.code = '113120007' or coding.code = '1156383000' or coding.code = '384691004' or coding.code = '168524008' or coding.code = '14473006'))"
Severity: #error

Invariant: TechniquesForHighDoseRateElectronic
Description:  "Allowed Techniques for High Dose Rate Electronic"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '438629002')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (coding.code = 'UNC' or coding.code = '384692006' or coding.code = '1156382005' or coding.code = '113120007' or coding.code = '384691004' or coding.code = '168524008' or coding.code = '14473006'))"
Severity: #error

Invariant: TechniquesForRadioPharmaceutical
Description:  "Allowed Techniques for Radiopharmaceutical"
Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists( coding.code = '440252007')
   implies
         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (coding.code = 'UNC' or coding.code = '16560241000119104' or coding.code = '1156383000' or coding.code = '384692006' or coding.code = '113120007'))"
Severity: #error

Extension: RadiotherapyModality
Id:        mcode-radiotherapy-modality
Title:    "Radiotherapy Modality Extension"
Description: "Extension capturing a modality of external beam or brachytherapy radiation procedures."
//* insert ExtensionContext(Procedure) - removed as per FHIR-32243
* ^extension[FMM].valueInteger = 3
* value[x] only CodeableConcept
* value[x] 1..1

Extension: RadiotherapyTechnique
Id:        mcode-radiotherapy-technique
Title:     "Radiotherapy Technique Extension"
Description: "Extension capturing a technique of external beam or brachytherapy radiation procedures."
//* insert ExtensionContext(Procedure)  - removed as per FHIR-32243
* ^extension[FMM].valueInteger = 3
* value[x] only CodeableConcept
* value[x] 1..1

Extension: RadiotherapySessions
Id:        mcode-radiotherapy-sessions
Title:     "Radiotherapy Number of Sessions Extension"
Description: "The number of sessions in a course of radiotherapy."
// * insert ExtensionContext(Procedure) - removed as per FHIR-32243
* ^extension[FMM].valueInteger = 3
* value[x] only unsignedInt
* value[x] 1..1

Extension: RadiotherapyDoseDeliveredToVolume
Id: mcode-radiotherapy-dose-delivered-to-volume
Title: "Radiotherapy Dose Delivered To Volume Extension"
Description: "Dose delivered to a given radiotherapy volume."
// * insert ExtensionContext(Procedure) - removed as per FHIR-32243
* ^extension[FMM].valueInteger = 3
* extension contains
    volume 1..1 MS and
    totalDoseDelivered 0..1 MS and
    fractionsDelivered 0..1 MS
* extension[volume].value[x] only Reference(RadiotherapyVolume)
* extension[totalDoseDelivered].value[x] only Quantity
* extension[totalDoseDelivered].valueQuantity = UCUM#cGy
* extension[fractionsDelivered].value[x] only unsignedInt
// Definitions of in-line extensions
* extension[volume] ^short = "Volume in the body where radiation was delivered"
* extension[volume] ^definition = "A BodyStructure resource representing volume in the body where radiation was delivered, for example, Chest Wall Lymph Nodes."
* extension[totalDoseDelivered] ^short = "Total Radiation Dose Delivered"
* extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this dose delivery, i.e., dose delivered from the Procedure in which this extension is used."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered to this volume."


//------ Radiotherapy Volume -------

Profile: RadiotherapyVolume
Parent: BodyStructure
Id: mcode-radiotherapy-volume
Title: "Radiotherapy Volume Profile"
Description: "A volume of the body used in radiotherapy planning or treatment delivery."
* ^extension[FMM].valueInteger = 3
* obeys mcode-description-or-id-required
* insert IdentifierDisplayName
* identifier ^short = "Volume Identifier"
* identifier ^definition = "Unique identifier to reliably identify the same target volume in different requests and procedures, for example, the Conceptual Volume UID used in DICOM."
* description ^short = "Volume Description"
* description ^definition = "A text description of the radiotherapy volume, which SHOULD contain any additional information above and beyond the location and locationQualifier that describe the volume."
* morphology from RadiotherapyVolumeTypeVS (extensible)
* morphology ^short = "Type of Radiotherapy Volume"
// definition --> comment FHIR-32352
* morphology ^comment = "The type of radiotherapy volume this resource represents. Although the name of the element is 'morphology', this element is defined in the base resource as 'The kind of structure being represented by the body structure'. The name is somewhat of a misnomer, and might be better interpreted simply as 'type' or 'kind'."
* location from RadiotherapyTreatmentLocationVS (extensible)
* location ^short = "Body Location Code."
* location ^definition = "The location and locationQualifier codes specify a TG263 body structure comprising the irradiated volume."
* locationQualifier from RadiotherapyTreatmentLocationQualifierVS (extensible)
* locationQualifier ^short = "Qualifiers on location used to specify a TG263 body structure comprising the irradiated volume."
* locationQualifier ^definition = "Qualifiers that together with the associated location code specify the TG263 body structure comprising the irradiated volume."
* identifier and location and description and patient and morphology and locationQualifier  MS
* patient only Reference(CancerPatient)
* patient ^definition = "The patient for which a radiotherapy procedure is planned or performed."

Invariant:  mcode-description-or-id-required
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
Title: "Brachytherapy Implantable Device Profile"
Description: "A radioactive source device implanted into the body and remaining there temporarily or permanently."
* type from BrachytherapyDeviceVS (extensible)

*/
