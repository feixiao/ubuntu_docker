TEMPLATE_NAME ?= workbench:1.8

basepath=$(cd `dirname $0`; pwd)

build:
	@docker build -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --rm --net=host --name="workbench" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --rm -p 60022:22 --name="workbench" -v /home/frank/volumes/workbench:/home/frank/workspace  -it -t feixiao/$(TEMPLATE_NAME) 

run-hide: 
	@docker run --rm --net=host --name="workbench" -it -t feixiao/$(TEMPLATE_NAME) >> /dev/null 
