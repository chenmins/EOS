#!/bin/bash
cat app/default.s* > app/default.war
cat app/workspace.s* > app/workspace.war
cat app/governor.s* > app/governor.war
cp -r app/ pms/
cp -r jdbc/ pms/
docker build -t chenmins/pms:latest pms
rm -fr pms/app
rm -fr pms/jdbc

cp -r app/ pms_gov/
cp -r jdbc/ pms_gov/
docker build -t chenmins/pms_gov:latest pms_gov
rm -fr pms_gov/app
rm -fr pms_gov/jdbc

cp -r app/ pms_all/
cp -r jdbc/ pms_all/
docker build -t chenmins/pms_all:latest pms_all
rm -fr pms_all/app
rm -fr pms_all/jdbc

