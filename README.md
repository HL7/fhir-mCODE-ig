# mCODE™: Minimal Common Oncology Data Elements

mCODE provides both a common data language and an open-source, nonproprietary data model for interconnectivity across systems. This repository contains the source code for the mCODE Implementation Guide (IG).

![The mCODE project logo](mcode-logo.png)

For more information, see:

- [mcodeinitiative.org](https://mcodeinitiative.org), the project homepage
- [Published version of the IG](http://hl7.org/fhir/us/mcode/)
- Continuous integration build of this repository: [main branch](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/) or [all branches](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/branches/)
- [The mCODE Knowledge Base](https://confluence.hl7.org/display/COD/Knowledge+Base+-+mCODE)
- If you are new to the FHIR community and ecosystem, [this tutorial explains FHIR, profiling, and implementation guides](https://simplifier.net/guide/profilingacademy/IntroductiontoFHIRandprofiling)

## Contributing

See [`contributing.md`](contributing.md).

## Building the IG

To build the IG locally, run `./_genonce.sh` (macOS/Linux) or `_genonce.bat` (Windows) from the top level folder.

### UML diagrams

To build the UML diagrams (in `input/images-source/`), you will need to be able to run [PlantUML](https://plantuml.com). This has [Graphviz](https://graphviz.org) as a dependency.

On macOS:

1. Install Java if you don't already have it
2. `brew install graphviz`
3. Download `plantuml.jar` from <https://plantuml.com/download>
4. From the `input/images-source/` folder, run `java -jar /path/to/plantuml.jar -tsvg -o ../images/ some_model.puml`

    To convert all UML files at once, run `java -jar /path/to/plantuml.jar -tsvg -o ../images/ *.puml`

On Windows:

1. Install Java if you don't already have it
2. TODO