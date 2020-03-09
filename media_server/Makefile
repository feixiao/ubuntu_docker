TEMPLATE_NAME ?= mediaserver:1.3

basepath=$(cd `dirname $0`; pwd)

build:
	@cp -f ../janus_build/libsrtp-2.2.0.tar.gz  libsrtp-2.2.0.tar.gz 
	@docker build -t feixiao/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t feixiao/$(TEMPLATE_NAME) .


run: 
	@docker run --rm -p 10100:22  -p 10101-10110:10101-10110 -v /home/frank/volumes/ms:/home/frank/ms --name="mediaserver" -it -t feixiao/$(TEMPLATE_NAME) 


run-hide: 
	@docker run --rm -p 10100:22  -p 10101-10110:10101-10110 -v /home/frank/volumes/ms:/home/frank/ms --name="mediaserver" -itd -t feixiao/$(TEMPLATE_NAME) >> /dev/null 
