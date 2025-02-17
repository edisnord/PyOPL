default: build

build:
	python3 setup.py sdist bdist_wheel

install:
	pip install --force dist/*.whl

clean:
	rm -rf dist build pyoplm.egg-info/

release:
	python3 -m twine upload dist/*

test:
	python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
