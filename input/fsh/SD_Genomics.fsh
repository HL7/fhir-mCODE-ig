Profile:    GenomicRegionStudied
Parent:     RegionStudied
Id:         mcode-genomic-region-studied
Title:      "Genomic Region Studied Profile"
Description:    "A subset of genes or genomic regions of interest in a targeted resequencing study."
* ^extension[FMM].valueInteger = 1
* subject 1..1 // subject is required in US Core Laboratory Result (although I am not quite sure this represents a laboratory result, since it isn't strictly a result. It is more like what we are observing, additional information behind Observation.code.)
* value[x] ^definition = "Not used in this profile. MustSupport is inherited from the parent profile (USCoreObservationLab) and should be ignored by implementers for this element."
* category[labCategory].coding 1..1  // To prevent the message "The repeating element has a pattern. The pattern will apply to all the repeats (this has not been clear to all users)"
* category[labCategory] = ObsCat#laboratory
* subject only Reference(CancerPatient)
* component[gene-mutations] and component[gene-mutations].code and component[gene-mutations].value[x] MS
* component[region-description] and component[region-description].code and component[region-description].value[x] MS
* component[gene-studied] and component[gene-studied].code and component[gene-studied].value[x] MS
* component[ranges-examined] and component[ranges-examined].code and component[ranges-examined].value[x] MS	
* component[coordinate-system] and component[coordinate-system].code and component[coordinate-system].value[x] MS	
* component[genomic-ref-seq] and component[genomic-ref-seq].code and component[genomic-ref-seq].value[x] MS
* status and category and code and subject and effective[x] and effectiveDateTime and dataAbsentReason and component MS

Profile: GenomicVariant
Parent: Variant
Id: mcode-genomic-variant
Title:      "Genomic Variant Profile"
Description:    "Details about a set of changes in the tested sample compared to a reference sequence. The term variant can be used to describe an alteration that may be benign, pathogenic, or of unknown significance. The term variant is increasingly being used in place of the term mutation. Variants can be computed relative to reference sequence assembly from which it was identified."
* ^extension[FMM].valueInteger = 1
* insert NotUsed(referenceRange)
* insert NotUsed(hasMember)
* subject only Reference(CancerPatient)
* specimen only Reference(GenomicSpecimen)
* value[x] ^slicing.rules = #closed
* category[labCategory].coding 1..1  // To prevent the message "The repeating element has a pattern. The pattern will apply to all the repeats (this has not been clear to all users)"
* category[labCategory] = ObsCat#laboratory
* component[gene-studied] and component[gene-studied].code and component[gene-studied].value[x] MS
* component[variation-code] and component[variation-code].code and component[variation-code].value[x] MS
* component[genomic-hgvs] and component[genomic-hgvs].code and component[genomic-hgvs].value[x] MS
* component[coding-change-type] and component[coding-change-type].code and component[coding-change-type].value[x] MS
* component[molecular-consequence] and component[molecular-consequence].code and component[molecular-consequence].value[x] MS
* component[genomic-source-class] and component[genomic-source-class].code and component[genomic-source-class].value[x] MS
* component[protein-hgvs] and component[protein-hgvs].code and component[protein-hgvs].value[x] MS
* component[amino-acid-change-type] and component[amino-acid-change-type].code and component[amino-acid-change-type].value[x] MS
* component[copy-number] and component[copy-number].code and component[copy-number].value[x] MS
* component[sample-allelic-frequency] and component[sample-allelic-frequency].code and component[sample-allelic-frequency].value[x] MS
* component[allelic-state] and component[allelic-state].code and component[allelic-state].value[x] MS
* component[cytogenomic-nomenclature] and component[cytogenomic-nomenclature].code and component[cytogenomic-nomenclature].value[x] MS
* component[cytogenetic-location] and component[cytogenetic-location].code and component[cytogenetic-location].value[x] MS
* status and category and code and subject and effective[x] and effectiveDateTime and value[x] and dataAbsentReason and method and specimen and component MS

Profile:     GenomicsReport
Parent:      http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-report
Id:          mcode-genomics-report
Title:      "Genomics Report Profile"
Description:    "Genomic analysis summary report. The report may include one or more tests, with two distinct test types. The first type is a targeted mutation test, where a specific mutation on a specific gene is tested for. The result is either positive or negative for that mutation. The second type is a more general test for variants. This type of test returns the identity of variants found in a certain region of the genome."
* ^extension[FMM].valueInteger = 1
* category[Genetics].coding 1..1  // To prevent the message "The repeating element has a pattern. The pattern will apply to all the repeats (this has not been clear to all users)"
* subject only Reference(CancerPatient)
* specimen only Reference(GenomicSpecimen)
* result[variant] only Reference(GenomicVariant)
* result[region-studied] only Reference(GenomicRegionStudied)
* result[region-studied] and result[variant] MS
* status and category and code and subject and effective[x] and effectiveDateTime and issued and performer and result and specimen MS

Profile: TumorMarkerTest
Parent:  USCoreObservationLab
Id:      mcode-tumor-marker-test
Title:   "Tumor Marker Test Profile"
Description: "The result of a tumor marker test. Tumor marker tests are generally used to guide cancer treatment decisions and monitor treatment, as well as to predict the chance of recovery and cancer recurrence."
* ^extension[FMM].valueInteger = 4
* subject 1..1
* value[x] 1..1
* code from TumorMarkerTestVS (extensible)
* category 2..*
* category contains mcode-category 1..1
* category[mcode-category] = SCT#250724005 // Tumor marker measurement (procedure)
// sushi error >>> * category[mcode-category].coding.version = ""  // make sure version is not specified
* subject only Reference(CancerPatient)
* subject ^definition = "Patient whose tumor marker test is recorded."
* effective[x] only dateTime or Period
* value[x] only Quantity or Ratio or string or CodeableConcept
// Already MS in US Core Obs Lab: status, category, code, subject, effective[x], value[x], dataAbsentReason
* specimen MS


RuleSet: CancerRelatedSpecimenRules
* ^extension[FMM].valueInteger = 1
* type 1..1
* subject only Reference(CancerPatient)
* subject ^definition = "The patient associated with this specimen."
* collection.bodySite.extension contains
    BodyLocationQualifier named locationQualifier 0..* and
    LateralityQualifier named lateralityQualifier 0..1
// It would be nice to reuse the existing condition-related extension (see Jira https://jira.hl7.org/projects/FHIR/issues/FHIR-31027) but it doesn't apply to Specimen
* extension contains RelatedCondition named relatedCondition 0..1 MS
* extension[relatedCondition].value[x] only Reference(PrimaryCancerCondition or SecondaryCancerCondition)
* extension[relatedCondition] ^short = "Cancer condition associated with this specimen."
* extension[relatedCondition] ^definition = "A reference that associates this specimen with a cancer condition."
// No inherited MS
* subject and status and type and collection and collection.bodySite and collection.bodySite.extension and collection.bodySite.extension[locationQualifier] and collection.bodySite.extension[lateralityQualifier] MS


Profile: GenomicSpecimen
Parent: Specimen
Id: mcode-genomic-specimen
Title:      "Genomic Specimen Profile"
Description:    "A small sample of blood, hair, skin, amniotic fluid (the fluid that surrounds a fetus during pregnancy), or other tissue which is excised from a subject for the purposes of genomics testing or analysis."
* insert CancerRelatedSpecimenRules
* ^extension[FMM].valueInteger = 1
* type from GenomicSpecimenTypeVS (extensible)
