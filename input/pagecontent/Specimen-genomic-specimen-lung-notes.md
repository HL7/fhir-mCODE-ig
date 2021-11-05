```
Instance: genomic-specimen-lung
InstanceOf: GenomicSpecimen
Title: "genomic-specimen-lung"
Description: "mCODE Example for Genomic Specimen"
Usage: #example
* status = #available
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TISS "Tissue"
* subject = Reference(cancer-patient-john-anyperson)
* collection.collector = Reference(us-core-practitioner-kyle-anydoc)
* collection.bodySite = http://snomed.info/sct#41224006 "Structure of lower lobe of left lung (body structure)"
* processing.timeDateTime = "2019-03-20"
```