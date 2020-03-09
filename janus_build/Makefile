TEMPLATE_NAME ?= janus_ubuntu_build:1.1

basepath=$(cd `dirname $0`; pwd)

build:
	@docker build -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --rm -p 10100:22  -p 10101-10110:10101-10110 --name="janus_ubuntu_build" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --rm -p 10100:22  -p 10101-10110:10101-10110 --name="janus_ubuntu_build" -it -t feixiao/$(TEMPLATE_NAME) 


run-hide: 
	@docker run --rm -p 10100:22  -p 10101-10110:10101-10110 --name="janus_ubuntu_build" -it -t feixiao/$(TEMPLATE_NAME) >> /dev/null 
