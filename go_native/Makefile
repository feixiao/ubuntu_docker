TEMPLATE_NAME ?= registry.cn-hangzhou.aliyuncs.com/frank_dev/go-native:0.1

basepath=$(cd `dirname $0`; pwd)
pes_parent_dir:=$(shell pwd)/$(lastword $(MAKEFILE_LIST))
pes_parent_dir:=$(shell dirname $(pes_parent_dir))

build:
	@docker build -t $(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t $(TEMPLATE_NAME) .

push:
	@docker push $(TEMPLATE_NAME)

# run: 
# 	@echo ${pes_parent_dir}
# 	@docker run --rm --name="janus" -it -p 8088:8088  -p 8188:8188 -p 20000-21000:20000-21000/udp  -v ${pes_parent_dir}/conf:/usr/local/etc/janus $(TEMPLATE_NAME) 

