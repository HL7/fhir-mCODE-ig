// GenomeX example for Use Case 1 - Reference lab to EHR
// The following examples will be used as a prototype and based on de-identified RWD test data. There is no PHI.

// ************* Example 1: Tumor-Normal Test *******************

Instance: gx-cancer-patient-incredible-hulk
InstanceOf: Patient
Description: "GenomeX Example of NGS Patient"
* identifier.use = #usual
* identifier[0].type = IDTYPE#PT "Patient external identifier"
* identifier[0].system = "https://www.tempus.com"
* identifier[0].value = "22ea1d1b-03a5-47d6-81e0-b9b4cbb15ccf"
* identifier[1].type = IDTYPE#MR "Medical Record Number"
* identifier[1].system = "http://hospital.example.org"
* identifier[1].value = "123456789"
* name.family = "Hulk"
* name.given[0] = "Incredible"
* gender = #male
* birthDate = "1990-01-01"
* address.line = "987 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"

Instance: gx-us-core-organization-tempus-inc
InstanceOf: USCoreOrganization
Description: "GenomeX example: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#other "Other"
* name = "Tempus Labs, Inc."
* identifier[0].system = "urn:oid:2.16.840.1.113883.4.7"
* identifier[0].value = "14D2114007"
* telecom[0].system = #phone
* telecom[0].value = "999-999-9999"
* telecom[1].system = #email
* telecom[1].value = "support@tempus.com"
* telecom.use = #work
* address.line = "600 West Chicago Avenue, Ste 510"
* address.city = "Chicago"
* address.state = "IL"
* address.postalCode = "60654"
* address.country = "US"
* contact.name.text = "Nike Beaubier, MD, FCAP, MGP"

Instance: gx-us-core-organization-test-institution
InstanceOf: USCoreOrganization
Description: "GenomeX example: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#other "Other"
* name = "Test Institution"

Instance: gx-practitioner-test-pathologist
InstanceOf: Practitioner
Description: "GenomeX mCODE example: results interpreter of the NGS test."
// Note that the example report only has a text name of the practitioner so we cannot use US Core.
* name.text = "Test Pathologist, MD"

Instance: gx-genomic-specimen-tumornormal-tumor
InstanceOf: HumanSpecimen
Description: "GenomeX mCODE Example for Genomic Specimen - Tumor specimen of the TumorNormal test"
* status = #available "Available"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* type = SPTY#TUMOR "Tumor"
* receivedTime = "2021-02-09T21:30:50+05:00"
* collection.bodySite = SCT#44029006 "Left lung structure (body structure)"
* collection.collectedDateTime = "2021-02-06T17:15:00+05:00"

Instance: gx-genomic-specimen-tumornormal-normal
InstanceOf: HumanSpecimen
Description: "GenomeX mCODE Example for Genomic Specimen - Tumor specimen of the TumorNormal test"
* status = #available "Available"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* type = SPTY#BLD "Blood"  // HL7v2 Specimen type does not handle "a normal sample" for TumorNormal
* receivedTime = "2021-02-09T21:30:50+05:00"
* collection.collectedDateTime = "2021-02-06T17:15:00+05:00"

Instance: gx-genomic-variant-somatic-bap1-indel
InstanceOf: GenomicVariant
Description: "GenomeX mCODE Example for Genomic Variant - BAP1"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
// value[x] has alternate codings depending on where to place the interpretation of "Positive or Negative".
// * interpretation = SCT#10828004 "Positive (qualifier value)"
* subject = Reference(gx-cancer-patient-incredible-hulk)
// * effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:950 "BAP1"
* component[transcript-ref-seq].valueCodeableConcept = NCBI#NM_004656 "NM_004656"
* component[coding-hgvs].valueCodeableConcept = HGVS#NM_004656.4:c.1768C>T "NC_000003.11(NM_004656.4):c.1768C>T"
* component[protein-hgvs].valueCodeableConcept = HGVS#NP_004647.1:p.(Gln590Ter) "NP_004647.1:p.(Gln590Ter)"  // Mutalizer normalized HGVS string for HGVS#p.Q590* "p.Q590*".
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency].valueQuantity = 57.4 '%' "%"
* component[coding-change-type].valueCodeableConcept = SO#SO:0001587 "stop_gained"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0002054 "loss of function variant"

