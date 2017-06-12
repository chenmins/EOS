#!/bin/sh
# -----------------------------------------------------------------------------
# Stop script for the CATALINA Server
#
# $Id: stopServer.sh,v 1.1 2008/07/04 13:40:36 build Exp $
# -----------------------------------------------------------------------------

# resolve links - $0 may be a softlink
PRG="$0"

while [ -h "$PRG" ] ; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done

JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.9.x86_64"
export JAVA_HOME  
PRGDIR="/u01/tomcat/eos/tomcat/bin"
EXECUTABLE=catalina.sh

# Check that target executable exists
if [ ! -x "$PRGDIR"/"$EXECUTABLE" ]; then
  echo "Cannot find $PRGDIR/$EXECUTABLE"
  echo "This file is needed to run this program"
  exit 1
fi

exec "$PRGDIR"/"$EXECUTABLE" stop "$@"

