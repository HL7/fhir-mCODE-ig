### Usage

This profile is used to capture a course of radiotherapy delivered to a patient. A course of therapy systematically addresses a condition or set of related conditions. It can include multiple sessions, divided into multiple phases, and can last for several months. A course of treatment has a distinct beginning and end. While the Radiotherapy Course Summary can be incrementally updated as the treatment progresses, the primary purpose is to capture the entire course of treatment when it is over. The status element in

In radiotherapy, a _phase_ is a subset of a course. A phase is defined as a treatment consisting of one or multiple identical fractions. A phase ends and a new phase begins whenever there is a change in the treatment volume(s), dose per fraction, modality, or technique. Phases are represented by different profiles, [TeleradiotherapyTreatmentPhase] and [BrachytherapyTreatmentPhase].

The relationship between a course and its phases is exemplified in the following diagram:

![Radiotherapy Example](radiotherapy-example.jpg)

In this example, the radiotherapy course encompasses three phases. The course summary captures the each treatment volume, the total dose for each volume, and total number of fractions delivered for each volume. The course summary also records the modalities and techniques used, without directly associating those with individual treatment volumes. Other elements in the summary include the reason for treatment, the treatment intent, the period of treatment, and the total number of sessions.

At the phase level, each phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same treatment volume or volumes. Because of their spatial relationship or the technique used, all treatment volumes do not necessarily receive the same total dose during a phase.

{% include markdown-link-references.md %}