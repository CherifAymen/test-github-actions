#!/bin/sh 

for i in `seq 1 300`;
do
      curl -s http://51.105.156.32:8080/hello
      sleep 1
done 
