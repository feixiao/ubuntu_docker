
#!/bin/bash

docker run --platform linux/amd64 \
     -dit -p 60022:22 --name="cpp_build" feixiao/cpp_build:1.5