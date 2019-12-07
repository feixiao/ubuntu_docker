TEMPLATE_NAME ?= janus_ubuntu_build:1.0

basepath=$(cd `dirname $0`; pwd)

build:
	@docker build -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --rm --net=host --name="janus_ubuntu_build" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --rm --net=host --name="janus_ubuntu_build" -it -t feixiao/$(TEMPLATE_NAME) 


run-hide: 
	@docker run --rm --net=host --name="janus_ubuntu_build" -it -t feixiao/$(TEMPLATE_NAME) >> /dev/null 
