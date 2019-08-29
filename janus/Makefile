TEMPLATE_NAME ?= janus-webrtc-gateway-docker

build:
	@docker build -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t feixiao/$(TEMPLATE_NAME) .

bash: 
	@docker run --rm --net=host --name="janus" -it -t feixiao/$(TEMPLATE_NAME) /bin/bash

run: 
	@docker run --rm --net=host --name="janus" -it -t feixiao/$(TEMPLATE_NAME) 


run-hide: 
	@docker run --rm --net=host --name="janus" -it -t feixiao/$(TEMPLATE_NAME) >> /dev/null 
