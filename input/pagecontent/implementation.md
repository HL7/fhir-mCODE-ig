
This page contains miscellaneous information on modeling and FHIR implementation. The content is primarily directed at informaticists and implementers of mCODE. The following topics are addressed:

* [Understanding this Guide](#understanding-this-guide)
* [Terminology Preferences](#terminology-preferences)
* [Body Locations](#body-locations)
* [Vital Sign Profiles](#vital-sign-profiles)
* [Laboratory Profiles](#laboratory-profiles)
* [Representing Provenance](#representing-provenance)

### Understanding this Guide

The mCODE Implementation Guide was developed using the standard HL7 FHIR publishing tools. The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html).

Each profile is shown in multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but it could be a US Core profile or another profile in this guide.

### Terminology Preferences

This implementation guide supplies terminology bindings drawn primarily from LOINC for "observables", and SNOMED-CT for values, results and findings. When appropriate codes are not available in the preferred vocabulary, alternative vocabularies are used, in the following general order of preference: SNOMED-CT (if the element is an observable), NCI Thesaurus, and local codes.

Value sets from the FHIR specification and US Core were reused to the extent possible. New value sets where created only when no known existing value sets were deemed to be fit for purpose.

mCODE genomics-related elements in the GenomicsReport and GeneticVariant profiles use the same code systems as the [HL7 Clinical Genomics Reporting FHIR IG, STU1 Release](http://hl7.org/fhir/uv/genomics-reporting/codings.html).

### Body Locations

Body locations in FHIR are typically represented using a single code. However, a single code is often insufficient to describe where a tumor is located, where a surgery is targeted, or where a radiation treatment is focused. In breast cancer, the location of a tumor could be described in terms of the radial position (clock face direction) and distance relative to the left or right nipple.

FHIR recommends using a BodyStructure resource whenever a single code is insufficient to describe a body location. This is a heavyweight approach that puts the body location of a Procedure or Condition in entirely different resource. Moreover, body location is a terminology concept whereas BodyStructure represents an instance of a body part on a specific patient. Using BodyStructure is analogous to replacing geographic coordinates with the actual building found on the site.

mCODE has adopted an approach that allows the user to add additional code or codes to further define the body site, without the need to create an independent resource. This takes the form of a [LocationQualifier extension](StructureDefinition-mcode-location-qualifier.html). It appears wherever a body site code is found.