Instance: gx-genomic-variant-somatic-cdkn2a-cnv
InstanceOf: GenomicVariant
Description: "GenomeX mCODE Example for Genomic Variant - CDKN2A"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:1787 "CDKN2A"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001743 "copy_number_loss"

Instance: gx-genomic-variant-somatic-cdkn2b-cnv
InstanceOf: GenomicVariant
Description: "GenomeX mCODE Example for Genomic Variant - CDKN2B"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:1788 "CDKN2B"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001743 "copy_number_loss"

Instance: gx-genomic-variant-somatic-kdm5d
InstanceOf: GenomicVariant
Description: "GenomeX mCODE Example for Genomic Variant - KDM5D"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:11115 "KDM5D"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001743 "copy_number_loss"

Instance: gx-genomic-variant-somatic-mtap
InstanceOf: GenomicVariant
Description: "GenomeX mCODE Example for Genomic Variant - MTAP"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:7413 "MTAP"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001743 "copy_number_loss"

Instance: gx-genomic-variant-somatic-mycn
InstanceOf: GenomicVariant
Description: "GenomeX mCODE Example for Genomic Variant - MYCN"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:7559 "MYCN"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001742 "copy_number_gain"

// MLT: All pertinent negative genes for a single report were combined into one variant "absent" resource.

Instance: gx-genomic-variant-pertinent-negative-nras-kit-braf
InstanceOf: GenomicVariant
Description: "GenomeX mCODE Example for the absence of a notable variant - KIT and BRAF"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9634-2 "Absent"
* component[gene-studied][0].valueCodeableConcept = HGNC#HGNC:6342 "NRAS" 
* component[gene-studied][1].valueCodeableConcept = HGNC#HGNC:7989 "KIT"
* component[gene-studied][+].valueCodeableConcept = HGNC#HGNC:1097 "BRAF" 

/* genomic-variant-fusion is an example of the
 * GenomicVariant to represent a gene fusion event.
 * This example demonstrates a test for the gene fusion MET-ALK.
 */
Instance: gx-genomic-variant-fusion-met-alk
InstanceOf: GenomicVariant
Description: "mCODE Example for Genomic Variant gene fusion event"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied][0].valueCodeableConcept = HGNC#HGNC:7029 "MET" 
* component[gene-studied][1].valueCodeableConcept = HGNC#HGNC:427 "ALK"
* component[coding-change-type].valueCodeableConcept = SO#SO:0002062 "complex chromosomal rearrangement"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"

// ******** Variants of Unknown Significance (VUS) **********

Instance: gx-genomic-variant-somatic-pof1b
InstanceOf: GenomicVariant
Description: "GenomeX mCODE Example for Genomic Variant - POF1B"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:13711 "POF1B"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001583 "missense_variant"
* component[transcript-ref-seq].valueCodeableConcept = NCBI#NM_004656 "NM_004656"
* component[coding-hgvs].valueCodeableConcept = HGVS#NM_001307940.2:c.430C>T "NM_001307940.2:c.430C>T"
* component[protein-hgvs].valueCodeableConcept = HGVS#NP_001294869.1:p.(Pro144Ser) "NP_001294869.1:p.(Pro144Ser)"  // Mutalizer normalized HGVS string for HGVS#p.Q590* "p.Q590*".
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency].valueQuantity = 78.6 '%' "%"

Instance: gx-genomic-diagnostic-implication-pof1b
InstanceOf: DiagnosticImplication
Description: "GenomeX mCODE Example for Clinical Significance of VUS - POF1B"
* status = #final "Final"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(gx-genomic-variant-somatic-pof1b)
* component[clinical-significance].valueCodeableConcept = LNC#LA26333-7 "Uncertain significance"

