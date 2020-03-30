# mCODE

mCODE™ (short for Minimal Common Oncology Data Elements) is an initiative intended to assemble a core set of structured data elements for oncology electronic health records (EHRs). mCODE is a step towards capturing research-quality data from the treatment of all cancer patients. This would enable the treatment of every cancer patient to contribute to comparative effectiveness analysis (CEA) of cancer treatments by allowing for easier methods of data exchange between health systems. mCODE has been created and is being supported by the American Society of Clinical Oncology (ASCO®)in collaboration with the MITRE Corporation.

# Building mCODE

## Compiling with SUSHI

mCODE is developed in [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/), a domain-specific language (DSL) for defining the content of FHIR Implementation Guides (IG).

After you check out mCODE from Github, install SUSHI (the FSH compiler), [as instructed here](http://build.fhir.org/ig/HL7/fhir-shorthand/sushi.html). 

To compile mCODE, open a command window and navigate to the directory where mCODE has been checked out. Issue the following command:

`$ sushi .

## Running the IG Publisher

Next, change directories to ./build. 

Now run:

Windows:   `$ _genonce`

Mac:   `$ ./_genonce.sh`

This will run the HL7 IG Publisher, which will take several minutes to complete. After the publisher is finished, open the file _/build/output/index.html_ to see the resulting IG.

To get a clean build, you may delete the _./build/input/resources_ and/or the _./build/output_ directories. However, DO NOT delete the entire _./build_ directory!

# Further Customization of the IG

Introduce customizations of the IG into the following files:

* **Menus:** Edit the _/build/input/include/menu.xml_ file
* **List of pages and artifacts to be included in the IG:** Edit _/build/input/ImplementationGuide-fhir.us.mcode.json_ file. See [ImplementationGuide resource](https://www.hl7.org/fhir/implementationguide.html) for details. Note that profiles, value sets and examples are NOT automatically included in the IG; they must be listed in this file. Also note that the IG Publisher will produce an error and exit prematurely if an artifact listed in the IG json file is not found in the _/build/input/resources_ directory.
* **Additional pages, images, other content:** Add files to _/build/input/pagecontent_ directory, and link them to menus or other pages.
* **Version history:** Edit _/build/package-list.json_.

