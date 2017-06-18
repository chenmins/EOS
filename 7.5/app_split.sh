#!/bin/bash
cd app
split -b 10m default.tar.gz default.s
split -b 10m workspace.tar.gz workspace.s
split -b 10m governor.tar.gz governor.s
rm default.tar.gz
rm workspace.tar.gz
rm governor.tar.gz