// ******* Tumor Mutation Burden *********
Instance: gx-genomic-tmb
InstanceOf: TMB
Description: "Example for Tumor Mutation Burden"
* status = #final "final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx-cancer-patient-incredible-hulk)
* valueQuantity.value = 57.1

// ******* Microsatellite Instability *********
Instance: gx-genomic-msi
InstanceOf: MSI
Description: "Example for Microsatellite Instability"
* status = #final "final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx-cancer-patient-incredible-hulk)
* valueCodeableConcept = LNC#LA26203-2 "MSI-H"

// ******** Recommended Actions *********
// Here we insert potential therapies indicated for a variant as proposed in by the report.
/****** COMMENTING OUT MEDICATION RECOMMENDATION - based on CGWG meeting on 12/12/22

Instance: gx-genomic-medication-recommendation-brigatinib
InstanceOf: CGMedicationRecommendation
Description: "Example of a Pharmacogenomic Medication recommendation for brigatinib"
* status = #requested "requested"
* intent = #proposal "proposal"
* reasonReference = Reference(gx-genomic-therapeutic-implication-brigatinib)

Instance: gx-genomic-medication-recommendation-ceritinib
InstanceOf: CGMedicationRecommendation
Description: "Example of a Pharmacogenomic Medication recommendation for ceritinib"
* status = #requested "requested"
* intent = #proposal "proposal"
* reasonReference = Reference(gx-genomic-therapeutic-implication-ceritinib)

*/

// ******** Therapeutic Implications *********

