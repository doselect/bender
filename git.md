# Git

# Branching

## Quick Legend

<table>
  <thead>
    <tr>
      <th>Instance</th>
      <th>Branch</th>
      <th>Description, Instructions, Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Stable</td>
      <td>stable</td>
      <td>Accepts merges from Working and Hotfixes</td>
    </tr>
    <tr>
      <td>Working</td>
      <td>master</td>
      <td>Accepts merges from Features/Issues and Hotfixes</td>
    </tr>
    <tr>
      <td>Features/Issues</td>
      <td>topic-*</td>
      <td>Always branch off HEAD of Working</td>
    </tr>
    <tr>
      <td>Hotfix</td>
      <td>hotfix-*</td>
      <td>Always branch off Stable</td>
    </tr>
  </tbody>
</table>

## Main Branches

The main repository will always hold two evergreen branches:

* `master`
* `stable`

The main branch should be considered `origin/master` and will be the main branch where the source code of `HEAD` always reflects a state with the latest delivered development changes for the next release. As a developer, you will you be branching and merging from `master`.

Consider `origin/stable` to always represent the latest code deployed to production. During day to day development, the `stable` branch will not be interacted with.

## Supporting Branches

Supporting branches are used to aid parallel development between team members, ease tracking of features, and to assist in quickly fixing live production problems. Unlike the main branches, these branches always have a limited life time, since they will be removed eventually.

The different types of branches we may use are:

* Feature branches
* Bug branches
* Hotfix branches

Each of these branches have a specific purpose and are bound to strict rules as to which branches may be their originating branch and which branches must be their merge targets. Each branch and its usage is explained below.

## Working with branches

During the lifespan of the development, the committer should watch the `master` branch  to see if there have been commits since the feature was branched. Any and all changes to `master` should be merged into the feature before merging back to `master`; this can be done at various times during the project or at the end, but time to handle merge conflicts should be accounted for.

If the branch does not exist yet (check with the lead), create the branch locally and then push to Github. A feature branch should always be 'publicly' available. That is, development should never exist in just one developer's local branch.

```
$ git checkout -b feature-or-bug-name/id master                 // creates a local branch
$ git push origin feature-or-bug-name/id                        // makes the new branch remotely available
```

Periodically, changes made to `master` (if any) should be rebased back into your branch.

```
$ git rebase master                                  // rebase changes from master into the branch
```

When development on the branch is complete, the lead should merge changes into `master` and then make sure the remote branch is deleted.

```
$ git checkout master                               // change to the master branch
$ git merge --no-ff feature-or-bug-name/id          // makes sure to create a commit object during merge
$ git push origin master                            // push merge changes
$ git push origin :feature-or-bug-name/id           // deletes the remote branch
```

## Notes on feature development

- Checkout a feature branch from `master`
- Lead to set permissions to restrict writes to the feature branch only to themself
- Contributors to checkout sub-feature branch from feature branch
- Send atomic/small PRs to feature branch
- Lead to review and merge to feature branch
- When feature branch is good to go, lead to merge to master branch with a quick code review

# Committing Code

## General Rules

* Make [atomic commits](http://en.wikipedia.org/wiki/Atomic_commit) of changes, even across multiple files, in logical units. That is, as much as possible, each commit should be focused on one specific purpose.
* As much as possible, make sure a commit does not contain unnecessary whitespace changes. This can be checked as follows:

```
$ git diff --check
```

## Tags

* After you merge `master` with `stable`, tag it with current version and changelog

> We use semantic versioning - [SemVer](http://semver.org/)

```
git tag -a vX.X.X -m "Changelog"
git push origin --tags
```

## Commit Messages

As a general rule, your commit message should start with a single line that's no more than about 50 characters and that describes the commit concisely. If you feel the need for more detailed explanations, create a blank line, followed by a more detailed explanation.

For consistency, try and use the imperative present tense when creating a message. Examples:

* Use "Add tests for" instead of "I added tests for"
* Use "Change x to y" instead of "Changed x to y"

In order to associate commits with Github Issue, the commit message might indicate one or more issue number and (optionally) a state change for the story. The commit message should start with square brackets containing a hash mark followed by the issue id wherever possible. For example:

    [Fixes doselect/cross#14] Diverte power from warp drive to torpedoes

To automatically close an issue by using a commit message, include "Fix" in the square brackets in addition to the issue number. For example:

    [Fix doselect/cross#12] Torpedoes now sufficiently powered

You may also use `[Upgrade]` (or) `[Release]`

## Message Template

Here is a template to use as guideline for commit messages:

    [<optional state> #issueid] (50 chars or less) summary of changes

    More detailed explanatory text, if necessary. Wrap it to about 72
    characters or so.

    Further paragraphs come after a blank line.

    - Bullet points are okay, too

    - Typically a hyphen or asterisk is used for the bullet, preceded by a
    single space, with blank lines in between, but conventions vary here

## General notes

- The above format applies for pull requests as well if it has more than one commit
- Do not send huge pull requests. They are hard to review, thus bugs creep into master, easily
- Do not do *only style reviews*
- Read the commit (or) PR description, understand the PR, then merge
- Try not to review a PR if you aren't sure about the bigger picture (or) side-effects. Rather, assign to someone else who might have better context
- Create issues only in cross repository
