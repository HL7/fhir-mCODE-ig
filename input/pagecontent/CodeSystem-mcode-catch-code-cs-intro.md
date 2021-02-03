### Usage

This code system contains codes that are required to achieve positive identification of FHIR instances. The need for positive identification stems primarily from the need to associate instances with slices in the mCODE Patient Bundle. Positive identification is also useful in search, for example, to retrieve all Condition instances that represent PrimaryCancerConditions.

To understand the need for this code system, consider a FHIR Condition. A Condition resource can represent thousands of different disorders, but Condition.code identifies the condition. At times, a class or type of condition is defined by a value set. For example, in mCODE, a PrimaryCancerCondition is any Condition whose code comes from the value set PrimaryOrUncertainBehaviorCancerDisorderVS.

However, the converse is true only if the value set binding is `required`. If the value set binding is `extensible`, then any concept not covered by the original set can potentially be added. Hence, the code cannot be used to determine an instance of Condition is **not** a PrimaryCancerCondition [^2]. The conclusion can be summarized this way:

**Extensibility of the primary identifying code value set prevents positive identification of an instance.**

This limitation makes `required` bindings highly preferable. However, there can be legitimate reasons for extensible value sets. Some value sets are intrinsically open, for example, the set of human disorders. New disorders come along, a lesson richly learned in 2020.

This brings us back to the current code system. These codes make it possible to use `required` bindings, by creating an "Other, specify" choice. Since each code is unique to a specific value set, when one of these codes is encountered, the instance can be positively identified. An associated invariant forces the user to specify an additional code, so the semantics of "other" are not dependent on the other choices in the answer set.

[^1]: Another way is to look at `meta.profile`, but that is not required nor guaranteed to be accurate. FHIR treats it as a "claim".

[^2]: It is possible that some additional information could allow this conclusion to be drawn.
