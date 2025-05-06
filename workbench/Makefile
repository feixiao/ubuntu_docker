TEMPLATE_NAME ?= workbench_2504:1.0

basepath=$(cd `dirname $0`; pwd)

build:
	@docker build -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --rm --net=host --name="workbench_2504" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --rm -p 60022:22 --name="workbench_2504" -v workbench:/home/frank/workspace  -itd -t feixiao/$(TEMPLATE_NAME) 

run-hide: 
	@docker run -p 60022:22 --name="workbench_2504" -v workbench:/home/frank/workspace -itd -t feixiao/$(TEMPLATE_NAME) >> /dev/null 

stop:
	@docker stop workbench_2504