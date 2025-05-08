TEMPLATE_NAME ?= cpp_base_2504:1.0

basepath=$(cd `dirname $0`; pwd)

build:
	@docker build --platform linux/amd64 -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --platform linux/amd64 --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --rm --platform linux/amd64 --name="cpp_base_2504" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --rm --platform linux/amd64 --name="cpp_base_2504" -v cpp_base:/home/frank/cpp_base  -it -t feixiao/$(TEMPLATE_NAME) 

run-hide: 
	@docker run --rm --platform linux/amd64 --name="cpp_base_2504" -it -t feixiao/$(TEMPLATE_NAME) >> /dev/null 

push:
	@docker push feixiao/$(TEMPLATE_NAME)
