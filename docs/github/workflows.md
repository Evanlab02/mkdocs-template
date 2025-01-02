# Workflows/Actions Documentation

This repository includes two pre-configured GitHub Actions workflows. While not mandatory, they provide utility for building and releasing your MkDocs-based documentation. You can safely remove them if they don't align with your requirements.

---

## 1. Build Workflow

The `build.yaml` workflow validates the MkDocs build process, ensuring there are no errors during the build or exit process.

### Configuration

If this repository is cloned into a subpath of an existing repository, you must update the following values to reflect your project's directory structure:

- **`working-directory`**: Specifies the root path for workflow operations.
- **`cache-dependency-glob`**: Defines the pattern for caching dependencies.

Here’s an example snippet of the configuration:

```yaml
documentation:
  runs-on: ubuntu-latest
  defaults:
    run:
      working-directory: . # TODO: Update this to your repository's subpath if applicable
  steps:
    - uses: actions/checkout@v4

    - name: Set up Python 3.13
      uses: actions/setup-python@v5
      with:
        python-version: "3.13"
        cache: "pip"

    - name: Set up uv
      uses: astral-sh/setup-uv@v5
      with:
        enable-cache: true
        cache-dependency-glob: "uv.lock" # TODO: Update this if your dependency lock file differs
```

### Purpose

This workflow ensures that your MkDocs configuration is valid and the build process completes without errors.

---

## 2. Release Workflow

The `release.yaml` workflow leverages [Release Please](https://github.com/googleapis/release-please) to automate versioning and release management. For more details on configuring and using Release Please, refer to their [documentation](https://github.com/googleapis/release-please#readme).

### Configuration

As with the `build.yaml` workflow, you need to adjust the following values for your project structure:

- **`working-directory`**: Set the root path for the workflow.
- **`cache-dependency-glob`**: Customize this value to match your dependency lock file.

---

These workflows provide a foundation for managing your MkDocs documentation efficiently. Customize them as needed to fit your project setup and deployment needs.
