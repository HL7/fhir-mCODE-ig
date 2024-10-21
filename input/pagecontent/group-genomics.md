### mCODE Use of Genomics Elements

mCODE includes genomics-related data elements needed inform cancer assessment and treatment options. The profiles directly derive from the [HL7 CGWG Clinical Genomics Reporting Implementation Guide](https://hl7.org/fhir/uv/genomics-reporting/STU2/index.html) (GRIG) STU2 release. The GRIG provides helpful foundational concepts and guidance for representing different types of genomics reports. mCODE assumes one is familiar with the GRIG content and uses this additional guidance to identify what is clinically actionable and minimal for the purpose of diagnosis, treatment, and monitoring of cancer patients.

Three profiles relate to the capture of clinical genomics data:

* [GenomicsReport] - Contains results of genomic analyses. Genomic reports vary in complexity and content, as simple as the results for a single discrete variant to complex sequences. This profile inherits from the profile of the same name in GRIG.
* [GenomicVariant] - Used to record variants that could be found from tests that broadly analyze genomic regions (e.g.: exome tests) and stores results for any variants that could have been found. The region in which the variant was found could be specified in the RegionStudied attribute of the GenomicsReport profile. This profile derives from the Variant profile in GRIG.
* [GenomicRegionStudied] - Used to record the portion(s) of the genome that was tested for variants. This profile derives from the RegionStudied profile in GRIG.

Additionally, the additional GRIG profiles are optionally included in the mCODE bundle:

* [Diagnostic Implication](https://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-diagnostic-implication.html)
* [Therapeutic Implication](https://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-therapeutic-implication.html)
* [Tumor Mutation Burden (TMB)](https://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-tmb.html)
* [Microsatellite Instability (MSI)](https://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-msi.html)

The diagram below illustrates the distinction within an mCODE bundle.

<div style="text-align: center;">
<img src="mcode-cg-overlap.svg" alt="mCODE use of GRIG profiles" />
</div>>

<br/>

The mCODE example [`Bundle-gx-genomic-bundle-adam-anyperson`](Bundle-gx-genomic-bundle-adam-anyperson.html) demonstrates a bundle containing resources conforming with the GRIG genomics report.

### Assumptions and Scope

* mCODE genomics elements are a superset of those that may be available for exchange. There is no assumption that all data elements need to be captured or exchanged.
* Genomics profiles represent results from genomic sequencing, whereas [TumorMarkerTest] (grouped in the [Disease Characterization](group-disease.html)) involve results from gene expression tests (e.g.: HER2 Immunohistochemistry tests) and serum-based measurements which could have an implication on cancer (e.g., PSA).


#### Positioning of mCODE with GenomeX

The GenomeX use case under the CodeX FHIR accelerator has a broader scope that is not limited to oncology-specific genomic tests, and with the primary goal of validating the HL7 GRIG. However, it is widely recognized that the most prevalent and pervasive application for genomics and precision medicine is in the field of oncology. Consequently, there is a need for clarification and additional guidance between the mCODE FHIR IG.


### mCODE and the minimal and actionable set of data elements

A minimal set of genomics elements may vary based on the type of test. For example:

* A tumor-normal test will contain references to two specimens (one from a tumor specimen and a non-tumor specimen) as opposed to a cancer gene panel limited to one tumor specimen. 
* A gene panel analyzing somatic variants for one patient will differ from a family trio sequencing test which could analyze genomic sequences for both parents and the child for rare diseases.

**NOTE:** The initial mCODE scope will be with somatic variants in gene panels with the intention that these elements will also apply as foundational for non-oncology use cases.

Despite the variations, there is a general list of elements that are in common. The Electronic Medical Records and Genomics (eMERGE) program provides a good illustration of the sections found in [a generalized pharmacogenomics report](https://hl7.org/fhir/uv/genomics-reporting/STU2/pharmacogenomics.html#how-to-use-the-report-mapping-images) which includes pharmacogenomics. This conceptual representation and which serves as a good start for mCODE scoping but needs further guidance on how to specifically represent certain representation patterns. These include the following patterns which will be covered in the sections to follow:

* Genomics test coding
* Representing variants
* Fusion events
* Search parameters for mCODE genomic data

### Genomics Test Coding

There is currently no general consensus on standardizing the ordering of next-generation sequencing (NGS) genomic tests. Regardless, mCODE provides some high level information on test codes that may be helpful for identifying tests.

The identity of non-genomic laboratory tests is typically represented by a [Logical Observation Identifiers and Names (LOINC)](https://loinc.org/) code. However, many genomic tests and panels do not have LOINC codes, although some might have an identifier in the [NCBI Genomic Testing Registry (GTR)](https://www.ncbi.nlm.nih.gov/gtr/), a central location for voluntary submission of genomic test information by providers. While GTR is a viable source for identifying many genomic tests, the user should be aware that the GTR is not single authoritative source since the test data is voluntarily updated. Standardization of codes for genomic tests is essential to facilitate data analysis of genomic tests, and should be a priority for the genomics testing community in the near future. Implementers should also note that, to conform to the requirements of the [US Core Laboratory Result Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html), if a suitable LOINC exists, it must be used. If there is no suitable code in LOINC, then a code from an alternative code system such as GTR can be used.

### Representing Variants

#### Variant Nomenclature

The [HL7 GRIG guidance on defining variants](https://hl7.org/fhir/uv/genomics-reporting/STU2/sequencing.html) states support for two reporting patterns for specifying variants:
1. by [HGVS](http://varnomen.hgvs.org/) or [ISCN](https://www.karger.com/Book/Home/279152) nomenclature
2. by providing multiple component details in the style of VCF columns

Although mCODE should support both formats, it is preferable to use HGVS nomenclature for coding and protein variants where possible.

A full representation of an HGVS variant SHOULD include the following: 
* a transcript identifier or reference sequence id that includes the version number followed by a nomenclature which further characterizes the nature of the variant.
* the reference sequence assembly version populated in the Variant observation component [reference-sequence-assembly](https://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-finding-definitions.html#Observation.component:reference-sequence-assembly).

**NOTE**: The FHIR IG publisher validates HGVS-notated variants included in the FHIR examples, however it is not intended to validate all possible variants as there is no single HGVS validation tool that comprehensively covers the most up-to-date recognized variants for a given reference sequence. 

Every FHIR genomics resource referenced by a genomics report (e.g.: Variant, Diagnostic Implication, Therapeutic Implication), should include a date or datetime, even if there was only one date included in the genomic report for all results. Doing so simplifies the ability for the implementer to directly track changes in cases of a variant reclassification or reinterpretation. 

#### Representing Clinical Significance

A genomics report will oftentimes include the classification, or clinical significance, of a variant using a five-tier terminology from the American College of Medical Genetics and Genomics (ACMG) and the Association for Molecular Pathology (AMP) [2015 Guidelines for the interpretation of sequence variants](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4544753/), and consisting of the following categories: pathogenic, likely pathogenic, uncertain significance, likely benign, and benign. In alignment with the GRIG, this is represented in the [DiagnosticImplication](https://hl7.org/fhir/uv/genomics-reporting/StructureDefinition-diagnostic-implication.html) profile as an Observation component, clinical-significance.

#### Pertinent Negatives

Some genomics reports are gene panels that include a list of genes that do not have relevant variants, otherwise known as pertinent negatives.

Represent pertinent negatives by creating one instance of GenomicVariant with the following representation:
* assert that the variant is absent by assigning the value of `LA9634-2 "Absent"` to Observation valueCodeableConcept.
* include the list of all genes that are "negative" for the value in Observation component:gene-studied. 

#### Fusion Events

A fusion gene is made by joining parts of two different genes. Fusion genes, and the fusion proteins that come from them, arise when part of the DNA from one chromosome moves to another chromosome. Fusion proteins produced by this change may lead to the development of some types of cancer (source: [NCI Cancer Dictionary](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/fusion-gene)).

mCODE represents a fusion gene as an instance of **GenomicVariant** with the following changes:

* The _**molecularConsequence**_ component is fixed to the SequenceOntology code _SO:001565_ (gene_fusion)
* Two _**geneStudied**_ components are included, one for each gene involved in the fusion event.

The diagram below shows an example representation for the gene fusion BCR_ABL1:

<div style="text-align: center;">
<img src="mCODE-gene-fusion.svg" alt="Example mCODE Gene Fusion" />
</div>>

The mCODE example [`genomic-variant-fusion`](Observation-genomic-variant-fusion.html) demonstrates the gene fusion representation.

**NOTE:** A fusion event that is related to two variants will be expressed as two separate variant instances. Both variants from the same fusion event can be included as DiagnosticReport.result slices under [GenomicsReport].

### Search Parameters for Genomic Variants

The [GRIG provides extensive guidance and examples](https://hl7.org/fhir/uv/genomics-reporting/usecases.html#appendix-d-query-guidance) for querying FHIR genomic reporting data. Some of the ones relevant to mCODE are listed below for convenience.

#### Search for Variants with a Given Gene

The following example FHIR query will retrieve all of a patient's variants reported for a given gene. Note that the gene is expressed as an HGNC identifier (e.g.: HGNC:11389 is the STK11 gene).

`GET <fhir endpoint>/Observation?subject=cancer-patient-john-anyperson&code=69548-6&component-code=48018-6&component-value-concept=HGNC:11389`

#### Get References to Sequences with Mutations Interpreted as Pathogenic

`GET <fhir endpoint>/Observation?subject:Patient=123&code-value-concept=http://loinc.org|53037-8$http://loinc.org|LA6668-3&_include:iterate=Observation:derived-from`


{% include markdown-link-references.md %}
