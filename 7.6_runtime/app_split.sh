#!/bin/bash
cd app
split -b 10m default.tar.gz default.s
split -b 10m governor.tar.gz governor.s
rm default.tar.gz
rm governor.tar.gz
