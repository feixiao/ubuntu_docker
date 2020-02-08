TEMPLATE_NAME ?= workbench:1.7

basepath=$(cd `dirname $0`; pwd)

build:
	@cp -f ../janus/libnice-0.1.16.tar.gz libnice-0.1.16.tar.gz
	@cp -f ../janus/libwebsockets-2.4.2.zip  libwebsockets-2.4.2.zip 
	@cp -f ../janus/libsrtp-2.2.0.tar.gz  libsrtp-2.2.0.tar.gz 
	@docker build -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --rm --net=host --name="workbench" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --rm -p 60022:22 --name="workbench" -v /home/frank/volumes/workbench:/home/frank/workspace  -it -t feixiao/$(TEMPLATE_NAME) 

run-hide: 
	@docker run --rm --net=host --name="workbench" -it -t feixiao/$(TEMPLATE_NAME) >> /dev/null 
