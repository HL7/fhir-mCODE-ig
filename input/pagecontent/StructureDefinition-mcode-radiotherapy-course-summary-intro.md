### Usage

This profile is used to capture a course of radiotherapy delivered to a patient. A course of therapy systematically addresses a condition or set of related conditions. The course can include multiple sessions, can be divided into multiple phases, and can last for several months. A course of treatment has a distinct beginning and end. While the Radiotherapy Course Summary can be incrementally updated as the treatment progresses, the primary purpose is to summarize the entire course of treatment from beginning to end. The status element indicates whether the treatment is in progress or complete.

In radiotherapy, a _phase_ is a subset of a course. A phase is defined as a treatment consisting of one or more identical fractions. Phases are represented by different profiles, [TeleradiotherapyTreatmentPhase] and [BrachytherapyTreatmentPhase].

The relationship between a course and its phases is exemplified in the following diagram:

![Radiotherapy Example](radiotherapy-example.jpg)

In this example, the radiotherapy course encompasses three phases. The course summary captures each radiotherapy volume, the total dose for each volume, and total number of fractions delivered for each volume. The course summary also records the modalities and techniques used, without directly associating those with individual volumes. Other elements in the summary include the reason for treatment, the treatment intent, the period of treatment, and the total number of sessions.

At the phase level, each phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same volume or volumes. Because of their spatial relationship or the technique used, all volumes do not necessarily receive the same total dose during a phase. Phases may occur in parallel, overlap, or in alternating temporal patterns. 

### Conformance

Procedure resources whose code is `mcode-radiotherapy-course-summary` (code system `http://hl7.org/fhir/us/mcode/CodeSystem/mcode-resource-identifier-cs`) MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an [mCODE patient] that would reasonably be expected to conform to this profile SHOULD be published in this form. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}
