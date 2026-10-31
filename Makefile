.PHONY: install test lint typecheck run-notebooks clean help

install:
	pip install -e ".[dev]"

test:
	pytest tests/ -v

lint:
	ruff check src tests

typecheck:
	mypy src

run-notebooks:
	pytest --nbmake **/*.ipynb -v

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type d -name ".pytest_cache" -exec rm -rf {} +
	find . -type d -name ".mypy_cache" -exec rm -rf {} +
	find . -type d -name ".ipynb_checkpoints" -exec rm -rf {} +
	find . -type d -name "*.egg-info" -exec rm -rf {} +

help:
	@echo "Available commands:"
	@echo "  make install         Install the package and dev dependencies"
	@echo "  make test            Run unit tests"
	@echo "  make lint            Lint source code with ruff"
	@echo "  make typecheck       Type-check source code with mypy"
	@echo "  make run-notebooks   Execute all notebooks and check for errors"
	@echo "  make clean           Remove all cache and build artifacts"
