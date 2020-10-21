#!/usr/bin/env bash

function checkVariablePresence() {
  VARIABLE_NAME=$1
  if [[ -z "${!VARIABLE_NAME}" ]]; then
    echo "The ${VARIABLE_NAME} environment variable isn't defined"
    echo $2
    exit 1
  fi
}

#https://github.com/Javernaut/ffmpeg-android-maker/issues/40
export ANDROID_SDK_HOME=/Users/vladlen/Library/Android/sdk
export ANDROID_NDK_HOME=/Users/vladlen/Library/Android/sdk/ndk/21.3.6528147
