TEMPLATE_NAME ?= hikyuu_wk_2504:1.0

basepath=$(cd `dirname $0`; pwd)

build:
	@docker build --platform linux/amd64 -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --platform linux/amd64 --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --platform linux/amd64 --rm --net=host --name="workbench_2504" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --platform linux/amd64 --rm -p 60022:22 --name="workbench_2504" -v workbench:/home/frank/workspace  -itd -t feixiao/$(TEMPLATE_NAME) 

run-hide: 
	@docker run --platform linux/amd64 -p 60022:22 --name="workbench_2504" -v workbench:/home/frank/workspace -itd -t feixiao/$(TEMPLATE_NAME) >> /dev/null 

push:
	@docker push feixiao/$(TEMPLATE_NAME)
	
stop:
	@docker stop workbench_2504