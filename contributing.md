# Contributing to mCODE

## 1. Log a HL7 Jira issue

If you have a question, feature request, or proposed change, the best place to start is by logging a Jira issue on the HL7 Jira site. [Instructions for doing this are found here](https://confluence.hl7.org/pages/viewpage.action?pageId=91982207).

## 2. Discuss with the mCODE team

Once the issue is logged, you should discuss with the team on [chat.fhir.org in the Cancer Interoperability > mCODE topic](https://chat.fhir.org/#narrow/stream/179234-Cancer-Interoperability/topic/mCODE) before attempting to make changes yourself. mCODE changes need to go through the standard HL7 balloting procedure, so it's important to coordinate with the other people working on the project.

## 3. Create a pull request

When everyone has agreed on a course of action, IG changes should be submitted as a pull request for review [in this repository](https://github.com/HL7/fhir-mCODE-ig).

Note that when you create a branch in this repository, CI will build the IG inside automatically. [You can access this here](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/branches/).

### Before your pull request is reviewed

1. Build the IG locally (see [README.md](README.md) for instructions). Make sure the build completes without any SUSHI errors or exceptions in the FHIR IG Publisher.
2. Check the `output/qa.html` page to make sure you did not introduce new errors.
3. Manually review any IG pages your pull request modifies to make sure there are not display issues or other problems.
4. If you added a new resource that appears on the [Artifacts Summary page](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/artifacts.html) (`output/artifacts.html`), add it to an appropriate custom group in `sushi-config.yaml`.

### Handling the `input-cache/txcache/` folder

The current recommendation from the FHIR IG Publisher team is to commit this folder to IG git repositories. Making the `txcache` available in the git repository can reduce the cold build time by 20+ minutes, but also adds a lot of churn to the git repository and can make pull requests cumbersome.

The best practice is to not commit `txcache` updates in branches used for pull requests unless your pull request will have a substantial build time without an updated cache. Instead, the core mCODE spec team will periodically update `master` directly with `txcache` updates batched into a single commit.

## 4. Merging

The `master` branch is the primary branch for this repository (shortly to be converted to `main`). Even when a pull request is approved, it may not be merged in immediately. For example, if a change needs to be reviewed by TRG, it may be simpler to wait to merge the branch in until the review is complete in case further changes need to be made.

---

Further information can be found about mCODE on the [mCODE Knowledge Base](https://confluence.hl7.org/display/COD/Knowledge+Base+-+mCODE).
