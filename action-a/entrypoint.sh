#!/bin/bash 
 COUNTER=0
 while [  $COUNTER -lt 300 ]; do
     curl http://51.105.156.32:8080/hello
     sleep 1
     let COUNTER=COUNTER+1 
 done
