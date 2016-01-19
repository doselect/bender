## Git conventions

### Contribution flow

```
git pull <REMOTE_NAME> <BRANCH_NAME>
git checkout -b <ISSUE_ID (or) ISSUE_NAME>
```

.. make changes to the code ..

```
git add <FILES_TO_BE_COMMITTED>
git commit -s
```

.. will open the default editor ..

Example commit message

```
<ISSUE_ID> : Subject line of the commit (Should not exceed 50 characters)

- Changed x
- Changed y
- Explain what you did in the commit

```

```
git push <REMOTE_NAME> <ISSUE_ID>
```

> NOTE:
- If you are not owner of the project, do not push to `master`, ever
- Multiple commits should not have same commit message
- Per commit per functional change
- If you are stuck somewhere, please do ask any of us before running a command. Do not mess up with the history

### Commit messages

- Give proper commit messages that describe the change
- Each commit message should be granular, solving a specific issue
- Don't mangle a lot of commits together, unless asked for
- Use Markdown in commit messages to make them more readable.
- Always sign the commits by using `-s` flag
- Do not use `-m` flag

Here's a nice sample:

```
HED-1 - Create something useful that people need

We intend to create a library that people need. To get this
done, we have come up with the following plans:

- We will write code that we are proud of
- We will write code that is beautiful
```

### Pull requests

- Ensure that you have worked on the latest code to avoid re-introducing removed diffs
- Give a proper title to your pull requests
- Giving a description will make the aliens smile
- Giving a description is no excuse to commit messages that make aliens sad

## Ignore list
- Compiled files/binaries
- Dependencies (node_modules, bower_components, ..)
- OS-specific hidden files and 3rd-party artifacts
