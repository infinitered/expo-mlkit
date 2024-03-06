---
sidebar_position: 99
---

# Changesets, Versions, and Releases

## Using Changesets in the Repository

Changesets is a tool we use to manage versioning and changelogs in our monorepo efficiently. It allows us to track
changes to the packages within the repository, ensuring that when we release updates, all dependent packages are
versioned correctly, and their changelogs are updated appropriately.

### Getting Started with Changesets

To introduce a change or a new feature that you believe should trigger a version update of a package (or packages),
you'll need to create a changeset. A changeset is essentially a record of what packages need to be released and how (
major, minor, or patch).

1. **Creating a Changeset**

   After making your changes in the repository, run the following command at the root:

   ```bash
   yarn changeset
   ```

   This command will prompt you to select the packages that have changed, as well as the type of change (major, minor,
   or patch). It will then generate a `.md` file in the `.changeset` directory describing these changes. Include this
   file in your pull request.

2. **Reviewing Changesets in PRs**

   Changesets included in pull requests are reviewed as part of the code review process. This ensures that the
   versioning and changelogs will accurately reflect the changes once merged.

3. **Releasing Changes**

   Our release process is automated through GitHub Actions and utilizes the custom `release` script defined in
   our `scripts` directory. This process includes building the project, publishing updated packages to npm, and pushing
   tags to the repository.

   The `yarn release` command executes the steps defined in `scripts/release.mjs`, handling the complexities of
   building, publishing,
   and updating the repository accordingly.

### Important Considerations

- Ensure you run `yarn changeset` after making your changes but before creating your pull request.
- For a detailed explanation of the impact of your changes (major, minor, or patch), refer
  to [Semantic Versioning](https://semver.org/).
- The configuration for changesets can be found in `.changeset/config.json`. This configuration controls aspects like
  which branches are used for releases, commit messages, and more.

By adhering to these guidelines and utilizing changesets, you help maintain the project's versioning integrity and
contribute to the clear documentation of changes across releases.
