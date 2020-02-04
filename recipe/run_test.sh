#!/bin/bash
set -xeuo pipefail

CORRECTNESS="${RECIPE_DIR}/python_bindings/correctness"
for TEST in `ls "$CORRECTNESS*.py"`; do
    echo "Testing $TEST"
    "$PYTHON" "${CORRECTNESS}/${TEST}"
done
