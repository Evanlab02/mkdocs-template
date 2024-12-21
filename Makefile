.PHONY: fresh
fresh: clean
	rm -rf .venv
	rm -rf uv.lock
	rm -rf assets

.PHONY: clean
clean:
	rm -rf site

.PHONY: requirements
requirements:
	uv pip compile --no-annotate pyproject.toml -o requirements.txt

.PHONY: setup
setup:
	uv sync

.PHONY: build
build:
	uv run mkdocs build

.PHONY: dev
dev:
	uv run mkdocs serve
