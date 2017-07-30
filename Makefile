
ansible-latest:
	docker build -t ownport/ansible:latest .

ansible-2.3.1.0:
	docker build -t ownport/ansible:2.3.1.0 --build-arg ANSIBLE_VERSION="==2.3.1.0" .
