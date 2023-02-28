RuleSet: ConceptMapIntro(name, vsname)
* name = "{name}"
* title = "{name} Concept Map"
* status = #draft
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/fhir"
* description = "A mapping between TG263 Concepts and FHIR {name} Value Set"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept.text = "For TG263 to SNOMEDCT alignment"
* jurisdiction = urn:iso:std:iso:3166#US
* purpose = "To help implementers map from TG263 Concepts to SNOMEDCT codes and qualifiers"
* targetCanonical = Canonical({vsname})

RuleSet: MapConcept(code, display, targetcode, targetdisplay)
* group[=].element[+].code = {code}
* group[=].element[=].display = {display}
* group[=].element[=].target.code = {targetcode}
* group[=].element[=].target.display = {targetdisplay}
* group[=].element[=].target.equivalence = #equivalent

RuleSet: MapConceptLocationQualifier(code, display, targetcode, targetdisplay, qualifiercode1, qualifiercode1display, qualifiercode1system )
* group[=].element[+]
  * code = {code}
  * display = {display}
  * target
    * code = {targetcode}
    * display = {targetdisplay}
    * equivalence = #equivalent
    * product.
      * property = Canonical(BodyLocationQualifier)
      * system = {qualifiercode1system}
      * value = {qualifiercode1}
      * display = {qualifiercode1display}

RuleSet: MapConceptLateralityQualifier(code, display, targetcode, targetdisplay, qualifiercode1, qualifiercode1display, qualifiercode1system )
* group[=].element[+]
  * code = {code}
  * display = {display}
  * target
    * code = {targetcode}
    * display = {targetdisplay}
    * equivalence = #equivalent
    * product.
      * property = Canonical(LateralityQualifier)
      * system = {qualifiercode1system}
      * value = {qualifiercode1}
      * display = {qualifiercode1display}

RuleSet: MapConceptQualifier2(code, display, targetcode, targetdisplay, qualifiercode1, qualifiercode1display, qualifiercode2, qualifiercode2display, system)
* group[=].element[+]
  * code = {code}
  * display = {display}
  * target
    * code = {targetcode}
    * display = {targetdisplay}
    * equivalence = #equivalent
    * product[0].
      * property = Canonical(LateralityQualifier)
      * system = SCT
      * value = {qualifiercode1}
      * display = {qualifiercode1display}
    * product[1].
      * property = Canonical(BodyLocationQualifier)
      * system = {system}
      * value = {qualifiercode2}
      * display = {qualifiercode2display}



RuleSet: AddGroup(source, target)
* group[+].target = {target}
* group[=].source = {source}

RuleSet: UnmatchedMapConcept(code, display, targetcode, targetdisplay)
* group[=].element[+].display = {display}
* group[=].element[=].target.code = {targetcode}
* group[=].element[=].target.display = {targetdisplay}
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = {code}