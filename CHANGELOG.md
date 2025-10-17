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
[in development]: https://github.com/ppfeufer/aa-dependency-overrides/compare/v0.2.0...HEAD "In Development"
[keep a changelog]: http://keepachangelog.com/ "Keep a Changelog"
[semantic versioning]: http://semver.org/ "Semantic Versioning"
