TEMPLATE_NAME ?= cpp_base_2404:1.0

basepath=$(cd `dirname $0`; pwd)

build:
	@docker build -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --rm --name="cpp_base" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --rm --name="cpp_base" -v cpp_base:/home/frank/cpp_base  -it -t feixiao/$(TEMPLATE_NAME) 

run-hide: 
	@docker run --rm --name="cpp_base" -it -t feixiao/$(TEMPLATE_NAME) >> /dev/null 
