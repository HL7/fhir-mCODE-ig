```
Instance: mcode-primary-cancer-disorder-vs
InstanceOf: ValueSet
Usage: #inline
* url = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-cancer-disorder-vs"
* version = "2.0.0"
* name = "PrimaryCancerDisorderVS"
* title = "Primary Cancer Disorder Value Set"
* status = #active
* date = "2022-03-30T14:27:52-04:00"
* publisher = "HL7 International Clinical Interoperability Council"
* contact.name = "HL7 International Clinical Interoperability Council"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cic"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ciclist@lists.HL7.org"
* description = "Types of primary malignant neoplastic disease, coded in SNOMED CT or ICD-10-CM."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* expansion.extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-toocostly"
* expansion.extension.valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-malignant-neoplasm-disorder-vs"
* expansion.identifier = "urn:uuid:c0d55a57-0add-4595-961d-e5de7e196643"
* expansion.timestamp = "2022-03-30T14:30:52-04:00"
* expansion.total = 2326
* expansion.parameter[0].name = "excludeNested"
* expansion.parameter[=].valueBoolean = false
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-malignant-neoplasm-disorder-vs|2.0.0"
* expansion.parameter[+].name = "limitedExpansion"
* expansion.parameter[=].valueBoolean = true
* expansion.parameter[+].name = "excludeNested"
* expansion.parameter[=].valueBoolean = true
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20210901"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/sid/icd-10-cm|2021"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-hypereosinophilic-syndrome-disorder-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-carcinoma-in-situ-disorder-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-melanoma-in-situ-disorder-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-benign-uncertain-neoplasm-brain-cns-disorder-vs|2.0.0"
* expansion.parameter[+].name = "version"
* expansion.parameter[=].valueUri = "http://hl7.org/fhir/us/mcode/ValueSet/mcode-cytologic-evidence-malignancy-vs|2.0.0"
* expansion.contains[0].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#363346000 "Malignant tumor"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#13048006 "Orbital lymphoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#20224008 "Delta heavy chain disease"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#25050002 "Alpha heavy chain disease, respiratory form"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#35868009 "Carcinoid syndrome"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#36222008 "Carcinoid heart disease"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#58961005 "Lethal midline granuloma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#60620005 "Epsilon heavy chain disease"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#61493004 "Mu heavy chain disease"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#62497000 "Stewart-Treves syndrome"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#68979007 "Heavy chain disease"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#69408002 "Gorlin syndrome"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#82546001 "Reactive immunoproliferative disease"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#91854005 "Acute leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#91855006 "Acute leukemia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#91856007 "Acute lymphoid leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#91857003 "Acute lymphoid leukemia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#91858008 "Acute monocytic leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#91860005 "Acute myeloid leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#91861009 "Acute myeloid leukemia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92511007 "Burkitt's tumor of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92512000 "Burkitt's tumor of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92513005 "Burkitt's tumor of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92516002 "Burkitt's tumor of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92811003 "Chronic leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92812005 "Chronic leukemia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92813000 "Chronic lymphoid leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92814006 "Chronic lymphoid leukemia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92817004 "Chronic myeloid leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92818009 "Chronic myeloid leukemia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93133006 "Letterer-Siwe disease of intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93134000 "Letterer-Siwe disease of intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93135004 "Letterer-Siwe disease of intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93136003 "Letterer-Siwe disease of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93137007 "Letterer-Siwe disease of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93138002 "Letterer-Siwe disease of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93139005 "Letterer-Siwe disease of lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93140007 "Letterer-Siwe disease of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93141006 "Letterer-Siwe disease of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93142004 "Leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93143009 "Leukemia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93151007 "Leukemic reticuloendotheliosis of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93152000 "Leukemic reticuloendotheliosis of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93169003 "Lymphoid leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93182006 "Malignant histiocytosis of intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93183001 "Malignant histiocytosis of intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93184007 "Malignant histiocytosis of intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93185008 "Malignant histiocytosis of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93186009 "Malignant histiocytosis of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93187000 "Malignant histiocytosis of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93188005 "Malignant histiocytosis of lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93189002 "Malignant histiocytosis of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93190006 "Malignant histiocytosis of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93191005 "Malignant lymphoma of intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93192003 "Malignant lymphoma of intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93193008 "Malignant lymphoma of intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93194002 "Malignant lymphoma of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93195001 "Malignant lymphoma of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93196000 "Malignant lymphoma of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93197009 "Malignant lymphoma of lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93198004 "Malignant lymphoma of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93199007 "Malignant lymphoma of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93200005 "Malignant mast cell tumor of intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93201009 "Malignant mast cell tumor of intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93202002 "Malignant mast cell tumor of intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93203007 "Malignant mast cell tumor of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93204001 "Malignant mast cell tumor of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93205000 "Malignant mast cell tumor of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93209006 "Malignant melanoma of perianal skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93210001 "Malignant melanoma of skin of abdomen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93211002 "Malignant melanoma of skin of ankle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93213004 "Malignant melanoma of skin of axilla"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93214005 "Malignant melanoma of skin of back"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93215006 "Malignant melanoma of skin of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93216007 "Malignant melanoma of skin of buttock"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93217003 "Malignant melanoma of skin of cheek"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93218008 "Malignant melanoma of skin of chest"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93219000 "Malignant melanoma of skin of chin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93220006 "Malignant melanoma of skin of ear"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93221005 "Malignant melanoma of skin of elbow"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93222003 "Malignant melanoma of skin of external auditory canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93223008 "Malignant melanoma of skin of eyebrow"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93224002 "Malignant melanoma of skin of eyelid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93225001 "Malignant melanoma of skin of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93226000 "Malignant melanoma of skin of finger"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93227009 "Malignant melanoma of skin of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93228004 "Malignant melanoma of skin of forearm"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93229007 "Malignant melanoma of skin of forehead"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93230002 "Malignant melanoma of skin of groin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93451002 "Di Guglielmo's disease"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93487009 "Hodgkin's disease, lymphocytic depletion of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93488004 "Hodgkin's disease, lymphocytic depletion of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93489007 "Hodgkin's disease, lymphocytic depletion of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93492006 "Hodgkin's disease, lymphocytic depletion of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93493001 "Hodgkin's disease, lymphocytic-histiocytic predominance of intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93494007 "Hodgkin's disease, lymphocytic-histiocytic predominance of intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93495008 "Hodgkin's disease, lymphocytic-histiocytic predominance of intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93496009 "Hodgkin's disease, lymphocytic-histiocytic predominance of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93497000 "Hodgkin's disease, lymphocytic-histiocytic predominance of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93498005 "Hodgkin's disease, lymphocytic-histiocytic predominance of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93500006 "Hodgkin's disease, lymphocytic-histiocytic predominance of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93501005 "Hodgkin's disease, lymphocytic-histiocytic predominance of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93505001 "Hodgkin's disease, mixed cellularity of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93506000 "Hodgkin's disease, mixed cellularity of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93507009 "Hodgkin's disease, mixed cellularity of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93509007 "Hodgkin's disease, mixed cellularity of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93510002 "Hodgkin's disease, mixed cellularity of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93514006 "Hodgkin's disease, nodular sclerosis of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93515007 "Hodgkin's disease, nodular sclerosis of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93516008 "Hodgkin's disease, nodular sclerosis of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93518009 "Hodgkin's disease, nodular sclerosis of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93519001 "Hodgkin's disease, nodular sclerosis of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93520007 "Hodgkin's disease of intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93521006 "Hodgkin's disease of intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93522004 "Hodgkin's disease of intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93523009 "Hodgkin's disease of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93524003 "Hodgkin's disease of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93525002 "Hodgkin's disease of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93526001 "Hodgkin's disease of lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93527005 "Hodgkin's disease of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93528000 "Hodgkin's disease of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93530003 "Hodgkin's granuloma of intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93531004 "Hodgkin's granuloma of intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93532006 "Hodgkin's granuloma of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93533001 "Hodgkin's granuloma of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93534007 "Hodgkin's granuloma of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93536009 "Hodgkin's granuloma of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93537000 "Hodgkin's granuloma of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93541001 "Hodgkin's paragranuloma of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93542008 "Hodgkin's paragranuloma of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93543003 "Hodgkin's paragranuloma of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93546006 "Hodgkin's paragranuloma of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93547002 "Hodgkin's sarcoma of intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93548007 "Hodgkin's sarcoma of intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93549004 "Hodgkin's sarcoma of intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93550004 "Hodgkin's sarcoma of lymph nodes of axilla AND/OR upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93551000 "Hodgkin's sarcoma of lymph nodes of head, face AND/OR neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93552007 "Hodgkin's sarcoma of lymph nodes of inguinal region AND/OR lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93554008 "Hodgkin's sarcoma of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93555009 "Hodgkin's sarcoma of extranodal AND/OR solid organ site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93636004 "Malignant melanoma of skin of hand"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93637008 "Malignant melanoma of skin of hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93638003 "Malignant melanoma of skin of knee"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93640008 "Malignant melanoma of skin of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93641007 "Malignant melanoma of skin of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93642000 "Malignant melanoma of skin of neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93643005 "Malignant melanoma of skin of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93644004 "Malignant melanoma of skin of perineum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93645003 "Malignant melanoma of skin of popliteal area"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93646002 "Malignant melanoma of skin of scalp"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93647006 "Malignant melanoma of skin of shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93648001 "Malignant melanoma of skin of temporal region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93649009 "Malignant melanoma of skin of thigh"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93650009 "Malignant melanoma of skin of toe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93651008 "Malignant melanoma of skin of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93652001 "Malignant melanoma of skin of umbilicus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93653006 "Malignant melanoma of skin of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93654000 "Malignant melanoma of skin of wrist"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93655004 "Malignant melanoma of skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93657007 "Primary malignant neoplasm of abducens nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93658002 "Primary malignant neoplasm of accessory nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93659005 "Primary malignant neoplasm of accessory sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93660000 "Primary malignant neoplasm of acoustic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93661001 "Primary malignant neoplasm of acromion"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93662008 "Primary malignant neoplasm of adenoid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93663003 "Primary malignant neoplasm of adnexa of skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93665005 "Primary malignant neoplasm of adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93667002 "Primary malignant neoplasm of alveolar ridge mucosa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93669004 "Primary malignant neoplasm of anal canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93670003 "Primary malignant neoplasm of anterior aspect of epiglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93671004 "Primary malignant neoplasm of anterior mediastinum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93672006 "Primary malignant neoplasm of anterior portion of floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93674007 "Primary malignant neoplasm of anterior wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93675008 "Primary malignant neoplasm of anterior wall of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93676009 "Primary malignant neoplasm of anus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93677000 "Primary malignant neoplasm of aortic body"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93679002 "Primary malignant neoplasm of appendix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93680004 "Primary malignant neoplasm of areola of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93681000 "Primary malignant neoplasm of areola of male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93682007 "Primary malignant neoplasm of upper arm"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93683002 "Primary malignant neoplasm of ascending colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93684008 "Primary malignant neoplasm of axilla"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93686005 "Primary malignant neoplasm of back"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93687001 "Primary malignant neoplasm of base of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93689003 "Primary malignant neoplasm of bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93690007 "Primary malignant neoplasm of blood vessel of abdomen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93692004 "Primary malignant neoplasm of blood vessel of axilla"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93693009 "Primary malignant neoplasm of blood vessel of buttock"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93694003 "Primary malignant neoplasm of blood vessel of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93695002 "Primary malignant neoplasm of blood vessel of finger"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93696001 "Primary malignant neoplasm of blood vessel of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93697005 "Primary malignant neoplasm of blood vessel of forearm"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93698000 "Primary malignant neoplasm of blood vessel of hand"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93699008 "Primary malignant neoplasm of blood vessel of head"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93700009 "Primary malignant neoplasm of blood vessel of hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93701008 "Primary malignant neoplasm of blood vessel of inguinal region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93703006 "Primary malignant neoplasm of blood vessel of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93704000 "Primary malignant neoplasm of blood vessel of neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93705004 "Primary malignant neoplasm of blood vessel of pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93706003 "Primary malignant neoplasm of blood vessel of perineum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93707007 "Primary malignant neoplasm of blood vessel of popliteal space"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93708002 "Primary malignant neoplasm of blood vessel of shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93709005 "Primary malignant neoplasm of blood vessel of thigh"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93710000 "Primary malignant neoplasm of blood vessel of thorax"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93711001 "Primary malignant neoplasm of blood vessel of toe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93712008 "Primary malignant neoplasm of blood vessel of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93713003 "Primary malignant neoplasm of blood vessel of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93714009 "Primary malignant neoplasm of blood vessel"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93715005 "Primary malignant neoplasm of body of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93716006 "Primary malignant neoplasm of body of penis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93717002 "Primary malignant neoplasm of body of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93720005 "Primary malignant neoplasm of bone marrow"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93721009 "Primary malignant neoplasm of bone of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93722002 "Primary malignant neoplasm of bone of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93723007 "Primary malignant neoplasm of bone of skull"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93724001 "Primary malignant neoplasm of bone of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93725000 "Primary malignant neoplasm of bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93726004 "Primary malignant neoplasm of brain stem"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93727008 "Primary malignant neoplasm of brain"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93728003 "Primary malignant neoplasm of broad ligament"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93729006 "Primary malignant neoplasm of bronchus of left lower lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93730001 "Primary malignant neoplasm of bronchus of left upper lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93731002 "Primary malignant neoplasm of bronchus of right lower lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93732009 "Primary malignant neoplasm of bronchus of right middle lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93733004 "Primary malignant neoplasm of bronchus of right upper lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93734005 "Primary malignant neoplasm of bronchus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93737003 "Primary malignant neoplasm of calcaneus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93738008 "Primary malignant neoplasm of cardia of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93739000 "Primary malignant neoplasm of carina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93740003 "Primary malignant neoplasm of carotid body"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93741004 "Primary malignant neoplasm of carpal bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93742006 "Primary malignant neoplasm of cartilage of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93743001 "Primary malignant neoplasm of cauda equina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93744007 "Primary malignant neoplasm of central nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93745008 "Primary malignant neoplasm of central portion of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93746009 "Primary malignant neoplasm of cerebellum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93747000 "Primary malignant neoplasm of cerebral meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93748005 "Primary malignant neoplasm of cerebral ventricle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93749002 "Primary malignant neoplasm of cerebrum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93751003 "Primary malignant neoplasm of cervical vertebral column"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93753000 "Primary malignant neoplasm of cheek"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93754006 "Primary malignant neoplasm of chest wall"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93755007 "Primary malignant neoplasm of choroid, primary"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93756008 "Primary malignant neoplasm of ciliary body (primary)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93757004 "Primary malignant neoplasm of clavicle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93759001 "Primary malignant neoplasm of coccygeal body"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93760006 "Primary malignant neoplasm of coccyx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93761005 "Primary malignant neoplasm of colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93763008 "Primary malignant neoplasm of common bile duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93764002 "Primary malignant neoplasm of conjunctiva of eye (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93766000 "Primary malignant neoplasm of cornea of eye (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93767009 "Primary malignant neoplasm of cranial nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93768004 "Primary malignant neoplasm of craniopharyngeal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93769007 "Primary malignant neoplasm of cuboid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93770008 "Primary malignant neoplasm of cystic duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93771007 "Primary malignant neoplasm of descending colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93772000 "Primary malignant neoplasm of diaphragm"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93773005 "Primary malignant neoplasm of dorsal surface of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93775003 "Primary malignant neoplasm of duodenum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93776002 "Primary malignant neoplasm of ectopic female breast tissue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93777006 "Primary malignant neoplasm of ectopic male breast tissue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93778001 "Primary malignant neoplasm of endocardium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93779009 "Primary malignant neoplasm of endocervix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93781006 "Primary malignant neoplasm of endometrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93782004 "Primary malignant neoplasm of epicardium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93783009 "Primary malignant neoplasm of epididymis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93784003 "Primary malignant neoplasm of epiglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93786001 "Primary malignant neoplasm of ethmoid bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93787005 "Primary malignant neoplasm of ethmoidal sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93788000 "Primary malignant neoplasm of eustachian tube"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93789008 "Primary malignant neoplasm of exocervix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93792007 "Primary malignant neoplasm of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93793002 "Primary malignant neoplasm of facial nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93796005 "Primary malignant neoplasm of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93797001 "Primary malignant neoplasm of female genital organ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93798006 "Primary malignant neoplasm of femur"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93799003 "Primary malignant neoplasm of fibula"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93800004 "Primary malignant neoplasm of first cuneiform bone of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93801000 "Primary malignant neoplasm of flank"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93802007 "Primary malignant neoplasm of floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93803002 "Primary malignant neoplasm of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93804008 "Primary malignant neoplasm of forearm"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93806005 "Primary malignant neoplasm of frontal bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93807001 "Primary malignant neoplasm of frontal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93808006 "Primary malignant neoplasm of frontal sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93809003 "Primary malignant neoplasm of fundus of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93812000 "Primary malignant neoplasm of gingival mucosa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93814004 "Primary malignant neoplasm of glomus jugulare"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93815003 "Primary malignant neoplasm of glossopharyngeal nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93816002 "Primary malignant neoplasm of glottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93817006 "Primary malignant neoplasm of great vessels"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93818001 "Primary malignant neoplasm of greater curvature of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93820003 "Primary malignant neoplasm of hamate bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93821004 "Primary malignant neoplasm of hand"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93824007 "Primary malignant neoplasm of head"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93825008 "Primary malignant neoplasm of heart"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93826009 "Primary malignant neoplasm of hepatic flexure of colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93827000 "Primary malignant neoplasm of hilus of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93828005 "Primary malignant neoplasm of hypoglossal nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93829002 "Primary malignant neoplasm of hypopharyngeal aspect of aryepiglottic fold"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93830007 "Primary malignant neoplasm of hypopharyngeal aspect of interarytenoid fold"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93831006 "Primary malignant neoplasm of hypopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93832004 "Primary malignant neoplasm of ileum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93833009 "Primary malignant neoplasm of ilium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93834003 "Primary malignant neoplasm of inguinal region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93835002 "Primary malignant neoplasm of inner aspect of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93836001 "Primary malignant neoplasm of inner aspect of lower lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93837005 "Primary malignant neoplasm of inner aspect of upper lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93839008 "Primary malignant neoplasm of intra-abdominal organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93841009 "Primary malignant neoplasm of intrathoracic organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93842002 "Primary malignant neoplasm of ischium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93843007 "Primary malignant neoplasm of islets of Langerhans"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93844001 "Primary malignant neoplasm of isthmus of uterus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93845000 "Primary malignant neoplasm of jaw"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93846004 "Primary malignant neoplasm of jejunum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93848003 "Primary malignant neoplasm of junctional zone of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93849006 "Primary malignant neoplasm of kidney"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93850006 "Primary malignant neoplasm of labia majora"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93851005 "Primary malignant neoplasm of labia minora"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93854002 "Primary malignant neoplasm of large intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93857009 "Primary malignant neoplasm of laryngeal commissure"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93858004 "Primary malignant neoplasm of laryngeal surface of epiglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93860002 "Primary malignant neoplasm of lateral portion of floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93861003 "Primary malignant neoplasm of lateral wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93862005 "Primary malignant neoplasm of lateral wall of oropharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93863000 "Primary malignant neoplasm of lateral wall of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93864006 "Primary malignant neoplasm of left lower lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93865007 "Primary malignant neoplasm of left upper lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93867004 "Primary malignant neoplasm of lesser curvature of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93868009 "Primary malignant neoplasm of lingual tonsil"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93870000 "Malignant neoplasm of liver"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93871001 "Primary malignant neoplasm of long bone of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93872008 "Primary malignant neoplasm of long bone of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93874009 "Primary malignant neoplasm of lower inner quadrant of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93875005 "Primary malignant neoplasm of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93876006 "Primary malignant neoplasm of lower outer quadrant of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93878007 "Primary malignant neoplasm of lumbar vertebral column"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93879004 "Primary malignant neoplasm of lunate bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93880001 "Primary malignant neoplasm of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93882009 "Primary malignant neoplasm of main bronchus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93883004 "Primary malignant neoplasm of major salivary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93884005 "Primary malignant neoplasm of male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93885006 "Primary malignant neoplasm of male genital organ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93886007 "Primary malignant neoplasm of mandible"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93887003 "Primary malignant neoplasm of mastoid air cells"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93888008 "Primary malignant neoplasm of maxilla"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93889000 "Primary malignant neoplasm of maxillary sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93890009 "Primary malignant neoplasm of Meckel's diverticulum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93891008 "Primary malignant neoplasm of mediastinum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93892001 "Primary malignant neoplasm of metacarpal bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93893006 "Primary malignant neoplasm of metatarsal bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93894000 "Primary malignant neoplasm of middle ear"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93898002 "Primary malignant neoplasm of multiple endocrine glands"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93899005 "Primary malignant neoplasm of muscle of abdomen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93900000 "Primary malignant neoplasm of muscle of buttock"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93901001 "Primary malignant neoplasm of muscle of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93902008 "Primary malignant neoplasm of muscle of head"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93903003 "Primary malignant neoplasm of muscle of hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93904009 "Primary malignant neoplasm of muscle of inguinal region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93905005 "Primary malignant neoplasm of muscle of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93906006 "Primary malignant neoplasm of muscle of neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93907002 "Primary malignant neoplasm of muscle of pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93908007 "Primary malignant neoplasm of muscle of perineum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93909004 "Primary malignant neoplasm of muscle of shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93910009 "Primary malignant neoplasm of muscle of thorax"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93911008 "Primary malignant neoplasm of muscle of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93912001 "Primary malignant neoplasm of muscle of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93913006 "Primary malignant neoplasm of muscle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93914000 "Primary malignant neoplasm of myocardium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93915004 "Primary malignant neoplasm of myometrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93916003 "Primary malignant neoplasm of nasal bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93917007 "Primary malignant neoplasm of nasal cavity"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93918002 "Primary malignant neoplasm of nasal concha"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93920004 "Primary malignant neoplasm of navicular bone of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93922007 "Primary malignant neoplasm of neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93923002 "Primary malignant neoplasm of nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93924008 "Primary malignant neoplasm of nipple of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93925009 "Primary malignant neoplasm of nipple of male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93926005 "Primary malignant neoplasm of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93927001 "Primary malignant neoplasm of occipital bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93928006 "Primary malignant neoplasm of occipital lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93929003 "Primary malignant neoplasm of oculomotor nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93930008 "Primary malignant neoplasm of olfactory nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93931007 "Primary malignant neoplasm of optic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93932000 "Primary malignant neoplasm of orbit"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93933005 "Primary malignant neoplasm of oropharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93934004 "Primary malignant neoplasm of ovary"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93936002 "Primary malignant neoplasm of palatine bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93939009 "Primary malignant neoplasm of pancreatic duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93940006 "Primary malignant neoplasm of para-aortic body"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93941005 "Primary malignant neoplasm of paraganglion"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93942003 "Primary malignant neoplasm of parametrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93943008 "Primary malignant neoplasm of parathyroid gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93944002 "Primary malignant neoplasm of paraurethral glands"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93945001 "Primary malignant neoplasm of parietal bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93946000 "Primary malignant neoplasm of parietal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93947009 "Primary malignant neoplasm of parietal peritoneum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93948004 "Primary malignant neoplasm of parietal pleura"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93950007 "Primary malignant neoplasm of patella"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93951006 "Primary malignant neoplasm of pelvic bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93952004 "Primary malignant neoplasm of pelvic peritoneum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93953009 "Primary malignant neoplasm of pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93955002 "Primary malignant neoplasm of periadrenal tissue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93956001 "Primary malignant neoplasm of perianal skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93957005 "Primary malignant neoplasm of pericardium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93958000 "Primary malignant neoplasm of perirenal tissue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93959008 "Primary malignant neoplasm of phalanx of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93960003 "Primary malignant neoplasm of phalanx of hand"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93961004 "Primary malignant neoplasm of pharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93962006 "Primary malignant neoplasm of pineal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93963001 "Primary malignant neoplasm of pisiform bone of hand"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93964007 "Primary malignant neoplasm of pituitary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93966009 "Primary malignant neoplasm of pleura"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93967000 "Primary malignant neoplasm of postcricoid region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93968005 "Primary malignant neoplasm of posterior hypopharyngeal wall"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93969002 "Primary malignant neoplasm of posterior mediastinum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93970001 "Primary malignant neoplasm of posterior wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93971002 "Primary malignant neoplasm of posterior wall of oropharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93972009 "Primary malignant neoplasm of posterior wall of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93973004 "Primary malignant neoplasm of presacral region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93974005 "Primary malignant neoplasm of prostate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93975006 "Primary malignant neoplasm of pubis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93976007 "Primary malignant neoplasm of pyloric antrum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93977003 "Primary malignant neoplasm of pylorus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93978008 "Primary malignant neoplasm of pyriform sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93979000 "Primary malignant neoplasm of radius"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93980002 "Primary malignant neoplasm of rectosigmoid junction"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93981003 "Primary malignant neoplasm of rectouterine pouch"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93982005 "Primary malignant neoplasm of rectovaginal septum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93983000 "Primary malignant neoplasm of rectovesical septum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93984006 "Primary malignant neoplasm of rectum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93985007 "Primary malignant neoplasm of renal pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93986008 "Primary malignant neoplasm of respiratory tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93987004 "Primary malignant neoplasm of retina of eye (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93989001 "Primary malignant neoplasm of retromolar area"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93990005 "Primary malignant neoplasm of rib"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93991009 "Primary malignant neoplasm of right lower lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93992002 "Primary malignant neoplasm of right middle lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93993007 "Primary malignant neoplasm of right upper lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93994001 "Primary malignant neoplasm of round ligament of uterus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93995000 "Primary malignant neoplasm of sacrococcygeal region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93996004 "Primary malignant neoplasm of sacrum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93997008 "Primary malignant neoplasm of scapula"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93998003 "Primary malignant neoplasm of sclera of eye (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94000008 "Primary malignant neoplasm of sebaceous gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94001007 "Primary malignant neoplasm of second cuneiform bone of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94002000 "Primary malignant neoplasm of septum of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94003005 "Primary malignant neoplasm of short bone of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94004004 "Primary malignant neoplasm of short bone of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94005003 "Primary malignant neoplasm of shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94006002 "Primary malignant neoplasm of sigmoid colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94007006 "Primary malignant neoplasm of skin of abdomen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94008001 "Primary malignant neoplasm of skin of ankle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94010004 "Primary malignant neoplasm of skin of axilla"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94011000 "Primary malignant neoplasm of skin of back"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94012007 "Primary malignant neoplasm of skin of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94013002 "Primary malignant neoplasm of skin of buttock"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94014008 "Primary malignant neoplasm of skin of cheek"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94015009 "Primary malignant neoplasm of skin of chest"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94016005 "Primary malignant neoplasm of skin of chin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94017001 "Primary malignant neoplasm of skin of ear"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94018006 "Primary malignant neoplasm of skin of elbow"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94019003 "Primary malignant neoplasm of skin of external auditory canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94020009 "Primary malignant neoplasm of skin of eyebrow"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94021008 "Primary malignant neoplasm of skin of eyelid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94022001 "Primary malignant neoplasm of skin of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94023006 "Primary malignant neoplasm of skin of finger"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94024000 "Primary malignant neoplasm of skin of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94025004 "Primary malignant neoplasm of skin of forearm"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94026003 "Primary malignant neoplasm of skin of forehead"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94027007 "Primary malignant neoplasm of skin of groin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94028002 "Primary malignant neoplasm of skin of hand"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94029005 "Primary malignant neoplasm of skin of hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94030000 "Primary malignant neoplasm of skin of knee"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94032008 "Primary malignant neoplasm of skin of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94033003 "Primary malignant neoplasm of skin of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94034009 "Primary malignant neoplasm of skin of neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94035005 "Primary malignant neoplasm of skin of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94036006 "Primary malignant neoplasm of skin of perineum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94037002 "Primary malignant neoplasm of skin of popliteal area"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94038007 "Primary malignant neoplasm of skin of scalp"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94039004 "Primary malignant neoplasm of skin of shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94040002 "Primary malignant neoplasm of skin of temporal region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94041003 "Primary malignant neoplasm of skin of thigh"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94042005 "Primary malignant neoplasm of skin of toe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94043000 "Primary malignant neoplasm of skin of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94044006 "Primary malignant neoplasm of skin of umbilicus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94045007 "Primary malignant neoplasm of skin of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94046008 "Primary malignant neoplasm of skin of wrist"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94047004 "Primary malignant neoplasm of skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94048009 "Primary malignant neoplasm of small intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94049001 "Primary malignant neoplasm of soft palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94050001 "Primary malignant neoplasm of soft tissues of abdomen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94051002 "Primary malignant neoplasm of soft tissues of axilla"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94052009 "Primary malignant neoplasm of soft tissues of buttock"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94053004 "Primary malignant neoplasm of soft tissues of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94054005 "Primary malignant neoplasm of soft tissues of head"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94055006 "Primary malignant neoplasm of soft tissues of hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94056007 "Primary malignant neoplasm of soft tissues of inguinal region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94057003 "Primary malignant neoplasm of soft tissues of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94058008 "Primary malignant neoplasm of soft tissues of neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94059000 "Primary malignant neoplasm of soft tissues of pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94060005 "Primary malignant neoplasm of soft tissues of perineum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94061009 "Primary malignant neoplasm of soft tissues of shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94062002 "Primary malignant neoplasm of soft tissues of thorax"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94063007 "Primary malignant neoplasm of soft tissues of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94066004 "Primary malignant neoplasm of sphenoid bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94067008 "Primary malignant neoplasm of sphenoidal sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94068003 "Primary malignant neoplasm of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94069006 "Primary malignant neoplasm of spinal meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94071006 "Primary malignant neoplasm of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94072004 "Primary malignant neoplasm of splenic flexure of colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94073009 "Primary malignant neoplasm of sternum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94075002 "Primary malignant neoplasm of subglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94076001 "Primary malignant neoplasm of sublingual gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94077005 "Primary malignant neoplasm of submaxillary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94078000 "Primary malignant neoplasm of superior wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94079008 "Primary malignant neoplasm of supraclavicular region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94080006 "Primary malignant neoplasm of supraglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94081005 "Primary malignant neoplasm of sweat gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94082003 "Primary malignant neoplasm of tail of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94083008 "Primary malignant neoplasm of talus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94084002 "Primary malignant neoplasm of tarsal bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94085001 "Primary malignant neoplasm of temporal bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94086000 "Primary malignant neoplasm of temporal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94087009 "Primary malignant neoplasm of testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94089007 "Primary malignant neoplasm of the mesocolon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94090003 "Primary malignant neoplasm of omentum (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94092006 "Primary malignant neoplasm of retroperitoneum (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94093001 "Primary malignant neoplasm of thigh"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94094007 "Primary malignant neoplasm of third cuneiform bone of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94096009 "Primary malignant neoplasm of thymus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94097000 "Primary malignant neoplasm of thyroglossal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94098005 "Primary malignant neoplasm of thyroid gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94099002 "Primary malignant neoplasm of tibia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94101009 "Primary malignant neoplasm of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94102002 "Primary malignant neoplasm of tonsillar fossa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94103007 "Primary malignant neoplasm of tonsillar pillar"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94104001 "Primary malignant neoplasm of trachea"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94105000 "Primary malignant neoplasm of transverse colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94107008 "Primary malignant neoplasm of trapezoid bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94108003 "Primary malignant neoplasm of trigeminal nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94109006 "Primary malignant neoplasm of trigone of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94110001 "Primary malignant neoplasm of trochlear nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94111002 "Primary malignant neoplasm of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94112009 "Primary malignant neoplasm of ulna"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94113004 "Primary malignant neoplasm of undescended testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94115006 "Primary malignant neoplasm of upper inner quadrant of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94116007 "Primary malignant neoplasm of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94117003 "Primary malignant neoplasm of upper outer quadrant of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94118008 "Primary malignant neoplasm of upper respiratory tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94120006 "Primary malignant neoplasm of urachus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94121005 "Primary malignant neoplasm of ureter"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94122003 "Primary malignant neoplasm of ureteric orifice of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94123008 "Primary malignant neoplasm of urethra"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94124002 "Primary malignant neoplasm of urinary bladder neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94125001 "Primary malignant neoplasm of urinary system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94126000 "Primary malignant neoplasm of uterine adnexa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94128004 "Primary malignant neoplasm of uveal tract of eye (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94129007 "Primary malignant neoplasm of uvula"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94131003 "Primary malignant neoplasm of vagus nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94132005 "Primary malignant neoplasm of vallecula"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94133000 "Primary malignant neoplasm of vas deferens"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94134006 "Primary malignant neoplasm of ventral surface of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94135007 "Primary malignant neoplasm of vermilion border of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94138009 "Primary malignant neoplasm of vestibule of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94139001 "Primary malignant neoplasm of vestibule of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94140004 "Primary malignant neoplasm of visceral pleura"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94142007 "Primary malignant neoplasm of vomer"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94143002 "Primary malignant neoplasm of vulva"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94144008 "Primary malignant neoplasm of Waldeyer's ring"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94145009 "Primary malignant neoplasm of zygomatic bone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94148006 "Megakaryocytic leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C00.0 "Malignant neoplasm of external upper lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C00.1 "Malignant neoplasm of external lower lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C00.2 "Malignant neoplasm of external lip, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C00.3 "Malignant neoplasm of upper lip, inner aspect"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C00.4 "Malignant neoplasm of lower lip, inner aspect"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C00.5 "Malignant neoplasm of lip, unspecified, inner aspect"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C00.6 "Malignant neoplasm of commissure of lip, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C00.8 "Malignant neoplasm of overlapping sites of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C00.9 "Malignant neoplasm of lip, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C01 "MALIGNANT NEOPLASM OF BASE OF TONGUE"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C02.0 "Malignant neoplasm of dorsal surface of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C02.1 "Malignant neoplasm of border of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C02.2 "Malignant neoplasm of ventral surface of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C02.3 "Malignant neoplasm of anterior two-thirds of tongue, part unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C02.4 "Malignant neoplasm of lingual tonsil"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C02.8 "Malignant neoplasm of overlapping sites of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C02.9 "Malignant neoplasm of tongue, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C03.0 "Malignant neoplasm of upper gum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C03.1 "Malignant neoplasm of lower gum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C03.9 "Malignant neoplasm of gum, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C04.0 "Malignant neoplasm of anterior floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C04.1 "Malignant neoplasm of lateral floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C04.8 "Malignant neoplasm of overlapping sites of floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C04.9 "Malignant neoplasm of floor of mouth, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C05.0 "Malignant neoplasm of hard palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C05.1 "Malignant neoplasm of soft palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C05.2 "Malignant neoplasm of uvula"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C05.8 "Malignant neoplasm of overlapping sites of palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C05.9 "Malignant neoplasm of palate, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C06.0 "Malignant neoplasm of cheek mucosa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C06.1 "Malignant neoplasm of vestibule of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C06.2 "Malignant neoplasm of retromolar area"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C06.80 "Malignant neoplasm of overlapping sites of unspecified parts of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C06.89 "Malignant neoplasm of overlapping sites of other parts of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C06.9 "Malignant neoplasm of mouth, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C07 "MALIGNANT NEOPLASM OF PAROTID GLAND"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C08.0 "Malignant neoplasm of submandibular gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C08.1 "Malignant neoplasm of sublingual gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C08.9 "Malignant neoplasm of major salivary gland, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C09.0 "Malignant neoplasm of tonsillar fossa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C09.1 "Malignant neoplasm of tonsillar pillar (anterior) (posterior)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C09.8 "Malignant neoplasm of overlapping sites of tonsil"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C09.9 "Malignant neoplasm of tonsil, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C10.0 "Malignant neoplasm of vallecula"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C10.1 "Malignant neoplasm of anterior surface of epiglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C10.2 "Malignant neoplasm of lateral wall of oropharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C10.3 "Malignant neoplasm of posterior wall of oropharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C10.4 "Malignant neoplasm of branchial cleft"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C10.8 "Malignant neoplasm of overlapping sites of oropharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C10.9 "Malignant neoplasm of oropharynx, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C11.0 "Malignant neoplasm of superior wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C11.1 "Malignant neoplasm of posterior wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C11.2 "Malignant neoplasm of lateral wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C11.3 "Malignant neoplasm of anterior wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C11.8 "Malignant neoplasm of overlapping sites of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C11.9 "Malignant neoplasm of nasopharynx, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C12 "MALIGNANT NEOPLASM OF PYRIFORM SINUS"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C13.0 "Malignant neoplasm of postcricoid region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C13.1 "Malignant neoplasm aryepiglottic fold, hypopharyngeal aspect"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C13.2 "Malignant neoplasm of posterior wall of hypopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C13.8 "Malignant neoplasm of overlapping sites of hypopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C13.9 "Malignant neoplasm of hypopharynx, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C14.0 "Malignant neoplasm of pharynx, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C14.2 "Malignant neoplasm of Waldeyer's ring"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C14.8 "Malignant neoplasm of overlapping sites of lip, oral cavity and pharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C15.3 "Malignant neoplasm of upper third of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C15.4 "Malignant neoplasm of middle third of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C15.5 "Malignant neoplasm of lower third of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C15.8 "Malignant neoplasm of overlapping sites esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C15.9 "Malignant neoplasm of esophagus, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C16.0 "Malignant neoplasm of cardia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C16.1 "Malignant neoplasm of fundus of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C16.2 "Malignant neoplasm of body of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C16.3 "Malignant neoplasm of pyloric antrum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C16.4 "Malignant neoplasm of pylorus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C16.5 "Malignant neoplasm of lesser curvature of stomach, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C16.6 "Malignant neoplasm of greater curvature of stomach, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C16.8 "Malignant neoplasm of overlapping sites of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C16.9 "Malignant neoplasm of stomach, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C17.0 "Malignant neoplasm of duodenum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C17.1 "Malignant neoplasm of jejunum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C17.2 "Malignant neoplasm of ileum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C17.3 "Meckel's diverticulum, malignant"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C17.8 "Malignant neoplasm of overlapping sites of small intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C17.9 "Malignant neoplasm of small intestine, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.0 "Malignant neoplasm of cecum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.1 "Malignant neoplasm of appendix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.2 "Malignant neoplasm of ascending colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.3 "Malignant neoplasm of hepatic flexure"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.4 "Malignant neoplasm of transverse colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.5 "Malignant neoplasm of splenic flexure"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.6 "Malignant neoplasm of descending colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.7 "Malignant neoplasm of sigmoid colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.8 "Malignant neoplasm of overlapping sites of colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C18.9 "Malignant neoplasm of colon, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C19 "MALIGNANT NEOPLASM OF RECTOSIGMOID JUNCTION"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C20 "MALIGNANT NEOPLASM OF RECTUM"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C21.0 "Malignant neoplasm of anus, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C21.1 "Malignant neoplasm of anal canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C21.2 "Malignant neoplasm of cloacogenic zone"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C21.8 "Malignant neoplasm of overlapping sites of rectum, anus and anal canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C22.0 "Liver cell carcinoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C22.1 "Intrahepatic bile duct carcinoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C22.2 "Hepatoblastoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C22.3 "Angiosarcoma of liver"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C22.4 "Other sarcomas of liver"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C22.7 "Other specified carcinomas of liver"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C22.8 "Malignant neoplasm of liver, primary, unspecified as to type"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C22.9 "Malignant neoplasm of liver, not specified as primary or secondary"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C23 "MALIGNANT NEOPLASM OF GALLBLADDER"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C24.0 "Malignant neoplasm of extrahepatic bile duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C24.1 "Malignant neoplasm of Ampulla of Vater"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C24.8 "Malignant neoplasm of overlapping sites of biliary tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C24.9 "Malignant neoplasm of biliary tract, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C25.0 "Malignant neoplasm of head of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C25.1 "Malignant neoplasm of body of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C25.2 "Malignant neoplasm of tail of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C25.3 "Malignant neoplasm of pancreatic duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C25.4 "Malignant neoplasm of endocrine pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C25.7 "Malignant neoplasm of other parts of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C25.8 "Malignant neoplasm of overlapping sites of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C25.9 "Malignant neoplasm of pancreas, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C26.0 "Malignant neoplasm of intestinal tract, part unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C26.1 "Malignant neoplasm of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C26.9 "Malignant neoplasm of ill-defined sites within the digestive system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C30.0 "Malignant neoplasm of nasal cavity"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C30.1 "Malignant neoplasm of middle ear"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C31.0 "Malignant neoplasm of maxillary sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C31.1 "Malignant neoplasm of ethmoidal sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C31.2 "Malignant neoplasm of frontal sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C31.3 "Malignant neoplasm of sphenoid sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C31.8 "Malignant neoplasm of overlapping sites of accessory sinuses"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C31.9 "Malignant neoplasm of accessory sinus, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C32.0 "Malignant neoplasm of glottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C32.1 "Malignant neoplasm of supraglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C32.2 "Malignant neoplasm of subglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C32.3 "Malignant neoplasm of laryngeal cartilage"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C32.8 "Malignant neoplasm of overlapping sites of larynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C32.9 "Malignant neoplasm of larynx, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C33 "MALIGNANT NEOPLASM OF TRACHEA"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.00 "Malignant neoplasm of unspecified main bronchus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.01 "Malignant neoplasm of right main bronchus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.02 "Malignant neoplasm of left main bronchus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.10 "Malignant neoplasm of upper lobe, unspecified bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.11 "Malignant neoplasm of upper lobe, right bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.12 "Malignant neoplasm of upper lobe, left bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.2 "Malignant neoplasm of middle lobe, bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.30 "Malignant neoplasm of lower lobe, unspecified bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.31 "Malignant neoplasm of lower lobe, right bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.32 "Malignant neoplasm of lower lobe, left bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.80 "Malignant neoplasm of overlapping sites of unspecified bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.81 "Malignant neoplasm of overlapping sites of right bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.82 "Malignant neoplasm of overlapping sites of left bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.90 "Malignant neoplasm of unspecified part of unspecified bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.91 "Malignant neoplasm of unspecified part of right bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C34.92 "Malignant neoplasm of unspecified part of left bronchus or lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C37 "MALIGNANT NEOPLASM OF THYMUS"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C38.0 "Malignant neoplasm of heart"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C38.1 "Malignant neoplasm of anterior mediastinum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C38.2 "Malignant neoplasm of posterior mediastinum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C38.3 "Malignant neoplasm of mediastinum, part unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C38.4 "Malignant neoplasm of pleura"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C38.8 "Malignant neoplasm of overlapping sites of heart, mediastinum and pleura"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C39.0 "Malignant neoplasm of upper respiratory tract, part unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C39.9 "Malignant neoplasm of lower respiratory tract, part unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.00 "Malignant neoplasm of scapula and long bones of unspecified upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.01 "Malignant neoplasm of scapula and long bones of right upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.02 "Malignant neoplasm of scapula and long bones of left upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.10 "Malignant neoplasm of short bones of unspecified upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.11 "Malignant neoplasm of short bones of right upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.12 "Malignant neoplasm of short bones of left upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.20 "Malignant neoplasm of long bones of unspecified lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.21 "Malignant neoplasm of long bones of right lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.22 "Malignant neoplasm of long bones of left lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.30 "Malignant neoplasm of short bones of unspecified lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.31 "Malignant neoplasm of short bones of right lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.32 "Malignant neoplasm of short bones of left lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.80 "Malignant neoplasm of overlapping sites of bone and articular cartilage of unspecified limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.81 "Malignant neoplasm of overlapping sites of bone and articular cartilage of right limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.82 "Malignant neoplasm of overlapping sites of bone and articular cartilage of left limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.90 "Malignant neoplasm of unspecified bones and articular cartilage of unspecified limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.91 "Malignant neoplasm of unspecified bones and articular cartilage of right limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C40.92 "Malignant neoplasm of unspecified bones and articular cartilage of left limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C41.0 "Malignant neoplasm of bones of skull and face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C41.1 "Malignant neoplasm of mandible"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C41.2 "Malignant neoplasm of vertebral column"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C41.3 "Malignant neoplasm of ribs, sternum and clavicle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C41.4 "Malignant neoplasm of pelvic bones, sacrum and coccyx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C41.9 "Malignant neoplasm of unspecified bones and articular cartilage of limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.0 "Malignant melanoma of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.10 "Malignant melanoma of unspecified eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.111 "Malignant melanoma of right upper eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.112 "Malignant melanoma of right lower eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.121 "Malignant melanoma of left upper eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.122 "Malignant melanoma of left lower eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.20 "Malignant melanoma of unspecified ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.21 "Malignant melanoma of right ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.22 "Malignant melanoma of left ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.30 "Malignant melanoma of unspecified part of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.31 "Malignant melanoma of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.39 "Malignant melanoma of other parts of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.4 "Malignant melanoma of scalp and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.51 "Malignant melanoma of anal skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.52 "Malignant melanoma of skin of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.59 "Malignant melanoma of other part of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.60 "Malignant melanoma of unspecified upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.61 "Malignant melanoma of right upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.62 "Malignant melanoma of left upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.70 "Malignant melanoma of unspecified lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.71 "Malignant melanoma of right lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.72 "Malignant melanoma of left lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.8 "Malignant melanoma of overlapping sites of skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C43.9 "Malignant melanoma of skin, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C44.131 "Sebaceous cell carcinoma of skin of unspecified eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C44.1321 "Sebaceous cell carcinoma of skin of right upper eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C44.1322 "Sebaceous cell carcinoma of skin of right lower eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C44.1391 "Sebaceous cell carcinoma of skin of left upper eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C44.1392 "Sebaceous cell carcinoma of skin of left lower eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C44.90 "Unspecified malignant neoplasm of skin, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C44.99 "Other specified malignant neoplasm of skin, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C45.0 "Mesothelioma of pleura"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C45.1 "Mesothelioma of peritoneum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C45.2 "Mesothelioma of pericardium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C45.7 "Mesothelioma of other sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C45.9 "Mesothelioma, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.0 "Kaposi's sarcoma of skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.1 "Kaposi's sarcoma of soft tissue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.2 "Kaposi's sarcoma of palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.3 "Kaposi's sarcoma of lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.4 "Kaposi’s sarcoma of gastrointestinal sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.50 "Kaposi's sarcoma of unspecified lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.51 "Kaposi's sarcoma of right lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.52 "Kaposi's sarcoma of left lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.7 "Kaposi's sarcoma of other sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C46.9 "Kaposi's sarcoma, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.0 "Malignant neoplasm of peripheral nerves of head, face and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.1 "Malignant neoplasm of peripheral nerves of upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.10 "Malignant neoplasm of peripheral nerves of unspecified upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.11 "Malignant neoplasm of peripheral nerves of right upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.12 "Malignant neoplasm of peripheral nerves of left upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.20 "Malignant neoplasm of peripheral nerves of unspecified lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.21 "Malignant neoplasm of peripheral nerves of right lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.22 "Malignant neoplasm of peripheral nerves of left lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.3 "Malignant neoplasm of peripheral nerves of thorax"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.4 "Malignant neoplasm of peripheral nerves of abdomen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.5 "Malignant neoplasm of peripheral nerves of pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.6 "Malignant neoplasm of peripheral nerves of trunk, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.8 "Malignant neoplasm of overlapping sites of peripheral nerves and autonomic nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C47.9 "Malignant neoplasm of peripheral nerves and autonomic nervous system, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C48.0 "Malignant neoplasm of retroperitoneum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C48.1 "Malignant neoplasm of specified parts of peritoneum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C48.2 "Malignant neoplasm of peritoneum, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C48.8 "Malignant neoplasm of overlapping sites of retroperitoneum and peritoneum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.0 "Malignant neoplasm of connective and soft tissue of head, face and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.10 "Malignant neoplasm of connective and soft tissue of unspecified upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.11 "Malignant neoplasm of connective and soft tissue of right upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.12 "Malignant neoplasm of connective and soft tissue of left upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.20 "Malignant neoplasm of connective and soft tissue of unspecified lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.21 "Malignant neoplasm of connective and soft tissue of right lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.22 "Malignant neoplasm of connective and soft tissue of left lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.3 "Malignant neoplasm of connective and soft tissue of thorax"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.4 "Malignant neoplasm of connective and soft tissue of abdomen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.5 "Malignant neoplasm of connective and soft tissue of pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.6 "Malignant neoplasm of connective and soft tissue of trunk, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.8 "Malignant neoplasm of overlapping sites of connective and soft tissue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.9 "Malignant neoplasm of connective and soft tissue, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.A0 "Gastrointestinal stromal tumor, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.A1 "Gastrointestinal stromal tumor of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.A2 "Gastrointestinal stromal tumor of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.A3 "Gastrointestinal stromal tumor of small intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.A4 "Gastrointestinal stromal tumor of large intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.A5 "Gastrointestinal stromal tumor of rectum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C49.A9 "Gastrointestinal stromal tumor of other site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.0 "Merkel cell carcinoma of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.10 "Merkel cell carcinoma of unspecified eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.111 "Merkel cell carcinoma of right upper eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.112 "Merkel cell carcinoma of right lower eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.121 "Merkel cell carcinoma of left upper eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.122 "Merkel cell carcinoma of left lower eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.20 "Merkel cell carcinoma of unspecified ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.21 "Merkel cell carcinoma of right ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.22 "Merkel cell carcinoma of left ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.30 "Merkel cell carcinoma of unspecified part of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.31 "Merkel cell carcinoma of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.39 "Merkel cell carcinoma of other parts of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.4 "Merkel cell carcinoma of scalp and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.51 "Merkel cell carcinoma of anal skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.52 "Merkel cell carcinoma of skin of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.59 "Merkel cell carcinoma of other part of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.60 "Merkel cell carcinoma of unspecified upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.61 "Merkel cell carcinoma of right upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.62 "Merkel cell carcinoma of left upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.70 "Merkel cell carcinoma of unspecified lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.71 "Merkel cell carcinoma of right lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.72 "Merkel cell carcinoma of left lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.8 "Merkel cell carcinoma of overlapping sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C4A.9 "Merkel cell carcinoma, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.011 "Malignant neoplasm of nipple and areola, right female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.012 "Malignant neoplasm of nipple and areola, left female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.019 "Malignant neoplasm of nipple and areola, unspecified female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.021 "Malignant neoplasm of nipple and areola, right male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.022 "Malignant neoplasm of nipple and areola, left male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.029 "Malignant neoplasm of nipple and areola, unspecified male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.111 "Malignant neoplasm of central portion of right female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.112 "Malignant neoplasm of central portion of left female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.119 "Malignant neoplasm of central portion of unspecified female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.121 "Malignant neoplasm of central portion of right male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.122 "Malignant neoplasm of central portion of left male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.129 "Malignant neoplasm of central portion of unspecified male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.211 "Malignant neoplasm of upper-inner quadrant of right female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.212 "Malignant neoplasm of upper-inner quadrant of left female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.219 "Malignant neoplasm of upper-inner quadrant of unspecified female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.221 "Malignant neoplasm of upper-inner quadrant of right male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.222 "Malignant neoplasm of upper-inner quadrant of left male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.229 "Malignant neoplasm of upper-inner quadrant of unspecified male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.311 "Malignant neoplasm of lower-inner quadrant of right female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.312 "Malignant neoplasm of lower-inner quadrant of left female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.319 "Malignant neoplasm of lower-inner quadrant of unspecified female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.321 "Malignant neoplasm of lower-inner quadrant of right male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.322 "Malignant neoplasm of lower-inner quadrant of left male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.329 "Malignant neoplasm of lower-inner quadrant of unspecified male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.411 "Malignant neoplasm of upper-outer quadrant of right female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.412 "Malignant neoplasm of upper-outer quadrant of left female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.419 "Malignant neoplasm of upper-outer quadrant of unspecified female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.421 "Malignant neoplasm of upper-outer quadrant of right male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.422 "Malignant neoplasm of upper-outer quadrant of left male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.429 "Malignant neoplasm of upper-outer quadrant of unspecified male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.511 "Malignant neoplasm of lower-outer quadrant of right female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.512 "Malignant neoplasm of lower-outer quadrant of left female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.519 "Malignant neoplasm of lower-outer quadrant of unspecified female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.521 "Malignant neoplasm of lower-outer quadrant of right male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.522 "Malignant neoplasm of lower-outer quadrant of left male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.529 "Malignant neoplasm of lower-outer quadrant of unspecified male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.611 "Malignant neoplasm of axillary tail of right female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.612 "Malignant neoplasm of axillary tail of left female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.619 "Malignant neoplasm of axillary tail of unspecified female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.621 "Malignant neoplasm of axillary tail of right male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.622 "Malignant neoplasm of axillary tail of left male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.629 "Malignant neoplasm of axillary tail of unspecified male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.811 "Malignant neoplasm of overlapping sites of right female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.812 "Malignant neoplasm of overlapping sites of left female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.819 "Malignant neoplasm of overlapping sites of unspecified female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.821 "Malignant neoplasm of overlapping sites of right male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.822 "Malignant neoplasm of overlapping sites of left male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.829 "Malignant neoplasm of overlapping sites of unspecified male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.911 "Malignant neoplasm of unspecified site of right female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.912 "Malignant neoplasm of unspecified site of left female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.919 "Malignant neoplasm of unspecified site of unspecified female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.921 "Malignant neoplasm of unspecified site of right male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.922 "Malignant neoplasm of unspecified site of left male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C50.929 "Malignant neoplasm of unspecified site of unspecified male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C51.0 "Malignant neoplasm of labium majus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C51.1 "Malignant neoplasm of labium minus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C51.2 "Malignant neoplasm of clitoris"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C51.8 "Malignant neoplasm of other specified female genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C51.9 "Malignant neoplasm of vulva, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C52 "MALIGNANT NEOPLASM OF VAGINA"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C53.0 "Malignant neoplasm of endocervix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C53.1 "Malignant neoplasm of exocervix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C53.8 "Malignant neoplasm of overlapping sites of cervix uteri"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C53.9 "Malignant neoplasm of cervix uteri, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C54.0 "Malignant neoplasm of isthmus uteri"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C54.1 "Malignant neoplasm of endometrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C54.2 "Malignant neoplasm of myometrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C54.3 "Malignant neoplasm of fundus uteri"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C54.8 "Malignant neoplasm of overlapping sites of corpus uteri"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C54.9 "Malignant neoplasm of corpus uteri, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C55 "MALIGNANT NEOPLASM OF UTERUS, PART UNSPECIFIED"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C56.1 "Malignant neoplasm of right ovary"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C56.2 "Malignant neoplasm of left ovary"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C56.9 "Malignant neoplasm of unspecified ovary"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.00 "Malignant neoplasm of unspecified fallopian tube"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.01 "Malignant neoplasm of right fallopian tube"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.02 "Malignant neoplasm of left fallopian tube"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.10 "Malignant neoplasm of unspecified broad ligament"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.11 "Malignant neoplasm of right broad ligament"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.12 "Malignant neoplasm of left broad ligament"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.20 "Malignant neoplasm of unspecified round ligament"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.21 "Malignant neoplasm of right round ligament"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.22 "Malignant neoplasm of left round ligament"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.3 "Malignant neoplasm of parametrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.4 "Malignant neoplasm of uterine adnexa, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.7 "Malignant neoplasm of overlapping sites of vulva"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.8 "Malignant neoplasm of overlapping sites of female genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C57.9 "Malignant neoplasm of female genital organ, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C58 "MALIGNANT NEOPLASM OF PLACENTA"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C60.0 "Malignant neoplasm of prepuce"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C60.1 "Malignant neoplasm of glans penis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C60.2 "Malignant neoplasm of body of penis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C60.8 "Malignant neoplasm of overlapping sites of penis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C60.9 "Malignant neoplasm of penis, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C61 "MALIGNANT NEOPLASM OF PROSTATE"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C62.00 "Malignant neoplasm of unspecified undescended testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C62.01 "Malignant neoplasm of undescended right testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C62.02 "Malignant neoplasm of undescended left testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C62.10 "Malignant neoplasm of unspecified descended testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C62.11 "Malignant neoplasm of descended right testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C62.12 "Malignant neoplasm of descended left testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C62.90 "Malignant neoplasm of unspecified testis, unspecified whether descended or undescended"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C62.91 "Malignant neoplasm of right testis, unspecified whether descended or undescended"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C62.92 "Malignant neoplasm of left testis, unspecified whether descended or undescended"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.00 "Malignant neoplasm of unspecified epididymis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.01 "Malignant neoplasm of right epididymis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.02 "Malignant neoplasm of left epididymis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.10 "Malignant neoplasm of unspecified spermatic cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.11 "Malignant neoplasm of right spermatic cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.12 "Malignant neoplasm of left spermatic cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.2 "Malignant neoplasm of scrotum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.7 "Malignant neoplasm of other specified male genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.8 "Malignant neoplasm of overlapping sites of male genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C63.9 "Malignant neoplasm of male genital organ, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C64.1 "Malignant neoplasm of right kidney, except renal pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C64.2 "Malignant neoplasm of left kidney, except renal pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C64.9 "Malignant neoplasm of unspecified kidney, except renal pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C65.1 "Malignant neoplasm of right renal pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C65.2 "Malignant neoplasm of left renal pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C65.9 "Malignant neoplasm of unspecified renal pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C66.1 "Malignant neoplasm of right ureter"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C66.2 "Malignant neoplasm of left ureter"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C66.9 "Malignant neoplasm of unspecified ureter"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.0 "Malignant neoplasm of trigone of bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.1 "Malignant neoplasm of dome of bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.2 "Malignant neoplasm of lateral wall of bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.3 "Malignant neoplasm of anterior wall of bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.4 "Malignant neoplasm of posterior wall of bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.5 "Malignant neoplasm of bladder neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.6 "Malignant neoplasm of ureteric orifice"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.7 "Malignant neoplasm of urachus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.8 "Malignant neoplasm of overlapping sites of bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C67.9 "Malignant neoplasm of bladder, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C68.0 "Malignant neoplasm of urethra"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C68.1 "Malignant neoplasm of paraurethral glands"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C68.8 "Malignant neoplasm of overlapping sites of urinary organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C68.9 "Malignant neoplasm of urinary organ, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.00 "Malignant neoplasm of unspecified conjunctiva"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.01 "Malignant neoplasm of right conjunctiva"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.02 "Malignant neoplasm of left conjunctiva"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.10 "Malignant neoplasm of unspecified cornea"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.11 "Malignant neoplasm of right cornea"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.12 "Malignant neoplasm of left cornea"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.20 "Malignant neoplasm of unspecified retina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.21 "Malignant neoplasm of right retina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.22 "Malignant neoplasm of left retina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.30 "Malignant neoplasm of unspecified choroid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.31 "Malignant neoplasm of right choroid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.32 "Malignant neoplasm of left choroid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.40 "Malignant neoplasm of unspecified ciliary body"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.41 "Malignant neoplasm of right ciliary body"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.42 "Malignant neoplasm of left ciliary body"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.50 "Malignant neoplasm of unspecified lacrimal gland and duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.51 "Malignant neoplasm of right lacrimal gland and duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.52 "Malignant neoplasm of left lacrimal gland and duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.60 "Malignant neoplasm of unspecified orbit"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.61 "Malignant neoplasm of right orbit"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.62 "Malignant neoplasm of left orbit"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.80 "Malignant neoplasm of overlapping sites of unspecified eye and adnexa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.81 "Malignant neoplasm of overlapping sites of right eye and adnexa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.82 "Malignant neoplasm of overlapping sites of left eye and adnexa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.90 "Malignant neoplasm of unspecified site of unspecified eye"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.91 "Malignant neoplasm of unspecified site of right eye"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C69.92 "Malignant neoplasm of unspecified site of left eye"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C70.0 "Malignant neoplasm of cerebral meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C70.1 "Malignant neoplasm of spinal meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C70.9 "Malignant neoplasm of meninges, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.0 "Malignant neoplasm of cerebrum, except lobes and ventricles"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.1 "Malignant neoplasm of frontal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.2 "Malignant neoplasm of temporal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.3 "Malignant neoplasm of parietal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.4 "Malignant neoplasm of occipital lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.5 "Malignant neoplasm of cerebral ventricle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.6 "Malignant neoplasm of cerebellum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.7 "Malignant neoplasm of brain stem"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.8 "Malignant neoplasm of overlapping sites of brain"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C71.9 "Malignant neoplasm of brain, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.0 "Malignant neoplasm of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.1 "Malignant neoplasm of cauda equina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.20 "Malignant neoplasm of unspecified olfactory nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.21 "Malignant neoplasm of right olfactory nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.22 "Malignant neoplasm of left olfactory nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.30 "Malignant neoplasm of unspecified optic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.31 "Malignant neoplasm of right optic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.32 "Malignant neoplasm of left optic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.40 "Malignant neoplasm of unspecified acoustic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.41 "Malignant neoplasm of right acoustic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.42 "Malignant neoplasm of left acoustic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.50 "Malignant neoplasm of unspecified cranial nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.59 "Malignant neoplasm of other cranial nerves"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C72.9 "Malignant neoplasm of central nervous system, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C73 "MALIGNANT NEOPLASM OF THYROID GLAND"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C74.00 "Malignant neoplasm of cortex of unspecified adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C74.01 "Malignant neoplasm of cortex of right adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C74.02 "Malignant neoplasm of cortex of left adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C74.10 "Malignant neoplasm of medulla of unspecified adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C74.11 "Malignant neoplasm of medulla of right adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C74.12 "Malignant neoplasm of medulla of left adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C74.90 "Malignant neoplasm of unspecified part of unspecified adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C74.91 "Malignant neoplasm of unspecified part of right adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C74.92 "Malignant neoplasm of unspecified part of left adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C75.0 "Malignant neoplasm of parathyroid gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C75.1 "Malignant neoplasm of pituitary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C75.2 "Malignant neoplasm of craniopharyngeal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C75.3 "Malignant neoplasm of pineal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C75.4 "Malignant neoplasm of carotid body"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C75.5 "Malignant neoplasm of aortic body and other paraganglia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C75.8 "Malignant neoplasm with pluriglanduar involvement, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C75.9 "Malignant neoplasm of endocrine gland, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.0 "Malignant neoplasm of head, face and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.1 "Malignant neoplasm of thorax"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.2 "Malignant neoplasm of abdomen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.3 "Malignant neoplasm pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.40 "Malignant neoplasm of unspecified upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.41 "Malignant neoplasm of right upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.42 "Malignant neoplasm of left upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.50 "Malignant neoplasm of unspecified lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.51 "Malignant neoplasm of right lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.52 "Malignant neoplasm of left lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C76.8 "Malignant neoplasm of overlapping sites of other and ill-defined sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.00 "Malignant carcinoid tumor of unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.010 "Malignant carcinoid tumor of the duodenum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.011 "Malignant carcinoid tumor of the jejunum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.012 "Malignant carcinoid tumor of the ileum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.019 "Malignant carcinoid tumor of the small intestine, unspecified portion"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.020 "Malignant carcinoid tumor of the appendix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.021 "Malignant carcinoid tumor of the cecum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.022 "Malignant carcinoid tumor of the ascending colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.023 "Malignant carcinoid tumor of the transverse colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.024 "Malignant carcinoid tumor of the descending colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.025 "Malignant carcinoid tumor of the sigmoid colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.026 "Malignant carcinoid tumor of the rectum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.029 "Malignant carcinoid tumor of the large intestine, unspecified portion"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.090 "Malignant carcinoid tumor of the bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.091 "Malignant carcinoid tumor of thymus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.092 "Malignant carcinoid tumor of the stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.093 "Malignant carcinoid tumor of the kidney"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.094 "Malignant carcinoid tumors of the foregut NOS"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.095 "Malignant carcinoid tumors of the midgut NOS"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.096 "Malignant carcinoid tumors of the hindgut NOS"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.098 "Malignant carcinoid tumors of other sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.1 "Malignant poorly differentiated neuroendocrine tumors"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C7A.8 "Other malignant neuroendocrine tumors"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C80.0 "Disseminated malignant neoplasm, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C80.1 "Malignant (primary) neoplasm, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C80.2 "Malignant neoplasm associated with transplanted organ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.00 "Nodular lymphocyte predominant Hodgkin lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.01 "Nodular lymphocyte predominant Hodgkin lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.02 "Nodular lymphocyte predominant Hodgkin lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.03 "Nodular lymphocyte predominant Hodgkin lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.04 "Nodular lymphocyte predominant Hodgkin lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.05 "Nodular lymphocyte predominant Hodgkin lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.06 "Nodular lymphocyte predominant Hodgkin lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.07 "Nodular lymphocyte predominant Hodgkin lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.08 "Nodular lymphocyte predominant Hodgkin lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.09 "Nodular lymphocyte predominant Hodgkin lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.10 "Nodular sclerosis classical Hodgkin lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.11 "Nodular sclerosis classical Hodgkin lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.12 "Nodular sclerosis classical Hodgkin lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.13 "Nodular sclerosis classical Hodgkin lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.14 "Nodular sclerosis classical Hodgkin lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.15 "Nodular sclerosis classical Hodgkin lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.16 "Nodular sclerosis classical Hodgkin lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.17 "Nodular sclerosis classical Hodgkin lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.18 "Nodular sclerosis classical Hodgkin lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.19 "Nodular sclerosis classical Hodgkin lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.20 "Mixed cellularity classical Hodgkin lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.21 "Mixed cellularity classical Hodgkin lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.22 "Mixed cellularity classical Hodgkin lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.23 "Mixed cellularity classical Hodgkin lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.24 "Mixed cellularity classical Hodgkin lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.25 "Mixed cellularity classical Hodgkin lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.26 "Mixed cellularity classical Hodgkin lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.27 "Mixed cellularity classical Hodgkin lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.28 "Mixed cellularity classical Hodgkin lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.29 "Mixed cellularity classical Hodgkin lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.30 "Lymphocyte depleted classical Hodgkin lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.31 "Lymphocyte depleted classical Hodgkin lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.32 "Lymphocyte depleted classical Hodgkin lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.33 "Lymphocyte depleted classical Hodgkin lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.34 "Lymphocyte depleted classical Hodgkin lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.35 "Lymphocyte depleted classical Hodgkin lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.36 "Lymphocyte depleted classical Hodgkin lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.37 "Lymphocyte depleted classical Hodgkin lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.38 "Lymphocyte depleted classical Hodgkin lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.39 "Lymphocyte depleted classical Hodgkin lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.40 "Lymphocyte-rich classical Hodgkin lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.41 "Lymphocyte-rich classical Hodgkin lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.42 "Lymphocyte-rich classical Hodgkin lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.43 "Lymphocyte-rich classical Hodgkin lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.44 "Lymphocyte-rich classical Hodgkin lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.45 "Lymphocyte-rich classical Hodgkin lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.46 "Lymphocyte-rich classical Hodgkin lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.47 "Lymphocyte-rich classical Hodgkin lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.48 "Lymphocyte-rich classical Hodgkin lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.49 "Lymphocyte-rich classical Hodgkin lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.70 "Other classical Hodgkin lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.71 "Other classical Hodgkin lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.72 "Other classical Hodgkin lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.73 "Other classical Hodgkin lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.74 "Other classical Hodgkin lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.75 "Other classical Hodgkin lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.76 "Other classical Hodgkin lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.77 "Other classical Hodgkin lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.78 "Other classical Hodgkin lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.79 "Other classical Hodgkin lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.90 "Hodgkin lymphoma, unspecified, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.91 "Hodgkin lymphoma, unspecified, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.92 "Hodgkin lymphoma, unspecified, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.93 "Hodgkin lymphoma, unspecified, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.94 "Hodgkin lymphoma, unspecified, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.95 "Hodgkin lymphoma, unspecified, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.96 "Hodgkin lymphoma, unspecified, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.97 "Hodgkin lymphoma, unspecified, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.98 "Hodgkin lymphoma, unspecified, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C81.99 "Hodgkin lymphoma, unspecified, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.00 "Follicular lymphoma grade I, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.01 "Follicular lymphoma grade I, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.02 "Follicular lymphoma grade I, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.03 "Follicular lymphoma grade I, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.04 "Follicular lymphoma grade I, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.05 "Follicular lymphoma grade I, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.06 "Follicular lymphoma grade I, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.07 "Follicular lymphoma grade I, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.08 "Follicular lymphoma grade I, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.09 "Follicular lymphoma grade I, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.10 "Follicular lymphoma grade II, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.11 "Follicular lymphoma grade II, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.12 "Follicular lymphoma grade II, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.13 "Follicular lymphoma grade II, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.14 "Follicular lymphoma grade II, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.15 "Follicular lymphoma grade II, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.16 "Follicular lymphoma grade II, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.17 "Follicular lymphoma grade II, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.18 "Follicular lymphoma grade II, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.19 "Follicular lymphoma grade II, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.20 "Follicular lymphoma grade III, unspecified, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.21 "Follicular lymphoma grade III, unspecified, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.22 "Follicular lymphoma grade III, unspecified, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.23 "Follicular lymphoma grade III, unspecified, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.24 "Follicular lymphoma grade III, unspecified, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.25 "Follicular lymphoma grade III, unspecified, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.26 "Follicular lymphoma grade III, unspecified, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.27 "Follicular lymphoma grade III, unspecified, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.28 "Follicular lymphoma grade III, unspecified, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.29 "Follicular lymphoma grade III, unspecified, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.30 "Follicular lymphoma grade IIIa, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.31 "Follicular lymphoma grade IIIa, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.32 "Follicular lymphoma grade IIIa, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.33 "Follicular lymphoma grade IIIa, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.34 "Follicular lymphoma grade IIIa, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.35 "Follicular lymphoma grade IIIa, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.36 "Follicular lymphoma grade IIIa, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.37 "Follicular lymphoma grade IIIa, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.38 "Follicular lymphoma grade IIIa, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.39 "Follicular lymphoma grade IIIa, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.40 "Follicular lymphoma grade IIIb, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.41 "Follicular lymphoma grade IIIb, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.42 "Follicular lymphoma grade IIIb, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.43 "Follicular lymphoma grade IIIb, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.44 "Follicular lymphoma grade IIIb, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.45 "Follicular lymphoma grade IIIb, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.46 "Follicular lymphoma grade IIIb, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.47 "Follicular lymphoma grade IIIb, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.48 "Follicular lymphoma grade IIIb, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.49 "Follicular lymphoma grade IIIb, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.50 "Diffuse follicle center lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.51 "Diffuse follicle center lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.52 "Diffuse follicle center lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.53 "Diffuse follicle center lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.54 "Diffuse follicle center lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.55 "Diffuse follicle center lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.56 "Diffuse follicle center lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.57 "Diffuse follicle center lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.58 "Diffuse follicle center lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.59 "Diffuse follicle center lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.60 "Cutaneous follicle center lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.61 "Cutaneous follicle center lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.62 "Cutaneous follicle center lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.63 "Cutaneous follicle center lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.64 "Cutaneous follicle center lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.65 "Cutaneous follicle center lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.66 "Cutaneous follicle center lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.67 "Cutaneous follicle center lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.68 "Cutaneous follicle center lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.69 "Cutaneous follicle center lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.80 "Other types of follicular lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.81 "Other types of follicular lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.82 "Other types of follicular lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.83 "Other types of follicular lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.84 "Other types of follicular lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.85 "Other types of follicular lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.86 "Other types of follicular lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.87 "Other types of follicular lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.88 "Other types of follicular lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.89 "Other types of follicular lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.90 "Follicular lymphoma, unspecified, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.91 "Follicular lymphoma, unspecified, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.92 "Follicular lymphoma, unspecified, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.93 "Follicular lymphoma, unspecified, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.94 "Follicular lymphoma, unspecified, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.95 "Follicular lymphoma, unspecified, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.96 "Follicular lymphoma, unspecified, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.97 "Follicular lymphoma, unspecified, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.98 "Follicular lymphoma, unspecified, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C82.99 "Follicular lymphoma, unspecified, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.00 "Small cell B-cell lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.01 "Small cell B-cell lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.02 "Small cell B-cell lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.03 "Small cell B-cell lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.04 "Small cell B-cell lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.05 "Small cell B-cell lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.06 "Small cell B-cell lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.07 "Small cell B-cell lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.08 "Small cell B-cell lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.09 "Small cell B-cell lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.10 "Mantle cell lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.11 "Mantle cell lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.12 "Mantle cell lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.13 "Mantle cell lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.14 "Mantle cell lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.15 "Mantle cell lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.16 "Mantle cell lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.17 "Mantle cell lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.18 "Mantle cell lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.19 "Mantle cell lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.30 "Diffuse large B-cell lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.31 "Diffuse large B-cell lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.32 "Diffuse large B-cell lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.33 "Diffuse large B-cell lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.34 "Diffuse large B-cell lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.35 "Diffuse large B-cell lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.36 "Diffuse large B-cell lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.37 "Diffuse large B-cell lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.38 "Diffuse large B-cell lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.39 "Diffuse large B-cell lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.50 "Lymphoblastic (diffuse) lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.51 "Lymphoblastic (diffuse) lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.52 "Lymphoblastic (diffuse) lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.53 "Lymphoblastic (diffuse) lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.54 "Lymphoblastic (diffuse) lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.55 "Lymphoblastic (diffuse) lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.56 "Lymphoblastic (diffuse) lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.57 "Lymphoblastic (diffuse) lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.58 "Lymphoblastic (diffuse) lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.59 "Lymphoblastic (diffuse) lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.70 "Burkitt lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.71 "Burkitt lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.72 "Burkitt lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.73 "Burkitt lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.74 "Burkitt lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.75 "Burkitt lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.76 "Burkitt lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.77 "Burkitt lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.78 "Burkitt lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.79 "Burkitt lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.80 "Other non-follicular lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.81 "Other non-follicular lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.82 "Other non-follicular lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.83 "Other non-follicular lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.84 "Other non-follicular lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.85 "Other non-follicular lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.86 "Other non-follicular lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.87 "Other non-follicular lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.88 "Other non-follicular lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.89 "Other non-follicular lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.90 "Non-follicular (diffuse) lymphoma, unspecified, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.91 "Non-follicular (diffuse) lymphoma, unspecified, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.92 "Non-follicular (diffuse) lymphoma, unspecified, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.93 "Non-follicular (diffuse) lymphoma, unspecified, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.94 "Non-follicular (diffuse) lymphoma, unspecified, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.95 "Non-follicular (diffuse) lymphoma, unspecified, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.96 "Non-follicular (diffuse) lymphoma, unspecified, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.97 "Non-follicular (diffuse) lymphoma, unspecified, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.98 "Non-follicular (diffuse) lymphoma, unspecified, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C83.99 "Non-follicular (diffuse) lymphoma, unspecified, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.00 "Mycosis fungoides, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.01 "Mycosis fungoides, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.02 "Mycosis fungoides, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.03 "Mycosis fungoides, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.04 "Mycosis fungoides, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.05 "Mycosis fungoides, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.06 "Mycosis fungoides, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.07 "Mycosis fungoides, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.08 "Mycosis fungoides, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.09 "Mycosis fungoides, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.10 "Sezary disease, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.11 "Sezary disease, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.12 "Sezary disease, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.13 "Sezary disease, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.14 "Sezary disease, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.15 "Sezary disease, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.16 "Sezary disease, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.17 "Sezary disease, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.18 "Sezary disease, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.19 "Sezary disease, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.40 "Peripheral T-cell lymphoma, not classified, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.41 "Peripheral T-cell lymphoma, not classified, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.42 "Peripheral T-cell lymphoma, not classified, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.43 "Peripheral T-cell lymphoma, not classified, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.44 "Peripheral T-cell lymphoma, not classified, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.45 "Peripheral T-cell lymphoma, not classified, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.46 "Peripheral T-cell lymphoma, not classified, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.47 "Peripheral T-cell lymphoma, not classified, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.48 "Peripheral T-cell lymphoma, not classified, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.49 "Peripheral T-cell lymphoma, not classified, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.60 "Anaplastic large cell lymphoma, ALK-positive, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.61 "Anaplastic large cell lymphoma, ALK-positive, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.62 "Anaplastic large cell lymphoma, ALK-positive, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.63 "Anaplastic large cell lymphoma, ALK-positive, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.64 "Anaplastic large cell lymphoma, ALK-positive, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.65 "Anaplastic large cell lymphoma, ALK-positive, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.66 "Anaplastic large cell lymphoma, ALK-positive, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.67 "Anaplastic large cell lymphoma, ALK-positive, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.68 "Anaplastic large cell lymphoma, ALK-positive, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.69 "Anaplastic large cell lymphoma, ALK-positive, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.70 "Anaplastic large cell lymphoma, ALK-negative, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.71 "Anaplastic large cell lymphoma, ALK-negative, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.72 "Anaplastic large cell lymphoma, ALK-negative, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.73 "Anaplastic large cell lymphoma, ALK-negative, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.74 "Anaplastic large cell lymphoma, ALK-negative, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.75 "Anaplastic large cell lymphoma, ALK-negative, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.76 "Anaplastic large cell lymphoma, ALK-negative, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.77 "Anaplastic large cell lymphoma, ALK-negative, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.78 "Anaplastic large cell lymphoma, ALK-negative, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.79 "Anaplastic large cell lymphoma, ALK-negative, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.90 "Mature T/NK-cell lymphomas, unspecified, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.91 "Mature T/NK-cell lymphomas, unspecified, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.92 "Mature T/NK-cell lymphomas, unspecified, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.93 "Mature T/NK-cell lymphomas, unspecified, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.94 "Mature T/NK-cell lymphomas, unspecified, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.95 "Mature T/NK-cell lymphomas, unspecified, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.96 "Mature T/NK-cell lymphomas, unspecified, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.97 "Mature T/NK-cell lymphomas, unspecified, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.98 "Mature T/NK-cell lymphomas, unspecified, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.99 "Mature T/NK-cell lymphomas, unspecified, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A0 "Cutaneous T-cell lymphoma, unspecified, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A1 "Cutaneous T-cell lymphoma, unspecified lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A2 "Cutaneous T-cell lymphoma, unspecified, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A3 "Cutaneous T-cell lymphoma, unspecified, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A4 "Cutaneous T-cell lymphoma, unspecified, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A5 "Cutaneous T-cell lymphoma, unspecified, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A6 "Cutaneous T-cell lymphoma, unspecified, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A7 "Cutaneous T-cell lymphoma, unspecified, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A8 "Cutaneous T-cell lymphoma, unspecified, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.A9 "Cutaneous T-cell lymphoma, unspecified, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z0 "Other mature T/NK-cell lymphomas, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z1 "Other mature T/NK-cell lymphomas, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z2 "Other mature T/NK-cell lymphomas, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z3 "Other mature T/NK-cell lymphomas, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z4 "Other mature T/NK-cell lymphomas, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z5 "Other mature T/NK-cell lymphomas, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z6 "Other mature T/NK-cell lymphomas, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z7 "Other mature T/NK-cell lymphomas, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z8 "Other mature T/NK-cell lymphomas, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C84.Z9 "Other mature T/NK-cell lymphomas, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.10 "Unspecified B-cell lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.11 "Unspecified B-cell lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.12 "Unspecified B-cell lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.13 "Unspecified B-cell lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.14 "Unspecified B-cell lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.15 "Unspecified B-cell lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.16 "Unspecified B-cell lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.17 "Unspecified B-cell lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.18 "Unspecified B-cell lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.19 "Unspecified B-cell lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.20 "Mediastinal (thymic) large B-cell lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.21 "Mediastinal (thymic) large B-cell lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.22 "Mediastinal (thymic) large B-cell lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.23 "Mediastinal (thymic) large B-cell lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.24 "Mediastinal (thymic) large B-cell lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.25 "Mediastinal (thymic) large B-cell lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.26 "Mediastinal (thymic) large B-cell lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.27 "Mediastinal (thymic) large B-cell lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.28 "Mediastinal (thymic) large B-cell lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.29 "Mediastinal (thymic) large B-cell lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.80 "Other specified types of non-Hodgkin lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.81 "Other specified types of non-Hodgkin lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.82 "Other specified types of non-Hodgkin lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.83 "Other specified types of non-Hodgkin lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.84 "Other specified types of non-Hodgkin lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.85 "Other specified types of non-Hodgkin lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.86 "Other specified types of non-Hodgkin lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.87 "Other specified types of non-Hodgkin lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.88 "Other specified types of non-Hodgkin lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.89 "Other specified types of non-Hodgkin lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.90 "Non-Hodgkin lymphoma, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.91 "Non-Hodgkin lymphoma, lymph nodes of head, face, and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.92 "Non-Hodgkin lymphoma, intrathoracic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.93 "Non-Hodgkin lymphoma, intra-abdominal lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.94 "Non-Hodgkin lymphoma, lymph nodes of axilla and upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.95 "Non-Hodgkin lymphoma, lymph nodes of inguinal region and lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.96 "Non-Hodgkin lymphoma, intrapelvic lymph nodes"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.97 "Non-Hodgkin lymphoma, spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.98 "Non-Hodgkin lymphoma, lymph nodes of multiple sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C85.99 "Non-Hodgkin lymphoma, extranodal and solid organ sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C86.0 "Extranodal NK/T-cell lymphoma, nasal type"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C86.1 "Hepatosplenic T-cell lymphoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C86.2 "Enteropathy-type (intestinal) T-cell lymphoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C86.3 "Subcutaneous panniculitis-like T-cell lymphoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C86.4 "Blastic NK-cell lymphoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C86.5 "Angioimmunoblastic T-cell lymphoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C86.6 "Primary cutaneous CD30-positive T-cell proliferation"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C88.0 "Waldenstrom's macroglobulinemia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C88.2 "Heavy chain disease"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C88.3 "Immunoproliferative small intestinal diseases"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C88.4 "Extranodal marginal zone B-cell lymphoma of mucosa-associated lymphoid tissue [MALT-lymphoma]"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C88.8 "Other malignant immunoproliferative diseases"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C88.9 "Malignant immunoproliferative disease, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.00 "Multiple myeloma not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.01 "Multiple myeloma in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.02 "Multiple myeloma in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.10 "Plasma cell leukemia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.11 "Plasma cell leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.12 "Plasma cell leukemia in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.20 "Extramedullary plasmacytoma not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.21 "Extramedullary plasmacytoma in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.22 "Extramedullary plasmacytoma in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.30 "Solitary plasmacytoma not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.31 "Solitary plasmacytoma in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C90.32 "Solitary plasmacytoma in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.00 "Acute lymphoblastic leukemia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.01 "Acute lymphoblastic leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.02 "Acute lymphoblastic leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.10 "Chronic lymphocytic leukemia of B-cell type not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.11 "Chronic lymphocytic leukemia of B-cell type in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.12 "Chronic lymphocytic leukemia of B-cell type in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.30 "Prolymphocytic leukemia of B-cell type not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.31 "Prolymphocytic leukemia of B-cell type, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.32 "Prolymphocytic leukemia of B –cell type, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.40 "Hairy cell leukemia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.41 "Hairy cell leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.42 "Hairy cell leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.50 "Adult T-cell lymphoma/leukemia (HTLV-1-associated) not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.51 "Adult T-cell lymphoma/leukemia (HTLV-1-associated) in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.52 "Adult T-cell lymphoma/leukemia (HTLV-1-associated) in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.60 "Prolymphocytic leukemia of T-cell type not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.61 "Prolymphocytic leukemia of T-cell type, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.62 "Prolymphocytic leukemia of T –cell type, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.90 "Lymphoid leukemia, unspecified not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.91 "Lymphoid leukemia, unspecified, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.92 "Lymphoid leukemia, unspecified, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.A0 "Mature B-cell leukemia Burkitt-type not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.A1 "Mature B-cell leukemia Burkitt-type, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.A2 "Mature B-cell leukemia Burkitt-type, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.Z0 "Other lymphoid leukemia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.Z1 "Other lymphoid leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C91.Z2 "Other lymphoid leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.00 "Acute myeloblastic leukemia, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.01 "Acute myeloblastic leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.02 "Acute myeloblastic leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.10 "Chronic myeloid leukemia, BCR/ABL-positive, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.11 "Chronic myeloid leukemia, BCR/ABL-positive, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.12 "Chronic myeloid leukemia, BCR/ABL-positive, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.20 "Atypical chronic myeloid leukemia, BCR/ABL-negative not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.21 "Atypical chronic myeloid leukemia, BCR/ABL-negative, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.22 "Atypical chronic myeloid leukemia, BCR/ABL-negative, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.30 "Myeloid sarcoma, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.31 "Myeloid sarcoma, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.32 "Myeloid sarcoma, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.40 "Acute promyelocytic leukemia, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.41 "Acute promyelocytic leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.42 "Acute promyelocytic leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.50 "Acute myelomonocytic leukemia, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.51 "Acute myelomonocytic in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.52 "Acute myelomonocytic in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.60 "Acute myeloid leukemia with 11q23 abnormality not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.61 "Acute myeloid leukemia with 11q23 abnormality in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.62 "Acute myeloid leukemia with 11q23 abnormality in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.90 "Myeloid leukemia, unspecified, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.91 "Myeloid leukemia, unspecified in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.92 "Myeloid leukemia, unspecified in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.A0 "Acute myeloid leukemia with multilineage dysplasia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.A1 "Acute myeloid leukemia with multilineage dysplasia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.A2 "Acute myeloid leukemia with multilineage dysplasia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.Z0 "Other myeloid leukemia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.Z1 "Other myeloid leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C92.Z2 "Other myeloid leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.00 "Acute monoblastic/monocytic leukemia, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.01 "Acute monoblastic/monocytic leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.02 "Acute monoblastic/monocytic leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.10 "Chronic myelomonocytic leukemia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.11 "Chronic myelomonocytic leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.12 "Chronic myelomonocytic leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.30 "Juvenile myelomonocytic leukemia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.31 "Juvenile myelomonocytic leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.32 "Juvenile myelomonocytic leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.90 "Monocytic leukemia, unspecified, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.91 "Monocytic leukemia, unspecified in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.92 "Monocytic leukemia, unspecified in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.Z0 "Other monocytic leukemia, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.Z1 "Other monocytic leukemia in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C93.Z2 "Other monocytic leukemia in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.00 "Acute erythroid leukemia, not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.01 "Acute erythroid leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.02 "Acute erythroid leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.20 "Acute megakaryoblastic leukemia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.21 "Acute megakaryoblastic leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.22 "Acute megakaryoblastic leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.30 "Mast cell leukemia not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.31 "Mast cell leukemia, in remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.32 "Mast cell leukemia, in relapse"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#C94.40 "Acute panmyelosis with myelofibrosis not having achieved remission"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#393573009 "Hypereosinophilic syndrome"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#423294001 "Idiopathic hypereosinophilic syndrome (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#866109006 "Lymphocytic hypereosinophilic syndrome (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1153341001 "Myeloproliferative hypereosinophilic syndrome (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D72.110 "Idiopathic hypereosinophilic syndrome [HES]"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D72.111 "Lymphocytic Variant Hypereosinophilic Syndrome [LHES]"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D72.118 "Other hypereosinophilic syndrome"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D72.119 "Hypereosinophilic syndrome [HES], unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109355002 "Carcinoma in situ (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92523001 "Carcinoma in situ of accessory sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92524007 "Carcinoma in situ of adenoid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92525008 "Carcinoma in situ of adnexa of skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92526009 "Carcinoma in situ of adrenal cortex"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92527000 "Carcinoma in situ of adrenal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92528005 "Carcinoma in situ of adrenal medulla"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92529002 "Carcinoma in situ of alveolar ridge mucosa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92530007 "Carcinoma in situ of ampulla of Vater"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92531006 "Carcinoma in situ of anal canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92532004 "Carcinoma in situ of anterior aspect of epiglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92534003 "Carcinoma in situ of anterior two-thirds of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92535002 "Carcinoma in situ of anterior wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92536001 "Carcinoma in situ of anterior wall of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92537005 "Carcinoma in situ of anus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92538000 "Carcinoma in situ of apex of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92539008 "Carcinoma in situ of appendix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92540005 "Carcinoma in situ of areola of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92541009 "Carcinoma in situ of areola of male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92542002 "Carcinoma in situ of ascending colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92543007 "Carcinoma in situ of axillary tail of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92544001 "Carcinoma in situ of base of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92545000 "Carcinoma in situ of biliary tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92546004 "Carcinoma in situ of bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92547008 "Carcinoma in situ of body of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92548003 "Carcinoma in situ of body of penis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92549006 "Carcinoma in situ of body of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92550006 "Carcinoma in situ of body of uterus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92551005 "Carcinoma in situ of broad ligament"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92552003 "Carcinoma in situ of bronchus of left lower lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92553008 "Carcinoma in situ of bronchus of left upper lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92554002 "Carcinoma in situ of bronchus of right lower lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92555001 "Carcinoma in situ of bronchus of right middle lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92556000 "Carcinoma in situ of bronchus of right upper lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92557009 "Carcinoma in situ of bronchus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92558004 "Carcinoma in situ of buccal mucosa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92559007 "Carcinoma in situ of cecum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92560002 "Carcinoma in situ of cardia of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92562005 "Carcinoma in situ of central portion of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92563000 "Carcinoma in situ of cervical esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92564006 "Carcinoma in situ of uterine cervix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92565007 "Carcinoma in situ of choroid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92566008 "Carcinoma in situ of ciliary body"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92567004 "Carcinoma in situ of clitoris"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92568009 "Carcinoma in situ of colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92569001 "Carcinoma in situ of commissure of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92570000 "Carcinoma in situ of common bile duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92571001 "Carcinoma in situ of conjunctiva"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92572008 "Carcinoma in situ of cornea"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92573003 "Carcinoma in situ of craniopharyngeal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92574009 "Carcinoma in situ of cystic duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92575005 "Carcinoma in situ of descending colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92576006 "Carcinoma in situ of dorsal surface of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92577002 "Carcinoma in situ of duodenum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92578007 "Carcinoma in situ of ectopic female breast tissue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92579004 "Carcinoma in situ of ectopic male breast tissue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92580001 "Carcinoma in situ of endocervix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92581002 "Carcinoma in situ of endocrine gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92582009 "Carcinoma in situ of endometrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92583004 "Carcinoma in situ of epididymis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92584005 "Carcinoma in situ of epiglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92585006 "Carcinoma in situ of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92586007 "Carcinoma in situ of ethmoidal sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92587003 "Carcinoma in situ of eustachian tube"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92588008 "Carcinoma in situ of exocervix"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92589000 "Carcinoma in situ of extrahepatic bile ducts"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92590009 "Carcinoma in situ of eye"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92591008 "Carcinoma in situ of fallopian tube"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92593006 "Carcinoma in situ of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92594000 "Carcinoma in situ of female genital organ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92595004 "Carcinoma in situ of floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92596003 "Carcinoma in situ of prepuce"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92597007 "Carcinoma in situ of frontal sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92598002 "Carcinoma in situ of fundus of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92599005 "Carcinoma in situ of gallbladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92600008 "Carcinoma in situ of gastrointestinal tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92601007 "Carcinoma in situ of gingival mucosa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92602000 "Carcinoma in situ of glans penis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92603005 "Carcinoma in situ of glottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92604004 "Carcinoma in situ of greater curvature of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92605003 "Carcinoma in situ of gum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92606002 "Carcinoma in situ of hard palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92607006 "Carcinoma in situ of head of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92608001 "Carcinoma in situ of hepatic flexure of colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92609009 "Carcinoma in situ of hilus of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92610004 "Carcinoma in situ of hypopharyngeal aspect of aryepiglottic fold"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92611000 "Carcinoma in situ of hypopharyngeal aspect of interarytenoid fold"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92612007 "Carcinoma in situ of hypopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92613002 "Carcinoma in situ of ileum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92614008 "Carcinoma in situ of inner aspect of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92617001 "Carcinoma in situ of intestinal tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92618006 "Carcinoma in situ of intrahepatic bile ducts"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92619003 "Carcinoma in situ of islets of Langerhans"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92620009 "Carcinoma in situ of isthmus of uterus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92621008 "Carcinoma in situ of jejunum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92622001 "Carcinoma in situ of junctional region of epiglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92623006 "Carcinoma in situ of junctional zone of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92624000 "Carcinoma in situ of kidney"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92625004 "Carcinoma in situ of labia majora"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92626003 "Carcinoma in situ of labia minora"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92628002 "Carcinoma in situ of lacrimal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92629005 "Carcinoma in situ of large intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92630000 "Carcinoma in situ of laryngeal aspect of aryepiglottic fold"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92631001 "Carcinoma in situ of laryngeal aspect of interarytenoid fold"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92632008 "Carcinoma in situ of laryngeal commissure"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92633003 "Carcinoma in situ of laryngeal surface of epiglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92634009 "Carcinoma in situ of larynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92636006 "Carcinoma in situ of lateral wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92637002 "Carcinoma in situ of lateral wall of oropharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92638007 "Carcinoma in situ of lateral wall of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92639004 "Carcinoma in situ of left lower lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92640002 "Carcinoma in situ of left upper lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92642005 "Carcinoma in situ of lingual tonsil"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92643000 "Carcinoma in situ of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92644006 "Carcinoma in situ of liver"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92645007 "Carcinoma in situ of lower gum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92646008 "Carcinoma in situ of lower inner quadrant of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92647004 "Carcinoma in situ of lower outer quadrant of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92648009 "Carcinoma in situ of lower third of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92649001 "Carcinoma in situ of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92650001 "Carcinoma in situ of main bronchus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92651002 "Carcinoma in situ of major salivary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92652009 "Carcinoma in situ of male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92653004 "Carcinoma in situ of male genital organ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92654005 "Carcinoma in situ of mastoid air cells"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92655006 "Carcinoma in situ of maxillary sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92656007 "Carcinoma in situ of Meckel's diverticulum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92657003 "Carcinoma in situ of middle ear"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92658008 "Carcinoma in situ of middle third of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92659000 "Carcinoma in situ of minor salivary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92660005 "Carcinoma in situ of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92661009 "Carcinoma in situ of multiple endocrine glands"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92662002 "Carcinoma in situ of myometrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92663007 "Carcinoma in situ of nasal cavity"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92664001 "Carcinoma in situ of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92665000 "Carcinoma in situ of nipple of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92666004 "Carcinoma in situ of nipple of male breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92668003 "Carcinoma in situ of oropharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92669006 "Carcinoma in situ of ovary"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92670007 "Carcinoma in situ of palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92671006 "Carcinoma in situ of tonsil"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92672004 "Carcinoma in situ of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92673009 "Carcinoma in situ of pancreatic duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92674003 "Carcinoma in situ of parametrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92675002 "Carcinoma in situ of parathyroid gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92676001 "Carcinoma in situ of paraurethral glands"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92677005 "Carcinoma in situ of parietal pleura"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92678000 "Carcinoma in situ of parotid gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92679008 "Carcinoma in situ of penis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92680006 "Carcinoma in situ of perianal skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92681005 "Carcinoma in situ of pharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92682003 "Carcinoma in situ of pineal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92683008 "Carcinoma in situ of pituitary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92684002 "Carcinoma in situ of placenta"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92685001 "Carcinoma in situ of pleura"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92686000 "Carcinoma in situ of postcricoid region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92687009 "Carcinoma in situ of posterior hypopharyngeal wall"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92688004 "Carcinoma in situ of posterior wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92689007 "Carcinoma in situ of posterior wall of oropharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92690003 "Carcinoma in situ of posterior wall of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92691004 "Carcinoma in situ of prostate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92692006 "Carcinoma in situ of pyloric antrum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92693001 "Carcinoma in situ of pylorus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92694007 "Carcinoma in situ of pyriform sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92695008 "Carcinoma in situ of rectosigmoid junction"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92696009 "Carcinoma in situ of rectum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92697000 "Carcinoma in situ of renal pelvis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92698005 "Carcinoma in situ of respiratory tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92699002 "Carcinoma in situ of retina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92700001 "Carcinoma in situ of retromolar area"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92701002 "Carcinoma in situ of right lower lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92702009 "Carcinoma in situ of right middle lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92703004 "Carcinoma in situ of right upper lobe of lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92704005 "Carcinoma in situ of round ligament of uterus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92705006 "Carcinoma in situ of sclera"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92706007 "Carcinoma in situ of scrotum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92707003 "Carcinoma in situ of sebaceous gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92708008 "Carcinoma in situ of sigmoid colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92709000 "Carcinoma in situ of skin of abdomen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92710005 "Carcinoma in situ of skin of ankle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92712002 "Carcinoma in situ of skin of axilla"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92713007 "Carcinoma in situ of skin of back"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92714001 "Carcinoma in situ of skin of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92715000 "Carcinoma in situ of skin of buttock"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92716004 "Carcinoma in situ of skin of cheek"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92717008 "Carcinoma in situ of skin of chest"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92718003 "Carcinoma in situ of skin of chin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92719006 "Carcinoma in situ of skin of ear"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92720000 "Carcinoma in situ of skin of elbow"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92722008 "Carcinoma in situ of skin of eyebrow"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92723003 "Carcinoma in situ of skin of eyelid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92724009 "Carcinoma in situ of skin of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92725005 "Carcinoma in situ of skin of finger"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92726006 "Carcinoma in situ of skin of foot"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92727002 "Carcinoma in situ of skin of forearm"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92728007 "Carcinoma in situ of skin of forehead"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92729004 "Carcinoma in situ of skin of groin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92730009 "Carcinoma in situ of skin of hand"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92731008 "Carcinoma in situ of skin of hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92732001 "Carcinoma in situ of skin of knee"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92734000 "Carcinoma in situ of skin of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92735004 "Carcinoma in situ of skin of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92736003 "Carcinoma in situ of skin of neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92737007 "Carcinoma in situ of skin of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92738002 "Carcinoma in situ of skin of perineum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92739005 "Carcinoma in situ of skin of popliteal area"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92740007 "Carcinoma in situ of skin of scalp"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92741006 "Carcinoma in situ of skin of shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92742004 "Carcinoma in situ of skin of temporal region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92743009 "Carcinoma in situ of skin of thigh"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92744003 "Carcinoma in situ of skin of toe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92745002 "Carcinoma in situ of skin of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92746001 "Carcinoma in situ of skin of umbilicus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92747005 "Carcinoma in situ of skin of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92748000 "Carcinoma in situ of skin of wrist"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92749008 "Carcinoma in situ of skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92750008 "Carcinoma in situ of small intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92751007 "Carcinoma in situ of soft palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92752000 "Carcinoma in situ of spermatic cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92753005 "Carcinoma in situ of sphenoidal sinus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92754004 "Carcinoma in situ of spleen"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92756002 "Carcinoma in situ of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92757006 "Carcinoma in situ of subglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92758001 "Carcinoma in situ of sublingual gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92759009 "Carcinoma in situ of submaxillary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92760004 "Carcinoma in situ of superior wall of nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92761000 "Carcinoma in situ of supraglottis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92762007 "Carcinoma in situ of sweat gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92763002 "Carcinoma in situ of tail of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92764008 "Carcinoma in situ of testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92766005 "Carcinoma in situ of thyroglossal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92767001 "Carcinoma in situ of thyroid gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92768006 "Carcinoma in situ of tip AND/OR lateral border of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92769003 "Carcinoma in situ of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92770002 "Carcinoma in situ of tonsillar fossa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92771003 "Carcinoma in situ of tonsillar pillar"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92772005 "Carcinoma in situ of trachea"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92773000 "Carcinoma in situ of transverse colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92774006 "Carcinoma in situ of trigone of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92775007 "Carcinoma in situ of undescended testis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92776008 "Carcinoma in situ of upper gum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92777004 "Carcinoma in situ of upper inner quadrant of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92778009 "Carcinoma in situ of upper outer quadrant of female breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92779001 "Carcinoma in situ of upper respiratory tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92780003 "Carcinoma in situ of upper third esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92781004 "Carcinoma in situ of urachus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92782006 "Carcinoma in situ of ureter"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92783001 "Carcinoma in situ of ureteric orifice of urinary bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92784007 "Carcinoma in situ of urethra"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92785008 "Carcinoma in situ of urinary bladder neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92786009 "Carcinoma in situ of urinary system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92787000 "Carcinoma in situ of uterine adnexa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92788005 "Carcinoma in situ of uterus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92789002 "Carcinoma in situ of uveal tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92790006 "Carcinoma in situ of uvula"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92791005 "Carcinoma in situ of vagina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92792003 "Carcinoma in situ of vallecula"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92793008 "Carcinoma in situ of vas deferens"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92794002 "Carcinoma in situ of ventral surface of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92795001 "Carcinoma in situ of vermilion border of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92796000 "Carcinoma in situ of vermilion border of lower lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92797009 "Carcinoma in situ of vermilion border of upper lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92798004 "Carcinoma in situ of vestibule of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92799007 "Carcinoma in situ of vestibule of nose"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92800006 "Carcinoma in situ of visceral pleura"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92801005 "Carcinoma in situ of vocal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92802003 "Carcinoma in situ of vulva"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92803008 "Carcinoma in situ of Waldeyer's ring"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109827007 "Carcinoma in situ of salivary gland duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109850001 "Carcinoma in situ of digestive organ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109888004 "Lobular carcinoma in situ of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109889007 "Intraductal carcinoma in situ of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189212001 "Carcinoma in situ of salivary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189229003 "Carcinoma in situ of splenic flexure"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189231007 "Carcinoma in situ of rectum and rectosigmoid junction"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189243008 "Carcinoma in situ of hepatic duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189246000 "Carcinoma in situ of sphincter of Oddi"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189251006 "Carcinoma in situ of respiratory system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189252004 "Carcinoma in situ of thyroid cartilage"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189253009 "Carcinoma in situ of cricoid cartilage"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189255002 "Carcinoma in situ of arytenoid cartilage"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189256001 "Carcinoma in situ of corniculate cartilage"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189257005 "Carcinoma in situ of cuneiform cartilage"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189258000 "Carcinoma in situ of aryepiglottic fold"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189259008 "Carcinoma in situ of vestibular fold"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189262006 "Carcinoma in situ of bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189263001 "Carcinoma in situ of carina of bronchus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189265008 "Carcinoma in situ of upper lobe bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189266009 "Carcinoma in situ of middle lobe bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189267000 "Carcinoma in situ of lower lobe bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189271002 "Carcinoma in situ of tympanic cavity"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189272009 "Carcinoma in situ of tympanic antrum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189277003 "Carcinoma in situ of skin of eyelid including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189279000 "Carcinoma in situ of skin of auricle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189280002 "Carcinoma in situ of skin of external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189288009 "Carcinoma in situ of skin of temple"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189289001 "Carcinoma in situ of skin of jaw"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189291009 "Carcinoma in situ of scalp and skin of neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189292002 "Carcinoma in situ of scalp"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189308005 "Carcinoma in situ of skin of upper arm"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189317005 "Carcinoma in situ of skin of lower leg"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189336000 "Carcinoma in situ of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189565007 "Squamous cell carcinoma in situ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#231830001 "Bowen's disease of eyelid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#240545008 "Anogenital papillomaviral intraepithelial neoplasia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254394005 "Carcinoma in situ of frenum of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254399000 "Carcinoma in situ of frenum of upper lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254403009 "Carcinoma in situ of frenum of lower lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254406001 "Carcinoma in situ of anterior two-thirds of tongue - dorsal surface"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254409008 "Carcinoma in situ of anterior two-thirds of tongue - border"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254413001 "Carcinoma in situ of tip of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254418005 "Carcinoma in situ of frenum linguae"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254428001 "Carcinoma in situ anterior floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254432007 "Carcinoma in situ lateral floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254442009 "Carcinoma in situ of upper buccal sulcus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254446007 "Carcinoma in situ of lower buccal sulcus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254451001 "Carcinoma in situ upper labial sulcus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254455005 "Carcinoma in situ of lower labial sulcus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254460009 "Carcinoma in situ of anterior pillar of fauces"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254510001 "Carcinoma in situ of anterior commissure"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254514005 "Carcinoma in situ of posterior commissure"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254540004 "Carcinoma in situ of thoracic part of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254544008 "Carcinoma in situ of abdominal part of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254564003 "Carcinoma in situ of lesser curve of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254639005 "Carcinoma in situ of lung parenchyma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254656002 "Bowen's disease of skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254889004 "Carcinoma of cervix stage 0"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255007008 "Bowen's disease of cornea"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255131000 "Carcinoma in situ of oral cavity, lips, salivary glands"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255132007 "Carcinoma in situ of anterior two-thirds of tongue - ventral surface"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255136005 "Carcinoma in situ of upper labial mucosa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255137001 "Carcinoma in situ of buccal aspect of lower lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255138006 "Carcinoma in situ of ear, nose and throat"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255139003 "Carcinoma in situ of middle ear and mastoid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255140001 "Carcinoma in situ of nasal cavity and nasopharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255142009 "Carcinoma in situ of respiratory and intrathoracic organ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255144005 "Carcinoma in situ of ear"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255145006 "Carcinoma in situ of surface epithelium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255146007 "Carcinoma in situ of epidermal appendage"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255149000 "Carcinoma in situ of prostatic ducts"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255150000 "Carcinoma in situ of urinary tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#271525004 "Carcinoma in situ of liver and/or biliary system (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#275492001 "Carcinoma in situ tongue base - dorsal surface"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#276875006 "Vulval intraepithelial neoplasia grade III"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#313351009 "Bowen's disease of vulva"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#398768004 "Queyrat's erythroplasia (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#398831006 "Bowen's disease of penis (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#399911003 "Bowenoid papulosis of vulva with vulval intraepithelial neoplasia grade III (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#399929008 "Bowenoid papulosis of anus with anal intraepithelial neoplasia grade III (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#400066006 "Intraepithelial squamous cell carcinoma (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#400092004 "Penile intraepithelial neoplasia grade III (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#400118002 "Bowenoid papulosis of penis with penile intraepithelial neoplasia grade III (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#402813000 "Carcinoma-in-situ of oral mucosa (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403485001 "Anal intraepithelial neoplasia (AIN III) (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403873003 "Intraepidermal squamous carcinoma of scalp (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403874009 "Intraepidermal squamous carcinoma of face (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403875005 "Intraepidermal squamous carcinoma of forehead (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403876006 "Intraepidermal squamous carcinoma of ear (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403877002 "Intraepidermal squamous carcinoma of hand (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403878007 "Intraepidermal squamous carcinoma of upper extremity (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403879004 "Intraepidermal squamous carcinoma of lower extremity (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403880001 "Intraepidermal squamous carcinoma of trunk (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403881002 "Bowen's disease, atrophic (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403882009 "Bowen's disease, verrucous (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403883004 "Bowen's disease, psoriasiform (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403884005 "Bowen's disease, pigmented (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403885006 "Bowen's disease, pagetoid (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403886007 "Bowen's disease, clonal (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403887003 "Bowen's disease, clear cell (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403888008 "Multiple intraepidermal squamous carcinomata (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#406103009 "Squamous cell carcinoma in situ of uterine cervix (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#416921001 "Carcinoma in situ of nasolacrimal duct (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#422607004 "Carcinoma in situ of lacrimal drainage system (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#422893006 "Carcinoma in situ of lacrimal gland duct (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#423278008 "Lentigo maligna of skin of eyelid (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#446711009 "High grade prostatic intraepithelial neoplasia (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#447953007 "Bowen's disease of skin of chest (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#449064001 "Bowen's disease of skin of buttock (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#449802004 "Carcinoma in situ of dome of urinary bladder (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#473419009 "Intraductal papillary mucinous carcinoma in situ of pancreas"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#702712006 "Carcinoma in situ of common hepatic duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#721594000 "Papillary carcinoma in situ of breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#721595004 "Primary intracystic papillary carcinoma of breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#721596003 "Solid papillary carcinoma in situ of breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#722523004 "Mixed ductal and lobular carcinoma in situ of breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#722664004 "Carcinoma in situ of ocular adnexa (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#722713005 "Carcinoma in situ of anal margin (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#723164006 "Carcinoma in situ of skin of penis (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#737169005 "Ductal comedocarcinoma in situ of breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#762260000 "Pleomorphic lobular carcinoma in situ of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#767544007 "Intraepithelial squamous cell carcinoma of anogenital region"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#785798002 "Carcinoma in situ of oral cavity (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#789051005 "Squamous cell carcinoma in situ of skin caused by sunlight (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#816979008 "Differentiated vulvar intraepithelial neoplasia"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#816980006 "Differentiated PeIN (penile intraepithelial neoplasia)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#826978004 "Solid ductal carcinoma in situ of breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#871635009 "Squamous cell carcinoma in situ of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#80071000119103 "Basal cell carcinoma of skin in situ (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#353591000119105 "Carcinoma in situ of left breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#353631000119105 "Carcinoma in situ of right breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#354341000119108 "Lobular carcinoma in situ of left breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#354471000119108 "Lobular carcinoma in situ of right breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1079811000119104 "Intraductal carcinoma in situ of left breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1079821000119106 "Intraductal carcinoma in situ of right breast (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#15636951000119108 "Intraductal carcinoma in situ of bilateral breasts (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#15952981000119103 "Lobular carcinoma in situ of bilateral breasts (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#16908281000119101 "Squamous cell carcinoma in situ of skin of right lower eyelid"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#16908321000119106 "Squamous cell carcinoma in situ of skin of left lower eyelid (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00 "CARCINOMA IN SITU OF ORAL CAVITY, ESOPHAGUS AND STOMACH"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.0 "Carcinoma in situ of lip, oral cavity and pharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.00 "Carcinoma in situ of oral cavity, unspecified site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.01 "Carcinoma in situ of labial mucosa and vermilion border"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.02 "Carcinoma in situ of buccal mucosa"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.03 "Carcinoma in situ of gingiva and edentulous alveolar ridge"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.04 "Carcinoma in situ of soft palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.05 "Carcinoma in situ of hard palate"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.06 "Carcinoma in situ of floor of mouth"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.07 "Carcinoma in situ of tongue"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.08 "Carcinoma in situ of pharynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.1 "Carcinoma in situ of esophagus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D00.2 "Carcinoma in situ of stomach"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01 "CARCINOMA IN SITU OF OTHER AND UNSPECIFIED DIGESTIVE ORGANS"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.0 "Carcinoma in situ of colon"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.1 "Carcinoma in situ of rectosigmoid junction"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.2 "Carcinoma in situ of rectum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.3 "Carcinoma in situ of anus and anal canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.4 "Carcinoma in situ of other and unspecified parts of intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.40 "Carcinoma in situ of unspecified part of intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.49 "Carcinoma in situ of other parts of intestine"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.5 "Carcinoma in situ of liver, gallbladder and bile ducts"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.7 "Carcinoma in situ of other specified digestive organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D01.9 "Carcinoma in situ of digestive organ, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D02 "CARCINOMA IN SITU OF MIDDLE EAR AND RESPIRATORY SYSTEM"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D02.0 "Carcinoma in situ of larynx"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D02.1 "Carcinoma in situ of trachea"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D02.2 "Carcinoma in situ of bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D02.20 "Carcinoma in situ of unspecified bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D02.21 "Carcinoma in situ of right bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D02.22 "Carcinoma in situ of left bronchus and lung"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D02.3 "Carcinoma in situ of other parts of respiratory system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D02.4 "Carcinoma in situ of respiratory system, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05 "CARCINOMA IN SITU OF BREAST"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.0 "Lobular carcinoma in situ of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.00 "Lobular carcinoma in situ of unspecified breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.01 "Lobular carcinoma in situ of right breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.02 "Lobular carcinoma in situ of left breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.1 "Intraductal carcinoma in situ of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.10 "Intraductal carcinoma in situ of unspecified breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.11 "Intraductal carcinoma in situ of right breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.12 "Intraductal carcinoma in situ of left breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.8 "Other specified type of carcinoma in situ of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.80 "Other specified type of carcinoma in situ of unspecified breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.81 "Other specified type of carcinoma in situ of right breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.82 "Other specified type of carcinoma in situ of left breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.9 "Unspecified type of carcinoma in situ of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.90 "Unspecified type of carcinoma in situ of unspecified breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.91 "Unspecified type of carcinoma in situ of right breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D05.92 "Unspecified type of carcinoma in situ of left breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07 "CARCINOMA IN SITU OF OTHER AND UNSPECIFIED GENITAL ORGANS"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.0 "Carcinoma in situ of endometrium"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.1 "Carcinoma in situ of vulva"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.2 "Carcinoma in situ of vagina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.3 "Carcinoma in situ of other and unspecified female genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.30 "Carcinoma in situ of unspecified female genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.39 "Carcinoma in situ of other female genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.4 "Carcinoma in situ of penis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.6 "Carcinoma in situ of other and unspecified male genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.60 "Carcinoma in situ of unspecified male genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.61 "Carcinoma in situ of scrotum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D07.69 "Carcinoma in situ of other male genital organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09 "CARCINOMA IN SITU OF OTHER AND UNSPECIFIED SITES"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.0 "Carcinoma in situ of bladder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.1 "Carcinoma in situ of other and unspecified urinary organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.10 "Carcinoma in situ of unspecified urinary organ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.19 "Carcinoma in situ of other urinary organs"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.2 "Carcinoma in situ of eye"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.20 "Carcinoma in situ of unspecified eye"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.21 "Carcinoma in situ of right eye"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.22 "Carcinoma in situ of left eye"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.3 "Carcinoma in situ of thyroid and other endocrine glands"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.8 "Carcinoma in situ of other specified sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D09.9 "Carcinoma in situ, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189758001 "Melanoma in situ"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109266006 "Melanoma in situ of skin (clinical)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109268007 "Melanoma in situ of non-skin site"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109270003 "Melanoma in situ of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109272006 "Melanoma in situ of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109274007 "Melanoma in situ of eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109276009 "Melanoma in situ of scalp"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109278005 "Melanoma in situ of ear"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109280004 "Melanoma in situ of external auditory canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109282007 "Melanoma in situ of neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109284008 "Melanoma in situ of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109286005 "Melanoma in situ of skin of breast"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109288006 "Melanoma in situ of perianal skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109290007 "Melanoma in situ of upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109292004 "Melanoma in situ of shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109294003 "Melanoma in situ of lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109296001 "Melanoma in situ of hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189324006 "Melanoma in situ of skin structure of scalp and/or neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#315036008 "Melanoma in situ of back of hand"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#315230006 "Melanoma in situ of back"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#402556000 "Malignant melanoma (radial growth phase) (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#402557009 "In situ acral lentiginous malignant melanoma (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#722689005 "Melanoma in situ of conjunctiva (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#878798006 "Melanoma in situ of skin of scrotum (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#878799003 "Melanoma in situ of vermilion border of lip (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#352121000119105 "Melanoma in situ of right ear"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#352161000119100 "Melanoma in situ of right upper limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#352191000119107 "Melanoma in situ of right lower limb"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1080911000119105 "Melanoma in situ of left ear (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1080931000119100 "Melanoma in situ of left lower limb (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03 "Melanoma in situ of skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.0 "Melanoma in situ of lip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.1 "Melanoma in situ of eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.10 "Melanoma in situ of unspecified eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.11 "Melanoma in situ of right eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.111 "Melanoma in situ of right upper eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.112 "Melanoma in situ of right lower eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.12 "Melanoma in situ of left eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.121 "Melanoma in situ of left upper eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.122 "Melanoma in situ of left lower eyelid, including canthus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.2 "Melanoma in situ of ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.20 "Melanoma in situ of unspecified ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.21 "Melanoma in situ of right ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.22 "Melanoma in situ of left ear and external auricular canal"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.3 "Melanoma in situ of other and unspecified parts of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.30 "Melanoma in situ of unspecified part of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.39 "Melanoma in situ of other parts of face"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.4 "Melanoma in situ of scalp and neck"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.5 "Melanoma in situ of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.51 "Melanoma in situ of anal skin"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.52 "Melanoma in situ of breast (skin) (soft tissue)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.59 "Melanoma in situ of other part of trunk"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.6 "Melanoma in situ of upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.60 "Melanoma in situ of unspecified upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.61 "Melanoma in situ of right upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.62 "Melanoma in situ of left upper limb, including shoulder"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.7 "Melanoma in situ of lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.70 "Melanoma in situ of unspecified lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.71 "Melanoma in situ of right lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.72 "Melanoma in situ of left lower limb, including hip"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.8 "Melanoma in situ of other sites"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D03.9 "Melanoma in situ, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#93468003 "Hemangioma of intracranial structure"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403775003 "Hereditary neurocutaneous angiomata (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#428089008 "Venous hemangioma of brain (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#444869007 "Cavernous hemangioma of brain (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#717003001 "Hereditary cavernous hemangioma of brain (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109913001 "Benign neoplasm of meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92051001 "Benign neoplasm of cerebral meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92406008 "Benign neoplasm of spinal meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189016009 "Lipoma of spinal canal - intradural"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#253192007 "Fibrolipoma of filum terminale"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#277527003 "Melanocytoma of meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#429306002 "Benign neoplasm of spinal intradural intramedullary space (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#429691007 "Benign neoplasm of spinal intradural space"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#724171006 "Benign meningioma (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#765202001 "Familial multiple benign meningioma (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#770628008 "Diffuse leptomeningeal melanocytosis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#8551000119100 "Benign neoplasm of spinal intradural extramedullary space"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#104431000119107 "Lipomyelomeningocele"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92030004 "Benign neoplasm of brain"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92029009 "Benign neoplasm of brain stem"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92050000 "Benign neoplasm of cerebellum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92052008 "Benign neoplasm of cerebral ventricle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92072003 "Benign neoplasm of craniopharyngeal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92114009 "Benign neoplasm of frontal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92253009 "Benign neoplasm of occipital lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92276007 "Benign neoplasm of parietal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92294001 "Benign neoplasm of pineal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92296004 "Benign neoplasm of pituitary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92427003 "Benign neoplasm of temporal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#126948004 "Cerebellopontine angle meningioma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#134209002 "Prolactinoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#135884009 "Benign neoplasm of pons"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189162003 "Benign neoplasm of brain, supratentorial"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#237719001 "Pituitary adenoma with extrasellar extension"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#253010003 "Microprolactinoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#253011004 "Macroprolactinoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254943007 "Benign tumor of choroid plexus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254956000 "Pituitary adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254957009 "Somatotroph adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254958004 "ACTH-secreting pituitary adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254959007 "Thyrotroph adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254960002 "Gonadotrophin-secreting pituitary adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254961003 "Mixed-functioning pituitary adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254962005 "Functionless pituitary adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254963000 "Pituitary microadenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254964006 "Pituitary mesoadenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254965007 "Pituitary macroadenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254966008 "Suprasellar extension of pituitary adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254970000 "Benign tumor of olfactory tract"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#255200003 "Benign tumor of hypothalamus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#264906008 "Pituitary macroadenoma with extrasellar extension"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#271479005 "Benign neoplasm of pituitary gland and craniopharyngeal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#275269004 "Benign cerebral tumor"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#425868004 "Benign papilloma of choroid plexus (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#429765002 "Benign neoplasm of medulla oblongata (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#448135004 "Benign teratoma of pineal region (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#699331002 "Granular cell tumor of neurohypophysis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#702375004 "Familial isolated pituitary adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#722201004 "Median cleft of upper lip, corpus callosum lipoma, cutaneous polyp syndrome (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#778046002 "Somatomammotropinoma (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#783008000 "Pituitary dermoid and epidermoid cysts (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#788756004 "Spindle cell oncocytoma of posterior pituitary gland (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#830032008 "Dermoid cyst of occipital lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#830033003 "Dermoid cyst of brain (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1157249003 "Invasive benign pituitary adenoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#87161000119107 "Benign ependymoma of brain"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#350841000119107 "Benign neoplasm of infratentorial brain (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#15863451000119107 "Lipoma of brain (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92048008 "Benign neoplasm of central nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92257005 "Benign neoplasm of optic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92405007 "Benign neoplasm of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189015008 "Lipoma of spinal canal - extradural"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189017000 "Lipoma of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254977002 "Benign neoplasm of optic nerve and nerve sheath (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254979004 "Melanocytoma of optic nerve head"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#423361002 "Lipoma of dorsal spinal cord (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#426470009 "Lipoma of terminal spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#426510004 "Schwannoma of spinal cord (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#427939000 "Benign neoplasm of spinal extradural space (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#782680004 "Gangliocytoma of central nervous system (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#830015009 "Dermoid cyst of spinal cord (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#838304009 "Benign ependymoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#838350007 "Adenoma of neuroepithelium of iris"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1003434002 "Lipoma due to neurospinal dysraphism"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#33441000119100 "Transitional lipoma of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#34041000119108 "Benign neoplasm of extramedullary spinal cord (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#16207161000119102 "Cavernous hemangioma of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94963005 "Neoplasm of uncertain behavior of nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#19133005 "Neurofibromatosis syndrome"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92503002 "Bilateral acoustic neurofibromatosis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#92824003 "Neurofibromatosis type 1"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94722009 "Neoplasm of uncertain behavior of abducens nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94723004 "Neoplasm of uncertain behavior of accessory nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94725006 "Neoplasm of uncertain behavior of acoustic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94766006 "Neoplasm of uncertain behavior of brain stem"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94767002 "Neoplasm of uncertain behavior of brain"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94782007 "Neoplasm of uncertain behavior of cauda equina"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94784008 "Neoplasm of uncertain behavior of central nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94786005 "Neoplasm of uncertain behavior of cerebellum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94787001 "Neoplasm of uncertain behavior of cerebral meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94788006 "Neoplasm of uncertain behavior of cerebral ventricle"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94789003 "Neoplasm of uncertain behavior of cerebrum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94807005 "Neoplasm of uncertain behavior of cranial nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94808000 "Neoplasm of uncertain behavior of craniopharyngeal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94833002 "Neoplasm of uncertain behavior of facial nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94847003 "Neoplasm of uncertain behavior of frontal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94855005 "Neoplasm of uncertain behavior of glossopharyngeal nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94868002 "Neoplasm of uncertain behavior of hypoglossal nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94968001 "Neoplasm of uncertain behavior of occipital lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94969009 "Neoplasm of uncertain behavior of oculomotor nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94970005 "Neoplasm of uncertain behavior of olfactory nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94971009 "Neoplasm of uncertain behavior of optic nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#94986003 "Neoplasm of uncertain behavior of parietal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#95002008 "Neoplasm of uncertain behavior of pineal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#95004009 "Neoplasm of uncertain behavior of pituitary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#95108005 "Neoplasm of uncertain behavior of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#95109002 "Neoplasm of uncertain behavior of spinal meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#95126008 "Neoplasm of uncertain behavior of temporal lobe"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#95148002 "Neoplasm of uncertain behavior of trigeminal nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#95150005 "Neoplasm of uncertain behavior of trochlear nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#95171000 "Neoplasm of uncertain behavior of vagus nerve"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109914007 "Neoplasm of uncertain behavior of meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#109917000 "Neoplasm of uncertain behavior of peripheral nerves and peripheral autonomic nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189179009 "Craniopharyngioma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189484008 "Neoplasm of uncertain behavior of brain and spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189487001 "Neoplasm of uncertain or unknown behavior of brain, supratentorial"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#189488006 "Neoplasm of uncertain or unknown behavior of brain, infratentorial"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254241004 "Segmental neurofibromatosis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254945000 "Embryonal tumor of brain"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254954002 "Embryonal tumor of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#254976006 "Optic nerve glioma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#269496008 "Neoplasm of uncertain behavior of endocrine glands and nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#277507004 "Pilocytic astrocytoma of cerebellum"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#359619007 "Pinealoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403815003 "Axillary freckling due to neurofibromatosis (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403816002 "Multiple café-au-lait macules due to neurofibromatosis (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403817006 "Multiple neurofibromas in neurofibromatosis (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403819009 "Elephantiasis neurofibromatosa (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403820003 "Café-au-lait macules with pulmonary stenosis (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403821004 "Café-au-lait macules with temporal dysrhythmia (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#403822006 "Familial multiple café-au-lait macules without neurofibromatosis (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#416351002 "Intraocular optic nerve glioma (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#417619001 "Intracranial optic nerve glioma (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#449799008 "SEGA - Subependymal giant cell astrocytoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#608817003 "Pituicytoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#715344006 "Neurofibromatosis Noonan syndrome (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#716592003 "Cerebellar liponeurocytoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#716787002 "Extraventricular neurocytoma (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#721535002 "Central neurocytoma of brain (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#722377004 "Paraganglioma and gastric stromal sarcoma syndrome (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#763865009 "Pilocytic astrocytoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#770682007 "Rosette-forming glioneuronal neoplasm"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#780822000 "Desmoplastic infantile astrocytoma and ganglioglioma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#781641005 "Schwannomatosis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#788757008 "Pituicytoma of posterior pituitary gland (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#788758003 "Sellar ependymoma of posterior pituitary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#880093002 "17q11 deletion syndrome (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1003465006 "Familial spinal neurofibromatosis"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1010653007 "Segmental neurofibromatosis type 1 (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156407001 "Myxopapillary ependymoma of spinal cord (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156412000 "Angiocentric glioma of central nervous system (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156457009 "Papillary glioneuronal tumor of brain (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156470000 "Atypical choroid plexus papilloma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1156473003 "Pineocytoma"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#1157161000 "Meningioma of uncertain behavior (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#19191000119106 "Neoplasm of uncertain behavior of peripheral nerve (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#25521000119106 "Neoplasm of uncertain behavior of hypothalamus (disorder)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#16903531000119107 "Atypical meningioma of brain"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D18.02 "Hemangioma of intracranial structures"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D32 "BENIGN NEOPLASM OF MENINGES"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D32.0 "Benign neoplasm of cerebral meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D32.1 "Benign neoplasm of spinal meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D32.9 "Benign neoplasm of meninges, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D33 "BENIGN NEOPLASM OF BRAIN AND OTHER PARTS OF CENTRAL NERVOUS SYSTEM"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D33.0 "Benign neoplasm of brain, supratentorial"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D33.1 "Benign neoplasm of brain, infratentorial"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D33.2 "Benign neoplasm of brain, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D33.3 "Benign neoplasm of cranial nerves"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D33.4 "Benign neoplasm of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D33.7 "Benign neoplasm of other specified parts of central nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D33.9 "Benign neoplasm of central nervous system, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D35.2 "Benign neoplasm of pituitary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D35.3 "Benign neoplasm of craniopharyngeal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D35.4 "Benign neoplasm of pineal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D42.0 "Neoplasm of uncertain behavior of cerebral meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D42.1 "Neoplasm of uncertain behavior of spinal meninges"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D42.9 "Neoplasm of uncertain behavior of meninges, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D43.0 "Neoplasm of uncertain behavior of brain, supratentorial"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D43.1 "Neoplasm of uncertain behavior of brain, infratentorial"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D43.2 "Neoplasm of uncertain behavior of brain, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D43.3 "Neoplasm of uncertain behavior of cranial nerves"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D43.4 "Neoplasm of uncertain behavior of spinal cord"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D43.8 "Neoplasm of uncertain behavior of other specified parts of central nervous system"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D43.9 "Neoplasm of uncertain behavior of central nervous system, unspecified"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D44.3 "Neoplasm of uncertain behavior of pituitary gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D44.4 "Neoplasm of uncertain behavior of craniopharyngeal duct"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#D44.5 "Neoplasm of uncertain behavior of pineal gland"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#126361000119107 "Cytological evidence of malignancy on anal Papanicolaou smear (finding)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://snomed.info/sct#126371000119101 "Cytological evidence of malignancy on vaginal Papanicolaou smear (finding)"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#R85.614 "Cytologic evidence of malignancy on smear of anus"
* expansion.contains[+].abstract = false
* expansion.contains[=].inactive = false
* expansion.contains[=] = http://hl7.org/fhir/sid/icd-10-cm#R87.624 "Cytologic evidence of malignancy on smear of vagina"
```