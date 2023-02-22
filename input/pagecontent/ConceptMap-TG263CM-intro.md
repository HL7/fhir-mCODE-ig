### Structure of this Concept Map
A key mapping used by this IG is that of the TG263 concepts for treatment location to SNOMEDCT codes and qualifiers.
See the brief discussion in [RadiotherapyTreatmentLocationVS].  The mapping was documented by reference to a spreadsheet in the STU2
version of the IG, and this ConceptMap has now been added to better support implementers.

Some of the TG263 terms are pre-coordinated, incorporating laterality and other qualifiers directly in the term.
For the mapping to SNOMED, we have chosen to avoid pre-coordination, and rather use a code + qualifier(s) approach to uniquely map each TG263 concept.
The mapping uses the 'product' field of each mapped element to enumerate the qualifiers needed in combination with the SNOMEDCT code to express the
same treatment location as the TG263 concept.

Despite the authors best efforts, two of the TG263 concepts and two of the qualifiers lack corresponding SNOMEDCT terms.
{% include markdown-link-references.md %}