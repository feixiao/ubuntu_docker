TEMPLATE_NAME ?= cpp_build_2504:1.0

basepath=$(cd `dirname $0`; pwd)

build:
	@docker build -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --rm --name="cpp_build_2504" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --rm --name="cpp_build_2504" -v cpp_build:/home/frank/cpp_build  -it -t feixiao/$(TEMPLATE_NAME) 

run-hide: 
	@docker run --rm --name="cpp_build_2504" -it -t feixiao/$(TEMPLATE_NAME) >> /dev/null 
