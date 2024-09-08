# Contributing to this Repository

## Introduction

This document provides instructions on how to contribute to this repository. Please follow the instructions carefully. If you have any questions or suggestions, please create an [issue](https://github.com/tenant-sphere5/TenantSphere-server/issues/new) with the label **`help wanted`**.

## Git dynamics and etiquette

As our team grows with more developers, we need to introduce recommendations and best-practices in order to have better expectations about work and outcome thereof. So let's start with few simple recommendations on how to act amongst your peers.

### General etiquette

- We're equal with no regard to age, gender, color, origin, religion, skill set, and position.

- We're all equally talented and capable.

- Be polite and respectful towards your team, and please mind your language.

- Keep your comments even if they're wrong – having a proper history is part of the learning process, and we can still learn from each other.

- Be as detailed as possible.

### Grouping files in commits

Group up files belonging to the same "cause" or "feature" or "issue" in the same commit. For example, if you want to add a new feature, you can group all files related to that feature in the same commit.

### Commenting on commits

We have very precise rules over how our Git commit messages must be formatted. This format leads to **easier to read commit history**.

The commit message should be in the format:

```txt
type(scope?): subject
body?
footer?
```

The `<type>` and `<subject>` fields are mandatory, the `(<scope>)`, `<body>`, and `<footer>` fields are optional.

```txt
<type>(<scope>): <subject>
  │       │          │
  │       │          └─⫸ Summary in present tense. Capitalized. No period at the end.
  │       │
  │       └─⫸ Commit Scope: Depending on the commit
  │
  └─⫸ Commit Type: build|ci|docs|feat|fix|perf|refactor|test|style|chore|revert
```

#### **Type:**

Must be one of the following:

- **build**: Changes that affect the build system or external dependencies (example scopes: npm)
- **ci**: Changes to our CI configuration files and scripts (example scopes: Docker, GitHub Actions)
- **docs**: Documentation only changes
- **feat**: A new feature
- **fix**: A bug fix
- **perf**: A code change that improves performance
- **refactor**: A code change that neither fixes a bug nor adds a feature
- **test**: Adding missing tests or correcting existing tests
- **style**: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- **chore**: Other changes that don't modify src or test files
- **revert**: Reverts a previous commit

##### **Scope:**

The scope of the commit.

Can be left empty in some cases like `test: add missing unit tests`, `docs: fix typo in user module`.

##### **Subject:**

Use the subject field to provide a succinct description of the change:

- use the imperative, present tense: "change" not "changed" nor "changes"
- capitalize the first letter: "Add" not "add" nor "ADD"
- no dot (`.`) at the end

### Creating a Pull Request (PR)

When creating a pr, please:

- Provide a short title that follows the same rules as in [Commenting on commits](CONTRIBUTING.md#commenting-on-commits) above.
- Provide a detailed description of the change in the body of the PR.
- Be as detailed as possible in the footer.

### After your pull request is merged

After your pull request is merged, you can safely delete your branch and pull the changes from the main (upstream) repository:

- Delete the remote branch on GitHub either through the GitHub web UI or your local shell as follows:

    ```bash
    git push origin --delete <branch-name>
    ```

- Checkout the main branch:

    ```bash
    git checkout main -f
    ```

- Delete the local branch:

    ```bash
    git branch -D <branch-name>
    ```

- Update your local main with the latest upstream version:

    ```bash
    git pull --ff upstream main
    ```

## Branch names

### `main`: The development branch (historically known as `master`)

When we develop new functionality, or fix existing ones, we create a branch from `main` and work there. Most of the time, this is the branch that you'll be checking out and working with.

A typical workflow is like this:

```bash
git checkout main
git pull --prune --all          # in case of merge conflicts, attend to them and then rerun.
git checkout -b <branch-name>   # follows the branch naming convention described below.
```

### Naming branches

When you're ready to create a pull request, please follow these simple rules:

- Branch names are composed in English, do not use another language.
- Branch names are always **`lower-case`**.
- Branch names comprise (at minimum) of 2 words separated by a slash `<prefix>/<label>`, where:

    - `<prefix>`: one of `feature`, `bugfix`, `docs` or `hotfix`. Do not use any other word!
    - `<label>`:  1-5 words describing the branch, separated by dashes (`-`).
    - Ideally, the first word in `<label>` should be a noun, not a verb.

    Example:

    - `john/user-login` – **`WRONG`** ❌, the `<prefix>` isn't supported: `john`
    - `feature/user-login` – **`RIGHT`** ✅
    - `hotfix/userLogin` – **`WRONG`** ❌, the branch name must be `lower-case`, and words in `<label>` must be separated by dashes.
    - `hotfix/user-login` – **`RIGHT`** ✅

### Branch prefixes

We use branch prefixes to identify similar work and make branch types clearer. The following prefixes are allowed (meaning, do not use any other prefix):

> #### Prefix: `feature/…`
>
> Used for improvements or specific features.
> They branch from, and pr's are merged back into, `main`.
>
> #### Prefix: `bugfix/…`
>
> Used to fix a problem in `main`.
> They branch from, and pr's are merged back into, `main`.
>
> #### Prefix: `hotfix/…`
>
> Used to quickly fix `main` branch without interrupting changes in `devel`.
> They branch from, and pr's are merged back into `main`.
>
> #### Prefix: `docs/…`
>
> Used to create new documentation.
