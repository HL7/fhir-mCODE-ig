Profile: CancerStage  // introduced 8/30/2020 to handle non-TNM staging more clearly
Id: mcode-cancer-stage
Parent: Observation
Title: "Cancer Stage Profile"
Description: "Parent profile for observations regarding cancer stage, grade, or classification. The stage is an assessment of the extent of the cancer in the body, according to a given cancer staging classification system. Profiles for different staging systems (e.g., TNM stage group, Rai stage, FIGO stage, etc.) must derive from this profile.

Despite its name, the CancerStage profile can also be used as a parent for cancer grade or classification. This is because the structure of the profiles are the same or very similar. The key elements are the code, method, value, and optionally, prognostic factors referenced in the hasMember element."
* ^abstract = true
* code from CancerStageTypeVS (preferred)
* code ^short = "The type of stage information reported."
* code ^definition = """The kind of stage reported, e.g., a pathologic TNM stage, a Lugano lymphoma stage, or a Rai stage for leukemia. This element identifies the type of value that is reported in Observation.value and is necessary for the correct interpretation of that value.

The distinction between Observation.code and Observation.method is important. Observation.code identifies the kind of stage being reported while Observation.method represents the staging system used to determine the code. Observation.code may imply the staging system. For example, the SNOMED CT 103420007 says the reported value is a modified Dukes stage, implying the Modified Dukes staging system (SNOMED CT 385359000) was used to determine the stage. When the staging system is implied by Observation.code, Observation.method is not required. However, when Observation.code does not imply a staging system (for example, if the code is SNOMED CT 385388004 Lymphoma stage), then the staging system must be specified in Observation.method. 

The value (Observation.valueCodeableConcept) may also imply certain things about the kind of stage being reported. For example, the value cN0 implies the value is a clinical stage. However, even if the value is partly or wholly self-identifying, it is not a reliable indicator of the type of stage being reported or the method of staging. Therefore, Observation.code must in all cases be reported."""

* method from CancerStagingMethodVS (extensible)
* method ^short = "The staging system used."
* method ^definition = "The staging system or protocol used to determine the stage, stage group, or category of the cancer based on its extent. When the staging system is implied by Observation.code, Observation.method is not required. However, when Observation.code does not imply a staging system (for example, if the code is SNOMED CT 385388004 Lymphoma stage), then the staging system must be specified in Observation.method. "

* value[x] only CodeableConcept // SEER extent of disease codings are strings -- this might have to be generalized to include strings
* value[x] from CancerStageValueVS (example)
* value[x] ^comment = ""    // suppress QA error on #notes link
* value[x] ^short = "The value of the stage"
* value[x] ^definition = "The stage, stage group, category, or classification resulting from the staging evaluation."
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* focus only Reference(PrimaryCancerCondition)
* focus ^short = "The cancer condition associated with staging assessment."
* focus ^definition = "Staging is associated with a particular primary cancer condition. Observation.focus is used to point back to that condition."
* hasMember ^short = "Prognostic factors contributing to stage determination."
* hasMember ^definition = "References to the prognostic factors affecting the stage, for example, the T, N, and M categories."
* subject only Reference(CancerPatient)
* subject ^definition = "The patient associated with staging assessment."
* status and code and subject and effective[x] and value[x] and method and focus MS

