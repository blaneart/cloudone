venv:
	virtualenv venv --python=python3


reqs: venv
	. venv/bin/activate; pip install -Ur requirements.txt

ansible: reqs
	. venv/bin/activate; ansible-playbook -i inventory.yaml playbook.yaml

.PHONY = reqs