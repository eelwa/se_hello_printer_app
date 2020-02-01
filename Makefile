.PHONY: test

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

lint:


run:
	python main.py

test:
	PYTHONPATH=. py.test  --verbose -s

docker_build:
	docker build -t hello-world-printer .
