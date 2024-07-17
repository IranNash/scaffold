

install:
	pip install --upgrade pip &&\
		pip install -r requierements.txt

format:
	black *.py

lint:
	pylint --disable=R,C models.py

test:  
	pytest -m pytest -vv --cov=models test_models.py
	
all: install lint test
	


	
# Call with `make lint` etc