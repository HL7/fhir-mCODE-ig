# mCODE Data Dictionary and Diff

The following files are generated via an automated tool called `ig-summary`:

1. `input/images/data-dictionary/mCODEDataDictionary-STU3.xlsx`
   This is a tabular version of the STU3 profiles, elements, value sets, and code systems generated from the FHIR resources defined in this IG.

   To generate this, run:

   ```bash
   cd path/to/fhir-mCODE-ig
   ./_genonce.sh # Or run the equivalent _genonce.bat on Windows
   ig-summary create --input . --output input/images/data-dictionary/ --settings data-dictionary/settings.yaml
   ```

   This will generate two files:

   - `input/images/data-dictionary/data_dictionary_hl7.fhir.us.mcode.xlsx`; manually rename this to `mCODEDataDictionary-STU3.xlsx`
   - `input/images/data-dictionary/data_dictionary_hl7.fhir.us.mcode.json`; manually rename this to `mCODEDataDictionary-STU3.json`

   These bash commands will do this:

   ```bash
   mv -f input/images/data-dictionary/data_dictionary_hl7.fhir.us.mcode.xlsx input/images/data-dictionary/mCODEDataDictionary-STU3.xlsx
   mv -f input/images/data-dictionary/data_dictionary_hl7.fhir.us.mcode.json input/images/data-dictionary/mCODEDataDictionary-STU3.json
   ```

2. `input/images/data-dictionary/mCODEDataDictionary-STU3-vs-STU2.1.xlsx`
   This is a comparison of two different versions of #1: the first is generated based on the STU2 version of the IG, and the second based on STU3.

   To generate this, first generate `mCODEDataDictionary-STU3.xlsx`. This will produce `input/images/data-dictionary/`.

   Then, download the STU2 `.json` file from <https://hl7.org/implement/standards/fhir/us/mcode/STU2.1/data-dictionary/data_dictionary.json> and rename it to `stu2.1.json` to avoid confusion.

   ```bash
   ig-summary diff --a ~/Downloads/stu2.1.json --b input/images/data-dictionary/mCODEDataDictionary-STU3.json --settings data-dictionary/diff_settings.yaml --output input/images/data-dictionary/
   ```

We anticipate the `ig-summary` tool will be released under an open source license in 2023. Until then, this tool is currently not public. For more information, please [contact us](https://chat.fhir.org/#narrow/pm-with/322501).
