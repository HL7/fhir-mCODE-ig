# mCODE™: Minimal Common Oncology Data Elements

mCODE™ (short for Minimal Common Oncology Data Elements) is an initiative intended to assemble a core set of structured data elements for oncology electronic health records (EHRs). mCODE is a step towards capturing research-quality data from the treatment of all cancer patients. This would enable the treatment of every cancer patient to contribute to comparative effectiveness analysis (CEA) of cancer treatments by allowing for easier methods of data exchange between health systems. mCODE has been created and is being supported by the [American Society of Clinical Oncology (ASCO®)](https://www.asco.org) in collaboration with [The MITRE Corporation](https://health.mitre.org).

![The mCODE project logo](mcode-logo.png)

This repository contains the **mCODE Implementation Guide (IG)**. An IG is "a set of rules about how FHIR resources are used (or should be used) to solve a particular problem, with associated documentation to support and clarify the usage".[^1]

[^1]: <https://www.hl7.org/fhir/implementationguide.html>

For more information, see:

- [mcodeinitiative.org](https://mcodeinitiative.org), the project homepage
- [Published version of the IG](http://hl7.org/fhir/us/mcode/)
- Continuous integration build of this repository: [main branch](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/) or [all branches](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/branches/)
- [The mCODE Knowledge Base](https://confluence.hl7.org/display/COD/Knowledge+Base+-+mCODE)
- If you are new to the FHIR community and ecosystem, [this tutorial explains FHIR, profiling, and implementation guides](https://simplifier.net/guide/profilingacademy/IntroductiontoFHIRandprofiling)

## Contributing

See [`contributing.md`](contributing.md).

## Building the mCODE Implementation Guide

"Building" the IG means generating a web-based, human-readable representation of the information defined in the IG. This is done via the [FHIR Implementaiton Guide Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation), a Java program provided by the FHIR team for generating IGs in a standardized structure. You can see the output of building the current contents of this repository [here](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/).

If you would like to generate this locally, you can run the following command:

- macOS: `./_genonce.sh`
- Windows: `_genonce`

Do this in a command prompt window ([macOS]()


### Compiling with SUSHI

mCODE is developed in [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/), a domain-specific language (DSL) for defining the content of FHIR Implementation Guides (IG).

After you check out mCODE from Github, install SUSHI (the FSH compiler), [as instructed here](http://build.fhir.org/ig/HL7/fhir-shorthand/sushi.html). 

To compile mCODE, open a command prompt window and navigate to the directory where this repository has been cloned. Then issue the following command:

    sushi .

### Running the IG Publisher

Now run the :



This will run the HL7 IG Publisher, which will take several minutes to complete. After the publisher is finished, open the file _/build/output/index.html_ to see the resulting IG.

To get a clean build, you may delete the _./build/input/resources_ and/or the _./build/output_ directories. However, DO NOT delete the entire _./build_ directory!


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
# mCODE



# Further Customization of the IG

Introduce customizations of the IG into the following files:

* **Menus:** Edit the _/build/input/include/menu.xml_ file
* **List of pages and artifacts to be included in the IG:** Edit _/build/input/ImplementationGuide-fhir.us.mcode.json_ file. See [ImplementationGuide resource](https://www.hl7.org/fhir/implementationguide.html) for details. Note that profiles, value sets and examples are NOT automatically included in the IG; they must be listed in this file. Also note that the IG Publisher will produce an error and exit prematurely if an artifact listed in the IG json file is not found in the _/build/input/resources_ directory.
* **Additional pages, images, other content:** Add files to _/build/input/pagecontent_ directory, and link them to menus or other pages.
* **Version history:** Edit _/build/package-list.json_.

