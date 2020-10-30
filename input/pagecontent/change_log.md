### Change Log / Release Notes

#### mCODE 1.0 STU1

The following are changes made to the [mCODE 0.9.1 September 2019 Ballot Release](http://hl7.org/fhir/us/mcode/2019Sep/).

##### Enhancements

* The following profiles have been added: **GeneticSpecimen, RegionStudied** to support greater alignment between mCODE and the [Clinical Genomics Reporting FHIR IG STU1.](http://hl7.org/fhir/uv/genomics-reporting/index.html).
* The GeneticVariant profile has additional components which conform to equivalent components in the CG Reporting IG Variant profile: GeneStudied, VariationCode, GenomicDNAChange, GenomicSourceClass, AminoAcidChange, AminoAcidChangeType, CytogeneticLocation, and CytogeneticNomenclature.
* The MedicationStatement profile name has changed to **CancerRelatedMedicationStatement**. This profile now constrains the reason reference to only primary and secondary cancer conditions.

##### Corrections and Modifications to Existing Content

* The following mCODE profiles no longer appear and instead document preferred use of FHIR base profiles: **BloodPressure**, **BodyWeight**, **BodyHeight**, **CBCWAutoDifferentialPanel**, **ComprehensiveMetabolic2000SerumOrPlasmaPanel**.
* Genomics-related profiles GeneticVariantTested and GeneticVariantFound are combined into one profile, GeneticVariant.
* GenomicsReport onco-core-RegionStudied-extension is migrated to a slice under DiagnosticReport.result with a reference to a new profile, RegionStudied.
* GenomicsReport obf-SpecimenType-extension is migrated to a slice under DiagnosticReport.result with a reference to a new profile, GeneticSpecimen.
* DiagnosticReport.category cardinality changed from 1..1 to 1..*
* Replaced references of CIMPL to references of FHIR Shorthand and SUSHI.
* ECOGPerformanceStatus Observation.code and Observation.interpretation changed to align with the LOINC equivalent of ECOG score (89247-1) and interpretation (LOINC Answer List LL529-9).
* KarnofskyPerformanceStatus Observation.code and Observation.interpretation changed to align with the LOINC equivalent of Karnofsky score (89243-0) and interpretation (LOINC Answer List LL4986-7).


#### mCODE 0.9.1 September 2019 Ballot Release

The following are changes relative to [mCODE 0.9.0](https://mcodeinitiative.github.io/index.html).

##### Enhancements

* Updated to FHIR Release 4 from DSTU 2.
* Changed base class of mCODE laboratory panels (CBC and CMP) from Observation to DiagnosticReport.
* Documented mCODE compliance criteria.
* Documented preferred value sets for extensible binding and affect on US Core compliance.
* Changed HistologyMorphologyBehaviorVS value set to descendants of SCT#367651003 (Malignant neoplasm of primary, secondary, or uncertain origin (morphologic abnormality)), from descendants of SCT#108369006 (Neoplasm (morphologic abnormality)), because the latter brought in some concepts that do not represent malignant neoplasms.

##### Corrections and Modifications to Existing Content

* Updated code systems to new FHIR R4 base URL, http://terminology.hl7.org (previously was http://hl7.org/fhir)
* Changed profile name from GeneticMutationTested to GeneticVariant.
* Corrected mapping so the reference to PrimaryCancerCondition in all staging-related observations uses the existing 'focus' attribute.
* Eliminated AnatomicalOrientation.
* Eliminated ClockDirection as a separate value set because values are incorporated in logically-defined SNOMED-CT AnatomicalOrientationVS.
* Re-wrote the introductory narratives to consolidate multiple pages.
* Changed clinicalStatus on PrimaryCancerCondition and SecondaryCancerCondition from 1..1 to 0..1.
* Typographical fixes to multiple documentation pages.
* Eliminated reference range from GeneticVariant and components of GeneticVariantFound.
* Improved the definition of "curative" and "palliative" in TreatmentIntentVS.
* Corrected the definition of TreatmentIntent.
* Improved the explanation of the relationships between the genomics-related profiles.
* Updated examples to validate against FHIR R4 and other changes to the profiles.
* Changed blood pressure test code to LNC#85354-9 "Blood pressure panel with all children optional" to align with FHIR
* Restored device attribute on TumorMarkerTest since laboratories do report it on occasion.
* Added string as an allowable datatype for TumorMarkerTest.value[x], since it is a valid datatype for some of the tests included in TumorMarkerTestVS.
* Changed cardinality of ECOGPerformanceStatus.value and KarnofskyPerformanceStatus.value to 1..1 and ECOGPerformanceStatus.dataAbsentReason and ECOGPerformanceStatus.dataAbsentReason to 0..0
* Changed cardinality of GeneticVariant.referenceRange to 0..0.
* Changed cardinality of referenceRange for GeneticVariantFound.component[VariantFoundIdentifier], GeneticVariantFound.component[VariantFoundHGVSName] and GeneticVariantFound.component[VariantFoundDescription] and to 0..0.
* Clarified description of HistologyMorphologyBehaviorVS regarding the use of ICD-O-3 behavior codes.
* Corrected descriptions for multiple codes in the ComorbidConditionVS.
* Updated Data Dictionary to reflect FHIR R4 and other changes to the Implementation Guide.
* Renamed PrimaryCancerConditionVS to PrimaryOrUncertainBehaviorCancerDisorderVS, for greater alignement with value set content.
* Renamed extension prefixes from `shr-core` to `obf-datatype`.
* Replaced onco-core-GeneStudied-extension with observation-geneticsGene standard extension in GeneticVariant.
* Corrected the definition of obf-RadiationDosePerFraction-extension.
* Renamed vital-precondition-extension to vital-preconditionCode-extension to distinguish from precondition whose datatype is Reference().
* Improved the definition for obf-RadiationFractionsDelivered-extension.
* Replaced locally defined LateralityVS with FHIR-defined laterality value set in obf-datatype-Laterality-extension.
* Improved definition of onco-core-EvidenceType-extension.
* Replaced obf-dateOfDiagnosis-extension with condition-assertedDate standard extension in PrimaryCancerCondition and SecondaryCancerCondition.
* Added logical definition to TNM-related value sets to include all codes from AJCC staging systems.
* Removed references to MedicationRequest on basedOn attribute for TNMClinicalPrimaryTumorCategory, TNMClinicalRegionalNodesCategory, TNMClinicalDistantMetastasesCategory, KarnofskyPerformanceStatus and ECOGPerformanceStatus.
