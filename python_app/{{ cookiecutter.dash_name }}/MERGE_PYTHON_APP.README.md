## Installation

```bash
# Using uv (will automatically install Python if necessary):
uv tool install {{ cookiecutter.dash_name }}
# Using pipx:
pipx install {{ cookiecutter.dash_name }}
# Using pip:
pip install {{ cookiecutter.dash_name }}
```

## Python version support

This project will only ever support the latest released minor version of python, but will most likely work on older
versions as well. Change `requires-python` manually in `pyproject.toml` if necessary.
