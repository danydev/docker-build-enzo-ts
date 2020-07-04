#!/bin/bash

lib_path="bin/deps_base"

# NOTE: include the necessary additional dependencies
if [ "`dirname \"$(whereis libGLU.so)\"`" == "." ];then
    lib_path+=":bin/deps_gfx"
fi
if [ "`dirname \"$(whereis libssl.so)\"`" == "." ];then
    lib_path+=":bin/deps_ssl"
fi

LD_LIBRARY_PATH="${lib_path}" bin/enzo_tsl --noui --low_memory_mode
