# Makefile fragment for running tests and generating coverage reports

# Build test
.PHONY: build-test
build-test: check-python-venv
	@echo "Building the package …"
	@python3 -m build

# Help message
.PHONY: help
help::
	@echo "  $(TEXT_UNDERLINE)Tests:$(TEXT_UNDERLINE_END)"
	@echo "    build-test                  Build the package"
	@echo ""
