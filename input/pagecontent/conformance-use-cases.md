The following use cases were considered when developing the [conformance](conformance.html)-related resources Implementation Guide.

There are two roles that appear in these use cases, described [in more detail here](index.html#roles-actors-and-use-cases):

1. mCODE Data Sender ("Sender")
2. mCODE Data Receiver ("Receiver")

Three key actors assume these roles, described [in more detail here](index.html#roles-actors-and-use-cases):

1. Provider
2. Patient
3. Application

### Oncologist examines similar cases

A patient visits their oncologist. The oncologist uses a [SMART](https://smarthealthit.org) app to send an [mCODE Patient Bundle] for this patient to an external service that responds with [mCODE Patient Bundles][mCODE Patient Bundle] of similar patients including their treatments and outcomes. The SMART app then displays this information for the oncologist.

This was the primary use case considered when designing mCODE STU1.

* Actors (Role)
  1. Provider (Sender) sends patient data to #2
  2. Application: SMART app (Sender and Receiver) sends/receives data to communicate between #1 and #3
  3. Application: External "similar patient" service (Sender and Receiver)  sends/receives data with #2
* Architecture: Push

### CodeX: Clinical trial matching

A clinician uses a SMART app to submit a bundle to an external trial matching service. This use case has [its own IG](http://build.fhir.org/ig/standardhealth/fsh-pct/index.html) defining the bundle that is sent (a subset of the [mCODE Patient Bundle]) and the response.

* Actors (Role)
  1. Provider (Sender) sends patient data to #2
  2. Application: SMART app (Sender and Receiver) receives data from #1 and communicates with #3
  3. Application: External trial matching service (Receiver) receives mCODE data from #2 and responds with clinical trial information (so it is not an mCODE Data Sender)
* Architecture: Push

For background, see [the CodeX Confluence page for this use case](https://confluence.hl7.org/display/COD/Integrated+Trial+Matching+for+Cancer+Patients+and+Providers).

### CodeX: Cancer registry reporting

A hospital submits an [mCODE Patient Bundle] to an external registry (e.g., a state registry or a private registry).

* Actors (Role)
  1. Application: EHR (Sender, possibly via a SMART app)
  2. Application: Registry (Receiver)
* Architecture: Push
  * It's also possible that a registry would request additional information about a specific patient ("Pull" architecture). This behavior has not been fully defined yet for this use case, but assuming the entire [mCODE Patient Bundle] is sent to the registry, subsequent requests would be outside the scope of mCODE.

For background, see [the CodeX Confluence page for this use case](https://confluence.hl7.org/display/COD/Cancer+Registry+Reporting).

### CodeX: Radiation therapy treatment data

A radiation therapy-specific EHR system sends treatment information back to the primary EHR system.

This will likely be in the form of a use-case specific bundle extending the [mCODE Patient Bundle], or mCODE will be further updated to support more detailed radiation therapy information.

* Actors (Role)
  1. Application: Radiation therapy EHR (Sender)
  2. Application: Primary EHR (Receiver)
* Architecture: Push

For background, see [the CodeX Confluence page for this use case](https://confluence.hl7.org/display/COD/Radiation+Therapy+Treatment+Data+for+Cancer).


### CodeX: Oncology clinical pathways

A [mCODE Patient Bundle] is used to populate an oncology clinical pathway displayed in a SMART app, and this information is sent to payers to support automated prior authorization based on the clinical pathway.

* Actors
  1. EHR (Sender)
  2. Clinical pathways SMART app (Receiver)
  3. Payer (Receiver)
* Architecture: Push
  * In theory the clinical pathways SMART app or payers could request additional data from the EHR (pull), but as the [mCODE Patient Bundle] contains all mCODE-conforming resources for a given patient, additional requests would be outside the scope of mCODE.

For background, see the CodeX Confluence pages for the relevant use cases: [Oncology Clinical Pathways (OCP)](https://confluence.hl7.org/pages/viewpage.action?pageId=66941457) and [Oncology Clinical Pathways: Prior Authorization Support](https://confluence.hl7.org/display/COD/Oncology+Clinical+Pathways%3A+Prior+Authorization+Support).

[mCODE Patient Bundle]: StructureDefinition-mcode-patient-bundle.html