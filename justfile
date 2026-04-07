# Default target: show available commands
default:
    @just --list

# 🐍 Environment setup
install:
    pip install -e .[dev]
    pre-commit install

# 🧪 Testing
test:
    pytest

coverage:
    coverage run -m pytest
    coverage report -m
    coverage html
    @echo "Open htmlcov/index.html in your browser for detailed coverage report."

# 🧹 Linting & Formatting & check
lint:
    ruff check .

lint-fix:
    ruff check . --fix

format:
    ruff format .

typecheck:
    mypy .

check:
    just lint
    just test
    # optional:
    just typecheck

# 🏗 Build & Publish
build:
    hatch build

publish:
    hatch publish

# Pre-commit
precommit-install:
    pre-commit install

precommit-run:
    pre-commit run --all-files

# 🧼 Clean up
clean:
    rm -rf build dist *.egg-info .pytest_cache .mypy_cache .ruff_cache htmlcov
