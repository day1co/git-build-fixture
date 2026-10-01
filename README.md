# git-build-fixture

A tiny public fixture for testing container builds from a git repository.

- `Dockerfile` builds a static page served by busybox `httpd` on port 8080.
- During the build it prints three marker lines: `GIT_FIXTURE_MARK_START`, `GIT_FIXTURE_MARK_MIDDLE`, `GIT_FIXTURE_MARK_END`.
- No secrets, no application code. Please do not add any.
