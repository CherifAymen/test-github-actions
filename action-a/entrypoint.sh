#!/bin/bash 
 COUNTER=0
 while [  $COUNTER -lt 300 ]; do
     curl http://51.144.62.163:8080/hello
     sleep 1
     let COUNTER=COUNTER+1 
 done
