#!/bin/sh 

for i in `seq 1 100`;
do
      curl -s http://51.105.158.240:8080/hello
      sleep 1
done 
