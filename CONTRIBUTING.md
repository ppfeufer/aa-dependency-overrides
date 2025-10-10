# Contributing<a name="contributing"></a>

There are many ways you can contribute to this project. The following is a set of
guidelines for contributing. Please follow them to make the contribution process
easy and effective for everyone involved.

Contributions are welcome from everyone. By participating in this project, you
agree to abide by its [code of conduct].

You can contribute to this project in many ways, including but not limited to:

- Reporting bugs
- Suggesting new features
- Translating the app into other languages
- Writing code (Help with development)

______________________________________________________________________

<!-- mdformat-toc start --slug=github --maxlevel=6 --minlevel=2 -->

- [License Agreements](#license-agreements)
  - [Project License](#project-license)
  - [CCP](#ccp)
- [Development Environment](#development-environment)
- [Make Targets](#make-targets)
  - [General](#general)
  - [Development](#development)
  - [Git](#git)
  - [Pre-Commit](#pre-commit)
  - [Redis](#redis)
  - [Tests](#tests)
  - [pre-commit](#pre-commit)
- [Branching and Pull Requests](#branching-and-pull-requests)
  - [Checklist](#checklist)

<!-- mdformat-toc end -->

______________________________________________________________________

## License Agreements<a name="license-agreements"></a>

### Project License<a name="project-license"></a>

This project is licensed under the GNU General Public License v3.0 (GPLv3). See the
[LICENSE](LICENSE) file for details.

By contributing code to this project, you agree that your contributions will be
licensed under the same license as the project itself.

### CCP<a name="ccp"></a>

This project is not affiliated with CCP Games in any way. All EVE Online related
content is the property of CCP Games.

Please make sure you have signed the [Developer License Agreement]
by logging in at [EVE: Developers Portal] before contributing any code.

## Development Environment<a name="development-environment"></a>

To develop and test your change, you will need a development environment on your
local machine. There are different options to choose from. But please make sure
you can run pre-commit checks and tox tests on your local machine.

If you are on Windows or Linux, you can use the [AA guide for setting up a dev environment].

## Make Targets<a name="make-targets"></a>

This project uses `Makefile` to simplify common tasks. You can run `make` in the
project root to see all available targets.

Some make targets for Django related tasks use the `manage.py` file.
You probably need to provide the absolute path to your `myauth` directory for it to work.
You can do so by providing a `.make/myauth-path` file in the project root with the
following content:

```makefile
/absolute/path/to/myauth
```

### General<a name="general"></a>

- `make help` - Show all available make targets

### Development<a name="development"></a>

- `make dev-install` - Install the app as editable package
- `make dev-uninstall` - Uninstall the app

### Git<a name="git"></a>

- `make git-clean-untracked` - Cleaning untracked files and directories from the working tree
- `make git-garbage-collection` - Cleanup unnecessary files and optimize the local repository
- `make git-prune` - Prune all unreachable objects from the local repository
- `make git-housekeeping` - Run all git housekeeping commands

### Pre-Commit<a name="pre-commit"></a>

- `make pre-commit-checks` - Run all pre-commit checks
- `make pre-commit-install` - Install pre-commit hooks
- `make pre-commit-uninstall` - Uninstall pre-commit hooks

### Redis<a name="redis"></a>

- `make redis-flushall` - Flush all data from the Redis database
- `make redis-status` - Check the Redis server status

### Tests<a name="tests"></a>

- `make build-test` - Build the package

### pre-commit<a name="pre-commit"></a>

This repository uses [pre-commit] to verify compliance with formatting / linting rules.
To use:

- Install `pre-commit` to your system.
- Run `pre-commit install` inside the app's root directory.
- You're all done! Code will be checked automatically using git hooks.

You can check if your code to commit adheres to the given style by simply running:

```shell script
pre-commit
```

Or to check all files:

```shell script
pre-commit run --all-files
```

The following will be checked by `pre-commit` (among others):

- No trailing whitespaces (excluded are minified JS and CSS, PO and MO files, and
  external libs)
- One, and only one, empty line at the end of every file (excluded are minified JS
  and CSS, PO and MO files, and external libs)
- Line ending is LF
- Code generally adheres to the editor config

## Branching and Pull Requests<a name="branching-and-pull-requests"></a>

To contribute code via pull request, make sure you fork the repository and branch your
changes from the `master` branch.

We strongly recommend creating a new branch for every new feature or change you
plan to be submitting as merge request. Please make sure to keep the `master` branch of
your fork in sync with the main repository to avoid conflicts.

Before you start working on a new feature, please open an Issue (Type: Feature
Request) and start a discussion if your idea is generally wanted and considered a
good addition to the app in general.

Please feel free to create your merge request early and while you are still not
finished developing to flag that you are working on a specific topic. Merge requests
that are not yet ready to review should be marked as DRAFT. You can signal others
that your merge request is ready for review by removing the DRAFT flag again.

#### Checklist<a name="checklist"></a>

Before you submit a pull request, please make sure that:

- [ ] Your code follows the style guidelines of this project
- [ ] Your changes are supported and covered by tests
- [ ] You have performed a self-review of your own code
- [ ] You have checked your code and corrected any misspellings

<!-- Links -->

[aa guide for setting up a dev environment]: https://allianceauth.readthedocs.io/en/latest/development/dev_setup/aa-dev-setup-wsl-vsc-v2.html "AA Guide for Setting up a Dev Environment"
[code of conduct]: CODE_OF_CONDUCT.md "Code of Conduct"
[developer license agreement]: https://developers.eveonline.com/license-agreement "Developer License Agreement"
[eve: developers portal]: https://developers.eveonline.com/ "EVE: Developers Portal"
[pre-commit]: https://github.com/pre-commit/pre-commit "pre-commit"
