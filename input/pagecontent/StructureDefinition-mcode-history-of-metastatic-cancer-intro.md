### Usage
This profile supports recording of patient history of metastatic cancer, as determined by provider collection of patient history through face to face interactions or through a survey instrument.   Metastatic cancer diagnosed as part of care within the current setting should be recorded using [SecondaryCancerCondition].

To query for a history of metastatic cancer implementers should look for instances of this profile, as well as instances of [SecondaryCancerCondition] withi appropriate status values.

### Conformance

Observation resources associated with an [in-scope patient] with a Observation.code in the value set [HistoryMetastaticMalignantNeoplasmVS] SHALL conform to this profile.  Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.


{% include markdown-link-references.md %}