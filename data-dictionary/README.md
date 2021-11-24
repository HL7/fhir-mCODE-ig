# mCODE Data Dictionary and Diff

The following files are generated via an automated process:

1. `input/images/data-dictionary/mCODEDataDictionary-STU2.xlsx`
    This is a tabular version of the profiles, elements, value sets, and code systems generated from the FHIR resources defined in this IG.

2. `input/images/data-dictionary/mCODEDataDictionary-STU2-vs-STU1.xlsx`
    This is a comparison of two different versions of #1: the first is generated based on the STU1 version of the IG, and the second based on STU2.

A script is used to generate the above files. This script is currently not public, but is in the process of being released as open source software. For more information, please [contact us](https://chat.fhir.org/#narrow/pm-with/322501).

## Command arguments

These command arguments are used to generate the files described above:

1. `--mode ms --settings data-dictionary/settings.yaml . input/images/data-dictionary`

2. `-a "input/images/data-dictionary/stu1_data_dictionary_all_elements.json" -b /input/images/data-dictionary/data_dictionary_all_elements.json -o input/images/data-dictionary/ --settings data-dictionary/diff_settings.yaml`