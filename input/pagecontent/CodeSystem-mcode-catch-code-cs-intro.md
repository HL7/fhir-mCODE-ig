### Usage

This code system contains codes that are required to achieve positive identification of FHIR instances. The need for positive identification stems primarily from the need to associate instances with slices in the mCODE Patient Bundle. Positive identification is also useful in search, for example, to retrieve all Condition instances that represent PrimaryCancerConditions.

To understand the need for this code system, consider a FHIR Condition. `Condition.code` is the primary identifier of the condition. The association with a particular profile depends on the value set bound to `Condition.code` in the profile. A Condition is a PrimaryCancerCondition for the purposes of mCODE if its code comes from the value set `PrimaryOrUncertainBehaviorCancerDisorderVS`.

On the other hand, if `Condition.code` does not come from that value set, we cannot automatically conclude the instance is **not** a PrimaryCancerCondition. It depends on the value set binding strength. A binding strength of `extensible`, `preferred`, or `example` allows other concepts, so if the `Condition.code` is not in the defining value set, we cannot determine if the instance is or is not a PrimaryCancerCondition [^2]. This inference is possible only if the binding is `required`.

This limitation makes `required` bindings highly preferable. However, there can be legitimate reasons for extensible value sets. Some value sets are intrinsically open, for example, the set of human disorders. New disorders (and new designations for existing disorders) come along, a lesson richly learned in 2020.

This brings us back to the current code system. These codes make it possible to use `required` bindings by creating an "Other, specify" choice. Since each code is unique to a specific value set, when one of these codes is encountered, the instance can be positively identified. An associated invariant forces the user to specify an additional code, so the semantics of "other" are not dependent on the other choices in the answer set.

[^1]: Another way is to look at `meta.profile`, but that is not required nor guaranteed to be accurate. FHIR treats it as a "claim".

[^2]: It is possible that some additional, exogenous information could allow this conclusion to be drawn.
