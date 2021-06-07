#!/bin/bash


docker run -itd --name srs3 -p 1935:1935 \
    -p 1985:1985 -p 8080:8080 ossrs/srs:3