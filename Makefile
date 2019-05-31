.PHONY: docs

init:
	pip install pipenv --upgrade
	pipenv install --dev --skip-lock

reinit:
	pipenv --rm
	make init

test:
	pipenv run pytest

lock:
	pipenv lock -dr > requirements.txt

coverage:
	pipenv run pytest --cov=enigma tests/ --cov-report=html