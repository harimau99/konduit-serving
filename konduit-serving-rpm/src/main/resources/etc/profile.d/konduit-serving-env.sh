#!/usr/bin/env bash
# This file defines the environment variables needed to run the konduit serving admin command.

export KONDUIT_SERVING_BASE_ARTIFACT_NAME=konduit-serving
export KONDUIT_SERVING_DIRECTORY_STRUCTURE=konduit/serving
export KONDUIT_SERVING_VERSION=1.3.0

export KONDUIT_SERVING_HOME=/opt/${KONDUIT_SERVING_DIRECTORY_STRUCTURE}
export KONDUIT_SERVING_LOG_DIR=/var/log/${KONDUIT_SERVING_DIRECTORY_STRUCTURE}
export KONDUIT_JAR_PATH=${KONDUIT_SERVING_HOME}/${KONDUIT_SERVING_BASE_ARTIFACT_NAME}-${KONDUIT_VERSION}.jar
export KONDUIT_SERVING_PID_FILE=${KONDUIT_SERVING_HOME}/${KONDUIT_SERVING_BASE_ARTIFACT_NAME}.pid

if [ -z "$JAVA_HOME" ]; then
  export JAVA_HOME=/usr/lib/jvm/java
fi

if [ -z "$JDK_HOME" ]; then
  export JDK_HOME=/usr/lib/jvm/java
fi
