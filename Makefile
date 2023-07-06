venv:
	virtualenv venv --python=python3

reqs: venv
	. venv/bin/activate; pip install -Ur requirements.txt

.env:
	echo "Please create a .env file. You can follow the example.env file"

ansible: reqs .env
	. venv/bin/activate; . ./.env; ansible-playbook -i inventory.yaml playbook.yaml

.PHONY = reqs ansible venv all

all: ansible