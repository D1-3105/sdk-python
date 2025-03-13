lint:
	ruff format runware

test.bootstrap:
	pip install -e .
	pip install ruff pytest-asyncio

test.lint:
	# ruff check runware ## uncomment me when lints are fixed

test.pytest:
	pytest tests/


tests: test.bootstrap test.lint test.pytest

.PHONY: tests test.bootstrap lint tests.lint tests.pytest
