Instance: radiotherapy-treatment-summary-other-with-text
InstanceOf: RadiotherapyCourseSummary
Description: "Example of radiotherapy treatment summary involving external beam radiation to chest wall and regional node radiation with a chest wall boost"
* status = #completed "completed"
* code = SCT#1217123003 // "Radiotherapy course of treatment (regime/therapy)"
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy (procedure)"
* bodySite = SCT#78904004 "Chest Wall Structure (body structure)"
* reasonCode = ICD10CM#C50.811 "Malignant neoplasm of overlapping sites of right female breast"
* extension[actualNumberOfSessions].valueUnsignedInt = 31
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* performedPeriod.start = "2018-08-15"
* performedPeriod.end = "2018-10-25"
// modified example to demonstrate new RadiotherapyModalityAndTechnique structure in Course Summary
* extension[modalityAndTechnique][0]
  * extension[modality][0]
    * valueCodeableConcept
      * coding[0] = SCT#74964007 "Other"
      * coding[+] = SCT#169317000 "Neutron capture therapy (procedure)"
      * text = "Boron neutron capture therapy (procedure)"
  * extension[technique][0].valueCodeableConcept = SCT#1156530009 "Volumetric Modulated Arc Therapy (procedure)"
* extension[modalityAndTechnique][+]
  * extension[modality][0].valueCodeableConcept = SCT#45643008  "Teleradiotherapy using electrons"
  * extension[technique][0]
    * valueCodeableConcept = SCT#74964007 "Other"
    * valueCodeableConcept.text = "Three dimensional external beam radiation therapy (procedure) - my version"
* extension[doseDeliveredToVolume][0].extension[volume].valueReference = Reference(jenny-m-chest-wall-treatment-volume)
* extension[doseDeliveredToVolume][0].extension[totalDoseDelivered].valueQuantity = 6000 'cGy'
* extension[doseDeliveredToVolume][0].extension[fractionsDelivered].valueUnsignedInt = 30
* extension[doseDeliveredToVolume][1].extension[volume].valueReference = Reference(jenny-m-chest-wall-lymph-nodes-treatment-volume)
* extension[doseDeliveredToVolume][1].extension[totalDoseDelivered].valueQuantity = 5000 'cGy'
* extension[doseDeliveredToVolume][1].extension[fractionsDelivered].valueUnsignedInt = 25
* subject = Reference(cancer-patient-jenny-m)
* asserter = Reference(us-core-practitioner-kyle-anydoc)

Instance: radiotherapy-treatment-summary-other-without-text
InstanceOf: RadiotherapyCourseSummary
Description: "Example of radiotherapy treatment summary involving external beam radiation to chest wall and regional node radiation with a chest wall boost"
* status = #completed "completed"
* code = SCT#1217123003 // "Radiotherapy course of treatment (regime/therapy)"
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy (procedure)"
* bodySite = SCT#78904004 "Chest Wall Structure (body structure)"
* reasonCode = ICD10CM#C50.811 "Malignant neoplasm of overlapping sites of right female breast"
* extension[actualNumberOfSessions].valueUnsignedInt = 31
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* performedPeriod.start = "2018-08-15"
* performedPeriod.end = "2018-10-25"
// modified example to demonstrate new RadiotherapyModalityAndTechnique structure in Course Summary
* extension[modalityAndTechnique][0]
  * extension[modality][0]
    * valueCodeableConcept = SCT#74964007 "Other"
//    * valueCodeableConcept.text = "External beam radiation therapy using photons (procedure) - my version"
  * extension[technique][0].valueCodeableConcept = SCT#1156530009 "Volumetric Modulated Arc Therapy (procedure)"
* extension[modalityAndTechnique][+]
  * extension[modality][0].valueCodeableConcept = SCT#45643008  "Teleradiotherapy using electrons"
  * extension[technique][0]
    * valueCodeableConcept = SCT#74964007 "Other"
    * valueCodeableConcept.text = "Three dimensional external beam radiation therapy (procedure) - my version"
* extension[doseDeliveredToVolume][0].extension[volume].valueReference = Reference(jenny-m-chest-wall-treatment-volume)
* extension[doseDeliveredToVolume][0].extension[totalDoseDelivered].valueQuantity = 6000 'cGy'
* extension[doseDeliveredToVolume][0].extension[fractionsDelivered].valueUnsignedInt = 30
* extension[doseDeliveredToVolume][1].extension[volume].valueReference = Reference(jenny-m-chest-wall-lymph-nodes-treatment-volume)
* extension[doseDeliveredToVolume][1].extension[totalDoseDelivered].valueQuantity = 5000 'cGy'
* extension[doseDeliveredToVolume][1].extension[fractionsDelivered].valueUnsignedInt = 25
* subject = Reference(cancer-patient-jenny-m)
* asserter = Reference(us-core-practitioner-kyle-anydoc)