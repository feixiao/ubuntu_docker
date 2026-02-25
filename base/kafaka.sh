#!/bin/bash


docker run -itd --restart=always --name kafka -p 9092:9092 apache/kafka:4.2.0
