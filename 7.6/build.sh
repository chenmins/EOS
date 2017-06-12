#!/bin/bash
cat app/default.s* > app/default.war
cat app/workspace.s* > app/workspace.war
cat app/governor.s* > app/governor.war
cp -r app/ pms/
cp -r jdbc/ pms/
docker build -t chenmins/pms:latest pms
rm -fr pms/app
rm -fr pms/jdbc

