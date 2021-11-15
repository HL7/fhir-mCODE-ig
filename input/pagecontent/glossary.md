### Basic Defintions

|  Concept  | Definition | Additional Description|
|-----|-------------------|--------------------|
| Radiation Therapy (Radiotherapy) | Radiation therapy, or radiotherapy, is a treatment that uses doses of radiation to kill cells and shrink tumors.| Radiation therapy is generally divided into two classes, teleradiotherapy and brachytherapy. |
| Teleradiotherapy |  Radiation therapy in which high-energy beams are delivered from outside of the body. | Also known as [External Beam Radiation Therapy](https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C15751). |
| Brachytherapy |  A type of radiation therapy in which radioactive material is placed inside the body, in a tumor or body cavity, or on the surface of the body. | [Reference](https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C15195) |
| Modality | The main type of radiation delivery such as photons, protons, or high dose rate brachytherapy. |  Modalities are not strictly differentiated along a single physical property, but in a way that makes sense in practical categorization. For teleradiotherapy, modality refers to the type of particle used, while for brachytherapy, modality generally refers to the type of dose rate and placement. |
| Technique  |  The treatment delivery method such as Volumetric Modulated Arc Therapy or Particle Spot Scanning. | The technique defines how a certain modality is applied, enabling a more granular categorization of the treatment approach for a given modality. |
| Radiotherapy Volume | A volume of the body used in radiotherapy planning or treatment delivery. | Each volume can be further characterized by a type such as gross tumor volume (GTV) or planning target volume (PTV).  Radiotherapy Volumes may be subvolumes of anatomical structures, cover multiple anatomical structures fully or partly, or represent an anatomical structure plus a margin [Reference](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1434601/) |
{: .grid }

### Treatment Delivery Concepts

Radiotherapy delivery typically involves multiple sessions that can be conceptually divided into phases and fractions, following one or more treatment plans, each plan focused on achieving a certain clinical effect contributing to the overall treatment outcome. See the example provided below for more information.


|  Concept  | Definition | Additional Description|
|-----|-------------------|--------------------|
| Course | A course of treatment is a grouping that collects all radiation therapy treatments needed to treat a specific illness. A course is conceptually divided into one or more phases. | A course includes treatments from first delivery of radiation until the physician believes all body sites in need of radiation therapy have been treated, which can last for several months. For example, if radiotherapy is applied to the liver with one month between sessions, these are all part of the same course. If treatment is started for one body site (e.g., left breast) and subsequently another body site (e.g., right breast) is treated, the course includes both. |
| Phase | A phase is a conceptual series of treatments, comprised of one or more related treatment plans that focus on one set of target volumes with the same modality and technique. One or more related phases constitute a single course of treatment. | Phase is an abstraction from treatment plans to allow for continuous counting of phase fractions and dose tracking across multiple treatment plans. In the simplest case, a phase corresponds 1:1 to a treatment plan. Often phases within a course are sequential in time, but they may occur in parallel, overlapping, or in alternating temporal patterns. |
| Treatment Plan | A plan for radiation therapy using appropriate teleradiotherapy or brachytherapy treatment modalities, techniques, and doses for treating a patient. A treatment plan consists of a series of identical fractions. | The treatment plan is developed by a team consisting of radiation oncologists, radiation therapist, medical physicists and medical dosimetrists. The parameters of a treatment plan include the dose to be delivered to volumes, the number of fractions into which the treatment is subdivided, the modality, the technique, and the detailed device parameters required by a treatment device. Examples of device parameters are dose rate, field size, or irradiation angles. To vary any parameter between radiotherapy treatments, different treatment plans must be created and scheduled during a course of treatment to achieve the expected pattern. |
| Phase Fraction | Given one or more treatment plans belonging to a phase, a phase fraction is the combination of plan fractions delivered during a given session. | If a phase has only one plan, then the fractions of a phase and the fractions of a treatment plan are identical (in such a case, the term "fraction" can be used without qualification). When multiple plans are part of one phase, then a fraction of the phase contains the fractions of all those treatment plans during the session. |
| Treatment Plan Fraction | A portion of a treatment plan, delivered during a single session. | Each treatment plan is treated as a series of equivalent plan fractions, each fraction consisting of the same nominal dose to the same set of target volumes with the same modality, technique, and device parameters. The term "fraction" is also commonly used in the context of a phase, but here the concept of plan fraction is used for clarity when referring to subdivisions of a plan. |
| Session | A session is the period between when the patient enters the treatment room and when they leave it. A course consists of a series of sessions. | In one session, a fraction of one treatment plan or fractions from different treatment plans may be executed, depending on how the treatments of multiple phases and their specific treatment plans are assigned to sessions. For example, the first fraction of the right breast may be treated in the same session as the fifth fraction of the left breast. The actual number of sessions required to deliver a course may exceed the number of sessions originally scheduled. This is the case if the treatment in one session cannot be completed due to medical or technical issues and has to be continued in another session. |
{: .grid }

### Example

The following figures illustrate two different views of the treatment delivery concepts defined above. Here, one course of treatment is divided into three phases. The first of these phases is implemented by two plans, the second plan being a revision (adaptation) of the original plan after the first three sessions. The second and third phases are each implemented by a single treatment plan. The phases partially overlap and some sessions involve delivering fractions from two plans. For example, session 7 delivers the seventh fraction of the first (left breast tangents) phase (which is the fourth fraction of the adapted second plan of the first phase) and the third fraction of the third (right breast tangents) phase.



<img src="BreastTreatmentPlan.png" alt="Breast Treatment Plan" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

<br/>
Here is a hierarchical view of the same course of treatment:
<br/>

<img src="BreastTreatmentSummary.png" alt="Relationship of Plans, Phases, and Course" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />
