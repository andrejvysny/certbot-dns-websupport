.PHONY: default
SHELL := /bin/bash

default: build

cleanup:
	rm -rf dist build
	find . -name "*.pyc" -delete
	find . -name "*.egg-info" -delete
	find . -name "*.pyo" -delete

build: cleanup
	python3 setup.py bdist_wheel

upload:
	twine upload dist/*
