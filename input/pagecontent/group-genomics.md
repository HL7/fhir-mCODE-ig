mCODE includes genomics-related data elements needed inform cancer assessment and treatment options. The profiles are based on the [HL7 CGWG Clinical Genomics Reporting Implementation Guide](http://hl7.org/fhir/uv/genomics-reporting/index.html). Four profiles relate to the capture of clinical genomics data:

* [CancerGenomicsReport] - contain results of genomic analyses. Genomic reports vary in complexity and content, as simple as the results for a single discrete variant to complex sequences that are found in exome and genome-wide association studies (GWAS).
* [CancerGeneticVariant] - used to record variants that could be found from tests that broadly analyze genetic regions (e.g.: exome tests) and stores results for any variants that could have been found. The region in which the variant was found could be specified in the RegionStudied attribute of the GenomicsReport profile.
* [GenomicRegionStudied] - used to record the portion(s) of the genome that was tested for variants.
* [GeneticSpecimen] - describes a specimen collected for a genomics test.

The identity of non-genomic laboratory tests is typically represented by a [Logical Observation Identifiers and Names (LOINC)](https://loinc.org/) code. However, many genetic tests and panels do not have LOINC codes, although some might have an identifier in the [NCBI Genetic Testing Registry (GTR)](https://www.ncbi.nlm.nih.gov/gtr/), a central location for voluntary submission of genetic test information by providers. While GTR is a viable source for identifying many genetic tests, the user should be aware that the GTR is not single authoritative source since the test data is voluntarily updated. Standardization of codes for genetic tests is essential to facilitate data analysis of genetic tests, and should be a priority for the genomics testing community in the near future. Implementers should also note that, to conform to the requirements of the [US Core Laboratory Result Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html), if a suitable LOINC exists, it must be used. If there is no suitable code in LOINC, then a code from an alternative code system such as GTR can be used.

### Profiles

* [CancerGeneticVariant]
* [GeneticSpecimen]
* [CancerGenomicsReport]
* [GenomicRegionStudied]

### Value Sets

* [ClinvarVS]
* [DNAChangeTypeVS]
* [GeneticSpecimenTypeVS]
* [HGNCVS]
* [HGVSVS]

{% include markdown-link-references.md %}