const tree = [
  {
    "name": "onco.core.CancerDiseaseStatus",
    "title": "Cancer Disease Status",
    "type": "entry",
    "description": "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-datatype-ConditionStatusTrendVS (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Response to cancer treatment"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.CancerRelatedMedicationStatement",
    "title": "Cancer Related Medication Statement",
    "type": "entry",
    "description": "A record of the use of a medication (individual administration or entire course) for a condition that is related to a primary or secondary cancer condition. The use may be reported by the patient or clinician and adminstration does not have to be directly observed.",
    "properties": [
      {
        "name": "obf.MedicationCodeOrReference",
        "title": "Medication Code Or Reference",
        "type": "element",
        "description": "A choice of a medication code or reference.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.Medication",
            "title": "Medication",
            "type": "entry",
            "description": "A type of prescription drug or over-the-counter drug that is used to prevent, treat, or relieve symptoms of a disease or abnormal condition, but excluding vaccines.\nIn FHIR DSTU2 and STU3, Medication lacks the identifier attribute, which is included in SHR as an extension.\nDSTU2 lacks the status attribute, which is required by US-Core.\nBatch is 0..1 in FHIR R4, and accordingly is restricted here.",
            "properties": [],
            "values": []
          }
        ]
      },
      {
        "name": "obf.datatype.OccurrenceTimeOrPeriod",
        "title": "Occurrence Time Or Period",
        "type": "element",
        "description": "The point or period of time when the event takes place. Times can be precise (dateTime) or approximate (date). If a time period is used, and the start date or dateTime is missing, the start of the period is not known. If the end date or dateTime is missing, it means that the period is ongoing.",
        "properties": [],
        "values": [
          {
            "name": "date",
            "title": "date",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.TerminationReason",
        "title": "Termination Reason",
        "type": "element",
        "description": "A code explaining unplanned or premature termination of a plan of treatment, course of medication, or research study.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-TreatmentTerminationReasonVS (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.TreatmentIntent",
        "title": "Treatment Intent",
        "type": "element",
        "description": "The purpose of a treatment.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-TreatmentIntentVS (REQUIRED)"
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.CancerRelatedRadiationProcedure",
    "title": "Cancer Related Radiation Procedure",
    "type": "entry",
    "description": "A radiological treatment addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the ReasonReference and ReasonCode to cancer conditions.\n\nConformance note: If an ICD-10-PCS code is used in the code attribute, and there is a semantically equivalent SNOMED CT or CPT code, the resulting Procedure instance will not be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html)",
    "properties": [
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-RadiationProcedureVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.datatype.BodyLocation",
        "title": "Body Location",
        "type": "group",
        "description": "A location or structure in the body, including tissues, regions, cavities, and spaces; for example, right elbow, or left ventricle of the heart. Body location is a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.\n* Code only: The code should include (precoordinate) laterality and/orientation to the degree necessary to completely specify the body location.\n* Code plus laterality and/or orientation: The basic code augmented by codes specifying the body side and/or anatomical orientation.\n* Relation to landmark: The location relative to a landmark is specified by:\n1. Establishing the location and type of landmark using a body site code and optional laterality/orientation, and\n2. Specifying the direction and distance from the landmark to the body location.\nNote that BodyLocation is a data type, a reusable structure, not a stand-alone entity. The concept is similar to how a postal address can apply to a person, location, or organization. This contrasts with FHIR's stand-alone BodySite (aka BodyStructure in r4) which 'is not ... intended for describing the type of anatomical location but rather a specific body site on a specific patient' (FHIR 3.5).",
        "properties": [
          {
            "name": "obf.datatype.Code",
            "title": "Code",
            "type": "element",
            "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": [],
                "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-RadiationTargetBodySiteVS (EXTENSIBLE)"
              }
            ]
          }
        ],
        "values": []
      },
      {
        "name": "obf.datatype.BodyLocation",
        "title": "Body Location",
        "type": "group",
        "description": "A location or structure in the body, including tissues, regions, cavities, and spaces; for example, right elbow, or left ventricle of the heart. Body location is a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.\n* Code only: The code should include (precoordinate) laterality and/orientation to the degree necessary to completely specify the body location.\n* Code plus laterality and/or orientation: The basic code augmented by codes specifying the body side and/or anatomical orientation.\n* Relation to landmark: The location relative to a landmark is specified by:\n1. Establishing the location and type of landmark using a body site code and optional laterality/orientation, and\n2. Specifying the direction and distance from the landmark to the body location.\nNote that BodyLocation is a data type, a reusable structure, not a stand-alone entity. The concept is similar to how a postal address can apply to a person, location, or organization. This contrasts with FHIR's stand-alone BodySite (aka BodyStructure in r4) which 'is not ... intended for describing the type of anatomical location but rather a specific body site on a specific patient' (FHIR 3.5).",
        "properties": [
          {
            "name": "obf.datatype.Laterality",
            "title": "Laterality",
            "type": "element",
            "description": "Body side of the body location, if needed to distinguish from a similar location on the other side of the body.\n\nThe laterality element is part of BodyLocation, a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.\n\n* Code only: The code should include (precoordinate) laterality and/orientation to the degree necessary to completely specify the body location.\n* Code plus laterality and/or orientation: The basic code augmented by codes specifying the body side and/or anatomical orientation.\n* Relation to landmark: The location relative to a landmark is specified by:\n1. Establishing the location and type of landmark using a body site code and optional laterality/orientation, and\n2. Specifying the direction and distance from the landmark to the body location.\n\nNote that BodyLocation is a data type (a reusable structure), not a stand-alone entity. The concept is similar to how a postal address can apply to a person, location, or organization. This contrasts with FHIR's stand-alone BodySite (aka BodyStructure in r4) which 'is not ... intended for describing the type of anatomical location but rather a specific body site on a specific patient' (FHIR 3.5).",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": [],
                "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-datatype-LateralityVS (EXTENSIBLE)"
              }
            ]
          }
        ],
        "values": []
      },
      {
        "name": "obf.datatype.OccurrenceTimeOrPeriod",
        "title": "Occurrence Time Or Period",
        "type": "element",
        "description": "The point or period of time when the event takes place. Times can be precise (dateTime) or approximate (date). If a time period is used, and the start date or dateTime is missing, the start of the period is not known. If the end date or dateTime is missing, it means that the period is ongoing.",
        "properties": [],
        "values": [
          {
            "name": "date",
            "title": "date",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.TreatmentIntent",
        "title": "Treatment Intent",
        "type": "element",
        "description": "The purpose of a treatment.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-TreatmentIntentVS (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.ReasonCode",
        "title": "Reason Code",
        "type": "element",
        "description": "The explanation or justification for the current item or action, as a code.\nReason is a string or CodeableConcept in DSTU2 but in later versions only a CodeableConcept.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerDisorderVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "onco.core.CancerProcedureReasonReference",
        "title": "Cancer Procedure Reason Reference",
        "type": "element",
        "description": "Reference to a primary or secondary cancer condition.",
        "properties": [],
        "values": [
          {
            "name": "onco.core.PrimaryCancerCondition",
            "title": "Primary Cancer Condition",
            "type": "entry",
            "description": "Records the history of the primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.\n\nCancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the TNMClinicalStageGroup and/or TNMPathologicalStageGroup, which refer back to PrimaryCancerCondition.\n\nConformance note: For the code attribute, to be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html), SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used.",
            "properties": [],
            "values": []
          },
          {
            "name": "onco.core.SecondaryCancerCondition",
            "title": "Secondary Cancer Condition",
            "type": "entry",
            "description": "Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/secondary-tumor)).\n\nConformance note: For the code attribute, to be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html), SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.CancerRelatedSurgicalProcedure",
    "title": "Cancer Related Surgical Procedure",
    "type": "entry",
    "description": "A surgical action addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the ReasonReference and ReasonCode to cancer conditions.\n\nConformance note: If an ICD-10-PCS code is used in the code attribute, and there is a semantically equivalent SNOMED CT or CPT code, the resulting Procedure instance will not be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html).",
    "properties": [
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerRelatedSurgicalProcedureVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.datatype.OccurrenceTimeOrPeriod",
        "title": "Occurrence Time Or Period",
        "type": "element",
        "description": "The point or period of time when the event takes place. Times can be precise (dateTime) or approximate (date). If a time period is used, and the start date or dateTime is missing, the start of the period is not known. If the end date or dateTime is missing, it means that the period is ongoing.",
        "properties": [],
        "values": [
          {
            "name": "date",
            "title": "date",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.TreatmentIntent",
        "title": "Treatment Intent",
        "type": "element",
        "description": "The purpose of a treatment.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-TreatmentIntentVS (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.ReasonCode",
        "title": "Reason Code",
        "type": "element",
        "description": "The explanation or justification for the current item or action, as a code.\nReason is a string or CodeableConcept in DSTU2 but in later versions only a CodeableConcept.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerDisorderVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "onco.core.CancerProcedureReasonReference",
        "title": "Cancer Procedure Reason Reference",
        "type": "element",
        "description": "Reference to a primary or secondary cancer condition.",
        "properties": [],
        "values": [
          {
            "name": "onco.core.PrimaryCancerCondition",
            "title": "Primary Cancer Condition",
            "type": "entry",
            "description": "Records the history of the primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.\n\nCancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the TNMClinicalStageGroup and/or TNMPathologicalStageGroup, which refer back to PrimaryCancerCondition.\n\nConformance note: For the code attribute, to be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html), SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used.",
            "properties": [],
            "values": []
          },
          {
            "name": "onco.core.SecondaryCancerCondition",
            "title": "Secondary Cancer Condition",
            "type": "entry",
            "description": "Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/secondary-tumor)).\n\nConformance note: For the code attribute, to be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html), SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "obf.ComorbidCondition",
    "title": "Comorbid Condition",
    "type": "entry",
    "description": "A comorbidity refers to one or more diseases or conditions that occur along with another condition in the same person at the same time. Conditions considered comorbidities are often long-term or chronic conditions. Comorbidities are defined relative to an index disease and may be categorical, rather than described in full detail. The comorbid condition class provides comorbidity codes corresponding the Elixhauser Comorbidity Index.\n\nConformance note: If an ICD-10-CM code is used for the code attribute, and a semantically equivalent SNOMED code is available, the resulting instance will not be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html).",
    "properties": [
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-ComorbidConditionVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.ClinicalStatus",
        "title": "Clinical Status",
        "type": "element",
        "description": "A flag indicating whether the condition is active or inactive, recurring, in remission, or resolved (as of the last update of the Condition).",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/condition-clinical (REQUIRED)"
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "obf.ECOGPerformanceStatus",
    "title": "ECOG Performance Status",
    "type": "entry",
    "description": "The Eastern Cooperative Oncology Group (ECOG) Performance Status represents the patient's functional status and is used to determine their ability to tolerate therapies in serious illness, specifically for chemotherapy. (Definition from: [LOINC](https://loinc.org/89262-0/)).",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-ECOGPerformanceStatusVS (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "ECOG Performance Status [Interpretation]"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.GeneticSpecimen",
    "title": "Genetic Specimen",
    "type": "entry",
    "description": "A small sample of blood, hair, skin, amniotic fluid (the fluid that surrounds a fetus during pregnancy), or other tissue which is excised from a subject for the purposes of genomics testing or analysis.",
    "properties": [
      {
        "name": "obf.SpecimenType",
        "title": "Specimen Type",
        "type": "element",
        "description": "The type of material the specimen contains or consists of.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-GeneticSpecimenTypeVS (EXTENSIBLE)"
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.GeneticVariant",
    "title": "Genetic Variant",
    "type": "entry",
    "description": "A test for a specific mutation on a particular gene. This profile is used to record whether a single discrete variant tested is present or absent (denoted as positive or negative respectively).",
    "properties": [
      {
        "name": "obf.Method",
        "title": "Method",
        "type": "element",
        "description": "The technique used to carry out an action, for example, the specific imaging technical or assessment vehicle.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "https://fhir.loinc.org/ValueSet/LL4048-6 (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Components",
        "title": "Components",
        "type": "group",
        "description": "Sub-observations that are part of this observation. A sub-observation contributs to the parent observation and are always treated a part of a single observation (they are not separable). However, the reference range for the primary observation value is not inherited by the component values and is required when appropriate for each component observation.",
        "properties": [
          {
            "name": "obf.ObservationComponent",
            "title": "Observation Component",
            "type": "group",
            "description": "A sub-observation contributing to the parent observation, expressed as separate code value pairs that share the same attributes. Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations. Component observations share the same attributes in the Observation resource as the primary observation and are always treated a part of a single observation (they are not separable). However, the reference range for the primary observation value is not inherited by the component values and is required when appropriate for each component observation.",
            "properties": [
              {
                "name": "obf.datatype.Code",
                "title": "Code",
                "type": "element",
                "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
                "properties": [],
                "values": [
                  {
                    "name": "concept",
                    "title": "concept",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.DataValue",
                "title": "Data Value",
                "type": "element",
                "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
                "properties": [],
                "values": [
                  {
                    "name": "concept",
                    "title": "concept",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  },
                  {
                    "name": "obf.datatype.Quantity",
                    "title": "Quantity",
                    "type": "group",
                    "description": "A quantity with units, whose value may be bounded from above or below, as defined in FHIR",
                    "properties": [
                      {
                        "name": "obf.datatype.Number",
                        "title": "Number",
                        "type": "element",
                        "description": "A decimal value.",
                        "properties": [],
                        "values": [
                          {
                            "name": "decimal",
                            "title": "decimal",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.Comparator",
                        "title": "Comparator",
                        "type": "element",
                        "description": "A code indicated if the value represents an upper or lower bound",
                        "properties": [],
                        "values": [
                          {
                            "name": "concept",
                            "title": "concept",
                            "type": "primitive",
                            "properties": [],
                            "values": [],
                            "description": "http://hl7.org/fhir/ValueSet/quantity-comparator (REQUIRED)"
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.Units",
                        "title": "Units",
                        "type": "element",
                        "description": "The unit of measure of the quantity.",
                        "properties": [],
                        "values": [
                          {
                            "name": "concept",
                            "title": "concept",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      }
                    ],
                    "values": []
                  },
                  {
                    "name": "string",
                    "title": "string",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  },
                  {
                    "name": "obf.datatype.Range",
                    "title": "Range",
                    "type": "group",
                    "description": "An interval defined by a quantitative upper and/or lower bound. One of the two bounds must be specified, and the lower bound must be less than the upper bound. When Quantities are specified, the units of measure must be the same.",
                    "properties": [
                      {
                        "name": "obf.datatype.LowerBound",
                        "title": "Lower Bound",
                        "type": "element",
                        "description": "The lower limit on a range",
                        "properties": [],
                        "values": [
                          {
                            "name": "obf.datatype.SimpleQuantity",
                            "title": "Simple Quantity",
                            "type": "group",
                            "description": "A quantity where the comparator is not used, as defined in FHIR",
                            "properties": [
                              {
                                "name": "obf.datatype.Number",
                                "title": "Number",
                                "type": "element",
                                "description": "A decimal value.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "decimal",
                                    "title": "decimal",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              },
                              {
                                "name": "obf.datatype.Units",
                                "title": "Units",
                                "type": "element",
                                "description": "The unit of measure of the quantity.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "concept",
                                    "title": "concept",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              }
                            ],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.UpperBound",
                        "title": "Upper Bound",
                        "type": "element",
                        "description": "The upper limit on a quantitative value.",
                        "properties": [],
                        "values": [
                          {
                            "name": "obf.datatype.SimpleQuantity",
                            "title": "Simple Quantity",
                            "type": "group",
                            "description": "A quantity where the comparator is not used, as defined in FHIR",
                            "properties": [
                              {
                                "name": "obf.datatype.Number",
                                "title": "Number",
                                "type": "element",
                                "description": "A decimal value.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "decimal",
                                    "title": "decimal",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              },
                              {
                                "name": "obf.datatype.Units",
                                "title": "Units",
                                "type": "element",
                                "description": "The unit of measure of the quantity.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "concept",
                                    "title": "concept",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              }
                            ],
                            "values": []
                          }
                        ]
                      }
                    ],
                    "values": []
                  },
                  {
                    "name": "obf.datatype.Ratio",
                    "title": "Ratio",
                    "type": "group",
                    "description": "A unit of measurement for the quotient of the amount of one entity to another.",
                    "properties": [
                      {
                        "name": "obf.datatype.Numerator",
                        "title": "Numerator",
                        "type": "element",
                        "description": "The dividend of a fraction.",
                        "properties": [],
                        "values": [
                          {
                            "name": "obf.datatype.Quantity",
                            "title": "Quantity",
                            "type": "group",
                            "description": "A quantity with units, whose value may be bounded from above or below, as defined in FHIR",
                            "properties": [
                              {
                                "name": "obf.datatype.Number",
                                "title": "Number",
                                "type": "element",
                                "description": "A decimal value.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "decimal",
                                    "title": "decimal",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              },
                              {
                                "name": "obf.datatype.Comparator",
                                "title": "Comparator",
                                "type": "element",
                                "description": "A code indicated if the value represents an upper or lower bound",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "concept",
                                    "title": "concept",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": [],
                                    "description": "http://hl7.org/fhir/ValueSet/quantity-comparator (REQUIRED)"
                                  }
                                ]
                              },
                              {
                                "name": "obf.datatype.Units",
                                "title": "Units",
                                "type": "element",
                                "description": "The unit of measure of the quantity.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "concept",
                                    "title": "concept",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              }
                            ],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.Denominator",
                        "title": "Denominator",
                        "type": "element",
                        "description": "The divisor of a fraction.",
                        "properties": [],
                        "values": [
                          {
                            "name": "obf.datatype.Quantity",
                            "title": "Quantity",
                            "type": "group",
                            "description": "A quantity with units, whose value may be bounded from above or below, as defined in FHIR",
                            "properties": [
                              {
                                "name": "obf.datatype.Number",
                                "title": "Number",
                                "type": "element",
                                "description": "A decimal value.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "decimal",
                                    "title": "decimal",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              },
                              {
                                "name": "obf.datatype.Comparator",
                                "title": "Comparator",
                                "type": "element",
                                "description": "A code indicated if the value represents an upper or lower bound",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "concept",
                                    "title": "concept",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": [],
                                    "description": "http://hl7.org/fhir/ValueSet/quantity-comparator (REQUIRED)"
                                  }
                                ]
                              },
                              {
                                "name": "obf.datatype.Units",
                                "title": "Units",
                                "type": "element",
                                "description": "The unit of measure of the quantity.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "concept",
                                    "title": "concept",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              }
                            ],
                            "values": []
                          }
                        ]
                      }
                    ],
                    "values": []
                  },
                  {
                    "name": "time",
                    "title": "time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  },
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  },
                  {
                    "name": "obf.datatype.TimePeriod",
                    "title": "Time Period",
                    "type": "group",
                    "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
                    "properties": [
                      {
                        "name": "obf.datatype.BeginDateTime",
                        "title": "Begin Date Time",
                        "type": "element",
                        "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                        "properties": [],
                        "values": [
                          {
                            "name": "dateTime",
                            "title": "date Time",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.EndDateTime",
                        "title": "End Date Time",
                        "type": "element",
                        "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                        "properties": [],
                        "values": [
                          {
                            "name": "dateTime",
                            "title": "date Time",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      }
                    ],
                    "values": []
                  },
                  {
                    "name": "obf.datatype.SampledData",
                    "title": "Sampled Data",
                    "type": "group",
                    "description": "Data that comes from a series of measurements taken by a device, which may have upper and lower limits. The data type also supports more than one dimension in the data.",
                    "properties": [
                      {
                        "name": "obf.datatype.DataAsString",
                        "title": "Data As String",
                        "type": "element",
                        "description": "Data represented as a text sting.",
                        "properties": [],
                        "values": [
                          {
                            "name": "string",
                            "title": "string",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.Origin",
                        "title": "Origin",
                        "type": "element",
                        "description": "The quantity that a measured value of zero represents. In addition, this provides the units of the entire measurement series.",
                        "properties": [],
                        "values": [
                          {
                            "name": "obf.datatype.SimpleQuantity",
                            "title": "Simple Quantity",
                            "type": "group",
                            "description": "A quantity where the comparator is not used, as defined in FHIR",
                            "properties": [
                              {
                                "name": "obf.datatype.Number",
                                "title": "Number",
                                "type": "element",
                                "description": "A decimal value.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "decimal",
                                    "title": "decimal",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              },
                              {
                                "name": "obf.datatype.Units",
                                "title": "Units",
                                "type": "element",
                                "description": "The unit of measure of the quantity.",
                                "properties": [],
                                "values": [
                                  {
                                    "name": "concept",
                                    "title": "concept",
                                    "type": "primitive",
                                    "properties": [],
                                    "values": []
                                  }
                                ]
                              }
                            ],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.MillisecondsBetweenSamples",
                        "title": "Milliseconds Between Samples",
                        "type": "element",
                        "description": "The length of time between sampling times, measured in milliseconds.",
                        "properties": [],
                        "values": [
                          {
                            "name": "decimal",
                            "title": "decimal",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.CorrectionFactor",
                        "title": "Correction Factor",
                        "type": "element",
                        "description": "A correction factor that is applied to the sampled data points before they are added to the origin.",
                        "properties": [],
                        "values": [
                          {
                            "name": "decimal",
                            "title": "decimal",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.LowerLimit",
                        "title": "Lower Limit",
                        "type": "element",
                        "description": "The lower limit of detection of the measured points. This is needed if any of the data points have the value 'L' (lower than detection limit).",
                        "properties": [],
                        "values": [
                          {
                            "name": "decimal",
                            "title": "decimal",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.UpperLimit",
                        "title": "Upper Limit",
                        "type": "element",
                        "description": "The upper limit of detection of the measured points. This is needed if any of the data points have the value 'U' (higher than detection limit).",
                        "properties": [],
                        "values": [
                          {
                            "name": "decimal",
                            "title": "decimal",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.Dimensions",
                        "title": "Dimensions",
                        "type": "element",
                        "description": "The number of sample points at each time point. If this value is greater than one, then the dimensions will be interlaced - all the sample points for a point in time will be recorded at once.",
                        "properties": [],
                        "values": [
                          {
                            "name": "positiveInt",
                            "title": "positive Int",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      }
                    ],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.DataAbsentReason",
                "title": "Data Absent Reason",
                "type": "element",
                "description": "Reason that a value associated with a test or other finding is missing.",
                "properties": [],
                "values": [
                  {
                    "name": "concept",
                    "title": "concept",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.Interpretation",
                "title": "Interpretation",
                "type": "element",
                "description": "A clinical interpretation of a finding (applies to both assertions and observation).",
                "properties": [],
                "values": [
                  {
                    "name": "concept",
                    "title": "concept",
                    "type": "primitive",
                    "properties": [],
                    "values": [],
                    "description": "http://hl7.org/fhir/ValueSet/observation-interpretation (EXTENSIBLE)"
                  }
                ]
              },
              {
                "name": "obf.ReferenceRange",
                "title": "Reference Range",
                "type": "group",
                "description": "The usual or acceptable range for a test result.",
                "properties": [
                  {
                    "name": "obf.datatype.LowerBound",
                    "title": "Lower Bound",
                    "type": "element",
                    "description": "The lower limit on a range",
                    "properties": [],
                    "values": [
                      {
                        "name": "obf.datatype.SimpleQuantity",
                        "title": "Simple Quantity",
                        "type": "group",
                        "description": "A quantity where the comparator is not used, as defined in FHIR",
                        "properties": [
                          {
                            "name": "obf.datatype.Number",
                            "title": "Number",
                            "type": "element",
                            "description": "A decimal value.",
                            "properties": [],
                            "values": [
                              {
                                "name": "decimal",
                                "title": "decimal",
                                "type": "primitive",
                                "properties": [],
                                "values": []
                              }
                            ]
                          },
                          {
                            "name": "obf.datatype.Units",
                            "title": "Units",
                            "type": "element",
                            "description": "The unit of measure of the quantity.",
                            "properties": [],
                            "values": [
                              {
                                "name": "concept",
                                "title": "concept",
                                "type": "primitive",
                                "properties": [],
                                "values": []
                              }
                            ]
                          }
                        ],
                        "values": []
                      }
                    ]
                  },
                  {
                    "name": "obf.datatype.UpperBound",
                    "title": "Upper Bound",
                    "type": "element",
                    "description": "The upper limit on a quantitative value.",
                    "properties": [],
                    "values": [
                      {
                        "name": "obf.datatype.SimpleQuantity",
                        "title": "Simple Quantity",
                        "type": "group",
                        "description": "A quantity where the comparator is not used, as defined in FHIR",
                        "properties": [
                          {
                            "name": "obf.datatype.Number",
                            "title": "Number",
                            "type": "element",
                            "description": "A decimal value.",
                            "properties": [],
                            "values": [
                              {
                                "name": "decimal",
                                "title": "decimal",
                                "type": "primitive",
                                "properties": [],
                                "values": []
                              }
                            ]
                          },
                          {
                            "name": "obf.datatype.Units",
                            "title": "Units",
                            "type": "element",
                            "description": "The unit of measure of the quantity.",
                            "properties": [],
                            "values": [
                              {
                                "name": "concept",
                                "title": "concept",
                                "type": "primitive",
                                "properties": [],
                                "values": []
                              }
                            ]
                          }
                        ],
                        "values": []
                      }
                    ]
                  },
                  {
                    "name": "obf.datatype.Type",
                    "title": "Type",
                    "type": "element",
                    "description": "A code describing the item at a greater level of detail.",
                    "properties": [],
                    "values": [
                      {
                        "name": "concept",
                        "title": "concept",
                        "type": "primitive",
                        "properties": [],
                        "values": [],
                        "description": "http://hl7.org/fhir/ValueSet/referencerange-meaning (EXTENSIBLE)"
                      }
                    ]
                  },
                  {
                    "name": "obf.ApplicableSubpopulation",
                    "title": "Applicable Subpopulation",
                    "type": "element",
                    "description": "Codes to indicate the target population this reference range applies to. For example, a reference range may be based on the normal population or a particular sex or race.",
                    "properties": [],
                    "values": [
                      {
                        "name": "concept",
                        "title": "concept",
                        "type": "primitive",
                        "properties": [],
                        "values": [],
                        "description": "http://hl7.org/fhir/ValueSet/referencerange-appliesto (EXTENSIBLE)"
                      }
                    ]
                  },
                  {
                    "name": "obf.ApplicableAgeRange",
                    "title": "Applicable Age Range",
                    "type": "element",
                    "description": "The age at which this reference range is applicable. This is a neonatal age (e.g. number of weeks at term) if the meaning says so.",
                    "properties": [],
                    "values": [
                      {
                        "name": "obf.datatype.Range",
                        "title": "Range",
                        "type": "group",
                        "description": "An interval defined by a quantitative upper and/or lower bound. One of the two bounds must be specified, and the lower bound must be less than the upper bound. When Quantities are specified, the units of measure must be the same.",
                        "properties": [
                          {
                            "name": "obf.datatype.LowerBound",
                            "title": "Lower Bound",
                            "type": "element",
                            "description": "The lower limit on a range",
                            "properties": [],
                            "values": [
                              {
                                "name": "obf.datatype.SimpleQuantity",
                                "title": "Simple Quantity",
                                "type": "group",
                                "description": "A quantity where the comparator is not used, as defined in FHIR",
                                "properties": [
                                  {
                                    "name": "obf.datatype.Number",
                                    "title": "Number",
                                    "type": "element",
                                    "description": "A decimal value.",
                                    "properties": [],
                                    "values": [
                                      {
                                        "name": "decimal",
                                        "title": "decimal",
                                        "type": "primitive",
                                        "properties": [],
                                        "values": []
                                      }
                                    ]
                                  },
                                  {
                                    "name": "obf.datatype.Units",
                                    "title": "Units",
                                    "type": "element",
                                    "description": "The unit of measure of the quantity.",
                                    "properties": [],
                                    "values": [
                                      {
                                        "name": "concept",
                                        "title": "concept",
                                        "type": "primitive",
                                        "properties": [],
                                        "values": []
                                      }
                                    ]
                                  }
                                ],
                                "values": []
                              }
                            ]
                          },
                          {
                            "name": "obf.datatype.UpperBound",
                            "title": "Upper Bound",
                            "type": "element",
                            "description": "The upper limit on a quantitative value.",
                            "properties": [],
                            "values": [
                              {
                                "name": "obf.datatype.SimpleQuantity",
                                "title": "Simple Quantity",
                                "type": "group",
                                "description": "A quantity where the comparator is not used, as defined in FHIR",
                                "properties": [
                                  {
                                    "name": "obf.datatype.Number",
                                    "title": "Number",
                                    "type": "element",
                                    "description": "A decimal value.",
                                    "properties": [],
                                    "values": [
                                      {
                                        "name": "decimal",
                                        "title": "decimal",
                                        "type": "primitive",
                                        "properties": [],
                                        "values": []
                                      }
                                    ]
                                  },
                                  {
                                    "name": "obf.datatype.Units",
                                    "title": "Units",
                                    "type": "element",
                                    "description": "The unit of measure of the quantity.",
                                    "properties": [],
                                    "values": [
                                      {
                                        "name": "concept",
                                        "title": "concept",
                                        "type": "primitive",
                                        "properties": [],
                                        "values": []
                                      }
                                    ]
                                  }
                                ],
                                "values": []
                              }
                            ]
                          }
                        ],
                        "values": []
                      }
                    ]
                  },
                  {
                    "name": "obf.datatype.Text",
                    "title": "Text",
                    "type": "element",
                    "description": "A simple string.",
                    "properties": [],
                    "values": [
                      {
                        "name": "string",
                        "title": "string",
                        "type": "primitive",
                        "properties": [],
                        "values": []
                      }
                    ]
                  }
                ],
                "values": []
              }
            ],
            "values": []
          }
        ],
        "values": []
      },
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "https://fhir.loinc.org/ValueSet/LL1971-2 (REQUIRED)"
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.GenomicsReport",
    "title": "Genomics Report",
    "type": "entry",
    "description": "Genetic analysis summary report. The report may include one or more tests, with two distinct test types. The first type is a targeted mutation test, where a specific mutation on a specific gene is tested for. The result is either positive or negative for that mutation. The second type is a more general test for variants. This type of test returns the identity of variants found in a certain region of the genome.\n\nThe identity of non-genomic laboratory tests is typically represented by a LOINC code. However, many genetic tests and panels do not have LOINC codes, although some might have an identifier in NCBI Genetic Testing Registry (GTR), a central location for voluntary submission of genetic test information by providers. To identify the diagnostic report, the name of the report must be in the text sub-field of the code structure. If there is a coded identifier from GTR, LOINC, or other source, then it should be included into the the code sub-field of the code structure. If there is no suitable code, the code can be omitted.\n\nConformance note: To be conformant to US Core, the code attribute must be a LOINC code, if available. If there is no suitable code in LOINC, then a code from an alternative code system (such as GTR) can be used.\n\nImplementation note: The performer of the test (organization or practitioner) should be included in the FHIR profile as the performer.actor.\n\nConformance note: The category for this profile is set to GE (Genetics), a code from http://hl7.org/fhir/ValueSet/diagnostic-service-sections. This is contrary to the [Argonaut](http://www.fhir.org/guides/argonaut/r2/) and [US Core](http://hl7.org/fhir/us/core/STU3/index.html) specifications, which require the category 'LAB' in diagnostic reports containing laboratory results. This is assumed to be an oversight in the US Core and Argonaut specifications.",
    "properties": [
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Master HL7 genetic variant reporting panel"
          }
        ]
      },
      {
        "name": "obf.DiagnosticReportPerformer",
        "title": "Diagnostic Report Performer",
        "type": "element",
        "description": "The diagnostic service that is responsible for issuing the report.",
        "properties": [],
        "values": [
          {
            "name": "obf.Practitioner",
            "title": "Practitioner",
            "type": "entry",
            "description": "A person who practices a healing art.\nHumanName is limited to one required value by US-Core. Gender is required by US-Core. US-Core required an identifier, either a NPI (required if known) or tax id (permitted alternative).",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.Organization",
            "title": "Organization",
            "type": "entry",
            "description": "A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.\n\nOrganization type is restricted to 0..1 in FHIR DSTU2, similarly restricted here. Other required attributes come from STU 3 mapping to us-core-organization.",
            "properties": [],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Observation",
        "title": "Observation",
        "type": "entry",
        "description": "Represents the result of evaluations (measurements, tests, or questions) that have been performed.\nObservation has a value representing the result (answer), or an DataAbsentReason indicating why the value is not present. Things observed about the subject can include social and behavioral factors, subjective and objective observations, and assessments.\nFor an Observation, the Code describes the aspect or property of the subject being observed or measured. The Code is the 'question code' that pairs to the 'answer' contained in the Value.",
        "properties": [],
        "values": []
      },
      {
        "name": "onco.core.GeneticSpecimen",
        "title": "Genetic Specimen",
        "type": "entry",
        "description": "A small sample of blood, hair, skin, amniotic fluid (the fluid that surrounds a fetus during pregnancy), or other tissue which is excised from a subject for the purposes of genomics testing or analysis.",
        "properties": [],
        "values": []
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "obf.KarnofskyPerformanceStatus",
    "title": "Karnofsky Performance Status",
    "type": "entry",
    "description": "The Karnofsky Performance Status (KPS) is a tool used to measure a patient's functional status. It can be used to compare the effectiveness of different therapies and to help assess the prognosis of certain patients, such as those with certain cancers. The KPS score ranges from 0 to 100 in intervals of 10. Higher scores are associated with better functional status, with 100 representing no symptoms or evidence of disease, and 0 representing death.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-KarnofskyPerformanceStatusVS (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Karnofsky Performance Status [Interpretation]"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "obf.MedicationStatement",
    "title": "Medication Statement",
    "type": "entry",
    "description": "A record of the use of a medication (individual administration or entire course). The use may be reported by the patient or clinician and adminstration does not have to be directly observed.\n\nImplementation note: Although FHIR supports the asserter (information source) and date asserted, it does not have a place for the author (who created and is responsible for the statement) and recorder (who entered the statement). Extensions are provided.\n\nConformance note: The treatment of 'not taken' has changed from DSTU2 and STU3 to R4. In R4, status and statusReason are used to indicate medications not taken. For upward compatibility, the 'not taken' attributes are profiled out.\nReasonCode is a choice of CodeableConcept or ref(Condition) in DSTU2, and limited to one reason (pick a type). In STU3 and R4, there can be multiple reason codes, and multiple reason references, simultaneously.\n\nImplementation note: Preference is given to using the National Library of Medicine (NLM) RxNorm terminology for medications. RxNorm is a coding standard established by the Office of the National Coordinator (ONC). However, RxNorm is restricted to FDA-approved drugs and does not include clinical trial drugs. MedicationStatement allows for the inclusion of other coding systems like the NCI Thesaurus (NCIT) to represent clinical trial oncology drugs.\n",
    "properties": [
      {
        "name": "obf.MedicationCodeOrReference",
        "title": "Medication Code Or Reference",
        "type": "element",
        "description": "A choice of a medication code or reference.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.Medication",
            "title": "Medication",
            "type": "entry",
            "description": "A type of prescription drug or over-the-counter drug that is used to prevent, treat, or relieve symptoms of a disease or abnormal condition, but excluding vaccines.\nIn FHIR DSTU2 and STU3, Medication lacks the identifier attribute, which is included in SHR as an extension.\nDSTU2 lacks the status attribute, which is required by US-Core.\nBatch is 0..1 in FHIR R4, and accordingly is restricted here.",
            "properties": [],
            "values": []
          }
        ]
      },
      {
        "name": "obf.datatype.OccurrenceTimeOrPeriod",
        "title": "Occurrence Time Or Period",
        "type": "element",
        "description": "The point or period of time when the event takes place. Times can be precise (dateTime) or approximate (date). If a time period is used, and the start date or dateTime is missing, the start of the period is not known. If the end date or dateTime is missing, it means that the period is ongoing.",
        "properties": [],
        "values": [
          {
            "name": "date",
            "title": "date",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.TerminationReason",
        "title": "Termination Reason",
        "type": "element",
        "description": "A code explaining unplanned or premature termination of a plan of treatment, course of medication, or research study.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-TreatmentTerminationReasonVS (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.TreatmentIntent",
        "title": "Treatment Intent",
        "type": "element",
        "description": "The purpose of a treatment.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-TreatmentIntentVS (REQUIRED)"
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "obf.Patient",
    "title": "Patient",
    "type": "entry",
    "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
    "properties": [
      {
        "name": "obf.BirthDate",
        "title": "Birth Date",
        "type": "element",
        "description": "A date of birth or approximate year or period (year or date range), if estimated.",
        "properties": [],
        "values": [
          {
            "name": "date",
            "title": "date",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.AdministrativeGender",
        "title": "Administrative Gender",
        "type": "element",
        "description": "A gender classification used for administrative purposes. Administrative gender is not necessarily the same as a biological description or a gender identity. This attribute does not include terms related to clinical gender.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/administrative-gender (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.Race",
        "title": "Race",
        "type": "group",
        "description": "Subjective association of a person with a named category of humans sharing common history, traits, place of family origin, nationality, tribe, or other inherited background.",
        "properties": [
          {
            "name": "obf.RaceCode",
            "title": "Race Code",
            "type": "element",
            "description": "A code for the person's race",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": []
              }
            ]
          },
          {
            "name": "obf.RaceDetail",
            "title": "Race Detail",
            "type": "element",
            "description": "Additional description of race or heritage.",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": []
              }
            ]
          }
        ],
        "values": []
      },
      {
        "name": "obf.Ethnicity",
        "title": "Ethnicity",
        "type": "group",
        "description": "Indicator of Hispanic or Latino origin.",
        "properties": [
          {
            "name": "obf.EthnicityCode",
            "title": "Ethnicity Code",
            "type": "element",
            "description": "A code for the person's ethnicity",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": []
              }
            ]
          },
          {
            "name": "obf.EthnicityDetail",
            "title": "Ethnicity Detail",
            "type": "element",
            "description": "Additional description of ethnicity.",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": []
              }
            ]
          }
        ],
        "values": []
      },
      {
        "name": "obf.datatype.Address",
        "title": "Address",
        "type": "group",
        "description": "An address expressed using postal conventions (as opposed to GPS or other location definition formats). This data type may be used to convey addresses for use in delivering mail as well as for visiting locations and which might not be valid for mail delivery. There are a variety of postal address formats defined around the world. (Source: HL7 FHIR).",
        "properties": [
          {
            "name": "obf.datatype.PostalCode",
            "title": "Postal Code",
            "type": "element",
            "description": "A sequence of letters and digits used as part of a postal address, often designating a geographic region",
            "properties": [],
            "values": [
              {
                "name": "string",
                "title": "string",
                "type": "primitive",
                "properties": [],
                "values": []
              }
            ]
          }
        ],
        "values": []
      },
      {
        "name": "obf.Deceased",
        "title": "Deceased",
        "type": "element",
        "description": "An indication that the person is no longer living, given by a date of death, or boolean value. The latter, when true, indicates the person is deceased.",
        "properties": [],
        "values": [
          {
            "name": "boolean",
            "title": "boolean",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.PrimaryCancerCondition",
    "title": "Primary Cancer Condition",
    "type": "entry",
    "description": "Records the history of the primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.\n\nCancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the TNMClinicalStageGroup and/or TNMPathologicalStageGroup, which refer back to PrimaryCancerCondition.\n\nConformance note: For the code attribute, to be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html), SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used.",
    "properties": [
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-PrimaryOrUncertainBehaviorCancerDisorderVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.ClinicalStatus",
        "title": "Clinical Status",
        "type": "element",
        "description": "A flag indicating whether the condition is active or inactive, recurring, in remission, or resolved (as of the last update of the Condition).",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/condition-clinical (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.BodyLocation",
        "title": "Body Location",
        "type": "group",
        "description": "A location or structure in the body, including tissues, regions, cavities, and spaces; for example, right elbow, or left ventricle of the heart. Body location is a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.\n* Code only: The code should include (precoordinate) laterality and/orientation to the degree necessary to completely specify the body location.\n* Code plus laterality and/or orientation: The basic code augmented by codes specifying the body side and/or anatomical orientation.\n* Relation to landmark: The location relative to a landmark is specified by:\n1. Establishing the location and type of landmark using a body site code and optional laterality/orientation, and\n2. Specifying the direction and distance from the landmark to the body location.\nNote that BodyLocation is a data type, a reusable structure, not a stand-alone entity. The concept is similar to how a postal address can apply to a person, location, or organization. This contrasts with FHIR's stand-alone BodySite (aka BodyStructure in r4) which 'is not ... intended for describing the type of anatomical location but rather a specific body site on a specific patient' (FHIR 3.5).",
        "properties": [
          {
            "name": "obf.datatype.Code",
            "title": "Code",
            "type": "element",
            "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": [],
                "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerBodyLocationVS (PREFERRED)"
              }
            ]
          }
        ],
        "values": []
      },
      {
        "name": "obf.datatype.BodyLocation",
        "title": "Body Location",
        "type": "group",
        "description": "A location or structure in the body, including tissues, regions, cavities, and spaces; for example, right elbow, or left ventricle of the heart. Body location is a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.\n* Code only: The code should include (precoordinate) laterality and/orientation to the degree necessary to completely specify the body location.\n* Code plus laterality and/or orientation: The basic code augmented by codes specifying the body side and/or anatomical orientation.\n* Relation to landmark: The location relative to a landmark is specified by:\n1. Establishing the location and type of landmark using a body site code and optional laterality/orientation, and\n2. Specifying the direction and distance from the landmark to the body location.\nNote that BodyLocation is a data type, a reusable structure, not a stand-alone entity. The concept is similar to how a postal address can apply to a person, location, or organization. This contrasts with FHIR's stand-alone BodySite (aka BodyStructure in r4) which 'is not ... intended for describing the type of anatomical location but rather a specific body site on a specific patient' (FHIR 3.5).",
        "properties": [
          {
            "name": "obf.datatype.Laterality",
            "title": "Laterality",
            "type": "element",
            "description": "Body side of the body location, if needed to distinguish from a similar location on the other side of the body.\n\nThe laterality element is part of BodyLocation, a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.\n\n* Code only: The code should include (precoordinate) laterality and/orientation to the degree necessary to completely specify the body location.\n* Code plus laterality and/or orientation: The basic code augmented by codes specifying the body side and/or anatomical orientation.\n* Relation to landmark: The location relative to a landmark is specified by:\n1. Establishing the location and type of landmark using a body site code and optional laterality/orientation, and\n2. Specifying the direction and distance from the landmark to the body location.\n\nNote that BodyLocation is a data type (a reusable structure), not a stand-alone entity. The concept is similar to how a postal address can apply to a person, location, or organization. This contrasts with FHIR's stand-alone BodySite (aka BodyStructure in r4) which 'is not ... intended for describing the type of anatomical location but rather a specific body site on a specific patient' (FHIR 3.5).",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": [],
                "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-datatype-LateralityVS (EXTENSIBLE)"
              }
            ]
          }
        ],
        "values": []
      },
      {
        "name": "onco.core.HistologyMorphologyBehavior",
        "title": "Histology Morphology Behavior",
        "type": "element",
        "description": "A description of the morphologic and behavioral characteristics of the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-HistologyMorphologyBehaviorVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.DateOfDiagnosis",
        "title": "Date Of Diagnosis",
        "type": "element",
        "description": "The date the disease was first clinically recognized with sufficient certainty, regardless of whether it was fully characterized at that time.",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.SecondaryCancerCondition",
    "title": "Secondary Cancer Condition",
    "type": "entry",
    "description": "Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/secondary-tumor)).\n\nConformance note: For the code attribute, to be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html), SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used.",
    "properties": [
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-SecondaryCancerDisorderVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.datatype.BodyLocation",
        "title": "Body Location",
        "type": "group",
        "description": "A location or structure in the body, including tissues, regions, cavities, and spaces; for example, right elbow, or left ventricle of the heart. Body location is a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.\n* Code only: The code should include (precoordinate) laterality and/orientation to the degree necessary to completely specify the body location.\n* Code plus laterality and/or orientation: The basic code augmented by codes specifying the body side and/or anatomical orientation.\n* Relation to landmark: The location relative to a landmark is specified by:\n1. Establishing the location and type of landmark using a body site code and optional laterality/orientation, and\n2. Specifying the direction and distance from the landmark to the body location.\nNote that BodyLocation is a data type, a reusable structure, not a stand-alone entity. The concept is similar to how a postal address can apply to a person, location, or organization. This contrasts with FHIR's stand-alone BodySite (aka BodyStructure in r4) which 'is not ... intended for describing the type of anatomical location but rather a specific body site on a specific patient' (FHIR 3.5).",
        "properties": [
          {
            "name": "obf.datatype.Code",
            "title": "Code",
            "type": "element",
            "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": [],
                "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerBodyLocationVS (PREFERRED)"
              }
            ]
          }
        ],
        "values": []
      },
      {
        "name": "obf.datatype.BodyLocation",
        "title": "Body Location",
        "type": "group",
        "description": "A location or structure in the body, including tissues, regions, cavities, and spaces; for example, right elbow, or left ventricle of the heart. Body location is a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.\n* Code only: The code should include (precoordinate) laterality and/orientation to the degree necessary to completely specify the body location.\n* Code plus laterality and/or orientation: The basic code augmented by codes specifying the body side and/or anatomical orientation.\n* Relation to landmark: The location relative to a landmark is specified by:\n1. Establishing the location and type of landmark using a body site code and optional laterality/orientation, and\n2. Specifying the direction and distance from the landmark to the body location.\nNote that BodyLocation is a data type, a reusable structure, not a stand-alone entity. The concept is similar to how a postal address can apply to a person, location, or organization. This contrasts with FHIR's stand-alone BodySite (aka BodyStructure in r4) which 'is not ... intended for describing the type of anatomical location but rather a specific body site on a specific patient' (FHIR 3.5).",
        "properties": [
          {
            "name": "obf.datatype.Laterality",
            "title": "Laterality",
            "type": "element",
            "description": "Body side of the body location, if needed to distinguish from a similar location on the other side of the body.\n\nThe laterality element is part of BodyLocation, a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.\n\n* Code only: The code should include (precoordinate) laterality and/orientation to the degree necessary to completely specify the body location.\n* Code plus laterality and/or orientation: The basic code augmented by codes specifying the body side and/or anatomical orientation.\n* Relation to landmark: The location relative to a landmark is specified by:\n1. Establishing the location and type of landmark using a body site code and optional laterality/orientation, and\n2. Specifying the direction and distance from the landmark to the body location.\n\nNote that BodyLocation is a data type (a reusable structure), not a stand-alone entity. The concept is similar to how a postal address can apply to a person, location, or organization. This contrasts with FHIR's stand-alone BodySite (aka BodyStructure in r4) which 'is not ... intended for describing the type of anatomical location but rather a specific body site on a specific patient' (FHIR 3.5).",
            "properties": [],
            "values": [
              {
                "name": "concept",
                "title": "concept",
                "type": "primitive",
                "properties": [],
                "values": [],
                "description": "http://hl7.org/fhir/us/mcode/ValueSet/obf-datatype-LateralityVS (EXTENSIBLE)"
              }
            ]
          }
        ],
        "values": []
      },
      {
        "name": "obf.ClinicalStatus",
        "title": "Clinical Status",
        "type": "element",
        "description": "A flag indicating whether the condition is active or inactive, recurring, in remission, or resolved (as of the last update of the Condition).",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/condition-clinical (REQUIRED)"
          }
        ]
      },
      {
        "name": "onco.core.HistologyMorphologyBehavior",
        "title": "Histology Morphology Behavior",
        "type": "element",
        "description": "A description of the morphologic and behavioral characteristics of the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-HistologyMorphologyBehaviorVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.DateOfDiagnosis",
        "title": "Date Of Diagnosis",
        "type": "element",
        "description": "The date the disease was first clinically recognized with sufficient certainty, regardless of whether it was fully characterized at that time.",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.TNMClinicalDistantMetastasesCategory",
    "title": "TNM Clinical Distant Metastases Category",
    "type": "entry",
    "description": "Category describing the presence or absence of metastases in remote anatomical locations, assessed using tests that are done before surgery (Definition adapted from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/distant-metastasis)). These include physical exams, imaging tests, laboratory tests (such as blood tests), and biopsies.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TNMDistantMetastasesCategoryVS (PREFERRED)"
          }
        ]
      },
      {
        "name": "onco.core.CancerStagingSystem",
        "title": "Cancer Staging System",
        "type": "element",
        "description": "Method or staging system used to stage the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerStagingSystemVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Distant metastases.clinical [Class] Cancer"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.TNMClinicalPrimaryTumorCategory",
    "title": "TNM Clinical Primary Tumor Category",
    "type": "entry",
    "description": "Category of the primary tumor, based on its size and extent, assessed prior to surgery, based on evidence such as physical examination, imaging, and/or biopsy.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TNMPrimaryTumorCategoryVS (PREFERRED)"
          }
        ]
      },
      {
        "name": "onco.core.CancerStagingSystem",
        "title": "Cancer Staging System",
        "type": "element",
        "description": "Method or staging system used to stage the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerStagingSystemVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Primary tumor.clinical [Class] Cancer"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.TNMClinicalRegionalNodesCategory",
    "title": "TNM Clinical Regional Nodes Category",
    "type": "entry",
    "description": "Category of the presence or absence of metastases in regional lymph nodes, assessed using tests that are done before surgery (Definition adapted from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/regional-lymph-node)). These include physical exams, imaging tests, laboratory tests (such as blood tests), and biopsies.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TNMRegionalNodesCategoryVS (PREFERRED)"
          }
        ]
      },
      {
        "name": "onco.core.CancerStagingSystem",
        "title": "Cancer Staging System",
        "type": "element",
        "description": "Method or staging system used to stage the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerStagingSystemVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Regional lymph nodes.clinical [Class] Cancer"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.TNMClinicalStageGroup",
    "title": "TNM Clinical Stage Group",
    "type": "entry",
    "description": "The extent of the cancer in the body, according to the TNM classification system, based on information obtained prior to neoadjuvant treatment and surgery, e.g. based on evidence such as physical examination, imaging, and/or biopsy.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TNMStageGroupVS (PREFERRED)"
          }
        ]
      },
      {
        "name": "onco.core.CancerStagingSystem",
        "title": "Cancer Staging System",
        "type": "element",
        "description": "Method or staging system used to stage the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerStagingSystemVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Stage group.clinical Cancer"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.TNMPathologicDistantMetastasesCategory",
    "title": "TNM Pathologic Distant Metastases Category",
    "type": "entry",
    "description": "Category describing the presence or absence of metastases in remote anatomical locations, assessed through pathologic analysis of a specimen.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TNMDistantMetastasesCategoryVS (PREFERRED)"
          }
        ]
      },
      {
        "name": "onco.core.CancerStagingSystem",
        "title": "Cancer Staging System",
        "type": "element",
        "description": "Method or staging system used to stage the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerStagingSystemVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Distant metastases.pathology [Class] Cancer"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.TNMPathologicPrimaryTumorCategory",
    "title": "TNM Pathologic Primary Tumor Category",
    "type": "entry",
    "description": "Category describing the primary tumor, based on its size and extent, assessed through pathologic analysis of a tumor specimen.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TNMPrimaryTumorCategoryVS (PREFERRED)"
          }
        ]
      },
      {
        "name": "onco.core.CancerStagingSystem",
        "title": "Cancer Staging System",
        "type": "element",
        "description": "Method or staging system used to stage the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerStagingSystemVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Primary tumor.pathology Cancer"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.TNMPathologicRegionalNodesCategory",
    "title": "TNM Pathologic Regional Nodes Category",
    "type": "entry",
    "description": "Category describing the presence or absence of metastases in regional lymph nodes, assessed through pathologic analysis of a specimen.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TNMRegionalNodesCategoryVS (PREFERRED)"
          }
        ]
      },
      {
        "name": "onco.core.CancerStagingSystem",
        "title": "Cancer Staging System",
        "type": "element",
        "description": "Method or staging system used to stage the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerStagingSystemVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Regional lymph nodes.pathology [Class] Cancer"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.TNMPathologicStageGroup",
    "title": "TNM Pathologic Stage Group",
    "type": "entry",
    "description": "The extent of the cancer in the body, according to the TNM classification system, based on examination of tissue samples removed during surgery, in addition to physical examination and imaging and potentially, other prognostic factors.",
    "properties": [
      {
        "name": "obf.DataValue",
        "title": "Data Value",
        "type": "element",
        "description": "The value or result of a test, evaluation, or judgment, for example, a systolic blood pressure, or if a condition or body structure is present or absent.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TNMStageGroupVS (PREFERRED)"
          }
        ]
      },
      {
        "name": "onco.core.CancerStagingSystem",
        "title": "Cancer Staging System",
        "type": "element",
        "description": "Method or staging system used to stage the cancer.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-CancerStagingSystemVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "Stage group.pathology Cancer"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  },
  {
    "name": "onco.core.TumorMarkerTest",
    "title": "Tumor Marker Test",
    "type": "entry",
    "description": "The result of a tumor marker test. Tumor marker tests are generally used to guide cancer treatment decisions and monitor treatment, as well as to predict the chance of recovery and cancer recurrence. A tumor marker is a substance found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (noncancer) conditions. Most tumor markers are made by both normal cells and cancer cells, but they are made in larger amounts by cancer cells. A tumor marker may help to diagnose cancer, plan treatment, or find out how well treatment is working or if cancer has come back. Examples of tumor markers include CA-125 (in ovarian cancer), CA 15-3 (in breast cancer), CEA (in colon cancer), and PSA (in prostate cancer). Tumor markers differ from genetic markers in that they are measured at the levels of the protein and substance post-RNA protein synthesis. (Definition adapted from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/tumor-marker-test) and [Cancer.Net](https://www.cancer.net/navigating-cancer-care/diagnosing-cancer/tests-and-procedures/tumor-marker-tests)).\n\nImplementation note: The data value for TumorMarkerTest has cardinality is 0..1 (required if known) because when the test result is indeterminate, no quantitative data value will be reported. Instead, the reason for the null value will be reported in the DataAbsentReason field.",
    "properties": [
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TumorMarkerTestVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "onco.core.TumorMarkerTestDataValue",
        "title": "Tumor Marker Test Data Value",
        "type": "element",
        "description": "A restricted set of value types that could be associated with a tumor marker test.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.Quantity",
            "title": "Quantity",
            "type": "group",
            "description": "A quantity with units, whose value may be bounded from above or below, as defined in FHIR",
            "properties": [
              {
                "name": "obf.datatype.Number",
                "title": "Number",
                "type": "element",
                "description": "A decimal value.",
                "properties": [],
                "values": [
                  {
                    "name": "decimal",
                    "title": "decimal",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.Comparator",
                "title": "Comparator",
                "type": "element",
                "description": "A code indicated if the value represents an upper or lower bound",
                "properties": [],
                "values": [
                  {
                    "name": "concept",
                    "title": "concept",
                    "type": "primitive",
                    "properties": [],
                    "values": [],
                    "description": "http://hl7.org/fhir/ValueSet/quantity-comparator (REQUIRED)"
                  }
                ]
              },
              {
                "name": "obf.datatype.Units",
                "title": "Units",
                "type": "element",
                "description": "The unit of measure of the quantity.",
                "properties": [],
                "values": [
                  {
                    "name": "concept",
                    "title": "concept",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          },
          {
            "name": "obf.datatype.Ratio",
            "title": "Ratio",
            "type": "group",
            "description": "A unit of measurement for the quotient of the amount of one entity to another.",
            "properties": [
              {
                "name": "obf.datatype.Numerator",
                "title": "Numerator",
                "type": "element",
                "description": "The dividend of a fraction.",
                "properties": [],
                "values": [
                  {
                    "name": "obf.datatype.Quantity",
                    "title": "Quantity",
                    "type": "group",
                    "description": "A quantity with units, whose value may be bounded from above or below, as defined in FHIR",
                    "properties": [
                      {
                        "name": "obf.datatype.Number",
                        "title": "Number",
                        "type": "element",
                        "description": "A decimal value.",
                        "properties": [],
                        "values": [
                          {
                            "name": "decimal",
                            "title": "decimal",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.Comparator",
                        "title": "Comparator",
                        "type": "element",
                        "description": "A code indicated if the value represents an upper or lower bound",
                        "properties": [],
                        "values": [
                          {
                            "name": "concept",
                            "title": "concept",
                            "type": "primitive",
                            "properties": [],
                            "values": [],
                            "description": "http://hl7.org/fhir/ValueSet/quantity-comparator (REQUIRED)"
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.Units",
                        "title": "Units",
                        "type": "element",
                        "description": "The unit of measure of the quantity.",
                        "properties": [],
                        "values": [
                          {
                            "name": "concept",
                            "title": "concept",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      }
                    ],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.Denominator",
                "title": "Denominator",
                "type": "element",
                "description": "The divisor of a fraction.",
                "properties": [],
                "values": [
                  {
                    "name": "obf.datatype.Quantity",
                    "title": "Quantity",
                    "type": "group",
                    "description": "A quantity with units, whose value may be bounded from above or below, as defined in FHIR",
                    "properties": [
                      {
                        "name": "obf.datatype.Number",
                        "title": "Number",
                        "type": "element",
                        "description": "A decimal value.",
                        "properties": [],
                        "values": [
                          {
                            "name": "decimal",
                            "title": "decimal",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.Comparator",
                        "title": "Comparator",
                        "type": "element",
                        "description": "A code indicated if the value represents an upper or lower bound",
                        "properties": [],
                        "values": [
                          {
                            "name": "concept",
                            "title": "concept",
                            "type": "primitive",
                            "properties": [],
                            "values": [],
                            "description": "http://hl7.org/fhir/ValueSet/quantity-comparator (REQUIRED)"
                          }
                        ]
                      },
                      {
                        "name": "obf.datatype.Units",
                        "title": "Units",
                        "type": "element",
                        "description": "The unit of measure of the quantity.",
                        "properties": [],
                        "values": [
                          {
                            "name": "concept",
                            "title": "concept",
                            "type": "primitive",
                            "properties": [],
                            "values": []
                          }
                        ]
                      }
                    ],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          },
          {
            "name": "string",
            "title": "string",
            "type": "primitive",
            "properties": [],
            "values": []
          }
        ]
      },
      {
        "name": "obf.RelevantTime",
        "title": "Relevant Time",
        "type": "element",
        "description": "The time or time period that the statement addresses.\nThe clinically relevant time is not necessarily when the information is gathered or when a test is carried out, but for example, when a specimen was collected, or the time period referred to by the question. Use a TimePeriod for a measurement or specimen collection continued over a significant period of time (e.g. 24 hour Urine Sodium).",
        "properties": [],
        "values": [
          {
            "name": "dateTime",
            "title": "date Time",
            "type": "primitive",
            "properties": [],
            "values": []
          },
          {
            "name": "obf.datatype.TimePeriod",
            "title": "Time Period",
            "type": "group",
            "description": "A period of time defined by a start and end time, date, or year.\nIf the start date/time is missing, the start of the period is not known. If the end date/time is missing, it means that the period is ongoing.",
            "properties": [
              {
                "name": "obf.datatype.BeginDateTime",
                "title": "Begin Date Time",
                "type": "element",
                "description": "The time at which something is to take effect, start, or did start. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              },
              {
                "name": "obf.datatype.EndDateTime",
                "title": "End Date Time",
                "type": "element",
                "description": "The time at which something is to end or did end. Boundary is considered inclusive.",
                "properties": [],
                "values": [
                  {
                    "name": "dateTime",
                    "title": "date Time",
                    "type": "primitive",
                    "properties": [],
                    "values": []
                  }
                ]
              }
            ],
            "values": []
          }
        ]
      },
      {
        "name": "obf.Status",
        "title": "Status",
        "type": "element",
        "description": "A state that relates to the workflow or interpretation of this resource. Certain status values can modify the meaning of the resource, for example, entered-in-error. When a boolean value is used, Status of true indicates the record is active, false means inactive.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/ValueSet/observation-status (REQUIRED)"
          }
        ]
      },
      {
        "name": "obf.datatype.Code",
        "title": "Code",
        "type": "element",
        "description": "The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.",
        "properties": [],
        "values": [
          {
            "name": "concept",
            "title": "concept",
            "type": "primitive",
            "properties": [],
            "values": [],
            "description": "http://hl7.org/fhir/us/mcode/ValueSet/onco-core-TumorMarkerTestVS (EXTENSIBLE)"
          }
        ]
      },
      {
        "name": "obf.ObservationSubjectOfRecord",
        "title": "Observation Subject Of Record",
        "type": "element",
        "description": "The subject of an observation.",
        "properties": [],
        "values": [
          {
            "name": "obf.Patient",
            "title": "Patient",
            "type": "entry",
            "description": "A person in the role of a patient. Sometimes, the patient is not the subject of information in a clinical statement where the Patient is the SubjectOfRecord.\n\nCompatibility: Lies at the intersection of Argonaut and US Core Patient. MaritalStatus has a required binding in Argonaut, but an extensible binding in US-Core. To be feasible under both DSTU2 Argonaut and STU3 US-Core, the required binding strength is adopted.",
            "properties": [],
            "values": []
          }
        ]
      }
    ],
    "values": []
  }
]