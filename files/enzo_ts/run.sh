#!/bin/bash

BASHSCRIPTDIR=$(cd "$(dirname "$0")"; pwd)
ENZO_LIBRARY_PATH="${BASHSCRIPTDIR}/bin:${BASHSCRIPTDIR}/redistr"
export LD_LIBRARY_PATH="${ENZO_LIBRARY_PATH}:${LD_LIBRARY_PATH}"

bin/enzo_tsl
