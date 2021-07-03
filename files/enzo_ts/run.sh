#!/bin/bash

BASHSCRIPTDIR=$(cd "$(dirname "$0")"; pwd)

ENZO_LIBRARY_PATH="${BASHSCRIPTDIR}/bin:${BASHSCRIPTDIR}/bin/deps_base:${BASHSCRIPTDIR}/bin/deps_gfx:${BASHSCRIPTDIR}/bin/deps_ssl"

export LD_LIBRARY_PATH="${ENZO_LIBRARY_PATH}:${LD_LIBRARY_PATH}"

bin/enzo_tsl