Instance: gx-genomic-therapeutic-implication-alectinib
InstanceOf: CGTherapeuticImplication
Description: "Example of how Genomics Reporting IG Therapeutic Implications fits with mCODE"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* derivedFrom = Reference(gx-genomic-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#1727455 "alectinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"

Instance: gx-genomic-therapeutic-implication-brigatinib
InstanceOf: CGTherapeuticImplication
Description: "Example of how Genomics Reporting IG Therapeutic Implications fits with mCODE"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* derivedFrom = Reference(gx-genomic-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#1921217 "brigatinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"

Instance: gx-genomic-therapeutic-implication-ceritinib
InstanceOf: CGTherapeuticImplication
Description: "Example of how Genomics Reporting IG Therapeutic Implications fits with mCODE"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* derivedFrom = Reference(gx-genomic-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#1535457 "ceritinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"

Instance: gx-genomic-therapeutic-implication-crizotinib
InstanceOf: CGTherapeuticImplication
Description: "Example of how Genomics Reporting IG Therapeutic Implications fits with mCODE"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* derivedFrom = Reference(gx-genomic-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#1148495 "crizotinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"

Instance: gx-genomic-therapeutic-implication-lorlatinib
InstanceOf: CGTherapeuticImplication
Description: "Example of how Genomics Reporting IG Therapeutic Implications fits with mCODE"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* derivedFrom = Reference(gx-genomic-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#2103164 "lorlatinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"


// ********** Genomics Report ***********
Instance: gx-genomics-report-incredible-hulk
InstanceOf: mcode-genomics-report
Description: "GenomeX Example for Genomics Report"
* status = #final "Final"
* code = LNC#51969-4 "Genetic analysis report"
* subject = Reference(gx-cancer-patient-incredible-hulk)
* performer = Reference(gx-us-core-organization-tempus-inc)
* effectiveDateTime = "2022-02-15T19:28:58+05:00"
* resultsInterpreter = Reference(gx-practitioner-test-pathologist)
* specimen[0] = Reference(Specimen/gx-genomic-specimen-tumornormal-tumor)
* specimen[1] = Reference(Specimen/gx-genomic-specimen-tumornormal-normal)
* result[0] = Reference(Observation/gx-genomic-variant-somatic-bap1-indel)
* result[1] = Reference(Observation/gx-genomic-variant-somatic-cdkn2a-cnv)
* result[+] = Reference(Observation/gx-genomic-variant-somatic-cdkn2b-cnv)
* result[+] = Reference(Observation/gx-genomic-variant-somatic-kdm5d)
* result[+] = Reference(Observation/gx-genomic-variant-somatic-mtap)
* result[+] = Reference(Observation/gx-genomic-variant-somatic-mycn)
* result[+] = Reference(Observation/gx-genomic-diagnostic-implication-pof1b)
* result[+] = Reference(Observation/gx-genomic-variant-fusion-met-alk)
* result[+] = Reference(Observation/gx-genomic-variant-pertinent-negative-nras-kit-braf)
* result[+] = Reference(Observation/gx-genomic-therapeutic-implication-alectinib)
* result[+] = Reference(Observation/gx-genomic-therapeutic-implication-brigatinib)
* result[+] = Reference(Observation/gx-genomic-therapeutic-implication-ceritinib)
* result[+] = Reference(Observation/gx-genomic-therapeutic-implication-crizotinib)
* result[+] = Reference(Observation/gx-genomic-therapeutic-implication-lorlatinib)

// * presentedForm.id = "ig-loader-XT_d6eeedd1-92d3-45b9-bf33-6401e804425f.pdf"  // removed the PDF attachment at the request of the lab vendor


// ************* Genomic Bundle *******************

Instance: gx-genomic-bundle-incredible-hulk
InstanceOf: Bundle
Description: "Extended genomics example conformant with an mCODE Bundle."
* type = #collection "Collection"
* entry[0].resource = gx-cancer-patient-incredible-hulk
* entry[=].fullUrl = "http://example.org/fhir/Patient/gx-cancer-patient-incredible-hulk"
* entry[+].resource = gx-genomics-report-incredible-hulk
* entry[=].fullUrl = "http://example.org/fhir/DiagnosticReport/gx-genomics-report-incredible-hulk"
* entry[+].resource = gx-practitioner-test-pathologist
* entry[=].fullUrl = "http://example.org/fhir/Practitioner/gx-practitioner-test-pathologist"
* entry[+].resource = gx-genomic-specimen-tumornormal-tumor
* entry[=].fullUrl = "http://example.org/fhir/Specimen/gx-genomic-specimen-tumornormal-tumor"
* entry[+].resource = gx-genomic-specimen-tumornormal-normal
* entry[=].fullUrl = "http://example.org/fhir/Specimen/gx-genomic-specimen-tumornormal-normal"
* entry[+].resource = gx-genomic-variant-somatic-bap1-indel
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-variant-somatic-bap1-indel"
* entry[+].resource = gx-genomic-variant-somatic-cdkn2a-cnv
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-variant-somatic-cdkn2a-cnv"
* entry[+].resource = gx-genomic-variant-somatic-cdkn2b-cnv
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-variant-somatic-cdkn2b-cnv"
* entry[+].resource = gx-genomic-variant-somatic-kdm5d
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-variant-somatic-kdm5d"
* entry[+].resource = gx-genomic-variant-somatic-mtap
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-variant-somatic-mtap"
* entry[+].resource = gx-genomic-variant-somatic-mycn
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-variant-somatic-mycn"
* entry[+].resource = gx-genomic-diagnostic-implication-pof1b
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-diagnostic-implication-pof1b"
* entry[+].resource = gx-genomic-variant-fusion-met-alk
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-variant-fusion-met-alk"
* entry[+].resource = gx-genomic-variant-pertinent-negative-nras-kit-braf
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-variant-pertinent-negative-nras-kit-braf"
* entry[+].resource = gx-genomic-tmb
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-tmb"
* entry[+].resource = gx-genomic-therapeutic-implication-alectinib
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-therapeutic-implication-alectinib"
* entry[+].resource = gx-genomic-therapeutic-implication-brigatinib
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-therapeutic-implication-brigatinib"
* entry[+].resource = gx-genomic-therapeutic-implication-ceritinib
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-therapeutic-implication-ceritinib"
* entry[+].resource = gx-genomic-therapeutic-implication-crizotinib
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-therapeutic-implication-crizotinib"
* entry[+].resource = gx-genomic-therapeutic-implication-lorlatinib
* entry[=].fullUrl = "http://example.org/fhir/Observation/gx-genomic-therapeutic-implication-lorlatinib"