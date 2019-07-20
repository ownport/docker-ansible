
build:
	docker build -t ownport/ansible:2.8.2 .

console:
	docker run -ti --rm --name ansible-console \
		-v $(shell pwd):/data \
		ownport/ansible:2.8.2 \
		/bin/sh
