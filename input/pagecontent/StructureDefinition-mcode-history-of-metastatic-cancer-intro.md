### Usage
This profile supports recording of patient history of metastatic cancer, as determined by provider collection of patient history through face to face interactions or through a survey instrument. A patient-reported [SecondaryCancerCondition] with a clinical status of 'remission' could be used to record a patient's history of metastatic cancer in more detail. Metastatic cancer diagnosed as part of care within the current setting should be recorded using [SecondaryCancerCondition].

Recording history of metastatic disease as an Observation, rather than a Condition, adheres to [guidance from the Patient Care work group](http://community.fhir.org/t/how-can-i-represent-a-negative-condition/329). It also aligns with SNOMED's placement of "history of disorder" in its situation hierarchy, not the disorder hierarchy.

To query for a history of metastatic cancer implementers should look for Observations with codes in the value set [HistoryOfMetastaticMalignantNeoplasmVS], as well as instances of [SecondaryCancerCondition] with appropriate status values.

To represent a negative answer to a question regarding history of metastatic disease, the value of the Observation should be set to `false`.

To indicate the primary cancer in which the metastatic cancer was metastatic from, use the relatedCondition extension.

### Conformance

Observation resources associated with an [in-scope patient] with a Observation.code in the value set [HistoryOfMetastaticMalignantNeoplasmVS] SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

When possible, specify the location of the metastatic site. If this is unknown, use the parent value (history of metastatic cancer) in the valueset.

{% include markdown-link-references.md %}
