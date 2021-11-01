{% raw %}
<blockquote class="stu-note">
<p>
This page has been enhanced to include extended guidance on the use of mCODE genomics elements in support of real-world scenarios.
</p>
</blockquote>
{% endraw %}

### Assumptions and Scope

* mCODE genomics elements should be seen as data that could be available for exchange. It is not assuming all of the data elements need to be captured and exchanged.
* The Tumor Marker elements differ from the genomics elements in its inclusion of
  * serum-based measurements which could have an implication on cancer but are not molecular markers (e.g.: PSA).
  * gene expression tests (e.g.: HER2 Immunohistochemistry tests)

There are however tumor marker tests that are molecular marker equivalent tests that could also be included in a sequencing test.

### mCODE Use of Genomics Elements

mCODE includes genomics-related data elements needed inform cancer assessment and treatment options. The profiles are based on the [HL7 CGWG Clinical Genomics Reporting Implementation Guide](http://hl7.org/fhir/uv/genomics-reporting/index.html). Four profiles relate to the capture of clinical genomics data:

* [GenomicsReport] - contain results of genomic analyses. Genomic reports vary in complexity and content, as simple as the results for a single discrete variant to complex sequences.
* [CancerGenomicVariant] - used to record variants that could be found from tests that broadly analyze genomic regions (e.g.: exome tests) and stores results for any variants that could have been found. The region in which the variant was found could be specified in the RegionStudied attribute of the GenomicsReport profile.
* [GenomicRegionStudied] - used to record the portion(s) of the genome that was tested for variants.
* [GenomicSpecimen] - describes a specimen collected for a genomics test.

### Genomics Test Representation

The identity of non-genomic laboratory tests is typically represented by a [Logical Observation Identifiers and Names (LOINC)](https://loinc.org/) code. However, many genomic tests and panels do not have LOINC codes, although some might have an identifier in the [NCBI Genomic Testing Registry (GTR)](https://www.ncbi.nlm.nih.gov/gtr/), a central location for voluntary submission of genomic test information by providers. While GTR is a viable source for identifying many genomic tests, the user should be aware that the GTR is not single authoritative source since the test data is voluntarily updated. Standardization of codes for genomic tests is essential to facilitate data analysis of genomic tests, and should be a priority for the genomics testing community in the near future. Implementers should also note that, to conform to the requirements of the [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html), if a suitable LOINC exists, it must be used. If there is no suitable code in LOINC, then a code from an alternative code system such as GTR can be used.

### Representing Fusion Genes

A gene made by joining parts of two different genes. Fusion genes, and the fusion proteins that come from them, may be made in the laboratory, or made naturally in the body when part of the DNA from one chromosome moves to another chromosome. Fusion proteins produced by this change may lead to the development of some types of cancer (source: [NCI Cancer Dictionary](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/fusion-gene)).

mCODE represents a fusion gene as an instance of **CancerGenomicVariant** with the following changes:

* The _**molecularConsequence**_ component is fixed to the SequenceOntology code _SO:001565_ (gene_fusion)
* Two _**geneStudied**_ components are included, one for each gene involved in the fusion event.

The diagram below shows an example representation for the gene fusion BCR_ABL1:

<div style="text-align: center;">
<img src="mCODE-gene-fusion.svg" alt="Example mCODE Gene Fusion" />
</div>>

The mCODE example [`cancer-genomic-variant-fusion`](Observation-cancer-genomic-variant-fusion.html) demonstrates the gene fusion representation.

**NOTE:** A fusion event that is related to two variants will be expressed as two separate variant instances. Both variants from the same fusion event can be included as DiagnosticReport.result slices under [GenomicsReport].

### Profiles

* [GenomicRegionStudied]
* [GenomicSpecimen]
* [GenomicsReport]
* [GenomicVariant]

### Value Sets

* [ACMG_Clinical significance of genetic variation] (external)
* [ClinvarVS]
* [DNAChangeTypeVS]
* [Genomic coordinate system] (external)
* [GenomicMolecularConsequenceVS]
* [GenomicSpecimenTypeVS]
* [HGNCVS]
* [HGVSVS]
* [MG_2_Genetic variant source] (external)
* [MG_4_Amino acid change type] (external)
* [MG_5_Genetic variant allelic state] (external)
* [Structural variant analysis method] (external)
* [TumorMarkerTestVS]
* [Variant Assess] (external)


### Code Systems

* [LoincRequestedCS]

{% include markdown-link-references.md %}
