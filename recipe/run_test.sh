#!/bin/bash
set -xeuo pipefail

export HALIDE_DISTRIB_PATH=$PREFIX
export LIBHALIDE=$PREFIX/lib/libHalide$SHLIB_EXT

cd ${RECIPE_DIR}/python_bindings
make test_apps
