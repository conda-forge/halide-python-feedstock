#!/bin/bash
set -xeuo pipefail

ls -l

APPS="python_bindings/apps"
test -d $APPS

for TEST in `ls "$APPS"`; do
    echo "Testing $TEST"
    "$PYTHON" "${APPS}/${TEST}"
done
