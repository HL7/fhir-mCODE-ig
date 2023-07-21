CodeSystem: SnomedRequestedCS
Id: snomed-requested-cs
Title: "Requested SNOMED Codes Code System"
Description: "Codes requested from SNOMED by mCODE, to be issued at a later date. Where numeric codes are given, these correspond to the expected SNOMED CT codes. Terms beginning with 'USCRS-' (for United States Content Request Service) represent request identifiers with no SNOMED code yet approved or assigned."
* ^experimental = false
* ^caseSensitive = true
* #1285442003 "Estimated contoured volume of bowel in peritoneal cavity using radiographic imaging (observable entity)" // Space occupied by bowel USCRS-34356
* #1285443008 "Estimated contoured volume of small bowel in peritoneal cavity using imaging (observable entity)"  // Space occupied by small bowel USCRS-34358
* #1284814003 "Lymph node level IIA (qualifier value)"        // requested 2/22/23 USCRS-34777
* #1284815002 "Lymph node level IIB (qualifier value)"        // requested 2/22/23 USCRS-34775
/*
This is a child of 275904003 |History of neoplasm (situation)| which is a parent of SCT#266987004 "History of malignant neoplasm (situation). 
It is the parent of a bunch of codes for "History of Metastatic malignant neoplasm of ______"
SNOMEDCT handles metastatic and malignant in a very particular way.
https://confluence.ihtsdotools.org/display/DOCEG/Neoplasm
*/
* #1287652008 "History of metastatic malignant neoplasm (situation)" // USCRS-34979 Requested June 2023, Issued July 2023.   
