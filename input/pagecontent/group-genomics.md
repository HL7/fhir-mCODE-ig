### mCODE Use of Genomics Elements

mCODE includes genomics-related data elements needed inform cancer assessment and treatment options. The profiles directly derive from the [HL7 CGWG Clinical Genomics Reporting Implementation Guide](http://hl7.org/fhir/uv/genomics-reporting/index.html) (GRIG) STU2 release. The GRIG provides helpful foundational concepts and guidance for representing different types of genomics reports. mCODE assumes one is familiar with the GRIG content and uses this additional guidance to identify 1) what is clinically actionable and minimal for 

Four profiles relate to the capture of clinical genomics data:

* [GenomicsReport] - Contains results of genomic analyses. Genomic reports vary in complexity and content, as simple as the results for a single discrete variant to complex sequences. This profile inherits from the profile of the same name in GRIG.
* [GenomicVariant] - Used to record variants that could be found from tests that broadly analyze genomic regions (e.g.: exome tests) and stores results for any variants that could have been found. The region in which the variant was found could be specified in the RegionStudied attribute of the GenomicsReport profile. This profile derives from the Variant profile in GRIG.
* [GenomicRegionStudied] - Used to record the portion(s) of the genome that was tested for variants. This profile derives from the RegionStudied profile in GRIG.

Additionally, the additional GRIG profiles are included in the mCODE bundle:

* [Diagnostic Implication](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition-diagnostic-implication.html)
* [Therapeutic Implication](http://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-therapeutic-implication.html)
* [Microsatellite Instability (MSI)](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi)
* [Tumor Mutation Burden (TMB)](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb)

The diagram below illustrates the distinction within an mCODE bundle.

<div style="text-align: center;">
<img src="mcode-cg-overlap.svg" alt="mCODE use of GRIG profiles" />
</div>>

<br/>

### Assumptions and Scope

* mCODE genomics elements are a superset of those that may be available for exchange. There is no assumption that all data elements need to be captured or exchanged.
* Genomics profiles represent results from genomic sequencing, whereas [TumorMarkerTest] (grouped in the [Disease Characterization](group-disease.html)) involve results from gene expression tests (e.g.: HER2 Immunohistochemistry tests) and serum-based measurements which could have an implication on cancer (e.g., PSA).

#### Positioning of mCODE with GenomeX

The GenomeX use case under the CodeX FHIR accelerator has a broader scope that is not limited to oncology-specific genomic tests, and with the primary goal of validating the HL7 GRIG. However, it is widely recognized that the most prevalent and pervasive application for genomics and precision medicine is in the field of oncology. Consequently, there is a need for clarification and additional guidance between the mCODE FHIR IG.


### mCODE and the minimal and actionable set of data elements

A minimal set of genomics elements may vary based on the type of test. For example:

* a Tumor-Normal test will contain references to two specimens (one from a tumor sample, the other from either a normal tissue or blood) as opposed to a cancer gene panel limited to one tumor specimen. 
* A gene panel analyzing somatic variants for one patient will differ from a family trio sequencing test which could analyze genomic sequences for both parents and the child for rare diseases.

**NOTE:** The initial mCODE scope will be with somatic variants in gene panels with the intention that these elements will also apply as foundational for non-oncology use cases.

Despite the variations, there is a general list of elements that are in common. The Electronic Medical Records and Genomics (eMERGE) program provides a good illustration of the sections found in [a generalized pharmacogenomics report](http://hl7.org/fhir/uv/genomics-reporting/pharmacogenomics.html#how-to-use-the-report-mapping-images) which includes pharmacogenomics. This conceptual representation and which serves as a good start for mCODE scoping but needs further guidance on how to specifically represent certain representation patterns. These include the following patterns which will be covered in the sections to follow:

* Genomics test coding
* Representing variants
* Fusion events
* Search parameters for mCODE genomic data

### Genomics Test Coding

The identity of non-genomic laboratory tests is typically represented by a [Logical Observation Identifiers and Names (LOINC)](https://loinc.org/) code. However, many genomic tests and panels do not have LOINC codes, although some might have an identifier in the [NCBI Genomic Testing Registry (GTR)](https://www.ncbi.nlm.nih.gov/gtr/), a central location for voluntary submission of genomic test information by providers. While GTR is a viable source for identifying many genomic tests, the user should be aware that the GTR is not single authoritative source since the test data is voluntarily updated. Standardization of codes for genomic tests is essential to facilitate data analysis of genomic tests, and should be a priority for the genomics testing community in the near future. Implementers should also note that, to conform to the requirements of the [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html), if a suitable LOINC exists, it must be used. If there is no suitable code in LOINC, then a code from an alternative code system such as GTR can be used.

### Representing Variants

A full representation of an HGVS variant requires a transcript identifier or reference sequence id that includes the version number followed by a nomenclature which further characterizes the nature of the variant.

**NOTE:** The FHIR IG publisher uses the [Mutalyzer 3](https://mutalyzer.nl/) Application Programming Interface (API) for validating an HGVS-notated variant included in the FHIR examples. It is not intended to validate all possible variants as there is no single HGVS validation tool that comprehensively covers the most up-to-date recognized variants for a given reference sequence. Reference the [HL7 GRIG section on Variant Reporting](http://hl7.org/fhir/uv/genomics-reporting/sequencing.html) for further guidance on defining variants.

#### Pertinent Negatives

Some genomics reports are gene panels which include a list of genes that do not have relevant variants, otherwise known as pertinent negatives.

Represent pertinent negatives by creating one instance of GenomicVariant with the following representation:
* assert that the variant is absent by assigning the value of `"LA9634-2"` to Observation valueCodeableConcept.
* include the list of all genes that are "negative" for the value in Observation component:gene-studied. Including multiple pertinent genes in the gene-studied component does not clearly link the variant representation with its associated gene and would require a full HGVS representation to derive it. However, this method does allow for grouping all genes whose variants found are not clinically actionable.

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

### Search parameters for genomic variants

Genomic operations are out of scope for mCODE STU3.


{% include markdown-link-references.md %}
