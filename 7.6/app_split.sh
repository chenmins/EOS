#!/bin/bash
cd app
split -b 10m default.war default.s
split -b 10m workspace.war workspace.s
split -b 10m governor.war governor.s
