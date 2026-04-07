# python_template
This repository provides a flexible and opinionated Python project template designed to help you start new projects quickly while following best practices. It includes a recommended directory structure, default configuration files, and tooling integrations for packaging, testing, linting, documentation, and reproducibility.

---

## Features
- **PEP 621** compliant `pyproject.toml` with [Hatchling](https://hatch.pypa.io/latest/)  
- Fast linting & formatting via Ruff
- Pre-commit hooks for enforced code quality
- Pytest for testing
- Coverage reporting
- Hatch for packaging
- [Just](https://github.com/casey/just) for developer automation (like `make`, but simpler)  
- `src/` layout for clean package structure  
- `.env.example` for environment variable management  
- MIT-licensed

---

# Getting Started

Follow these steps to set up the project for development.

## 1. Clone the repository
```bash
$ git clone https://github.com/etempelman/python_template.git project_name
$ cd project_name
```
Execute script to set your project_name
```bash
$ python3 set_project_info.py project_name
```
Replace placeholder names:
- Update pyproject.toml → set description, authors, URLs
- Adjust README.md
Create the repo
```bash
$ gh repo create project_name --public --source=. --push
```

## 2. Create a virtual environment
```bash
$ python3 -m venv .venv
$ source .venv/bin/activate   # On Windows: .venv\Scripts\activate
```
## 3. Install dependencies

You’ll need just installed:
```bash
brew install just    # macOS (Homebrew)
sudo apt install just # Ubuntu/Debian
winget install --id Casey.Just # Windows (PowerShell)
```
Then install project dependencies:
```bash
just install
```

## 4. Configure environment variables

- Copy `.env.example` to `.env` and edit values if needed:
```bash
$ cp .env.example .env
```
- The `.env` file controls environment-specific settings such as:

APP_ENV=dev
LOG_DIR=logs
LOG_FILE=app.log

- The default environment is `dev`. You can change it to `test`, `stage`, or `prod`.

## 5. Common tasks with just
```bash
just            # list all available commands
just install    # install project + dev dependencies
just test       # run tests with pytest
just coverage   # run tests with coverage report
just lint       # check code style with ruff
just lint-fix   # auto-fix linting issues (ruff)
just format     # format code (ruff)
just typecheck  # run static type checking (mypy)
just build      # build wheel & sdist via hatch
just publish    # publish to PyPI (requires credentials)
just clean      # remove build/test artifacts
```

---
# Project Structure
```bash
python_template/
├── data/
├── logs/
├── notebooks/
├── src/
│   └── project_name/
├── tests/
├── .env.example
├── .gitignore
├── LICENSE
├── README.md
├── pyproject.toml
└── .pre-commit-config.yaml
```
- src/project_name/ → main package placeholder
- tests/ → test suite
- data/ → optional data storage
- logs/ → log files directory
- notebooks/ → optional notebooks
- .env.example → template for environment variables
- .gitignore → git ignore rules
- LICENSE → MIT license
- README.md → project documentation
- pyproject.toml → project metadata and build configuration
- .pre-commit-config.yaml → configuration file for pre-commit
