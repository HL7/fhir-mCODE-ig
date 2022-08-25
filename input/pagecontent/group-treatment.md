The **Treatment** group includes reporting of procedures and medications used to treat a cancer patient, or relevant to that treatment. Treatments fall into three classes: medications, surgery, and radiotherapy.

### Medications

US Core gives preference to representing medications using the National Library of Medicine (NLM) [RxNorm](https://www.nlm.nih.gov/research/umls/rxnorm/) terminology - a coding standard established by the Office of the National Coordinator (ONC) for the exchange of drugs. However, RxNorm is restricted to FDA-approved drugs and does not include clinical trial drugs. mCODE allows for the inclusion of other code systems like the [NCI Thesaurus (NCIT)](https://ncit.nci.nih.gov/ncitbrowser/) to represent clinical trial oncology drugs.

Two profiled resources are used to record medications: MedicationRequest and MedicationAdministration. In version 3.1 and later, US Core does not use MedicationStatement, preferring to represent patient-reported medications using MedicationRequest. mCODE uses MedicationAdministration for drugs administered by clinicians, as often the case for chemotherapy drugs.

### Surgery

Not all surgical procedures are relevant to treatment of cancer patients. To limit the scope of reported surgeries, mCODE uses the concept of _cancer-relatedness_. Only surgeries whose reason traces back to a cancer condition are in scope. mCODE does not at this time have detailed profiles for the many types of cancer-related surgeries.

### Radiotherapy

A radiation oncology work group convened under [CodeX FHIR Accelerator](https://confluence.hl7.org/display/COD/CodeX+Home) has helped create new profiles and value sets for radiotherapy. The group included American Society for Radiation Oncology (ASTRO), American Association of Physicists in Medicine (AAPM), Integrating Healthcare Enterprise - Radiation Oncology (IHE-RO), Varian, Elekta, Epic, and Wemedoo. The group defined value sets for modality and technique for teleradiotherapy and brachytherapy, as well as profiles for delivery of both types of treatment. To limit the scope, mCODE focused on high-level summarization of the treatment given, and avoids many details of the treatments. Ordering workflows are out of scope.


For definition of key terms in radiotherapy, see the [Radiotherapy Glossary](glossary.html) page.

### Profiles

* **Medication**
  * [CancerRelatedMedicationRequest]
  * [CancerRelatedMedicationAdministration]
* **Surgery**
  * [CancerRelatedSurgicalProcedure]
* **Radiotherapy**
  * [RadiotherapyCourseSummary]
  * [RadiotherapyVolume]

### Extensions

* **General**
  * [BodyLocationQualifier]
  * [LateralityQualifier]
  * [ProcedureIntent]
  * [TreatmentTerminationReason]
* **Radiotherapy**
  * [RadiotherapyDoseDeliveredToVolume]
  * [RadiotherapyModality]
  * [RadiotherapyModalityAndTechnique]
  * [RadiotherapySessions]
  * [RadiotherapyTechnique]
  * [RelatedCondition]

### Value Sets

* **General**
  * [ProcedureIntentVS]
  * [TreatmentTerminationReasonVS]
* **Medication**
  * [Medication Clinical Drug (RxNorm)] (external)
* **Surgery**
  * [CancerRelatedSurgicalProcedureVS]
* **Radiotherapy**
  * [BodyLocationQualifierVS]
  * [BrachytherapyPermanentSeedsTechniqueVS]
  * [BrachytherapyLowDoseRateTemporaryTechniqueVS]
  * [BrachytherapyPulsedDoseRateTechniqueVS]
  * [BrachytherapyRadiopharmaceuticalTechniqueVS]
  * [BrachytherapyHighDoseRateElectronicTechniqueVS]
  * [BrachytherapyHighDoseRateTechniqueVS]
  * [BrachytherapyModalityVS]
  * [BrachytherapyTechniqueVS]
  * [RadiotherapyModalityVS]
  * [RadiotherapyTechniqueVS]
  * [RadiotherapyTreatmentLocationVS]
  * [RadiotherapyTreatmentLocationQualifierVS]
  * [RadiotherapyVolumeTypeVS]
  * [TeleradiotherapyCarbonIonBeamTechniqueVS]
  * [TeleradiotherapyElectronBeamTechniqueVS]
  * [TeleradiotherapyModalityVS]
  * [TeleradiotherapyNeutronTechniqueVS]
  * [TeleradiotherapyPhotonBeamTechniqueVS]
  * [TeleradiotherapyProtonBeamTechniqueVS]
  * [TeleradiotherapyTechniqueVS]

### Code Systems

* [SnomedRequestedCS]

{% include markdown-link-references.md %}
