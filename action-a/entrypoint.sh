#!/bin/bash 
 COUNTER=0
 while [  $COUNTER -lt 300 ]; do
     curl http://http://20.54.128.64:8080/hello
     sleep 1
     let COUNTER=COUNTER+1 
 done
