# mkdocs-template

Template repository for an mkdocs project.

## Pre-requisites

- Python 3.13 or higher
- uv 0.5.11 or higher
- make

## Using this template

### Method 1: Create repository via GitHub

If you would like to use this template repository as is. You can create a repository via GitHub using this repository as the template.

![GitHub templates](./assets/GH_TEMPLATES.png)

### Method 2: Monorepo

If you would like to integrate this into an already existing repository or a repository that will be a monorepo. You can use the following commands to do so.

**NOTE: You will require `git` and `npm` to be installed.**

```bash
git clone git@github.com:Evanlab02/mkdocs-template.git <PATH_IN_YOUR_MONO_REPO>
npx degit <PATH_IN_YOUR_MONO_REPO>
cd <PATH_IN_YOUR_MONO_REPO>
make fresh
```

## Post setup

You can do a text search over all the files in the template for the word `Template` or `template`. You can replace all these fields with something more suitable to your project.

You can also then proceed to rewrite this README for your project.
