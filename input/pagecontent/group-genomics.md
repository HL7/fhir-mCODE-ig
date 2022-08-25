### mCODE Use of Genomics Elements

mCODE includes genomics-related data elements needed inform cancer assessment and treatment options. The profiles are based on the [HL7 CGWG Clinical Genomics Reporting Implementation Guide](http://hl7.org/fhir/uv/genomics-reporting/index.html) (CGRIG). Four profiles relate to the capture of clinical genomics data:

* [GenomicsReport] - Contains results of genomic analyses. Genomic reports vary in complexity and content, as simple as the results for a single discrete variant to complex sequences. This profile inherits from the profile of the same name in CGRIG.
* [GenomicVariant] - Used to record variants that could be found from tests that broadly analyze genomic regions (e.g.: exome tests) and stores results for any variants that could have been found. The region in which the variant was found could be specified in the RegionStudied attribute of the GenomicsReport profile. This profile inherits from the Variant profile in CGRIG.
* [GenomicRegionStudied] - Used to record the portion(s) of the genome that was tested for variants. This profile inherits from the RegionStudied profile in CGRIG.
* [GenomicSpecimen] - Describes a specimen collected for a genomics test. This profile is unique to mCODE.

### Assumptions and Scope

* mCODE genomics elements are a superset of those that may be available for exchange. There is no assumption that all data elements need to be captured or exchanged.
* Genomics profiles represent results from genomic sequencing, whereas [TumorMarkerTest] (grouped in the [Disease Characterization](group-disease.html)) involve results from gene expression tests (e.g.: HER2 Immunohistochemistry tests) and serum-based measurements which could have an implication on cancer (e.g., PSA).

### Genomics Test Coding

The identity of non-genomic laboratory tests is typically represented by a [Logical Observation Identifiers and Names (LOINC)](https://loinc.org/) code. However, many genomic tests and panels do not have LOINC codes, although some might have an identifier in the [NCBI Genomic Testing Registry (GTR)](https://www.ncbi.nlm.nih.gov/gtr/), a central location for voluntary submission of genomic test information by providers. While GTR is a viable source for identifying many genomic tests, the user should be aware that the GTR is not single authoritative source since the test data is voluntarily updated. Standardization of codes for genomic tests is essential to facilitate data analysis of genomic tests, and should be a priority for the genomics testing community in the near future. Implementers should also note that, to conform to the requirements of the [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html), if a suitable LOINC exists, it must be used. If there is no suitable code in LOINC, then a code from an alternative code system such as GTR can be used.

### Representing Fusion Genes

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

### Profiles

* [GenomicRegionStudied]
* [GenomicSpecimen]
* [GenomicsReport]
* [GenomicVariant]

### Value Sets

* [GenomicSpecimenTypeVS]
* [TumorMarkerTestVS]

{% include markdown-link-references.md %}
