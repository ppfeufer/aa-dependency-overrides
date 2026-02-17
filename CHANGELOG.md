# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog] and this project adheres to [Semantic Versioning].

<!--
GitHub MD Syntax:
https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax

Highlighting:
https://docs.github.com/assets/cb-41128/mw-1440/images/help/writing/alerts-rendered.webp

> [!NOTE]
> Highlights information that users should take into account, even when skimming.

> [!TIP]
> Optional information to help a user be more successful.

> [!IMPORTANT]
> Crucial information necessary for users to succeed.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advised about risks or negative outcomes of certain actions.
-->

## [In Development] - Unreleased

<!--
Section Order:

### Added
### Fixed
### Changed
### Deprecated
### Removed
### Security
-->

<!-- Your changes go here -->

## [0.9.0] - 2026-02-17

### Removed

- Version exclusion for `gunicorn` v25.1.0, as the issues with `supervisor` are
  resolved by adding the `--no-control-socket` option to the `gunicorn` command in
  the `supervisor` configuration

```ini
; Gunicorn application server
[program:gunicorn]
command = %(ENV_AA_COMMAND_GUNICORN)s %(ENV_AA_PROJECT_NAME)s.wsgi
    --workers 3
    --timeout 120
    --pid %(ENV_AA_PROJECT_DIRECTORY)s/gunicorn.pid
    --no-control-socket
directory = %(ENV_AA_PROJECT_DIRECTORY)s
stdout_logfile = %(ENV_AA_PROJECT_DIRECTORY)s/log/%(program_name)s.log
stderr_logfile = %(ENV_AA_PROJECT_DIRECTORY)s/log/%(program_name)s.log
user = %(ENV_AA_USER)s
autostart = true
autorestart = true
stopsignal = INT
killasgroup = true
```

## [0.8.0] - 2026-02-17

### Added

- Exclude for `gunicorn` v25.1.0 due to restart issues with `supervisor`
  - See:
    - https://github.com/benoitc/gunicorn/discussions/3510
    - https://github.com/benoitc/gunicorn/discussions/3509
    - https://github.com/benoitc/gunicorn/discussions/3508

## [0.7.1] - 2026-01-05

### Added

- Exclude for `celery` v5.6.1 due to known issues
  - See: https://discord.com/channels/399006117012832262/588572778366500864/1455519030839607380

## [0.7.0] - 2026-01-02

### Added

- Limit `celery` to `<5.6.1`
  - See: https://discord.com/channels/399006117012832262/588572778366500864/1455519030839607380

## [0.6.0] - 2025-11-28

### Removed

- Temporary pin of `django-ninja` removed, as the affected applications
  have adapted to the changes in `django-ninja>=1.5.0`

## [0.5.0] - 2025-11-13

### Fixed

- Upper limit of `django-ninja` to `<1.5.0`

## [0.4.0] - 2025-11-13

### Added

- Temporary pin `django-ninja` to avoid issues with CSRF removal in later versions
  - https://github.com/vitalik/django-ninja/releases/tag/v1.5.0
  - https://github.com/vitalik/django-ninja/pull/1524
  - https://github.com/Solar-Helix-Independent-Transport/allianceauth-corp-tools/blob/master/corptools/api/__init__.py#L13

## [0.3.0] - 2025-10-29

### Removed

- Restrictions on `pydantic` as the issues with `pydantic>=2.12` have been resolved
  in the latest release (v2.12.3 as of 2025-10-17)

## [0.2.0] - 2025-10-17

### Changed

- Dependency to `allianceauth` to `>=4.11.0` to include fixes for `bcrypt`

### Removed

- Limitation of `bcrypt`, as this is now taken care of in `allianceauth>=4.11.0`
  - https://gitlab.com/allianceauth/allianceauth/-/issues/1436
  - https://gitlab.com/allianceauth/allianceauth/-/merge_requests/1768

## [0.1.0] - 2025-10-10

### Added

- Limited `bcrypt` dependency to `<5` to avoid issues with `bcrypt>=5`
  - https://gitlab.com/allianceauth/allianceauth/-/issues/1436
  - https://gitlab.com/allianceauth/allianceauth/-/merge_requests/1768 (waiting for release)
- Limited `pydantic` dependency to `<2.12` to avoid issues with `pydantic>=2.12`
  - https://github.com/pydantic/pydantic/issues/12374
  - https://github.com/pydantic/pydantic/issues/12360 (Duplicate of above)
  - https://github.com/pydantic/pydantic/issues/12329 (Duplicate of above)

<!-- Links to be updated upon release -->

[0.1.0]: https://github.com/ppfeufer/aa-intel-tool/commits/v0.1.0 "v0.1.0"
[0.2.0]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.1.0...v0.2.0 "v0.2.0"
[0.3.0]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.2.0...v0.3.0 "v0.3.0"
[0.4.0]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.3.0...v0.4.0 "v0.4.0"
[0.5.0]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.4.0...v0.5.0 "v0.5.0"
[0.6.0]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.5.0...v0.6.0 "v0.6.0"
[0.7.0]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.6.0...v0.7.0 "v0.7.0"
[0.7.1]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.7.0...v0.7.1 "v0.7.1"
[0.8.0]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.7.1...v0.8.0 "v0.8.0"
[0.9.0]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.8.0...v0.9.0 "v0.9.0"
[in development]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.9.0...HEAD "In Development"
[keep a changelog]: http://keepachangelog.com/ "Keep a Changelog"
[semantic versioning]: http://semver.org/ "Semantic Versioning"
