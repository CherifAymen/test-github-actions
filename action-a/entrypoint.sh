#!/bin/sh -l

sh -c "VERSION=$(ls | grep mvnw) ; if ["$VERSION" != ""]; then 
          ls
       fi" 
